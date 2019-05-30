var form = $('.blog-form-list'),
templateSrc = $('#tr-template').html(),
trGenerator = Handlebars.compile(templateSrc),
i = 1,
pageNo = 0,
totalPage = 0,
order = 0,
deorder = 0,
blike = 0;


//header, footer 가져오기
$(document).ready(function () {
	$('#heun-header').load('../header.html', function () {
		$('.heun-header-nav').removeClass('navbar-over absolute-top');
	});

	$('#heun-footer').load('../footer.html', function () {
	});
})



function loadList(pn, order, blike, dedorder) {

  console.log(order);
  console.log(blike);
  console.log(dedorder);
  
	$.getJSON('../../app/json/blog/list?pageNo=' + pn + '&order=' + order + '&blike=' + blike + '&deorder=' + deorder,
			function(obj) {

		pageNo = obj.pageNo;
		totalPage = obj.totalPage

		obj.pagination = {
				page: obj.pageNo,
				pageCount: obj.totalPage
		};

		$(trGenerator(obj)).appendTo(form);

		++window.i;

		$(document.body).trigger('loaded-list');

	}); // Bitcamp.getJSON(

} // loadList()



//페이지를 출력한 후 1페이지 목록을 로딩한다.
loadList(window.i, window.order, window.blike, window.deorder);


$(document).scroll(function(event){

	var maxHeight = $(document).height();
	var currentScroll = $(window).scrollTop() + $(window).height();

	// scrollbar의 thumb가 바닥 전 30px까지 도달 하면 리스트를 가져온다.
	if( maxHeight <= currentScroll + 20 ){

		if (totalPage <= pageNo) {
			return;	
		}

		loadList(window.i, window.order, window.blike, window.deorder);
	}
})


//필터기능  
$('.heun-search > a').on('click', function() {

	$('.searchselect').html($(this).html());

	window.i = 1;
	form.html('');


	if($('.searchselect').html() == "최신순") {
	  console.log("최신순")
		window.deorder = 0;
		window.blike = 0;
		window.order = 1;

		loadList(window.i, window.order, window.blike, window.deorder);
	} 

	if($('.searchselect').html() == "인기순") {
	  console.log("인기순")
		window.deorder = 0;
		window.blike = 1;
		window.order = 0;

		loadList(window.i, window.order, window.blike, window.deorder);      
	} 

	if($('.searchselect').html() == "오래된순") {
	  console.log("오래된순")
		window.deorder = 1;
		window.blike = 0;
		window.order = 0;

		loadList(window.i, window.order, window.blike, window.deorder);      
	} 

})


$(document.body).bind('loaded-list', () => {

	$('.bit-view-link').on('click', function (e) {
		e.preventDefault();
		console.log(e.target);
		window.location.href = 'view.html?no=' + $(e.target).attr('data-no');
	})

	$('.check-btn').on('click', function (e) {
		e.preventDefault();
		$.ajax({
			url: '../../app/json/blog/checkUser',
			type: 'GET',
			dataType: 'json',
			success: function (response) {
				if (response.status == 'success') {

					location.href = 'add.html';

				} else {
					Swal.fire({
						type: 'error',
						title: '에러!',
						text: '체크아웃 목록이 없어 블로그를 작성할 수 없습니다.'
					})
				}
			},
			fail: function (error) {
				alert('시스템 오류가 발생했습니다.');
			}
		});
	});
});
