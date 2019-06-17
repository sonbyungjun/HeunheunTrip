var form = $('.item-listing'),
templateSrc = $('#tr-template').html(),
trGenerator = Handlebars.compile(templateSrc),
rating = 0,
no = 0,
paginateSrc = $('#page-template').html();

Handlebars.registerHelper('paginate', paginate);
var pageGenerator = Handlebars.compile(paginateSrc);



$(document).ready(function () {
  $("#heun-header").load("/heunheuntrip/html/header.html", function () {
    $(".heun-header-nav").removeClass("navbar-over absolute-top");
  });
  $("#heun-footer").load("/heunheuntrip/html/footer.html");
  $(document.body).trigger('loaded-list');
  loadList();
}) 


"use strict"

function loadList() {
  $.getJSON('../../app/json/member/profile',
      function (obj) {
    window.no = obj.member.no
    //window.no = obj.member.no;
    if (obj.member.photo != null) {
      $("<img class='rounded-circle'>").attr('src',
          '/heunheuntrip/app/json/images/down/' + obj.member.photo)
          .css('width', '255px')
          .css('height', '255px')
          .appendTo($('#profileimg'));
    } else {
      $("<img>").attr('src',
      '/heunheuntrip/app/json/images/down/defualt.jpeg')
      .css('width', '255px')
      .css('height', '255px')
      .appendTo($('#profileimg'));
    }

    $('.main-name').text(obj.member.name);
    $('.main-email').text(obj.member.email);
    $('.main-tel').text(obj.member.tel);
    $('.custom-file').find('label').html(obj.member.photo);
    Loadroomlist(0);
    //	$(--------).appendTo(-------); 
    // 세션에서 로그인 사용자 정보를 가지고와서 뿌리자~ 
  }); // Bitcamp.getJSON(
} // loadList()

function Loadroomlist(pn) {
  $.ajax({
    url: '../../app/json/room/hostroom?pageNo=' + pn,
    type: 'GET',
    data: {
      no: window.no
    },
    dataType: 'json',
    success: function (response) {
      pageNo = response.pageNo;
      form.html('');
      for (l of response.list) {

        if (l.state === "0") {
          l.state = true;
        } else if (l.state === "1") {
          l.state = false;
        } else {
          l.state = false;
          l.restate = true;
        }
      }

      response.pagination = {
          page: response.pageNo,
          pageCount: response.totalPage
      };
      $(trGenerator(response)).appendTo(form);
      $('.pagination-menu').html('');
      $(pageGenerator(response)).appendTo('.pagination-menu');
      $(document.body).trigger('loaded-list');
    },
    error: function (error) {
      alert('시스템 오류가 발생했습니다.');
    }
  });
}





$(document.body).bind('loaded-list', () => {
  $('.del').on('click', function () {
    var no = $(this).data('no')

    Swal.fire({
      title: '잠깐!',
      text: "정말로 삭제 하시겠습니까?",
      type: 'question',
      allowOutsideClick: false,
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '삭제',
      cancelButtonText: '취소'
    }).then((result) => {
      if (result.value) {
        $.ajax({
          url: '../../app/json/room/delete',
          type: 'GET',
          data: {
            no: no
          },
          dataType: 'json',
          success: function (response) {
            Swal.fire({
              type: 'success',
              title: "정상적으로 삭제 되었습니다!"
            }).then((result) => {
              if (result.value) {
                location.href = 'hostlist.html'
              }
            })
          },
          error: function (error) {
            alert('시스템 오류가 발생했습니다.');
          }
        });
      } else {
      }
    })

  })
});
$(document.body).bind('loaded-list', (e) => {
  $('.roomcontent').on('click', function () {

    var no = $(this).attr('data-no')
    detail(no)
  })
})


function detail(rno){

  $.ajax({
    url: '../../app/json/room/detail',
    type: 'GET',
    data: {
      no:rno
    },
    dataType: 'json',
    success: function (response) {
      console.log(response)
      $('.media-heading').text(response.name)
      $('#room-location').val(response.area)
      $('#room-address').val(response.address + " " + response.detailAddress)
      $('#room-price').val(response.price)
      $('.media-left').html('')
      $("<img class='media-room'>").attr('src',
          '/heunheuntrip/app/json/images/down/' + response.thumbnail)
          .css('width', '50px')
          .css('height', '50px')
          .appendTo($('.media-left'));
      
      
    },
    error: function (error) {
      alert('시스템 오류가 발생했습니다.');
    }
  });

}








