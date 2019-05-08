--faq
insert into faq(faq_id,faq,faq_an) 
values(1,'환불은 어떻게 하나요?','3일내 하셔야해요');
insert into faq(faq_id,faq,faq_an) 
values(2,'예약취소 어떻게 하나요?','결제취소 누르면되요');
insert into faq(faq_id,faq,faq_an) 
values(3,'할인혜택도 있나요?','없습니다.');
insert into faq(faq_id,faq,faq_an) 
values(4,'무통장 입금도 가능한가요?','가능합니다');
insert into faq(faq_id,faq,faq_an) 
values(5,'흔흔사이트 계정은 어떻게 만드나요?','heunheun.com 가셔서 회원가입하시면됩니다.');
insert into faq(faq_id,faq,faq_an) 
values(6,'친구나 가족을 대신하여 예약할수 있나요?','예 가능합니다');
insert into faq(faq_id,faq,faq_an) 
values(7,'예약하기 전에 숙소를 직접 볼수 있나요?','가능합니다,다만 숙소를 방문하지 않고도 숙소 및 호스트에 대해 알아 볼수있습니다.');
insert into faq(faq_id,faq,faq_an) 
values(8,'예약완료시 숙방정보는 문자로 보내주시나요?','결제하는 즉시 보내드립니다.');
insert into faq(faq_id,faq,faq_an) 
values(9,'회원은 예약 상태를 어떻게 확인 하나요?','호스트가 예약 요청을 수락하면 이메일로 알림을 받게 되며, 계정의 알림 설정에 따라 에어비앤비로부터 문자(SMS)나 푸시 알림을 받게 됩니다');
insert into faq(faq_id,faq,faq_an) 
values(10,'예약 요청은 어떻게 보내나요?','숙소 페이지에서 예약 요청을 클릭하세요.');

--권한
insert into auth(auth) values('일반회원');
insert into auth(auth) values('호스트');
insert into auth(auth) values('관리자');

-- 회원
insert into usr(usr_id,email,pwd,auth_id,name,tel)
  values(1,'tlwls@naver.com',password('1111'),1,'홍길동','010-4444-3333');
  insert into usr(usr_id,email,pwd,auth_id,name,tel)
  values(2,'qwrwer@naver.com',password('1111'),1,'삼순이','010-5647-3333');
  insert into usr(usr_id,email,pwd,auth_id,name,tel)
  values(3,'sadfe@naver.com',password('1111'),1,'둘리','010-4456-3433');
  insert into usr(usr_id,email,pwd,auth_id,name,tel)
  values(4,'werdf@naver.com',password('1111'),1,'도넛','010-7894-3344');
  insert into usr(usr_id,email,pwd,auth_id,name,tel)
  values(5,'sdfdsre@naver.com',password('1111'),2,'원빈','010-5452-3733');
  insert into usr(usr_id,email,pwd,auth_id,name,tel)
  values(6,'sdafwerdf@naver.com',password('1111'),2,'한효주','010-4456-3133');
  insert into usr(usr_id,email,pwd,auth_id,name,tel)
  values(7,'ewrsdf@daum.net',password('1111'),2,'강동원','010-4433-3322');
  insert into usr(usr_id,email,pwd,auth_id,name,tel)
  values(8,'erwerdf@daum.net',password('1111'),2,'이지혜','010-4894-3733');
  insert into usr(usr_id,email,pwd,auth_id,name,tel)
  values(9,'fgertewr@daum.net',password('1111'),1,'앙리','010-4466-3983');
  insert into usr(usr_id,email,pwd,auth_id,name,tel)
  values(10,'ewrdsf@gmail.com',password('1111'),2,'김사랑','010-4411-3893');
  
  -- qna
insert into qna(usr_id, parent, ordr, step, content, qna_pwd) values(1,1,1,1,'예약이안되요','1111');
insert into qna(usr_id, parent, ordr, step, content, qna_pwd) values(2,2,1,1,'이용방법이','1111');
insert into qna(usr_id, parent, ordr, step, content, qna_pwd) values(3,3,2,1,'날자를 변경해주세요','1111');
insert into qna(usr_id, parent, ordr, step, content, qna_pwd) values(4,4,2,1,'이용인원 변경이요','1111');
insert into qna(usr_id, parent, ordr, step, content, qna_pwd) values(5,5,2,1,'예약정보가 안뜨네요','1111');
insert into qna(usr_id, parent, ordr, step, content, qna_pwd) values(6,6,1,1,'이용규칙이 왜안뜨죠 ??','1111');
insert into qna(usr_id, parent, ordr, step, content, qna_pwd) values(7,7,1,1,'가격 정보가 결제금액이오....랑 다른경우는 어덯게 하죠..','1111');
insert into qna(usr_id, parent, ordr, step, content, qna_pwd) values(8,8,2,1,'취소해주세요','1111');
insert into qna(usr_id, parent, ordr, step, content, qna_pwd) values(9,9,1,1,'예약 대기가 안되네요 ....','1111');
insert into qna(usr_id, parent, ordr, step, content, qna_pwd) values(10,10,2,1,'예약이안되요','1111');


  --호스트
insert into host(usr_id,bank,bank_id) 
values(5,'신한','110-3334-6587');
insert into host(usr_id,bank,bank_id) 
values(6,'농협','110-33784-6447');
insert into host(usr_id,bank,bank_id) 
values(7,'신한','110-2224-7789');
insert into host(usr_id,bank,bank_id) 
values(8,'하나','7894-3334-6587');
insert into host(usr_id,bank,bank_id) 
values(10,'기업','7894-78945-61245');

-- 편의시설
INSERT INTO amn(amn_id,amn) VALUES(1,'무선 인터넷');
INSERT INTO amn(amn_id,amn) VALUES(2,'건조기');
INSERT INTO amn(amn_id,amn) VALUES(3,'다리미');
INSERT INTO amn(amn_id,amn) VALUES(4,'케이블 TV');
INSERT INTO amn(amn_id,amn) VALUES(5,'수건, 침대시트, 비누, 화장지');
INSERT INTO amn(amn_id,amn) VALUES(6,'난방');
INSERT INTO amn(amn_id,amn) VALUES(7,'세탁기');
INSERT INTO amn(amn_id,amn) VALUES(8,'에어컨');
INSERT INTO amn(amn_id,amn) VALUES(9,'온수');
INSERT INTO amn(amn_id,amn) VALUES(10,'헤어드라이어');

-- 숙소 
-- (호스트번호, '숙소명', 숙소가격, 최대 수용 인원, '우편번호', '기본주소', '상세주소', '위도', '경도', 
-- '숙소 이용 규칙', '오시는 길', '예약 취소 안내', '위약금 안내', '평균평점')
INSERT INTO rms(rms_id, usr_id,rm_name,rm_chge,max_ple,post_code,addr,dtil_addr,lati,longi,rule,map,cacl_gde,plty_gde,grd) 
  VALUES(1, 5, '[강남역] 러블리한 하우스, 카페같은 J-house', 50000, 2, '06129', '서울특별시 강남구 역삼동', '619-18', '37.5010877', '127.02713140000003', 
 '흡연 금지
반려동물 동반 불가
체크인 시간: 15:00~23:00, 체크아웃 시간: 11:00까지
키패드(으)로 셀프 체크인',
 '2호선 강남역 1번출구 - 1분거리 위치 ', '숙박 중 예약을 취소하면 일부 환불을 요청할 수 있습니다.',
 '체크인 30일 전까지 예약을 취소하면 모든 수수료를 포함한 요금 전액이 환불됩니다. 체크인까지 30일이 남지 않은 시점에 예약을 취소하면 수수료를 포함한 총 숙박 요금의 50%가 환불됩니다.',
 9);
 INSERT INTO rms(rms_id, usr_id,rm_name,rm_chge,max_ple,post_code,addr,dtil_addr,lati,longi,rule,map,cacl_gde,plty_gde,grd) 
  VALUES(2, 6, '강남역 1번출구 5분거리! 깨끗하고 넓고 이쁜집!', 60000, 5, '06128', '서울특별시 강남구 봉은사로6길', '39', '37.5026477', '127.0279289', 
 '반려동물 동반 불가 흡연, 파티 또는 이벤트 금지 체크인 시간: 15:00~02:00(다음 날), 체크아웃 시간: 11:00까지 스마트록(으)로 셀프 체크인',
 '강남역 도보 5분거리에 위치', '숙박 중 예약을 취소하면 일부 환불을 요청할 수 있습니다.',
 '체크인 30일 전까지 예약을 취소하면 모든 수수료를 포함한 요금 전액이 환불됩니다. 체크인까지 30일이 남지 않은 시점에 예약을 취소하면 수수료를 포함한 총 숙박 요금의 50%가 환불됩니다.',
 8);
  INSERT INTO rms(rms_id, usr_id,rm_name,rm_chge,max_ple,post_code,addr,dtil_addr,lati,longi,rule,map,cacl_gde,plty_gde,grd) 
  VALUES(3, 7, 'Bongs House 롯데타워 석촌호수 롯데월드뷰를 품은 환상의 공간', 55000, 4, '05554', '서울특별시 송파구 올림픽로', '240', '37.5112348', '127.09802739999998', 
 '유아(만 2세 미만) 및 반려동물에게 안전하거나 적합하지 않음
흡연, 파티 또는 이벤트 금지
체크인 시간: 16:00 이후 언제나, 체크아웃 시간: 12:00까지
스마트록(으)로 셀프 체크인',
 '종합운동장역(야구장, 올림픽 경기장) 지하철', '숙박 중 예약을 취소하면 일부 환불을 요청할 수 있습니다.',
 '체크인 30일 전까지 예약을 취소하면 모든 수수료를 포함한 요금 전액이 환불됩니다. 체크인까지 30일이 남지 않은 시점에 예약을 취소하면 수수료를 포함한 총 숙박 요금의 50%가 환불됩니다.',
 9);
   INSERT INTO rms(rms_id, usr_id,rm_name,rm_chge,max_ple,post_code,addr,dtil_addr,lati,longi,rule,map,cacl_gde,plty_gde,grd) 
  VALUES(4, 8, 'Bongs House 롯데타워 석촌호수 롯데월드뷰를 품은 환상의 공간', 55000, 4, '05554', '서울특별시 송파구 올림픽로', '240', '37.5112348', '127.09802739999998', 
 '유아(만 2세 미만) 및 반려동물에게 안전하거나 적합하지 않음
흡연, 파티 또는 이벤트 금지
체크인 시간: 16:00 이후 언제나, 체크아웃 시간: 12:00까지
스마트록(으)로 셀프 체크인',
 '종합운동장역(야구장, 올림픽 경기장) 지하철', '숙박 중 예약을 취소하면 일부 환불을 요청할 수 있습니다.',
 '체크인 30일 전까지 예약을 취소하면 모든 수수료를 포함한 요금 전액이 환불됩니다. 체크인까지 30일이 남지 않은 시점에 예약을 취소하면 수수료를 포함한 총 숙박 요금의 50%가 환불됩니다.',
 9);
   INSERT INTO rms(rms_id, usr_id,rm_name,rm_chge,max_ple,post_code,addr,dtil_addr,lati,longi,rule,map,cacl_gde,plty_gde,grd) 
  VALUES(5, 10, 'Bongs House 롯데타워 석촌호수 롯데월드뷰를 품은 환상의 공간', 55000, 4, '05554', '서울특별시 송파구 올림픽로', '240', '37.5112348', '127.09802739999998', 
 '유아(만 2세 미만) 및 반려동물에게 안전하거나 적합하지 않음
흡연, 파티 또는 이벤트 금지
체크인 시간: 16:00 이후 언제나, 체크아웃 시간: 12:00까지
스마트록(으)로 셀프 체크인',
 '종합운동장역(야구장, 올림픽 경기장) 지하철', '숙박 중 예약을 취소하면 일부 환불을 요청할 수 있습니다.',
 '체크인 30일 전까지 예약을 취소하면 모든 수수료를 포함한 요금 전액이 환불됩니다. 체크인까지 30일이 남지 않은 시점에 예약을 취소하면 수수료를 포함한 총 숙박 요금의 50%가 환불됩니다.',
 9);
 
 -- 숙소사진
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(1,1,'a1.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(2,1,'a2.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(3,1,'a3.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(4,1,'a4.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(5,1,'a5.gif');
 
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(6,2,'b1.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(7,2,'b2.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(8,2,'b3.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(9,2,'b4.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(10,2,'b5.gif');
 
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(11,3,'c1.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(12,3,'c2.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(13,3,'c3.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(14,3,'c4.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(15,3,'c5.gif');
 
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(16,4,'d1.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(17,4,'d2.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(18,4,'d3.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(19,4,'d4.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(20,4,'d5.gif');
 
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(21,5,'e1.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(22,5,'e2.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(23,5,'e3.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(24,5,'e4.gif');
 INSERT INTO rm_photo(r_photo_id,rms_id,rm_photo) VALUES(25,5,'e5.gif');
 
-- 숙소 편의시설
INSERT INTO rms_amn(amn_id,rms_id) VALUES(1,1);
INSERT INTO rms_amn(amn_id,rms_id) VALUES(1,3);
INSERT INTO rms_amn(amn_id,rms_id) VALUES(1,4);

INSERT INTO rms_amn(amn_id,rms_id) VALUES(2,7);
INSERT INTO rms_amn(amn_id,rms_id) VALUES(2,5);
INSERT INTO rms_amn(amn_id,rms_id) VALUES(2,9);

INSERT INTO rms_amn(amn_id,rms_id) VALUES(3,3);
INSERT INTO rms_amn(amn_id,rms_id) VALUES(3,2);
INSERT INTO rms_amn(amn_id,rms_id) VALUES(3,1);

INSERT INTO rms_amn(amn_id,rms_id) VALUES(4,10);
INSERT INTO rms_amn(amn_id,rms_id) VALUES(4,9);
INSERT INTO rms_amn(amn_id,rms_id) VALUES(4,4);

INSERT INTO rms_amn(amn_id,rms_id) VALUES(5,3);
INSERT INTO rms_amn(amn_id,rms_id) VALUES(5,8);
INSERT INTO rms_amn(amn_id,rms_id) VALUES(5,7);
 
--hst_qna
 insert into hst_qna(hst_qna_id,usr_id,rms_id,conts,reply,reply_dt) 
values(1,1,1,'화장실 수압은 어떤가요?','충분히 강합니다.','2019-05-28');
 insert into hst_qna(hst_qna_id,usr_id,rms_id,conts,reply,reply_dt) 
values(2,1,2,'애완견 출입이 가능한가요?','가능합니다.','2019-05-02');
 insert into hst_qna(hst_qna_id,usr_id,rms_id,conts,reply,reply_dt) 
values(3,1,2,'숙소는 깨끗한가요?','꺠끗합니다.','2019-05-03');
 insert into hst_qna(hst_qna_id,usr_id,rms_id,conts,reply,reply_dt) 
values(4,2,3,'주변에 놀거리가 있나요?','3분거리에 계곡이 있습니다.','2019-05-11');
 insert into hst_qna(hst_qna_id,usr_id,rms_id,conts,reply,reply_dt) 
values(5,2,3,'숯불 가격이 어떻게 되나요?','3인기준 3만원입니다.','2019-05-12');
 insert into hst_qna(hst_qna_id,usr_id,rms_id,conts,reply,reply_dt) 
values(6,2,3,'방음은 잘되는 편인가요?','방음 처리는 완벽합니다.','2019-05-03');
 insert into hst_qna(hst_qna_id,usr_id,rms_id,conts,reply,reply_dt) 
values(7,3,4,'퇴실시간을 넘기면 어떻게 하나요?','추가 비용이 발생합니다.','2019-05-14');
 insert into hst_qna(hst_qna_id,usr_id,rms_id,conts,reply,reply_dt) 
values(8,3,4,'편의시설은 잘되있나요?','다 갖추고 있습니다.','2019-05-15');
 insert into hst_qna(hst_qna_id,usr_id,rms_id,conts,reply,reply_dt) 
values(9,4,4,'보일러는 잘되나요?','잘됩니다.','2019-05-18');
 insert into hst_qna(hst_qna_id,usr_id,rms_id,conts,reply,reply_dt) 
values(10,5,5,'주변에 마트는 있나요?','5분거리에 대형 마트가 있습니다.','2019-05-20');


-- riw
insert into riw(usr_id, riw_conts, grd) values(1,'안마의자있어서 너무 좋았어요!! 컴퓨터를 오래봐서 어깨랑 허리랑 너무 아팠는데 발리에 쉬면서 뭉친 피로 다 풀었어요!!!! 디럭스 객실에도 안마의자라니....너무나 감동 ㅜㅜㅜ ...', 4 );
insert into riw(usr_id, riw_conts, grd) values(2,'깔끔하고 너무 편했어요 방이 진짜 따듯했는데 땀날정도였어요ㅋㅋㅋ 창문 열면 괜찮음!', 2 );
insert into riw(usr_id, riw_conts, grd) values(3,'여자 직원 두분 너무 친절하셔서 들어갈때부터 기분서좋았습니다 저렴한가격에 퀄리티 좋은 객실 너무 좋았습니다 지방에서 출장왔는데 서울올때마다 이용하고싶네요', 1 );
insert into riw(usr_id, riw_conts, grd) values(4,'남치니랑 신천에서 자주 노는뎅 갈때마다 테레즈 갑니당~~ 우선 깨끗하구 사장님이 넘넘 친절하세요~과자두 맛나구용 갈때마다 편하게 쓰구가는듯~ 거울방 너무 좋아서 거울방만 찾아영....... 별로에요', 3 );
insert into riw(usr_id, riw_conts, grd) values(5,'후기들 다 알바고 그저 그러겠거니 생각했는데 가보니까 진짜 만족했어요. 숙박업체 이용하고 평점 남기는것도 잘안하는데 정말 만족해서 댓글 답니다 사장님도 친절하셨어요', 3 );
insert into riw(usr_id, riw_conts, grd) values(6,'공주공주풍 한 느낌도 괜찮구 깨끗하고 조용하고 좋아요! 대실시간 엄청길어서 가성비 개굿 프런트직원분도 친절하셔서 기분좋게 갑니당 뿅', 2 );
insert into riw(usr_id, riw_conts, grd) values(7,'알바생이 음식을 자주 리필해서 좋았어요', 4 );
insert into riw(usr_id, riw_conts, grd) values(8,'직원분들이 친절하셔서 불편함없이 잘 지냈습니다', 2 );
insert into riw(usr_id, riw_conts, grd) values(9,'항상 데미안만 이용하고 있어요', 5 );
insert into riw(usr_id, riw_conts, grd) values(10,'공주공주풍 한 느낌도 괜찮구 깨끗하고 조용하고 좋아요! 대실시간 엄청길어서 가성비 개굿 프런트직원분도 친절하셔서 기분좋게 갑니당 뿅', 2 );

-- bookmark
insert into bookmark(usr_id,rms_id,mamo) values(1,2'위치가 너무 맘에들어요');
insert into bookmark(usr_id,rms_id,mamo) values(1,3'가격이 너무 맘에 들어요');
insert into bookmark(usr_id,rms_id,mamo) values(2,4'가격이쌈');
insert into bookmark(usr_id,rms_id,mamo) values(2,5'편의시설 굿');
insert into bookmark(usr_id,rms_id,mamo) values(3,1'주변 맛집굿');
insert into bookmark(usr_id,rms_id,mamo) values(3,2'역에서 가깝네');
insert into bookmark(usr_id,rms_id,mamo) values(4,2'사장님이 좋네');
insert into bookmark(usr_id,rms_id,mamo) values(4,3'화장실이 깔끔');
insert into bookmark(usr_id,rms_id,mamo) values(5,1'침대가 푹신푹신'); 
insert into bookmark(usr_id,rms_id,mamo) values(5,4'평수가 넓어서');

-- 이용상태
insert into stus(stus_id, stus) values(1,'결제완료');
insert into stus(stus_id, stus) values(2, '체크인' );
insert into stus(stus_id, stus) values(3, '체크아웃');
insert into stus(stus_id, stus) values(4, '결제취소');

-- 예약
insert into rev(usr_id, stus_id, rms_id, cck_in, cck_out, rev_stus, stby_stus, rev_persn) 
values(1,1,1,'2019-05-08','2020-05-10','대기중', '승인', 2);
insert into rev(usr_id, stus_id, rms_id, cck_in, cck_out, stby_stus, rev_persn) 
values(2,4,2,'2019-05-02','2020-05-10', '거절', 2);
insert into rev(usr_id, stus_id, rms_id, cck_in, cck_out, stby_stus, rev_persn) 
values(3,3,3,'2019-06-08','2020-05-10', '승인', 2);
insert into rev(usr_id, stus_id, rms_id, cck_in, cck_out, stby_stus, rev_persn) 
values(4,2,4,'2019-11-08','2020-05-10', '승인', 1);
insert into rev(usr_id, stus_id, rms_id, cck_in, cck_out, rev_stus, stby_stus, rev_persn) 
values(5,4,5,'2019-12-28','2020-05-10','대기중', '거절', 3);
insert into rev(usr_id, stus_id, rms_id, cck_in, cck_out, stby_stus, rev_persn) 
values(6,4,6,'2019-01-08','2020-05-10', '승인', 5);
insert into rev(usr_id, stus_id, rms_id, cck_in, cck_out, rev_stus, stby_stus, rev_persn) 
values(7,3,7,'2019-02-08','2020-05-10','대기중', '승인', 1);
insert into rev(usr_id, stus_id, rms_id, cck_in, cck_out, rev_stus, stby_stus, rev_persn) 
values(8,4,8,'2019-04-08','2020-05-10','대기중', '거절', 4);
insert into rev(usr_id, stus_id, rms_id, cck_in, cck_out, stby_stus, rev_persn) 
values(9,4,9,'2019-06-18','2020-05-10', '거절', 2);
insert into rev(usr_id, stus_id, rms_id, cck_in, cck_out, rev_stus, stby_stus, rev_persn) 
values(10,2,10,'2019-07-11','2020-05-10','대기중', '승인', 3);

-- 블로그
insert into board (board_id,usr_id,rms_id,title,conts)
  values(1,1,2,
  '여수여행 정말 좋다!', 
  '해 가족들과 함께 여수 여행을 두번 다녀왔습니다. 이번 여행은 놀랍게도 볼거리도 많아서 그런지 정말 알찬 여행이 되었는데요..
사촌 오빠가 여수에서 직장을 다니고 계시는데 그 분이 저희 가족의 여행 가이드가 되어 주셨습니다.');

insert into board (board_id,usr_id,rms_id,title,conts)
  values(2,1,3,
  '또 가고 싶은 부산!', 
  '국제시장, 자갈치시장, 태종대, 흰여울마을, 영도대교, 감천문화마을, 송도해수욕장, 보수동책방골목,피란수도 코스, 산복도로 등
특히, 보수동책방골목은 2018 책의 해와 가을은 독서의 계절이라는 콘셉에 맞추어 방문하기 좋은 장소가 아닐까요^^ 국제시장과 인접하니 꼭 들러보세요!');

insert into board (board_id,usr_id,rms_id,title,conts)
  values(3,2,4,
  '대구 어딜 가야 좋을까', 
  '열차타신다면 KTX면 동대구역, 새마을 또는 무궁화면 대구역에 하차하면 됩니다.
점심무렵 도착하는 것으로 예정합니다.
동대구역이나 대구역 도착하면 지하철이 바로 붙어있습니다.
지하철 1호선 진천(화원)행을 탑니다.
대곡역에 하차하여 3번출구. 나와서 택시 타면 수목원까지 기본요금입니다.
수목원 돌아보신 후 택시로 앞산으로 이동합니다.');

insert into board (board_id,usr_id,rms_id,title,conts)
  values(4,2,5,
  '광화문에 놀거리가 궁금하다면?', 
  '1) 세종대왕 이야기. 충무공이순신장군이야기 ( 세종대왕동상뒤 지하로 내려 가가시 면됩니다.
2) 경복궁, 청와대. 정문. 사랑채.경복궁 구경다하시고 경복궁 후문으로 나가시면 청와대 정문( 청와대정문
     넣고 사진 한장 찍고 . 돌아나오면 경복궁역 나오면 광화문에서 동아일보사앞이 천계천입니다..
3) 청계천 시점에서 길건너면 시청역 2번 추룩로 나오면 돌담길 덕수궁입니다.구경다하시고 나오시면
    덕수궁정문 우측 길로 돌아가시면 덕수궁 돌담길입니다 올라 올라오시면 정동길입니다.  ');
    
insert into board (board_id,usr_id,rms_id,title,conts)
  values(5,3,2,
  '내가 가본 남해',
  '남해를 알차게 구경하는 루트 !!!! (숙박과 쉬어감은 해지면 쉬고 가시고,
남해는 해안도로가 잘되어 있기때문에 드문드문 쉬어 갈수 있는 벤취나 정자가 잘 되어 있습니다. ^^;)

자가용 이용시

남해고속도로- 사천 ic - 연륙교 - 창선 왕후박나무 - 지족 죽방렴, 멸치쌈밥 - 동천방향 -
가다보면 계곡비슷한곳이 있는데 놀기괜찮음 -내산 편백자연휴양림, 나비생태공원, 바람흔적미술관 -
물건 독일마을, 방조어부림 - 은점 해오름예술촌 - 해안도로 - 초전 마을 - 미조항
- 설리 해수욕장, 해안도로 - 송정해수욕장(텐트가능) - 천하 몽돌해수욕장 (텐트가능,작은계곡있음)
- 상주 해수욕장(텐트야영장있음,왼편선착장에서 유람선탑승, 시간2시간, 인당 2만원정도)
- 남해 금산 (등산시 1:30분 혹은 2시간 소요), 입구 식당가 먹을거리 있음 -');

insert into board (board_id,usr_id,rms_id,title,conts)
  values(6,3,4,
  '거제 맛집',
  '먼저 제가 소개해드리는 거제 대명리조트 맛집 팔선루는 차돌짬뽕과
탕수육이 정말 맛있는 집이예요~ 특히 차돌짬뽕은 안에 들어있는 해산물도
푸짐하고 양도 많아서 국물 맛이 대박이거든요~
그리고 탕수육도 거제도에서 유명한 몽돌의 이름을 따 몽돌탕수육이라고 정해졌는데용
몽돌탕수육도 깨끗한 기름에 튀겨져서 그런지 바삭하고 담백한 맛이 아주 최고예요

제가 추천해드리는 거제 대명리조트 맛집 팔선루에서
맛있는 짬뽕과 탕수육도 드시고 힐링여행 하고 오시길 바래요^^
참고하셔서 도움이 되셨으면 좋겠습니다~');

insert into board (board_id,usr_id,rms_id,title,conts)
  values(7,4,1,
  '제주도 정말 좋아', 
  '2박3일 일정.맛집 남겨봅니다 숙소지역두요
대략이렇게 서쪽~동쪽으로~제주공항으로 가시면 좋습니다
<첫날>
제주공항-애월해안도로-애월(지디카페)-오설록-중문(박물관은살아있다)-중문(토속음식점)-중문숙소
<둘째날>
숙소-정방폭포-섭지코지-성산(청운식당)갈치조림-우도관광-성산(청진동뚝배기-성산숙소
<마지막날>
숙소-제주시(용두암)-제주공항');

insert into board (board_id,usr_id,rms_id,title,conts)
  values(8,4,5,
  '별로 좋지 않았던 제주도 후기', 
  '제주도 갔다왔는데 너무 별로였음. 물가도 너무 비싸고 사람도 너무 많고 별로였습니다.');
  
insert into board (board_id,usr_id,rms_id,title,conts)
  values(9,5,2,
  '서울 여행 다녀왔어용 ^^;',
  '종로3가역  5번출구 낙원상가 통과하면 
인사동한복판 인사동길따라 걸으면 큰길나옴 
왼쪽건너편 보면 신한은행이 보이고 골목이 옆에 있음 이곳이 감고당길 
길따라 10분걸으면 정독도서관 도서관골목 진입 목욕탕굴둑이 보이는 골목이 나옴 
골목언덕이  북촌8경 이곳보고 옆난간으로 내려오면  삼청동까페 거리임 
까페거리에서 길따라 10분정도 쭉나오면  삼청파출소가 나옴
우측이 경복궁돌담길 경복궁구경후 경복궁역 으로 나옴 3번출구에 
세종마을음식거리가 있음 ');

insert into board (board_id,usr_id,rms_id,title,conts)
  values(10,5,1,
  '다녀왔다 북한!', 
  '북한 여행 다녀온 한국인들은 대부분 재외국민들로서 대한민국 국적자들이 아닙니다. 즉 재미동포나 재영국 동포, 혹은 재일동포들입니다. 한국인들이 아니에요. 국적이 다르니까.
우리나라와 북한은 적대국이므로 임의방북은 심각한 법률위반으로 간주, 처벌의 대상이 됩니다.
즉 자신의 혐의를 잘 설명하지 못하면 그대로 징역형을 갈 수도 있고 이렇게 국가보안법 위반으로 징역을 가게 되면 속칭 빨간줄이 그어지게 되어서 평생 공직, 대기업에는 취업 못합니다.');
  
-- 게시글 사진
insert into photo (photo_id,photo,board_id)
  values(1,'a1.gif',1);
insert into photo (photo_id,photo,board_id)
  values(2,'a2.gif',2);
insert into photo (photo_id,photo,board_id)
  values(3,'a3.gif',3);
insert into photo (photo_id,photo,board_id)
  values(4,'a4.gif',4);
insert into photo (photo_id,photo,board_id)
  values(5,'a5.gif',5);
insert into photo (photo_id,photo,board_id)
  values(6,'a6.gif',6);
insert into photo (photo_id,photo,board_id)
  values(7,'a7.gif',7);
insert into photo (photo_id,photo,board_id)
  values(8,'a8.gif',8);
insert into photo (photo_id,photo,board_id)
  values(9,'a9.gif',9);
insert into photo (photo_id,photo,board_id)
  values(10,'a10.gif',10);

