<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.mall.table.vo.UserInfoVO"%>

<%
	UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
 %>


<main id="main" class="main">

	<section class="section">
		<div class="d-flex justify-content-center">
			<div class="col-lg-6">
				<h2>문의내역</h2>
				<div class="card">
				
					<div class="card-body">
					<form id="dataform">
						<input type='hidden' id='currentPage' name='currentPage' value=1>
						<!-- Table with hoverable rows -->
						<table class="table table-hover" id="inquiryTable">
							<thead>
								<tr>
									<th scope="col">No</th>
				                    <th scope="col">문의유형</th>
				                    <th scope="col">제목</th>
				                    <th scope="col">문의등록일</th>
				                    <th scope="col">답변여부</th>
				                    <th scope="col">답변등록일</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
						</form>
						<!-- End Table with hoverable rows -->
						<nav aria-label="Page navigation example">
							<ul class="pagination" id="inquiryPaging">
								
							</ul>
						</nav>
						<!-- End Pagination with icons -->

					</div>
				</div>
			</div>
		</div>
	</section>
</main>

 <div class="modal fade" id="inquiryInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">고객문의</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           <table class="table table-hover" id="inquiryInfoTable">
		    <thead>
		          <tr>
		            <th scope="row">제목</th>
		            <td id="title"></td>
		        </tr>
		        <tr>
		            <th scope="row">유형</th>
		            <td id="boardType"></td>
		        </tr>
		        <tr>
		            <th scope="row">회원ID/명</th>
		            <td id="userIdAndName"></td>
		        </tr>
		        <tr>
		            <th scope="row">문의일</th>
		            <td id="regDt"></td>
		        </tr>
		        <tr>
		            <th scope="row">첨부파일</th>
		            <td id="attchFile"></td>
		        </tr>
		        <tr>
		            <th scope="row">문의내용</th>
		            <td id="content"></td>
		        </tr>
		        <tr>
		            <th scope="row">답변내용</th>
		            <td>
		                <textarea id="replyContent"></textarea>
		            </td>
		        </tr>
		    </thead>
		    <tbody>
		    </tbody>
		</table>

              
              
           </div>
           <div class="modal-footer">
	             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
           </div>
         </div>
       </div>
     </div><!-- End Vertically centered Modal-->

<form id="hiddenform">
    <input type="hidden" id= "huserId" name="userId" >
    <input type="hidden" id= "boardSeq" name="boardSeq" >
    <input type="hidden" id= "hreplyContent" name="replyContent" >
</form>


<script src="/assets/js/paging.js"></script> 


<script>
	function inquirylistSearch(pno) {
		if(pno==undefined){
			$('#currentPage').val(1);	
		}else{
			$('#currentPage').val(pno);
		}
		call_server(dataform, '/contact/searchlist', getMyInquiryList);
	}

	function getMyInquiryList(vo) {
		list = vo.inquirylist;
		$('#inquiryTable > tbody').empty();
		for (var i = 0; i < list.length; i++) {
			str = "<tr onclick=\"inquiryDetail('" + list[i].userId + "', '" + list[i].boardSeq + "');\" style=\"cursor:pointer;\">";
			str += "<th scope=\"row\">"+((Number(vo.currentPage)-1)*vo.countPerPage+(i+1))+"</th>";
			str += "<td>" + list[i].boardType + "</td>";
			str += "<td>" + list[i].title + "</td>";
			str += "<td>" + list[i].regDt + "</td>";
			str += "<td>" + list[i].replyYn + "</td>";
			str += "<td>" + list[i].replyDt + "</td>";
			str += "</tr>";
			$('#inquiryTable').append(str);
			
			
		}
		setPaging(inquiryPaging, vo.startPage, vo.endPage, 'inquirylistSearch');

	}
	
	inquirylistSearch();

	function inquiryDetail(id,seq) {
		$('#userId').val(id);
		$('#boardSeq').val(seq);
		call_server(hiddenform, '/contact/inquiryDetail', displayInquiryDetail);
	}

	function displayInquiryDetail(vo) {
		
		$('#inquiryInfoTable > tbody').empty();
		 var userIdAndName = vo.userId + " / " + vo.userName;
		  $("#title").text(vo.title);
         $("#boardType").text(vo.boardType);
         $("#userIdAndName").text(userIdAndName);
         $("#regDt").text(vo.regDt);
         $("#attchFile").text(vo.attchFile);
         $("#content").text(vo.content);
         $("#replyContent").val(vo.replyContent).prop('readonly', true);

		$('#inquiryInfo').modal('show');
	} 	
	
</script>