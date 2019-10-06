<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Indie - INDIST</title>
    
	<c:import url="template/link.jsp"></c:import>
    <link rel="stylesheet" href="../css/indie/indieTemplate.css">
    <link rel="stylesheet" href="../css/indie/search/search_form.css">
    <link rel="stylesheet" href="../css/indie/search/indie_list.css">
    <link rel="stylesheet" href="../css/indie/search/album_list.css">
    <link rel="stylesheet" href="../css/indie/search/music_list.css">
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
    	.music_add {
    		display: none;
    	}
    </style>
</head>
<body>
    <div id="wrap">
        <h1 class="screen_out">Indie Search Page</h1>
        
		<c:import url="../view/template/header.jsp"></c:import>
        <div id="content">
            <div id="contentAux">
                <div id="searchForm">
                    <form id="indieSearchForm" action="" method="post">
                        <input id="q" name="q" placeholder="검색어를 입력하세요" value="소란"/>
                        <button class="btn_search"><i class="fa fa-search"></i></button>
                    </form> <!-- // #indieSearchForm -->
                    <div id="indieAutoFrame">
                        <div class="search_indie">
                            <h3>아티스트</h3>
                            <ul>
                                <li>
                                    <a href="">
                                        <img src="img/indie/profile/soran.jpg" alt=""/>
                                        <div class="musician_info">
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                            <span class="debut_genre">2009 | Ballad</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="img/indie/profile/soran.jpg" alt=""/>
                                        <div class="musician_info">
                                            <span class="musician_name ellipsis">10cm</span>
                                            <span class="debut_genre">2010 | Ballad</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="img/indie/profile/soran.jpg" alt=""/>
                                        <div class="musician_info">
                                            <span class="musician_name ellipsis">10cm</span>
                                            <span class="debut_genre">2010 | Ballad</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="search_album">
                            <h3>앨범</h3>
                            <ul>
                                <li>
                                    <a href="">
                                        <img src="img/indie/album/album_cover.jpg" alt=""/>
                                        <div class="album_info">
                                            <span class="album_name ellipsis">싱포유 - 네번째이야기 가족을 부탁해</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="img/indie/album/album_cover.jpg" alt=""/>
                                        <div class="album_info">
                                            <span class="album_name ellipsis">싱포유 - 네번째이야기 가족을 부탁해</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="img/indie/album/album_cover.jpg" alt=""/>
                                        <div class="album_info">
                                            <span class="album_name ellipsis">싱포유 - 네번째이야기 가족을 부탁해</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="search_music">
                            <h3>곡</h3>
                            <ul>
                                <li>
                                    <a href="">
                                        <img src="img/indie/album/album_cover.jpg" alt=""/>
                                        <div class="music_info">
                                            <span class="music_name ellipsis">너를 공부해</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="img/indie/album/album_cover.jpg" alt=""/>
                                        <div class="music_info">
                                            <span class="music_name ellipsis">너를 공부해</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="img/indie/album/album_cover.jpg" alt=""/>
                                        <div class="music_info">
                                            <span class="music_name ellipsis">너를 공부해</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> <!-- // #indieSearch -->
                <div id="indieSearch">
                    <h3>아티스트</h3>
                    <span class="btn_more btn_top">더보기</span>
                    <!--<span class="search_none">검색 결과가 없습니다.</span>-->
                    <ul>
                        <li>
                            <span class="indie_profile">
                                <img src="../img/indie/profile/soran.jpg" alt="soran"/>
                            </span>
                            <span class="musician_name">
                                <a href="/indie/1">소란(SORAN)</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Rock
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>23</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>23</em> Concert</span>
                                </span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>1,958</em>
                            </span>
                        </li>
                    </ul>
                </div>
                <div id="albumSearch">
                    <h3>앨범</h3>
                    <span class="btn_more btn_top">더보기</span>
                    <!--<span class="search_none">검색 결과가 없습니다.</span>-->
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
                <div id="musicSearch">
                    <h3>곡</h3>
                    <span class="btn_more btn_top music">더보기</span>
                    <table border="1">
                        <caption class="screen_out">소란(SORAN)의 곡 리스트</caption>
                        <thead>
                            <tr>
                                <th class="song_check">
                                    <input type="checkbox" class="check_box checked_all">
                                </th>
                                <th class="song_no">NO</th>
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
                            <tr class="music_add">
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
                        	<tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                            <tr class="music_add">
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
                    </table> <!-- // .indie_content_song_list -->
                </div>
            </div> <!-- // #contentAux -->
        </div> <!-- // #content -->
        
	<c:import url="../view/template/footer.jsp"></c:import>
    </div> <!-- // #wrap -->
<script src="../js/jquery-3.2.1.min.js"></script>
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
    $(".btn_more").click(function () {
        var $this = $(this);
        if($this.text()==="더보기") {
            $this.text("접기");
        }else {
            $this.text("더보기");
        }
        $("#indieSearch,#albumSearch,#musicSearch").toggleClass("off");
        $this.parent().removeClass("off").toggleClass("on");
        if($this.hasClass("music")) {
        	$(".music_add").toggle();
        }
    })
</script> <!-- btn more -->
</body>
</html>