accountNameVaild = false;
emailVaild = false;
phoneNumberVaild = false;
nickNameVaild = false;


function validation() {
	console.log(accountNameVaild);
	console.log(emailVaild);
	console.log(phoneNumberVaild);
	console.log(nickNameVaild);
	
	return accountNameVaild && emailVaild && phoneNumberVaild && nickNameVaild;
}
$(document).ready(function() {
	$("#accountName").on("focusout", accountNameCheck);
	$("#email").on("focusout", emailCheck);
	$("#phoneNumber").on("focusout", phoneNumberCheck);
	$("#nickName").on("focusout", nickNameCheck);

	
	
	function accountNameCheck() {
		value = $("#accountName").val();
		functionResult = false;
		$.ajax({
			url: '../admin/accountNameCheck',
			type: 'GET',
			dataType: 'text',
			data: {
				accountName: value
			},

			success: (function(result) {
				if (value != "") {
					if (result === 'true') {
						$('#accountNameMessage').text('Tên tài khoản đã tồn tại, vui lòng nhập lại !');
						accountNameVaild = false;
					} else {
						accountNameVaild = true;
						$('#accountNameMessage').text('');
					}
				} else {
					accountNameVaild = false;
					$('#accountNameMessage').text('Không được bỏ trống, vui lòng nhập đủ thông tin !');
				}

			})
		})
	}

	function emailCheck() {
		value = $("#email").val();
		functionResult = false;
		$.ajax({
			url: '../admin/emailCheck',
			type: 'GET',
			dataType: 'text',
			data: {
				email: value
			},

			success: (function(result) {
				if (value != "") {
					if (result === 'true') {
						$('#emailMessage').text('Email đã tồn tại, vui lòng nhập lại !');
						emailVaild = false;
					} else {
						emailVaild = true;
						$('#emailMessage').text('');
					}
				} else {
					emailVaild = false;
					$('#emailMessage').text('Không được bỏ trống, vui lòng nhập đủ thông tin !');
				}

			})
		})
	}
	function phoneNumberCheck() {
		value = $("#phoneNumber").val();
		functionResult = false;
		$.ajax({
			url: '../admin/phoneNumberCheck',
			type: 'GET',
			dataType: 'text',
			data: {
				phoneNumber: value
			},

			success: (function(result) {
				if (value != "") {
					if (result === 'true') {
						$('#phoneNumberMessage').text('Số điện thoại đã tồn tại, vui lòng nhập lại !');
						phoneNumberVaild = false;
					} else {
						phoneNumberVaild = true;
						$('#phoneNumberMessage').text('');
					}
				} else {
					phoneNumberVaild = false;
					$('#phoneNumberMessage').text('Không được bỏ trống, vui lòng nhập đủ thông tin !');
				}

			})
		})
	}

	function nickNameCheck() {
		value = $("#nickName").val();
		functionResult = false;
		$.ajax({
			url: '../admin/nickNameCheck',
			type: 'GET',
			dataType: 'text',
			data: {
				nickName: value
			},

			success: (function(result) {
				if (value != "") {
					if (result === 'true') {
						$('#nickNameMessage').text('Nick name đã tồn tại, vui lòng nhập lại !');
						nickNameVaild = false;
					} else {
						nickNameVaild = true;
						$('#nickNameMessage').text('');
					}
				} else {
					nickNameVaild = false;
					$('#nickNameMessage').text('Không được bỏ trống, vui lòng nhập đủ thông tin !');
				}

			})
		})
	}


})