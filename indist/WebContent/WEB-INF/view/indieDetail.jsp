<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Indie - INDIST</title>

<c:import url="template/link.jsp"></c:import>
<link rel="stylesheet" href="../css/indie/indieTemplate.css">
<link rel="stylesheet" href="../css/indie/detail/musician_info.css"/>
<link rel="stylesheet" href="../css/indie/detail/member_list_indie_tab.css"/>
<link rel="stylesheet" href="../css/indie/detail/main_tab_notice_info_album_video.css"/>
<link rel="stylesheet" href="../css/indie/detail/music_table.css"/>
<link rel="stylesheet" href="../css/indie/detail/album_tab.css"/>
<link rel="stylesheet" href="../css/indie/detail/sns_tab_list.css"/>
<link rel="stylesheet" href="../css/indie/detail/sns_detail_ex.css"/>
<link rel="stylesheet" href="../css/indie/detail/concert_tab_posters.css"/>
<link rel="stylesheet" href="../css/indie/detail/concert_tab_schedule.css"/>
<link rel="stylesheet" href="../css/fullcalendar.css"/>
<style>
/*
	#indieTab .indie_tab {
		display: none;
	}
	#indieTab .indie_content_album {
		display: block;
	}*/
	#indieInfo, #lastAlbum, #indieMusic, #latesVideo {
		padding: 20px 0;
		margin: 30px 0;
	}
	.note {white-space: pre;}
	.content_sns_word {
		background: "";
	}
	
	#snsLists2 {
		display: none;
	}
	
	#indieTab .concert_view1, 
	#indieTab .concert_view2 {
    position: absolute;
    top: 150px;
    left: 125px;
    z-index: 1;
    background: #eeeeee;
    width: 750px;
    min-height: 458px;
    padding: 10px;
    border-radius: 20px;
    box-shadow: 0 16px 28px 0 rgba(0, 0, 0, 0.22), 0 25px 55px 0 rgba(0, 0, 0, 0.21);
    overflow: hidden;
    transform: scaleX(0);
    transform-origin: 50% 50%;
    transition: .5s ease;
	}
	#indieTab .concert_view1.on, 
	#indieTab .concert_view2.on {transform: scaleX(1);}
	#indieTab .concert_view1>i, 
	#indieTab .concert_view2>i {
	    position: absolute;
	    top: 5px;
	    right: 5px;
	    width: 25px;
	    height: 25px;
	    border-radius: 12.5px;
	    font-size: 20px;
	    text-align: center;
	    line-height: 25px;
	    cursor: pointer;
	}
	.concert_none {
		position: relative;
		top: 50px;
		font-size: 30px;
	}
</style>
</head>
<body>
	<div id="wrap">
		<h1 class="screen_out">Indie Detail Page</h1>
		<c:import url="../view/template/header.jsp"></c:import>

		<div id="content">
			<div id="contentAux">
				<div id="musicianInfo">
					<span class="musician_cover">
						<img src="../img/indie/etc/soranBg.jpg" alt="soran_background_image" />
						<span class="indie_setting" title="배경사진 변경">
							<i class="fa fa-gear"></i>
							<input type="file" class="musician_cover_file" />
						</span>
					</span>
					<div id="musicianProfile">
						<span class="profile">
							<img src="../img/indie/profile/soran.jpg" alt="soran" />
							<span class="indie_setting" title="프로필사진 변경">
								<i class="fa fa-gear"></i>
								<input type="file" class="musician_profile_file" />
							</span>
						</span>
						<span class="musician_name"> <em>소란(SORAN)</em>
							<span class="indie_setting" data-setting="musicianName" title="뮤지션명 변경">
								<i class="fa fa-gear"></i>
							</span>
							<div class="musician_name_update">
								<form action="" method="post">
									<input id="musicianName" name="name" maxlength="33" placeholder="musician name enter" />
									<button class="btn update">변경</button>
									<button class="btn cancel" type="reset">취소</button>
								</form>
							</div>
						</span>
						<span class="sub_title">
							<em>나만 알고 싶은, 소란(SORAN)!</em>
							<span class="indie_setting" data-setting="subTitle" title="소개글 변경">
								<i class="fa fa-gear"></i>
							</span>
							<div class="musician_sub_title_update">
								<form id="subTitleForm" action="" method="post">
									<input id="musicianSubTitle" name="name" maxlength="100" placeholder="musician introduction enter" />
									<button class="btn update">변경</button>
									<button class="btn cancel" type="reset">취소</button>
								</form>
							</div>
						</span>
					</div>
					<!-- // #musicianProfile -->
					<div class="btn_fan">
						<i class="fa fa-heart" title="팬되기"></i> <span class="fan_num">팬
							<em>1958</em> 명
						</span>
					</div>
					<div id="indieSettingBtn" title="정보수정">
						<i class="fa fa-gear"></i>
					</div>
				</div>
				<!-- // #musicianInfo -->
				<div id="memberList">
					<h2>Member List</h2>
					<div class="list">
						<ul style="width: 525px">
							<!-- width 값 변수처리 : 105*(x+1) -->
							<li>
								<img src="../img/indie/profile/goyoungbae.jpg" alt="goyoungbae">
								<span class="cover">
									<a href="indieDetail.html"></a>
									고영배
								</span>
							</li>
							<li>
								<img src="../img/indie/profile/seomyeonho.jpg" alt="seomyeonho">
								<span class="cover">
									<a href="indieDetail.html"></a>
									서면호
								</span>
							</li>
							<li>
								<img src="../img/indie/profile/pyeonyuil.jpg" alt="pyeonyuil">
								<span class="cover">
									<a href="indieDetail.html"></a>
									편유일</span>
								</li>
							<li>
								<img src="../img/indie/profile/leetaewook.jpg" alt="leetaewook">
								<span class="cover">
									<a href="indieDetail.html"></a>이태욱
								</span>
							</li>
							<!-- add member & band 
							<li>
								<i class="fa fa-plus"></i>
								<span class="cover">
									<a href=""></a>
									추가
								</span>
							</li>
							-->
						</ul>
					</div>
					<!-- // .list -->
				</div>
				<!-- // #memberList -->
				<div id="indieTab">
					<div class="tab_list">
						<ul>
							<li class="on">Main</li>
							<li>Album</li>
							<li>Song</li>
							<li>SNS</li>
							<li>Concert</li>
						</ul>
					</div>
					<div class="indie_tab indie_content_main">
						<div id="musicianNotice">
							<span class="notice">
<span class="note">
소란이 페스티벌에 빠지지 않는 이유.avi 가 업데이트 되었습니다!
비가 내리는 날씨 속에서도 잔디마당의 모든 관객을 춤추게 만든 역대급 밴드!
</span>
                                 <em>- 소란(SORAN)</em>
                            </span>
                            <span class="notice_setting">
                            	<i class="fa fa-gear" title="공지사항 변경"></i>
							</span>
							<div class="musician_notice_update">
								<form id="noticeForm" action="" method="post">
									<textarea id="musicianNoticeWord" maxlength="100" placeholder="musician notice"></textarea>
									<button class="btn update">변경</button>
									<button class="btn cancel" type="reset">취소</button>
								</form>
							</div>
						</div>
						<!-- // #musicianNotice -->
						<div id="indieInfo">
							<span>데뷔<em>2010.08.19. | 한국</em></span> <span>장르<em>가요</em></span>
							<span>유형<em>남성 | 그룹</em></span> <span>스타일<em>Rock</em></span>
						</div>
						<!-- // #indieInfo -->
						<div id="lastAlbum">
							<img src="../img/indie/album/perfectday.jpg" />
							<a href="">
								<img src="../img/indie/album/perfectday.jpg" alt="sing_for_you_cover" />
								<span>Last Album</span> <span class="album_title ellipsis">
								Perfect Day</span>
								<span class="album_info">소란(SORAN) | 2017.06.17.</span>
							</a>
						</div>
						<!-- // #lastAlbum -->
						<div id="indieMusic">
							<h3><span>소란(SORAN)</span>의 인기곡</h3>
							<table border="1">
								<caption class="screen_out">소란(SORAN)의 곡 리스트</caption>
								<thead>
									<tr>
										<th class="song_check">
											<input type="checkbox" class="check_box checked_all">
										</th>
										<th class="song_rank">순위</th>
										<th class="song_name">곡명</th>
										<th class="song_artist">아티스트</th>
										<th class="song_album">앨범</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<td colspan="5"><a href="">플레이 리스트에 담기</a></td>
									</tr>
								</tfoot>
								<tbody>
                            <!--<tr>-->
                                <!--<td colspan="5">곡이 없습니다.</td>-->
                            <!--</tr>-->
                            <tr>
								<td class="song_check">
									<input type="checkbox" class="check_box checked"/>
								</td>
								<td class="song_no">1</td>
								<th class="align_left">
									<span class="song_song title_song">
									<a href="" class="song_name ellipsis">Perfect Day</a>
								</span>
								</th>
                                <td>
                                    <span class="song_artist">
                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
                                    </span>
                                </td>
                                <td class="align_left">
                                    <span class="song_album">
                                        <a href="" class="album_name ellipsis">Perfect Day</a>
                                    </span>
                                </td>
                            </tr>
							<tr>
								<td class="song_check">
									<input type="checkbox" class="check_box checked"/>
								</td>
								<td class="song_no">2</td>
								<th class="align_left">
									<span class="song_song title_song">
									<a href="" class="song_name ellipsis">엄마, 기억나</a>
								</span>
								</th>
                                <td>
                                    <span class="song_artist">
                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
                                    </span>
                                </td>
                                <td class="align_left">
                                    <span class="song_album">
                                        <a href="" class="album_name ellipsis">싱포유 - 네번째이야기 가족을 부탁해</a>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="song_check">
                                    <input type="checkbox" class="check_box checked"/>
                                </td>
                                <td class="song_no">3</td>
                                <th class="align_left">
                                    <span class="song_song title_song">
                                         <a href="" class="song_name ellipsis">너를 공부해</a>
                                    </span>
                                </th>
                                <td>
                                    <span class="song_artist">
                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
                                    </span>
                                </td>
                                <td class="align_left">
                                    <span class="song_album">
                                        <a href="" class="album_name ellipsis">너를 공부해</a>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="song_check">
                                    <input type="checkbox" class="check_box checked"/>
                                </td>
                                <td class="song_no">4</td>
                                <th class="align_left">
                                    <span class="song_song title_song">
                                         <a href="" class="song_name ellipsis">나만 알고 싶다</a>
                                    </span>
                                </th>
                                <td>
                                    <span class="song_artist">
                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
                                    </span>
                                </td>
                                <td class="align_left">
                                    <span class="song_album">
                                        <a href="" class="album_name ellipsis">CAKE</a>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="song_check">
                                    <input type="checkbox" class="check_box checked"/>
                                </td>
                                <td class="song_no">5</td>
                                <th class="align_left">
                                    <span class="song_song">
                                         <a href="" class="song_name ellipsis">Sunshine</a>
                                    </span>
                                </th>
                                <td>
                                    <span class="song_artist">
                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
                                    </span>
                                </td>
                                <td class="align_left">
                                    <span class="song_album">
                                        <a href="" class="album_name ellipsis">CAKE</a>
                                    </span>
                                </td>
                            </tr>
								</tbody>
							</table>
							<!-- // #indieMusic_list -->
						</div>
						<!-- // #indieMusic -->
						<div id="latestVideo">
							<h3>최신 영상</h3>
							<ul>
								<li>
									<video class="video_default" title="소란(SORAN) - Perfect Day">
										<source src="../video/indie/소란(SORAN) - Perfect Day Official M-V.mp4">
									</video>
									<span class="video_name ellipsis">소란(SORAN) - 'Perfect Day' Official M/V</span>
								</li>
								<li>
									<video class="video_default" title="SORAN(소란) - 너를 공부해">
										<source src="../video/indie/SORAN(소란) - 너를 공부해 Official M-V.mp4">
									</video>
									<span class="video_name ellipsis">SORAN(소란) - 너를 공부해 Official M/V</span>
								</li>
								<li>
									<video class="video_default" title="SORAN(소란) - 나만 알고 싶다">
										<source src="../video/indie/SORAN(소란) - '나만 알고 싶다' Official M-V.mp4">
									</video>
									<span class="video_name ellipsis">SORAN(소란) - '나만 알고 싶다' Official M/V</span>
								</li>
								<li>
									<video class="video_default" title="소란(SORAN) - 자꾸 생각나">
										<source src="../video/indie/소란(SORAN) - 자꾸 생각나 with Sam Ock, 김이지(꽃잠프로젝트).mp4">
									</video>
									<span class="video_name ellipsis">소란(SORAN) - 자꾸 생각나 with Sam Ock, 김이지(꽃잠프로젝트)</span>
								</li>
							</ul>
							<div class="video">
								<iframe class="video_play" allowfullscreen></iframe>
								<i class="fa fa-close"></i>
							</div><!-- // .video --><!-- 영상 재생 창 -->
						</div>
					</div>
					<!-- // .indie_content_main -->
					<div class="indie_tab indie_content_album">
						<div id="indieAlbum">
							<ul>
								<li>
		                            <div class="content_album_cover">
		                                <img src="../img/indie/album/perfectday.jpg" alt="perfectday"/>
		                                <span class="content_album_regdate">
		                                    2017 0617
		                                </span>
		                            </div>
		                            <div class="content_album_info">
		                                <span class="content_album_musician ellipsis">소란(SORAN)</span>
		                                <span class="content_album_title ellipsis">Perfect Day</span>
		                            </div>
		                            <div class="cover">
		                                <a href="">
		                                    <span class="content_album_price">
		                                        14,500
		                                    </span>
		                                </a>
		                                <div class="content_album_thumb">
		                                    <span class="content_album_likes">
		                                        <i class="fa fa-heart-o"></i>
		                                        83
		                                    </span>
		                                    <span class="content_album_cart">
		                                        <i class="fa fa-shopping-cart"></i>
		                                    </span>
		                                </div>
		                            </div>
		                        </li>
		                        <li>
		                            <div class="content_album_cover">
		                                <img src="../img/indie/album/album_cover.jpg" alt="singforyou"/>
		                                <span class="content_album_regdate">
		                                    2017 0205
		                                </span>
		                            </div>
		                            <div class="content_album_info">
		                                <span class="content_album_musician ellipsis">소란(SORAN)</span>
		                                <span class="content_album_title ellipsis">싱포유 - 네번째이야기 가족을 부탁해</span>
		                            </div>
		                            <div class="cover">
		                                <a href="">
		                                    <span class="content_album_price">
		                                        14,500
		                                    </span>
		                                </a>
		                                <div class="content_album_thumb">
		                                    <span class="content_album_likes">
		                                        <i class="fa fa-heart-o"></i>
		                                        42
		                                    </span>
		                                    <span class="content_album_cart">
		                                        <i class="fa fa-shopping-cart"></i>
		                                    </span>
		                                </div>
		                            </div>
		                        </li>
		                        <li>
		                            <div class="content_album_cover">
		                                <img src="../img/indie/album/study.jpg" alt="study"/>
		                                <span class="content_album_regdate">
		                                    2017 0113
		                                </span>
		                            </div>
		                            <div class="content_album_info">
		                                <span class="content_album_musician ellipsis">소란(SORAN)</span>
		                                <span class="content_album_title ellipsis">너를 공부해</span>
		                            </div>
		                            <div class="cover">
		                                <a href="">
		                                    <span class="content_album_price">
		                                        14,500
		                                    </span>
		                                </a>
		                                <div class="content_album_thumb">
		                                    <span class="content_album_likes">
		                                        <i class="fa fa-heart-o"></i>
		                                        183
		                                    </span>
		                                    <span class="content_album_cart">
		                                        <i class="fa fa-shopping-cart"></i>
		                                    </span>
		                                </div>
		                            </div>
		                        </li>
		                        <li>
		                            <div class="content_album_cover">
		                                <img src="../img/indie/album/cake.jpg" alt="cake"/>
		                                <span class="content_album_regdate">
		                                    2016 1006
		                                </span>
		                            </div>
		                            <div class="content_album_info">
		                                <span class="content_album_musician ellipsis">소란(SORAN)</span>
		                                <span class="content_album_title ellipsis">CAKE</span>
		                            </div>
		                            <div class="cover">
		                                <a href="">
		                                    <span class="content_album_price">
		                                        15,500
		                                    </span>
		                                </a>
		                                <div class="content_album_thumb">
		                                    <span class="content_album_likes">
		                                        <i class="fa fa-heart-o"></i>
		                                        428
		                                    </span>
		                                    <span class="content_album_cart">
		                                        <i class="fa fa-shopping-cart"></i>
		                                    </span>
		                                </div>
		                            </div>
		                        </li>
		                        <li>
		                            <div class="content_album_cover">
		                                <img src="../img/indie/album/seeyou.jpg" alt="seeyou"/>
		                                <span class="content_album_regdate">
		                                    2016 0922
		                                </span>
		                            </div>
		                            <div class="content_album_info">
		                                <span class="content_album_musician ellipsis">소란(SORAN)</span>
		                                <span class="content_album_title ellipsis">너를 보네 (Feat. 권정열 of 10cm)</span>
		                            </div>
		                            <div class="cover">
		                                <a href="">
		                                    <span class="content_album_price">
		                                        14,500
		                                    </span>
		                                </a>
		                                <div class="content_album_thumb">
		                                    <span class="content_album_likes">
		                                        <i class="fa fa-heart-o"></i>
		                                        144
		                                    </span>
		                                    <span class="content_album_cart">
		                                        <i class="fa fa-shopping-cart"></i>
		                                    </span>
		                                </div>
		                            </div>
		                        </li>
		                        <li>
		                            <div class="content_album_cover">
		                                <img src="../img/indie/album/gobaek.jpg" alt="gobaek"/>
		                                <span class="content_album_regdate">
		                                    2016 0404
		                                </span>
		                            </div>
		                            <div class="content_album_info">
		                                <span class="content_album_musician ellipsis">소란(SORAN)</span>
		                                <span class="content_album_title ellipsis">고백직전</span>
		                            </div>
		                            <div class="cover">
		                                <a href="">
		                                    <span class="content_album_price">
		                                        14,500
		                                    </span>
		                                </a>
		                                <div class="content_album_thumb">
		                                    <span class="content_album_likes">
		                                        <i class="fa fa-heart-o"></i>
		                                        151
		                                    </span>
		                                    <span class="content_album_cart">
		                                        <i class="fa fa-shopping-cart"></i>
		                                    </span>
		                                </div>
		                            </div>
		                        </li>
								<li>
		                            <div class="content_album_cover">
		                                <img src="../img/indie/album/happy.jpg" alt="happy"/>
		                                <span class="content_album_regdate">
		                                    2015 1126
		                                </span>
		                            </div>
		                            <div class="content_album_info">
		                                <span class="content_album_musician ellipsis">소란(SORAN)</span>
		                                <span class="content_album_title ellipsis">넌 행복해</span>
		                            </div>
		                            <div class="cover">
		                                <a href="">
		                                    <span class="content_album_price">
		                                        14,500
		                                    </span>
		                                </a>
		                                <div class="content_album_thumb">
		                                    <span class="content_album_likes">
		                                        <i class="fa fa-heart-o"></i>
		                                        143
		                                    </span>
		                                    <span class="content_album_cart">
		                                        <i class="fa fa-shopping-cart"></i>
		                                    </span>
		                                </div>
		                            </div>
		                        </li>
		                        <li>
		                            <div class="content_album_cover">
		                                <img src="../img/indie/album/gugfriend.jpg" alt="gufriend"/>
		                                <span class="content_album_regdate">
		                                    2015 0522
		                                </span>
		                            </div>
		                            <div class="content_album_info">
		                                <span class="content_album_musician ellipsis">소란(SORAN)</span>
		                                <span class="content_album_title ellipsis">구여친클럽 OST Part. 2</span>
		                            </div>
		                            <div class="cover">
		                                <a href="">
		                                    <span class="content_album_price">
		                                        14,500
		                                    </span>
		                                </a>
		                                <div class="content_album_thumb">
		                                    <span class="content_album_likes">
		                                        <i class="fa fa-heart-o"></i>
		                                        82
		                                    </span>
		                                    <span class="content_album_cart">
		                                        <i class="fa fa-shopping-cart"></i>
		                                    </span>
		                                </div>
		                            </div>
		                        </li>
		                        <li>
		                            <div class="content_album_cover">
		                                <img src="../img/indie/album/thing.jpg" alt="thing"/>
		                                <span class="content_album_regdate">
		                                    2015 0305
		                                </span>
		                            </div>
		                            <div class="content_album_info">
		                                <span class="content_album_musician ellipsis">소란(SORAN)</span>
		                                <span class="content_album_title ellipsis">자꾸 생각나</span>
		                            </div>
		                            <div class="cover">
		                                <a href="">
		                                    <span class="content_album_price">
		                                        14,500
		                                    </span>
		                                </a>
		                                <div class="content_album_thumb">
		                                    <span class="content_album_likes">
		                                        <i class="fa fa-heart-o"></i>
		                                        248
		                                    </span>
		                                    <span class="content_album_cart">
		                                        <i class="fa fa-shopping-cart"></i>
		                                    </span>
		                                </div>
		                            </div>
		                        </li>
		                        <li>
		                            <div class="content_album_cover">
		                                <img src="../img/indie/album/prince.jpg" alt="prince"/>
		                                <span class="content_album_regdate">
		                                    2013 1022
		                                </span>
		                            </div>
		                            <div class="content_album_info">
		                                <span class="content_album_musician ellipsis">소란(SORAN)</span>
		                                <span class="content_album_title ellipsis">Prince</span>
		                            </div>
		                            <div class="cover">
		                                <a href="">
		                                    <span class="content_album_price">
		                                        14,500
		                                    </span>
		                                </a>
		                                <div class="content_album_thumb">
		                                    <span class="content_album_likes">
		                                        <i class="fa fa-heart-o"></i>
		                                        214
		                                    </span>
		                                    <span class="content_album_cart">
		                                        <i class="fa fa-shopping-cart"></i>
		                                    </span>
		                                </div>
		                            </div>
		                        </li>
							</ul>
						</div>
						<!-- // #listAlbum -->
					</div>
					<!-- .indie_content_album -->
					<div class="indie_tab indie_content_song">
						<h3>소란(SORAN)의 곡 리스트</h3>
						<table border="1">
							<caption class="screen_out">소란(SORAN)의 곡 리스트</caption>
							<thead>
								<tr>
									<th class="song_check"><input type="checkbox"
										class="check_box checked_all"></th>
									<th class="song_rank">순위</th>
									<th class="song_name">곡명</th>
									<th class="song_artist">아티스트</th>
									<th class="song_album">앨범</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<td colspan="5"><a href="">플레이 리스트에 담기</a></td>
								</tr>
							</tfoot>
							<tbody>
								<tr>
									<td class="song_check">
										<input type="checkbox" class="check_box checked"/>
									</td>
									<td class="song_no">1</td>
									<th class="align_left">
										<span class="song_song title_song">
										<a href="" class="song_name ellipsis">Perfect Day</a>
									</span>
									</th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">Perfect Day</a>
	                                    </span>
	                                </td>
	                            </tr>
								<tr>
									<td class="song_check">
										<input type="checkbox" class="check_box checked"/>
									</td>
									<td class="song_no">2</td>
									<th class="align_left">
										<span class="song_song title_song">
										<a href="" class="song_name ellipsis">엄마, 기억나</a>
									</span>
									</th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">싱포유 - 네번째이야기 가족을 부탁해</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">3</td>
	                                <th class="align_left">
	                                    <span class="song_song title_song">
	                                         <a href="" class="song_name ellipsis">너를 공부해</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                        <!-- 아티스트가 2명 이상일때
	                                        <i class="fa fa-sort-up fa-rotate-90" title="더보기"></i>
	                                        <div class="artists_name">
	                                            <ul>
	                                                <li><a href="" class="artist_name ellipsis">소란(SORAN)</a></li>
	                                                <li><a href="" class="artist_name ellipsis">Sam Ock</a></li>
	                                                <li><a href="" class="artist_name ellipsis">꽃잠프로젝트</a></li>
	                                            </ul>
	                                        </div>
	                                        -->
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">너를 공부해</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">4</td>
	                                <th class="align_left">
	                                    <span class="song_song title_song">
	                                         <a href="" class="song_name ellipsis">나만 알고 싶다</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                        <!-- 아티스트가 2명 이상일때
	                                        <i class="fa fa-sort-up fa-rotate-90" title="더보기"></i>
	                                        <div class="artists_name">
	                                            <ul>
	                                                <li><a href="" class="artist_name ellipsis">소란(SORAN)</a></li>
	                                                <li><a href="" class="artist_name ellipsis">Sam Ock</a></li>
	                                                <li><a href="" class="artist_name ellipsis">꽃잠프로젝트</a></li>
	                                            </ul>
	                                        </div>
	                                        -->
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">CAKE</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">5</td>
	                                <th class="align_left">
	                                    <span class="song_song">
	                                         <a href="" class="song_name ellipsis">Sunshine</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                        <!-- 아티스트가 2명 이상일때
	                                        <i class="fa fa-sort-up fa-rotate-90" title="더보기"></i>
	                                        <div class="artists_name">
	                                            <ul>
	                                                <li><a href="" class="artist_name ellipsis">소란(SORAN)</a></li>
	                                                <li><a href="" class="artist_name ellipsis">Sam Ock</a></li>
	                                                <li><a href="" class="artist_name ellipsis">꽃잠프로젝트</a></li>
	                                            </ul>
	                                        </div>
	                                        -->
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">CAKE</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">6</td>
	                                <th class="align_left">
	                                    <span class="song_song">
	                                         <a href="" class="song_name ellipsis">그런 노래</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">CAKE</a>
	                                    </span>
	                                </td>
	                            </tr>
	                        	<tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">7</td>
	                                <th class="align_left">
	                                    <span class="song_song">
	                                         <a href="" class="song_name ellipsis">여기에 서서</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">CAKE</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">8</td>
	                                <th class="align_left">
	                                    <span class="song_song">
	                                         <a href="" class="song_name ellipsis">시험기간 책상정리</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">CAKE</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">9</td>
	                                <th class="align_left">
	                                    <span class="song_song">
	                                         <a href="" class="song_name ellipsis">너를 보네 (Feat. 권정열 of 10cm)</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">CAKE</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">10</td>
	                                <th class="align_left">
	                                    <span class="song_song">
	                                         <a href="" class="song_name ellipsis">우리, 여행</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">CAKE</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">11</td>
	                                <th class="align_left">
	                                    <span class="song_song">
	                                         <a href="" class="song_name ellipsis">타인이 되어</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">CAKE</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">12</td>
	                                <th class="align_left">
	                                    <span class="song_song">
	                                         <a href="" class="song_name ellipsis">잠들 때까지</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">CAKE</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">13</td>
	                                <th class="align_left">
	                                    <span class="song_song title_song">
	                                         <a href="" class="song_name ellipsis">그리고 너 (Feat. 안녕하신가영)</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">노들뮤직 Vol.1 오직 너를 위한 고백</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">14</td>
	                                <th class="align_left">
	                                    <span class="song_song title_song">
	                                         <a href="" class="song_name ellipsis">고백직전</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">고백직전</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">15</td>
	                                <th class="align_left">
	                                    <span class="song_song title_song">
	                                         <a href="" class="song_name ellipsis">넌 행복해</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">넌 행복해</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">16</td>
	                                <th class="align_left">
	                                    <span class="song_song title_song">
	                                         <a href="" class="song_name ellipsis">타임라인 (Timeline)</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">구여친클럽 OST Part.2</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">17</td>
	                                <th class="align_left">
	                                    <span class="song_song title_song">
	                                         <a href="" class="song_name ellipsis">자꾸 생각나</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">자꾸 생각나</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">18</td>
	                                <th class="align_left">
	                                    <span class="song_song">
	                                         <a href="" class="song_name ellipsis">작은 청혼</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">Prince</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">19</td>
	                                <th class="align_left">
	                                    <span class="song_song">
	                                         <a href="" class="song_name ellipsis">유후 (YouWho)</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">Prince</a>
	                                    </span>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="song_check">
	                                    <input type="checkbox" class="check_box checked"/>
	                                </td>
	                                <td class="song_no">20</td>
	                                <th class="align_left">
	                                    <span class="song_song title_song">
	                                         <a href="" class="song_name ellipsis">리코타 치즈 샐러드</a>
	                                    </span>
	                                </th>
	                                <td>
	                                    <span class="song_artist">
	                                        <a href="" class="artist_name ellipsis">소란(SORAN)</a>
	                                    </span>
	                                </td>
	                                <td class="align_left">
	                                    <span class="song_album">
	                                        <a href="" class="album_name ellipsis">Prince</a>
	                                    </span>
	                                </td>
	                            </tr>
	                        </tbody>
						</table>
						<!-- // .indie_content_song_list -->
					</div>
					<!-- // .indie_content_song -->
					<div class="indie_tab indie_content_sns">
                        <div id="snsWriteBox">
                            <span class="btn_sns_write">
                                <i class="fa fa-pencil"></i>
                                글쓰기
                            </span>
                            <div class="sns_write_form">
                                <i class="fa fa-close sns_i"></i>
                                <h4>SNS 글 작성</h4>
                                <form id="snsInsert" action="" method="post" enctype="multipart/form-data">
                                    <fieldset>
                                        <legend class="screen_out">SNS 글 작성 폼</legend>
                                        <textarea id="snsContent" name="content" placeholder="내용을 입력하세요."></textarea>
                                        <input type="file" id="snsFile" name="uploadFile"/>
                                        <button type="submit" id="snsWrite">글쓰기</button>
                                    </fieldset>
                                </form> <!-- // .sns_write_form form -->
                            </div> <!-- // .sns_write_form -->
                        </div> <!-- // #snsWriteBox -->
                        <div id="snsLists">
                            <div class="sns_list list_left">
                                <ul>
                                    <li class="sns_default">
                                        <div class="sns_timeline_over">
                                            <div class="sns_timeline_icon"></div>
                                        </div>
										<span class="content_sns_word">
											반드시 기억해야 할 날이 올해도 돌아왔습니다. 드디어 내일!! 2017년 2월 22일 수요일
                                            일 년에 단 한 번 아티스트 스태프 팬이 함께하는 소란데이 !!하루 종일 소란만 생각하는 소란데이 2017~!
                                            미션과 일정, 주요 일정 상세 내용을 공개합니다!
                                            소란데이 미션/주요 일정 상세 내용 ▶ goo.gl/hcYNvH
										</span>
                                        <span class="content_sns_regdate" title="2017. 05. 16. 15:00:00 작성됨">
                                            <i class="fa fa-clock-o"></i>
                                            2017년 05월 16일
                                        </span>
                                        <span class="btn_content_view">
                                            <em data-snsNo="0">전체보기</em>
                                            <i class="fa fa-angle-right"></i>
                                        </span>
                                    </li>
                                    <li class="sns_camcorder">
                                        <div class="sns_timeline_over">
                                            <div class="sns_timeline_icon"></div>
                                        </div>
                                        <span class="content_sns_view">
                                            <span class="content_ico"></span>
                                            <video>
                                                <source id="videoSource" src="../video/indie/소란(SORAN) - Perfect Day Official M-V.mp4">
                                            </video>
                                        </span>
                                        <span class="content_sns_word">
                                            '소란 (SORAN)'은 지난 정규 3집 [CAKE]를 통해 일상에 잠재한 행복을 두드려 깨우며 일상적인 하루를 기념일처럼 특별하게 만들어주었다. 
                                            그리고 이제 이들은 그런 완벽한 하루를 위해서는 너만 있으면 된다고 노래한다. 
                                            평범한 매일을 기억하게 하는 건 모든 것이 완벽하고 특별하기 때문이 아니다. 
                                            그저 당신과 내가 함께 있기 때문이다. 그것만으로도 충분하다.
                                        </span>
                                        <span class="content_sns_regdate" title="2017. 05. 16. 15:00:00 작성됨">
                                            <i class="fa fa-clock-o"></i>
                                            2017년 05월 16일
                                        </span>
                                        <span class="btn_content_view">
                                            <em data-snsNo="2">전체보기</em>
                                            <i class="fa fa-angle-right"></i>
                                        </span>
                                    </li>
                                </ul>
                            </div> <!-- // #snsListLeft -->
                            <div class="sns_list list_right">
                                <ul>
                                    <li class="sns_photo">
                                        <div class="sns_timeline_over">
                                            <div class="sns_timeline_icon"></div>
                                        </div>
                                        <span class="content_sns_view">
                                            <span class="content_ico"></span>
                                            <img src="../img/indie/etc/soran_sns.jpg" alt=""/>
                                        </span>
                                        <span class="content_sns_word">
                                            소란은 지금 '너를 공부해' 발매를 두 시간 앞두고 야식 라이브를 준비하고 있습니다!
                                    		멤버들 앞에 놓여진 거대한 랍스터!
		                                    오늘 밤 11시 페이스북 페이지 '오늘 뭐 먹지'에서 소란의 야식라이브를 꼭 찾아보세요!
		                                    발매 직전 가장 처음으로 '너를 공부해' 라이브를 공개합니다.
		                                    오늘 자정 발매도 많이 기대해주세요!
                                        </span>
                                        <span class="content_sns_regdate" title="2017. 05. 16. 15:00:00 작성됨">
                                            <i class="fa fa-clock-o"></i>
                                            2017년 05월 16일
                                        </span>
                                        <span class="btn_content_view">
                                            <em data-snsNo="1">전체보기</em>
                                            <i class="fa fa-angle-right"></i>
                                        </span>
                                    </li>
                                </ul>
                            </div> <!-- // #snsListRight -->
                            <div class="sns_timeline">
                                <span class="sns_refresh"></span>
                            </div>
                        </div><!-- // #snsLists -->
                        <div id="snsLists2">
                            <div class="sns_list list_left">
                                <ul>
                                <li class="sns_default">
                                        <div class="sns_timeline_over">
                                            <div class="sns_timeline_icon"></div>
                                        </div>
                                        <span class="content_sns_word" id="insertView">
                                            
                                        </span>
                                        <span class="content_sns_regdate" title="2017. 05. 16. 15:00:00 작성됨">
                                            <i class="fa fa-clock-o"></i>
                                            2017년 06월 23일
                                        </span>
                                        <span class="btn_content_view">
                                            <em data-snsNo="3">전체보기</em>
                                            <i class="fa fa-angle-right"></i>
                                        </span>
                                    </li>
                                    <li class="sns_photo">
                                        <div class="sns_timeline_over">
                                            <div class="sns_timeline_icon"></div>
                                        </div>
                                        <span class="content_sns_view">
                                            <span class="content_ico"></span>
                                            <img src="../img/indie/etc/soran_sns.jpg" alt=""/>
                                        </span>
                                        <span class="content_sns_word">
                                            소란은 지금 '너를 공부해' 발매를 두 시간 앞두고 야식 라이브를 준비하고 있습니다!
                                    		멤버들 앞에 놓여진 거대한 랍스터!
		                                    오늘 밤 11시 페이스북 페이지 '오늘 뭐 먹지'에서 소란의 야식라이브를 꼭 찾아보세요!
		                                    발매 직전 가장 처음으로 '너를 공부해' 라이브를 공개합니다.
		                                    오늘 자정 발매도 많이 기대해주세요!
                                        </span>
                                        <span class="content_sns_regdate" title="2017. 05. 16. 15:00:00 작성됨">
                                            <i class="fa fa-clock-o"></i>
                                            2017년 05월 16일
                                        </span>
                                        <span class="btn_content_view">
                                            <em data-snsNo="1">전체보기</em>
                                            <i class="fa fa-angle-right"></i>
                                        </span>
                                    </li>
                                </ul>
                            </div> <!-- // #snsListLeft -->
                            <div class="sns_list list_right">
                                <ul>
                                    
                                    <li class="sns_default">
                                        <div class="sns_timeline_over">
                                            <div class="sns_timeline_icon"></div>
                                        </div>
                                        <span class="content_sns_word">
                                            반드시 기억해야 할 날이 올해도 돌아왔습니다. 드디어 내일!! 2017년 2월 22일 수요일
                                            일 년에 단 한 번 아티스트 스태프 팬이 함께하는 소란데이 !!하루 종일 소란만 생각하는 소란데이 2017~!
                                            미션과 일정, 주요 일정 상세 내용을 공개합니다!
                                            소란데이 미션/주요 일정 상세 내용 ▶ goo.gl/hcYNvH
                                        </span>
                                        <span class="content_sns_regdate" title="2017. 05. 16. 15:00:00 작성됨">
                                            <i class="fa fa-clock-o"></i>
                                            2017년 05월 16일
                                        </span>
                                        <span class="btn_content_view">
                                            <em data-snsNo="0">전체보기</em>
                                            <i class="fa fa-angle-right"></i>
                                        </span>
                                    </li>
                                    <li class="sns_camcorder">
                                        <div class="sns_timeline_over">
                                            <div class="sns_timeline_icon"></div>
                                        </div>
                                        <span class="content_sns_view">
                                            <span class="content_ico"></span>
                                            <video>
                                                <source id="videoSource" src="../video/indie/소란(SORAN) - Perfect Day Official M-V.mp4">
                                            </video>
                                        </span>
                                        <span class="content_sns_word">
                                            '소란 (SORAN)'은 지난 정규 3집 [CAKE]를 통해 일상에 잠재한 행복을 두드려 깨우며 일상적인 하루를 기념일처럼 특별하게 만들어주었다. 
                                            그리고 이제 이들은 그런 완벽한 하루를 위해서는 너만 있으면 된다고 노래한다. 
                                            평범한 매일을 기억하게 하는 건 모든 것이 완벽하고 특별하기 때문이 아니다. 
                                            그저 당신과 내가 함께 있기 때문이다. 그것만으로도 충분하다.
                                        </span>
                                        <span class="content_sns_regdate" title="2017. 05. 16. 15:00:00 작성됨">
                                            <i class="fa fa-clock-o"></i>
                                            2017년 05월 16일
                                        </span>
                                        <span class="btn_content_view">
                                            <em data-snsNo="2">전체보기</em>
                                            <i class="fa fa-angle-right"></i>
                                        </span>
                                    </li>
                                </ul>
                            </div> <!-- // #snsListRight -->
                            <div class="sns_timeline">
                                <span class="sns_refresh"></span>
                            </div>
                        </div><!-- // #snsLists -->
                        <div class="sns_detaile default">
                            <i class="fa fa-close sns_i" title="닫기"></i>
                            <div class="content_sns">
                                <span class="content_sns_word">
                                    반드시 기억해야 할 날이 올해도 돌아왔습니다. 드디어 내일!! 2017년 2월 22일 수요일
                                    일 년에 단 한 번 아티스트 스태프 팬이 함께하는 소란데이 !!하루 종일 소란만 생각하는 소란데이 2017~!
                                    미션과 일정, 주요 일정 상세 내용을 공개합니다!
                                    소란데이 미션/주요 일정 상세 내용 ▶ goo.gl/hcYNvH
                                </span>
                                <span class="content_sns_info" title="2017. 05. 16. 15:00:00 작성됨">
                                    <span class="replies_num">
                                        <i class="fa fa-comment"></i>
                                        100
                                    </span>
                                    <span class="content_sns_regdate">
                                        <i class="fa fa-clock-o"></i>
                                        2017년 05월 16일
                                    </span>
                                </span>
                            </div> <!-- // .content_sns -->
                            <div class="sns_replies">
                                <div id="snsReplyRegister">
                                    <form action="" method="post">
                                        <input type="hidden" name="userNo" value=""/>
                                        <input type="hidden" name="typeNo" value="23"/>
                                        <textarea id="snsReply" name="replyContent" maxlength="1000" placeholder="댓글을 입력하세요."></textarea>
                                        <button class="btn_reply_write">등록</button>
                                    </form>
                                </div> <!-- // #snsReplyRegister -->
                                <div id="snsReplies">
                                    <ul>
                                        <li>
                                            <div class="reply_writer">
                                                <img class="writer_profile" src="../img/indie/profile/goyoungbae.jpg" alt="goyoungbae"/>
                                                <span class="writer ellipsis">영배</span>
                                            </div>
                                            <div class="reply">
                                                <span class="content_reply">소란데이~ 꼭 참석할게요~!</span>
                                                <span class="content_reply_regdate">2017. 06. 06. 18:13</span>
                                                <i class="fa fa-close" title="삭제"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="reply_writer">
                                                <img class="writer_profile" src="../img/indie/profile/goyoungbae.jpg" alt="goyoungbae"/>
                                                <span class="writer ellipsis">영배</span>
                                            </div>
                                            <div class="reply">
                                                <span class="content_reply">소란소란 소란데이!</span>
                                                <span class="content_reply_regdate">2017. 06. 06. 18:13</span>
                                                <i class="fa fa-close" title="삭제"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="reply_writer">
                                                <img class="writer_profile" src="../img/indie/profile/pyeonyuil.jpg" alt="pyeonyuil"/>
                                                <span class="writer ellipsis">유일</span>
                                            </div>
                                            <div class="reply">
                                                <span class="content_reply">음.. 일정이 이렇게 되는군요.</span>
                                                <span class="content_reply_regdate">2017. 06. 06. 18:13</span>
                                                <i class="fa fa-close" title="삭제"></i>
                                            </div>
                                        </li>
                                    </ul>
                                </div> <!-- // #snsReplies -->
                            </div> <!-- // .sns_replies -->
                        </div> <!-- // #snsDetail -->
                        <div class="sns_detail photo">
                            <i class="fa fa-close sns_i" title="닫기"></i>
                            <div class="content_sns">
                                <span class="content_sns_content">
                                    <img src="../img/indie/etc/soran_sns.jpg" alt=""/>
                                </span>
                                <span class="content_sns_word">
                                    소란은 지금 '너를 공부해' 발매를 두 시간 앞두고 야식 라이브를 준비하고 있습니다!
                                    멤버들 앞에 놓여진 거대한 랍스터!
                                    오늘 밤 11시 페이스북 페이지 '오늘 뭐 먹지'에서 소란의 야식라이브를 꼭 찾아보세요!
                                    발매 직전 가장 처음으로 '너를 공부해' 라이브를 공개합니다.
                                    오늘 자정 발매도 많이 기대해주세요!
                                </span>
                                <span class="content_sns_info" title="2017. 05. 16. 15:00:00 작성됨">
                                    <span class="replies_num">
                                        <i class="fa fa-comment"></i>
                                        100
                                    </span>
                                    <span class="content_sns_regdate">
                                        <i class="fa fa-clock-o"></i>
                                        2017년 05월 16일
                                    </span>
                                </span>
                            </div> <!-- // .content_sns -->
                            <div class="sns_replies">
                                <div id="snsReplyRegister">
                                    <form action="" method="post">
                                        <input type="hidden" name="userNo" value=""/>
                                        <input type="hidden" name="typeNo" value="23"/>
                                        <textarea id="snsReply" name="replyContent" maxlength="1000" placeholder="댓글을 입력하세요."></textarea>
                                        <button class="btn_reply_write">등록</button>
                                    </form>
                                </div> <!-- // #snsReplyRegister -->
                                <div id="snsReplies">
                                    <ul>
                                        <li>
                                            <div class="reply_writer">
                                                <img class="writer_profile" src="../img/indie/profile/goyoungbae.jpg" alt="goyoungbae"/>
                                                <span class="writer ellipsis">영배</span>
                                            </div>
                                            <div class="reply">
                                                <span class="content_reply">아싸 1빠!</span>
                                                <span class="content_reply_regdate">2017. 06. 06. 18:13</span>
                                                <i class="fa fa-close" title="삭제"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="reply_writer">
                                                <img class="writer_profile" src="../img/indie/profile/leetaewook.jpg" alt="leetaewook"/>
                                                <span class="writer ellipsis">태욱</span>
                                            </div>
                                            <div class="reply">
                                                <span class="content_reply">2빠</span>
                                                <span class="content_reply_regdate">2017. 06. 06. 18:13</span>
                                                <i class="fa fa-close" title="삭제"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="reply_writer">
                                                <img class="writer_profile" src="../img/indie/profile/hyukoh.jpg" alt="hyukoh"/>
                                                <span class="writer ellipsis">H.OH</span>
                                            </div>
                                            <div class="reply">
                                                <span class="content_reply">까비.. 3빠</span>
                                                <span class="content_reply_regdate">2017. 06. 06. 18:13</span>
                                                <i class="fa fa-close" title="삭제"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="reply_writer">
                                                <img class="writer_profile" src="../img/indie/profile/10cm.jpg" alt="10cm"/>
                                                <span class="writer ellipsis">Ten.Ten</span>
                                            </div>
                                            <div class="reply">
                                                <span class="content_reply">댓글놀이 하는사람들 완전 유치함. 난 4빠</span>
                                                <span class="content_reply_regdate">2017. 06. 06. 18:13</span>
                                                <i class="fa fa-close" title="삭제"></i>
                                            </div>
                                        </li>
                                    </ul>
                                </div> <!-- // #snsReplies -->
                            </div> <!-- // .sns_replies -->
                        </div> <!-- // #snsDetail -->
                        <div class="camera">
                            <i class="fa fa-close sns_i" title="닫기"></i>
                            <div class="content_sns">
                                <span class="content_sns_content"></span>
                                <span class="content_sns_word">
                                    '소란 (SORAN)'은 지난 정규 3집 [CAKE]를 통해 일상에 잠재한 행복을 두드려 깨우며 일상적인 하루를 기념일처럼 특별하게 만들어주었다. 
                                            그리고 이제 이들은 그런 완벽한 하루를 위해서는 너만 있으면 된다고 노래한다. 
                                            평범한 매일을 기억하게 하는 건 모든 것이 완벽하고 특별하기 때문이 아니다. 
                                            그저 당신과 내가 함께 있기 때문이다. 그것만으로도 충분하다.
                                </span>
                                <span class="content_sns_info" title="2017. 05. 16. 15:00:00 작성됨">
                                    <span class="replies_num">
                                        <i class="fa fa-comment"></i>
                                        100
                                    </span>
                                    <span class="content_sns_regdate">
                                        <i class="fa fa-clock-o"></i>
                                        2017년 05월 16일
                                    </span>
                                </span>
                            </div> <!-- // .content_sns -->
                            <div class="sns_replies">
                                <div id="snsReplyRegister">
                                    <form action="" method="post">
                                        <input type="hidden" name="userNo" value=""/>
                                        <input type="hidden" name="typeNo" value="23"/>
                                        <textarea id="snsReply" name="replyContent" maxlength="1000" placeholder="댓글을 입력하세요."></textarea>
                                        <button class="btn_reply_write">등록</button>
                                    </form>
                                </div> <!-- // #snsReplyRegister -->
                                <div id="snsReplies">
                                    <span class="no_reply">아직 댓글이 없습니다.</span>
                                    <ul>
                                        
                                    </ul>
                                </div> <!-- // #snsReplies -->
                            </div> <!-- // .sns_replies -->
                        </div> <!-- // #snsDetail -->
                        <div class="sns_detaile default">
                            <i class="fa fa-close sns_i" title="닫기"></i>
                            <div class="content_sns">
                                <span class="content_sns_word" id="insertDetail">
                                    
                                </span>
                                <span class="content_sns_info" title="2017. 05. 16. 15:00:00 작성됨">
                                    <span class="replies_num">
                                        <i class="fa fa-comment"></i>
                                        0
                                    </span>
                                    <span class="content_sns_regdate">
                                        <i class="fa fa-clock-o"></i>
                                        2017년 06월 23일
                                    </span>
                                </span>
                            </div> <!-- // .content_sns -->
                            <div class="sns_replies">
                                <div id="snsReplyRegister">
                                    <form action="" method="post">
                                        <input type="hidden" name="userNo" value=""/>
                                        <input type="hidden" name="typeNo" value="23"/>
                                        <textarea id="snsReply" name="replyContent" maxlength="1000" placeholder="댓글을 입력하세요."></textarea>
                                        <button class="btn_reply_write">등록</button>
                                    </form>
                                </div> <!-- // #snsReplyRegister -->
                                <div id="snsReplies">
                                <span class="no_reply">아직 댓글이 없습니다.</span>
                                    <ul>
                                        
                                    </ul>
                                </div> <!-- // #snsReplies -->
                            </div> <!-- // .sns_replies -->
                        </div> <!-- // #snsDetail -->
                    </div> <!-- // .indie_content_sns -->
					<div class="indie_tab indie_content_concert">
						<div id="concertPosters">
							<div id="expectedConcert">
								<h3>Soon Concert</h3>
								<div class="concert_list">
									<ul style="width: 485px">
										<!-- width 값 변수처리 : 242.5 * x) -->
										<li>
											<div class="concert_cover">
												<span class="cover">
													<img src="../img/indie/concert/optimize.jpg" alt="optimize" />
													<span class="dangnagui_con"></span>
													<div class="concert_cast">
														<h4>출연진</h4>
														<ul>
															<li>ADOY</li>
														</ul>
													</div>
													<span class="concert_price">
														<i class="fa fa-won"></i>
														25,000
													</span>
												</span>
											</div>
											<div class="concert_info">
												<span class="concert_title">
													<a href="" class="ellipsis">ADOY (아도이) [CATNIP] EP 쇼케이스</a>
												</span>
												<span class="concert_release">
													2017년 6월 30일 (금) 오후 8시
												</span>
												<span class="concert_place ellipsis">
													홍대 왓에버 (구 벨로주)
												</span>
											</div>
										</li>
										<li>
											<div class="concert_cover">
												<span class="cover">
													<img src="../img/indie/concert/문문_곰곰_poster.jpg" alt="문문_곰곰_poster" />
													<div class="concert_cast">
														<h4>출연진</h4>
														<ul>
															<li>MoonMoon</li>
														</ul>
													</div>
													<span class="concert_price">
														<i class="fa fa-won"></i>
														25,000
													</span>
												</span>
											</div>
											<div class="concert_info">
												<span class="concert_title">
													<a href="" class="ellipsis">문문 THANK YOU Concert</a>
												</span>
												<span class="concert_release">
													2017년 6월 25일 (일) 오후 6시
												</span>
												<span class="concert_place ellipsis">
													홍대 KT&G 상상마당
												</span>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!-- // #expectedConcert -->
							<div id="pastConcert">
								<h3>Past Concert</h3>
								<div class="concert_list">
									<ul style="width: 727.5px">
										<!-- width 값 변수처리 : 242.5 * x) -->
										<li>
											<div class="concert_cover">
												<span class="cover">
													<img src="../img/indie/concert/문문_PAINT.jpg" alt="문문_PAINT" />
													<div class="concert_cast">
														<h4>출연진</h4>
														<ul>
															<li>MoonMoon</li>
														</ul>
													</div>
													<span class="concert_price">
														<i class="fa fa-won"></i>
														20,000
													</span>
												</span>
											</div>
											<div class="concert_info">
												<span class="concert_title">
													<a href="" class="ellipsis">문문 2nd 발매 기념 공연</a>
												</span>
												<span class="concert_release">
													2017년 5월 5일 (금) 오후 7시
												</span>
												<span class="concert_place ellipsis">
													홍대 레드빅스페이스
												</span>
											</div>
										</li>
										<li>
											<div class="concert_cover">
												<span class="cover">
													<img src="../img/indie/concert/yoonddanddan.jpg" alt="yoonddanddan" />
													<div class="concert_cast">
														<h4>출연진</h4>
														<ul>
															<li>Yun Ddan-Ddan</li>
														</ul>
													</div>
													<span class="concert_price">
														<i class="fa fa-won"></i>
														44,000
													</span>
												</span>
											</div>
											<div class="concert_info">
												<span class="concert_title">
													<a href="" class="ellipsis">윤딴딴 단독콘서트</a>
												</span>
												<span class="concert_release">
													2017년 3월 25일 (토) 오후 6시
												</span>
												<span class="concert_place ellipsis">
													올림픽공원 뮤즈라이브홀
												</span>
											</div>
										</li>
										<li>
											<div class="concert_cover">
												<span class="cover">
													<img src="../img/indie/concert/홍그녀.jpg" alt="홍그녀" />
													<div class="concert_cast">
														<h4>출연진</h4>
														<ul>
															<li>곽푸른하늘</li>
															<li>정밀아</li>
															<li>이나(I.NA)</li>
														</ul>
													</div>
													<span class="concert_price">
														<i class="fa fa-won"></i>
														20,000
													</span>
												</span>
											</div>
											<div class="concert_info">
												<span class="concert_title">
													<a href="" class="ellipsis">홍대 앞 그녀들</a>
												</span>
												<span class="concert_release">
													2017년 3월 13일 (화) 오후 7시
												</span>
												<span class="concert_place ellipsis">
													벨로주(VELOSO)
												</span>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!-- // #pastConcert -->
						</div>
						<!-- // #concertPosters -->
						<div id="indieConcertSchedule">
							<h3>공연 일정</h3>
							<a href="/concertForm" class="concert_register">공연 등록</a>
							<div id="calendar"></div>
							<div class="concert_view1">
								<h3>2017년 6월 13일 공연 목록</h3>
								<i class="fa fa-close"></i>
								<div class="concert_list">
									<ul style="width: 485px">
										<!-- width 값 변수처리 : 242.5 * x) -->
										<li>
											<div class="concert_cover">
												<span class="cover">
													<img src="../img/indie/concert/sundae.png" alt="sundae" />
													<span class="dangnagui_con"></span>
													<div class="concert_cast">
														<h4>출연진</h4>
														<ul>
															<li>Sundae</li>
														</ul>
													</div>
													<span class="concert_price">
														<i class="fa fa-won"></i>
														20,000
													</span>
												</span>
											</div>
											<div class="concert_info">
												<span class="concert_title">
													<a href="" class="ellipsis">선데 첫 단독 콘서트</a>
												</span>
												<span class="concert_release">
													2017년 6월 13일 (화) 오후 6시 30분
												</span>
												<span class="concert_place ellipsis">
													뮤지스땅스(서울특별시 마포수 마포대로 238 지하)
												</span>
											</div>
										</li>
										<li>
											<div class="concert_cover">
												<span class="cover">
													<img src="../img/indie/concert/문문_단독공연.jpg" alt="문문_단독공연" />
													<div class="concert_cast">
														<h4>출연진</h4>
														<ul>
															<li>MoonMoon</li>
															<li>모은</li>
															<li>Hizy</li>
															<li>시와</li>
															<li>우주</li>
														</ul>
													</div>
													<span class="concert_price">
														
													</span>
												</span>
											</div>
											<div class="concert_info">
												<span class="concert_title">
													<a href="" class="ellipsis">문문 - 첫번째 단독 공연</a>
												</span>
												<span class="concert_release">
													2017년 6월 13일 (화) 오후 7시
												</span>
												<span class="concert_place ellipsis">
													홍대 글로리 펍
												</span>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="concert_view2">
								<h3>2017년 6월 15일 공연 목록</h3>
								<i class="fa fa-close"></i>
								<span class="concert_none">공연목록이 없습니다.</span>
							</div>
						</div>
						<!-- // #indieConcertSchedule -->
					</div>
					<!-- // .indie_content_concert -->
				</div>
				<!-- // #indieTab -->
			</div>
			<!-- // #contentAux -->
		</div>
		<!-- // #content -->
		
	<c:import url="../view/template/footer.jsp"></c:import>
	</div>
	<!-- // #wrap -->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/jquery.smoothwheel.js"></script>
	<script src="../js/moment.min.js"></script>
	<script src="../js/fullcalendar.min.js"></script>
	<script src="../js/locale-all.js"></script>
	<script src="../js/gcal.min.js"></script>
	<script>
        var $click=$(".click");
        var $myAlertBox=$(".myAlertBox");
        var $alert=$("#alert");
        var $alertBox=$(".alertBox");
        var $body=$("body");
        var $topBtn = $("#topBtn")
        $(window).scroll(function() {
            if ($(window).scrollTop() >= $(document).height() - $(window).height()-80) {$topBtn.css("bottom","120px")}
            else {$topBtn.css("bottom","10px")}
        });
        $click.on("click",function () {
            $myAlertBox.toggleClass("on");
            $alertBox.removeClass("show");
            return false;
        });

        $alert.on("click",function () {
            $alertBox.toggleClass("show");
            $myAlertBox.removeClass("on");
            return false;
        });
        $body.click(function () {
            if($myAlertBox.hasClass("on")){$myAlertBox.removeClass("on");}
            if($alertBox.hasClass("show")) {$alertBox.removeClass("show");}
        })
</script> <!-- tamplate -->
<script>
    var $settingBtn = $("#indieSettingBtn i");
    var $indiesetting = $(".indie_setting");
    $settingBtn.click(function () {
        $settingBtn.toggleClass("fa-pencil");
        if($settingBtn.hasClass("fa-pencil")) {
            $indiesetting.fadeIn(100);
        }else {
            $indiesetting.fadeOut(100);
        }
    });

    /* indie info update */
    var $musicianChangeBoxs = $("#musicianProfile .musician_name_update, #musicianProfile .musician_sub_title_update");
    $indiesetting.click(function () {
        var attrType = $(this).attr("data-setting");
        $musicianChangeBoxs.css("width",0);
        if(attrType==="musicianName") {
            $($musicianChangeBoxs[0]).css("width",431).find("#musicianName").focus();
        }else if(attrType==="subTitle") {
            $($musicianChangeBoxs[1]).css("width",516).find("#musicianSubTitle").focus();
        }
    })
    
    $("#subTitleForm").submit(function (e) {
		e.preventDefault();
		var subTitle = $("#musicianSubTitle").val();
		$(".sub_title em").text(subTitle);
		$(".musician_sub_title_update").css("height",0);
	});

    var $cancelBtn = $("#musicianProfile .btn");
    $cancelBtn.click(function () {
        $musicianChangeBoxs.css("width",0);
    })

    /* member list scroll */
    $("#memberList .list").on('mousewheel',function(e){
        var wheelDelta = e.originalEvent.wheelDelta;
        if(wheelDelta > 0){$(this).smoothWheel().scrollLeft(-wheelDelta + $(this).scrollLeft());}
        else{$(this).smoothWheel().scrollLeft(-wheelDelta + $(this).scrollLeft());}
    });
</script> <!-- indie info & member list -->
<script>
    var $indieTab = $("#indieTab .tab_list li");
    var $indieTabList = $("#indieTab .indie_tab");
    var $checkedAll = $("#indieTab .check_box");
    $indieTab.click(function () {
        stateDefault();
        var $this = $(this);
        $indieTab.removeClass("on");
        $this.addClass("on");
        $indieTabList.fadeOut(200);
        var tabIdx = $this.index();
        $($indieTabList[tabIdx]).fadeIn(200);
        if(tabIdx == 4) {
            setTimeout(schedule,300);
        }
    });
</script> <!-- move tab -->
<script>
    /* notice */
    var $noticeSetting = $("#musicianNotice .notice_setting");
    var $noticeUpdate = $("#musicianNotice .musician_notice_update");

    $noticeSetting.click(function () {
        $noticeUpdate.css("width", 1000).find("#musicianNoticeWord").focus();
    });
    $noticeUpdate.find(".cancel").click(function () {noticeUpdateClose();});
    $("#noticeForm").submit(function (e) {
    	e.preventDefault();
    	var word = $("#musicianNoticeWord").val();
    	$(".note").text(word);
    	$noticeUpdate.css("width", 0);
	});

    /* music checked */
    var $mainCheckedAll = $("#indieMusic .checked_all");
    var $mainChecked = $("#indieMusic .checked");
    $mainCheckedAll.click(function () {
        if ($(this).prop("checked")) {$mainChecked.prop("checked", true);}
        else {$mainChecked.prop("checked", false);}
    });
    $mainChecked.click(function () {
        var result = false;
        for (var i = 0; i < $mainChecked.length; i++) {
            if (!$($mainChecked[i]).prop("checked")) {result = true;}
        } // for end
        if (!result) {$mainCheckedAll.prop("checked", true);}
        else {$mainCheckedAll.prop("checked", false);}
    });

    var $songTabCheckedAll = $("#indieTab .indie_content_song .checked_all");
    var $songTabChecked = $("#indieTab .indie_content_song .checked");
    $songTabCheckedAll.click(function () {
        if ($(this).prop("checked")) {$songTabChecked.prop("checked", true);}
        else {$songTabChecked.prop("checked", false);}
    });
    $songTabChecked.click(function () {
        var result = false;
        for (var i = 0; i < $songTabChecked.length; i++) {
            if (!$($songTabChecked[i]).prop("checked")) {result = true;}
        } // for end
        if (!result) {$songTabCheckedAll.prop("checked", true);}
        else {$songTabCheckedAll.prop("checked", false);}
    })

    /* video */
    var $video = $(".video");
    var $videoI = $video.find("i");
    var $videoPlay = $video.find(".video_play");
    $("#latestVideo li").click(function () {
        var $this = $(this);
        $video.css({
            "height": 360,
            "padding": 30
        });
        $videoPlay.css("height", 360);
        $videoI.show();
        var src = $this.find(".video_default").find("source").attr("src");
        $video.find(".video_play").attr("src", src);
    });
    $videoI.click(function () {videoClose();});

    $("#indieMusic .btn_more").click(function () {
        $indieTab.removeClass("on");
        $($indieTab[2]).addClass("on");
        $indieTabList.fadeOut(200);
        $($indieTabList[2]).fadeIn(200);
    })
</script> <!-- main tab -->
<script>
    var $songArtists = $(".song_artist i");
    var $artistsName = $(".artists_name");
    $songArtists.click(function () {
        var $this = $(this);
        if($this.hasClass("fa-rotate-90")) {$this.attr("class","fa fa-sort-up fa-rotate-180");}
        else {$this.attr("class","fa fa-sort-up fa-rotate-90");}
        $artistsName.slideToggle(200);
    });
</script> <!-- song tab_artists -->
<script>
    var $body = $("body");

    var $snsWriteForm =  $(".sns_write_form");
    $(".btn_sns_write").click(function () {
        snsFormOpen();
        $snsWriteForm.addClass("on");
    });

    var $snsDetail = $(".default, .photo, .camera");
    var $snsContent = $(".content_sns_content");

    var $snsVideo = $(".sns_video");
	var $cameraVideo = $(".camera .content_sns_content");
    $(".btn_content_view em").click(function () {
        var no = $(this).attr("data-snsNo");
        snsFormOpen();
        if(no==2) {
        	$cameraVideo.html("<video controls>"+
        			"<source src='../video/indie/소란(SORAN) - Perfect Day Official M-V.mp4'>"+
        			"</video>");
        }
       
        $($snsDetail[no]).addClass("on");
//        $snsDetail.addClass("on");
    });

    $("#indieTab .sns_i").click(function () {
        snsRemoveClass();
        $body.css("overflow","visible");
    });

    $(".sns_refresh").click(function snsRefresh() {
        alert("sns refresh");
    });

    $("#snsInsert").submit(function (e) {
		e.preventDefault();
		var text = $("#snsContent").val();
		$("#snsContent").val("");
		$("#insertView").text(text);
		$("#insertDetail").text(text);
		snsRemoveClass();
		$("#snsLists").hide();
		$("#snsLists2").show();
		
	});

</script> <!-- sns tab -->
<script>
    /* poster scroll */
    $("#indieTab .concert_list").on('mousewheel', function (e) {
        var wheelDelta = e.originalEvent.wheelDelta;
        if(wheelDelta > 0){$(this).smoothWheel().scrollLeft(-wheelDelta + $(this).scrollLeft());}
        else{$(this).smoothWheel().scrollLeft(-wheelDelta + $(this).scrollLeft());}
    });
//    var $concertPostersCalendar = $("#concertPostersCalendar");
	var $concertPostersCalendar = $("#indieTab .concert_view1, #indieTab .concert_view2");
    var $calendar = $("#calendar");
</script>
<!-- concert tab -->
<script>
    function stateDefault() {
        noticeUpdateClose();
        $checkedAll.prop("checked",false);
        videoClose();
        $artistsName.hide();
        snsRemoveClass();
        $body.css("overflow","visible");
        $songArtists.attr("class","fa fa-sort-up fa-rotate-90");
        posterCalClose();
    }
    function noticeUpdateClose() {
        $noticeUpdate.css("width",0);
    }
    function videoClose() {
        $video.find(".video_play").attr("src","");
        $video.css({
            "height":0,
            "padding":0
        });
        $videoPlay.css("height",0);
        $videoI.hide();
    }
    function snsRemoveClass() {
        $(".camera .content_sns_content").html("");
        $snsDetail.removeClass("on");
        $snsWriteForm.removeClass("on");
        $body.css("overflow","visible");
    }
    function snsFormOpen() {
        snsRemoveClass();
        $body.css("overflow","hidden");
    }
    function posterCalClose() {
        $concertPostersCalendar.removeClass("on");
    }
    function schedule() {
        // page is now ready, initialize the calendar...
        $calendar.fullCalendar({
            locale:"ko",
            googleCalendarApiKey : "AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE",
            events: [ /* 데이터 입력 */
                {
                    title:"문문 - 첫번째 단독 공연",
                    start:"2017-06-13T19:00:00"
                },
                {
                	title:"선데 첫 단독 콘서트",
                    start:"2017-06-13T18:30:00"
                }
            ],
            eventSources: [
                // 대한민국의 공휴일
                {
                    googleCalendarId : "ko.south_korea#holiday@group.v.calendar.google.com",
                    className : "koHolidays",
                    color : "#FF0000",
                    textColor : "#FFFFFF"
                }
            ],
            dayClick: function(date) {
                if(date.format()=="2017-06-13") {
                	$($concertPostersCalendar[0]).addClass("on");
                }else {
                	$($concertPostersCalendar[1]).addClass("on");
                }
//                $concertPostersCalendar.addClass("on");
            }
        });
        $concertPostersCalendar.find("i").click(function () {posterCalClose();});
    }
</script> <!-- funtions -->
</body>
</html>