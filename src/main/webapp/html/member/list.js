var form = $('.item-listing'),
    templateSrc = $('#tr-template').html(),
    trGenerator = Handlebars.compile(templateSrc),
    rating = 0,
    paginateSrc = $('#page-template').html();

Handlebars.registerHelper('paginate', paginate);
var pageGenerator = Handlebars.compile(paginateSrc);


$(document).ready(function () {
  $("#heun-header").load("/heunheuntrip/html/header.html", function () {
    $(".heun-header-nav").removeClass("navbar-over absolute-top");
  });
  $("#heun-footer").load("/heunheuntrip/html/footer.html");
  
  loadList(1);
  
  loadProfile();
  
})

function loadProfile() {
  $.getJSON('../../app/json/member/profile',
      function(obj) {
    
    if (obj.member.photo != null) {
    $("<img class='rounded-circle'>").attr('src',
        '/heunheuntrip/html/memberprofileupload/' + obj.member.photo)
        .css('width', '255px')
        .appendTo($('#profileimg'));
  
    
    } else {
    $("<img>").attr('src',
          '/heunheuntrip/html/memberupload/default.jpeg')
          .css('width', '255px')
          .appendTo($('#profileimg'));
    }

    $('.main-name').text(obj.member.name);
    $('.main-email').text(" E-MAIL : " + obj.member.email);
    $('.main-tel').text(" PHONE : " + obj.member.tel);
    no = obj.member.no;
  }); // Bitcamp.getJSON(
} // loadList()

function loadList(pn) {
  $.getJSON('../../app/json/rev/list?pageNo=' + pn, function(obj) {
    
    form.html('');
    
    for(l of obj.list){
      
      if(l.status === "체크아웃"){
        l.isBtn = true;
      } else {
        l.isBtn = false;
      }
      
      if(l.status === "결제완료"){
        l.isCheck = true;
      } else {
        l.isCheck = false;
      }
    }
    
    pageNo = obj.pageNo;
    
    obj.pagination = {
        page: obj.pageNo,
        pageCount: obj.totalPage
    };
    
    $(trGenerator(obj)).appendTo(form);
    
    $('.pagination-menu').html('');
    $(pageGenerator(obj)).appendTo('.pagination-menu');
    
    $(document.body).trigger('loaded-list');
    
  }); 

} // loadList()

$(document.body).bind('loaded-list', (e) => {
  
  var now = moment().format('YYYY-MM-DD');
  
  $('#main-data').dateRangePicker({
    format: 'YYYY-MM-DD',
    autoClose: true,
    inline: true,
    startDate : now,
    container: '#main-calendar', 
    language: 'ko',
    separator : ' ~ ',
    selectForward: true,
    showShortcuts: true,
    customShortcuts: [
      {
        name: '날짜 지우기',
        dates : function() {
//          $('.heun-h2').data('dateRangePicker').clear();
//          $('#date-range12-container').data('dateRangePicker').clear();
//          $('#heun-rev').trigger('date-clear');
        }
      }
    ],
    getValue: function() {
      if ($('.heun-h1').val() && $('.heun-h2').val()) 
        return $('.heun-h1').val() + ' ~ ' + $('.heun-h2').val();
       else 
        return '';
    },
    setValue: function(s, s1, s2) {
      $('.heun-h1').val(s1);
      $('.heun-h2').val(s2);
    }
  }).bind('datepicker-change',function(event,obj) {
//    var date = obj.value.split(" ~ ");
//    $('#date-range12-container').data('dateRangePicker').setDateRange(date[0], date[1]);
//    $('.heun-h1, .heun-h2').css('background-color', '');
//    $('#heun-rev').trigger('date-input');
  });
  
  $('.riw-check').off('click').on('click', function(e){
    
    $('.heun-h1').val($(e.target).attr('data-ci'))
    $('.heun-h2').val($(e.target).attr('data-co'))
    
  });
  
  $('.dropdown-menu > button').on('click', function(e){
    person = $(this).attr('data-p');
    $('.check-person').html($(this).html());
    $('.check-person').removeAttr('data-p');
    $('.check-person').attr('data-p', person);
  })
  
  
  $('.riw-write').off('click').on('click', function(e){
    
    var no = $(this).next().data('no');
    var pn = $(e.target).parent().parent().parent().parent().parent().parent().children('.rev-page').attr('data-page');

    $('#exampleModal').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget) 
      var recipient = button.data('whatever') 
      var modal = $(this)
      modal.find('.modal-title').text('Review')
      modal.find('.modal-body input').val(recipient)
    });
    

    $('.my-rating').starRating({
      totalStars: 5,
      starShape: 'rounded',
      emptyColor: 'lightgray',
      hoverColor: 'gold',
      activeColor: 'gold',
      strokeWidth: 0,
      disableAfterRate: false,
      useGradient: false,
      callback: function(currentRating, $el){
        window.rating = currentRating;
      }
    });
    
    $('.insert-riw').off('click').on('click', function(e){
      
      $.ajax({
        url: '../../app/json/riw/add',
        type: 'POST',
        data: {
          roomNo: no,
          grd: window.rating,
          contents: $('#message-text').val()
        },
        dataType: 'json',
        success: function(response) {
          loadList(pn);
          $('#message-text').val("");
          $('#exampleModal').modal("hide");
        },
        fail: function(error) {
          alert('등록 실패!!');
        }
      });
      
    })

  })
});



