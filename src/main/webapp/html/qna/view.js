var param = location.href.split('?')[1],
    templateSrc = $('#tr-template').html(),
    category = $('#categorylist').html(),
    cateGenerator = Handlebars.compile(category),
    re = $('#reply').html(),
    reGenerator = Handlebars.compile(re),
    trGenerator = Handlebars.compile(templateSrc);


    $(document.body).on('loaded-cate', function() {
        $('.heun-category > a').on('click', function() {
          $('#dropdownMenuButton').html($(this).html());
          $('#dropdownMenuButton').attr('data-no', $(this).attr('data-no'));
        });
      })
      
      
      
      function loadCategory() {
        $.getJSON('../../app/json/qna/categorylist', function(obj) {
          $(cateGenerator(obj)).appendTo('.heun-category');
          $(document.body).trigger('loaded-cate');
        }); 
      };
    

$(document).ready(function(){
    $('#heun-header').load('../header.html', function(){
        $('.heun-header-nav').removeClass('navbar-over absolute-top');
    });
    
    $('#heun-footer').load('../footer.html', function(){
    });

    if (param) {
          loadData(param.split('=')[1])
          var el = document.querySelectorAll('.bit-new-item');
        for(e of el){
          e.style.display = 'none';
        }
      }


})


  function loadData(no) {
    $.getJSON("../../app/json/qna/detail?no=" + no, function(data) {
        $('#no').val(data.qna.qnaNo);
        $('#userNo').html(data.qna.name + '(' + data.qna.auth + ')');
        $('#dropdownMenuButton').html(data.category);
        $('#dropdownMenuButton').attr('data-no', data.qna.categoryNo);
        $('#title').html(data.qna.title);
        $('#cont').html(data.qna.content);
        $('#createdDate').html(data.qna.createdDate);
        $('#title').attr('data-parent', data.qna.parent);
        $('#title').attr('data-order', data.qna.order);
        $('#title').attr('data-step', data.qna.step);
        $('#title').attr('data-uno', data.qna.userNo);
        
        if($('#title').attr('data-uno') != data.userNo) {
          $('#delete-btn').hide();
          $('#update-btn').hide();
        }
    });
  };
  
  $('#delete-btn').on('click', function() {
    
    $.ajax({
      url: '../../app/json/qna/delete?no=' + $('#no').val() + '&parent=' + $('#title').attr('data-parent') +
           '&order=' + $('#title').attr('data-order'),
      type: 'get',
      dataType: 'json',
      success: function(response) {
        location.href = 'index.html';
      },
      fail: function(error) {
        alert('삭제 실패!!' + data.message);
      }
    });
  })

  $('#re-btn').on('click', function() {
    $(reGenerator()).appendTo('#reply-form');
    $('#re-btn').hide();

  $('#re-add-btn').on('click', function() {
      $.ajax({
        url: '../../app/json/qna/add',
        type: 'POST',
        data: {
          categoryNo: $('#dropdownMenuButton').attr('data-no'),
          title: $('#re-title').val(),
          content: $('#re-content').val(),
          password: $('#re-password').val(),
          parent: $('#title').attr('data-parent'),
          order: $('#title').attr('data-order'),
          step: $('#title').attr('data-step')
        },
        dataType: 'json',
        success: function(response) {
          location.href = 'index.html';
        },
        fail: function(error) {
          alert('등록 실패!!');
        }
      });
    })
  })
