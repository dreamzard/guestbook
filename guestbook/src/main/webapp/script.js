/**
 * 
 */
//script.js
function checkResv() {
	if (frm.name.value == '') {
		alert("이름이 입력되지 않았습니다!");
		frm.resv_no.focus();
	} else if (frm.message.value == '') {
		alert("메시지가 입력되지 않았습니다!");
		frm.cust_no.focus();
	}
	else {
		alert("방명록이 등록되었습니다");
		frm.submit();
	}

}
function resetResv() {
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	frm.reset();
}

function checkCust() {
	if (sfrm.cust_no.value == '') {
		alert("고객번호가 입력되지 않았습니다!");
		sfrm.cust_no.focus();
	} else {
		sfrm.submit();
	}
}



function del_action(btn){
		const form = btn.closest('form'); // 버튼이 속한 form 선택
		
		const swalWithBootstrapButtons = Swal.mixin({
			  customClass: {
			    confirmButton: "btn btn-success",
			    cancelButton: "btn btn-danger"
			  },
			  buttonsStyling: false
			});
			swalWithBootstrapButtons.fire({
			  title: "정말 삭제하시겠습니까?",
			  text: "되돌릴 수 없습니다",
			  icon: "warning",
			  showCancelButton: true,
			  confirmButtonText: "삭제",
			  cancelButtonText: "삭제 취소",
			  reverseButtons: true
			}).then((result) => {
			  if (result.isConfirmed) {
			    swalWithBootstrapButtons.fire({
			      title: "삭제!",
			      text: "삭제가 완료되었습니다",
			      icon: "success"
			    }).then(() => {
		              form.submit(); // 확인 버튼 눌렀을 때 폼 제출
	            });
			  } else if (
			    /* Read more about handling dismissals below */
			    result.dismiss === Swal.DismissReason.cancel
			  ) {
			    swalWithBootstrapButtons.fire({
			      title: "취소",
			      text: "삭제가 취소되었습니다.",
			      icon: "error"
			    });
			  }
			});
	}