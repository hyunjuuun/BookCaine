<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../../css/book_add.css" type="text/css" rel="stylesheet">
</head>
<body>
    <div id="root">
        <header id="header">
            <section>
                <h1 class="d-none">메인</h1>
                <section id="main-top">
                    <h1>관리자 도서 등록 페이지 | Bookcaine</h1>
                </section>
            </section>
        </header>
        <aside id="aside">
            <div class="font">
                <p>도서관리> <a href="/Admin/list/total">도서리스트</a>><b>도서등록관리</b></p>
            </div>
        </aside>
        <main id="main">
            <form id="form" action="/Admin/book/add" method="post" enctype="multipart/form-data">
                <div class="zero">
                    <div class="w-1">이미지
	                    <button>파일 선택</button>
	                    <input type="file" name="file">
                    </div>
                </div> 
                <div class="one">
                    <div class="w-1">분류 선택</div>
                    <select class="m" name="category">
                        <option value="1">소설</option>
                        <option value="2">비소설</option>
                        <option value="3">사회과학</option>
                        <option value="4">시사</option>
                        <option value="5">자기계발</option>
                        <option value="6">인문</option>
                        <option value="7">역사</option>
                        <option value="8">외국어</option>
                        <option value="9">유아</option>
                        <option value="10">기타</option>
                    </select> 
                </div>
                <div class="two">
                    <div class="w-1">제목</div>
                    <input class="m" type="search" value="해리포터" name="title">
                </div> 
                <div class="three">
                    <div class="w-1">저자</div>
                    <input class="m" type="search" value="빌게이츠" name="author">
                </div>
                <div class="four">
                    <div class="w-1">책 소개</div>
                    <input class="m text" type="text" value="줄거리는~" name="bookDetails">
                </div>
                <div class="fourfour">
                    <div class="w-1">저자 소개</div>
                    <input class="m text" type="text" value="저자는~">
                </div>
                <div class="five">
                    <div class="w-1">진열 여부</div>
                    <select class="m" name="yn">
                        <option>Y</option>
                        <option>N</option>
                    </select>
                </div>
	            <section class="last">
                    <input type="button" value="미리보기">
                    <input type="submit" value="상품 등록">
	            </section>
              </form>
        </main>
    </div>      
</body>
</html>





        <!-- <main id="main">
            <section class= "category">
                <h1 class="d-none">도서관리 테이블</h1>
                <table class="table">
                                               
                    <tr>
                        <td class="w-1">분류 선택</td>
                        <td class="one_input">
                           <form>
                               <select>
                                       <option>종합</option>
                                       <option>소설</option>
                                       <option>비소설</option>
                                        <option>시사</option>
                                       <option>자기계발</option>
                                       <option>인문</option>
                                       <option>역사</option>
                                       <option>외국어</option>
                                       <option>유아</option>
                                       <option>기타</option>
                               </select>
                           </form> 
                        </td>
                    </tr>
                    <tr>
                        <td class="w-1">검색어</td>
                        <td>
                            <input type="search" value="해리포터">
                        </td>
                    </tr>
                    <tr>
                        <td class="w-1">판매가</td>
                        <td>
                            <input type="range" min="1" max="100000" step="1000">
                        </td>
                    </tr>
                    <tr>
                        <td class="w-1">진열 여부</td>
                        <td class="one_input">
                            <form>
                                <select>
                                        <option>Y</option>
                                        <option>N</option>
                                </select>
                            </form> 
                         </td>
                    </tr>
                    <tr>
                        <td class="w-1">등록일</td>
                        <td><input type="date"></td>   
                    </tr>
                    <tr>
                        <td class="w-1">이미지</td>
                        <td>
                            <input type="file">
                        </td>  
                    </tr>
                    <tr>
                        <td class="w-1">상품설명</td>
                        <td><input type="text" style="width:250px;height:100px;"></td>   
                    </tr>
                </tbody>
                </table>
            </section> -->