accountNameVaild = true;
emailVaild = true;
phoneNumberVaild = true;
nickNameVaild = true;


function validation() {
	return accountNameVaild && emailVaild && phoneNumberVaild && nickNameVaild;
}
$(document).ready(function() {
	$("input[name=accountName]").on("focusout", accountNameCheckMatch);
	$("input[name=email]").on("focusout", emailCheckMatch);
	$("input[name=nickName]").on("focusout", nickNameCheckMatch);
	$("input[name=phoneNumber]").on("focusout", phoneNumberCheckMatch);




	function accountNameCheckMatch() {
		var id = $("input[name=accountID]").val();
		console.log(id);
		var name = $("input[name=accountName]").val();
		console.log(name);
		functionResult = false;
		$.ajax({
			url: '../admin/accountNameCheckMatch',
			type: 'GET',
			dataType: 'text',
			data: {
				accountName: name,
				accountID: id
			},

			success: (function(result) {
				
					if (result === 'true') {
						$('#accountNameMessage').text('Tên tài khoản đã tồn tại, vui lòng nhập lại !');
						accountNameVaild = false;
					} else {
						accountNameVaild = true;
						$('#accountNameMessage').text('');
					}
				

			})
		})
	}
	
	function emailCheckMatch() {
		var id = $("input[name=accountID]").val();
		
		var email = $("input[name=email]").val();
		
		functionResult = false;
		$.ajax({
			url: '../admin/emailCheckMatch',
			type: 'GET',
			dataType: 'text',
			data: {
				email: email,
				accountID: id
			},

			success: (function(result) {
				
					if (result === 'true') {
						$('#emailMessage').text('Email đã tồn tại, vui lòng nhập lại !');
						emailVaild = false;
					} else {
						emailVaild = true;
						$('#emailMessage').text('');
					}
				

			})
		})
	}
	
	function phoneNumberCheckMatch() {
		var id = $("input[name=accountID]").val();
		
		var phoneNumber = $("input[name=phoneNumber]").val();
		
		functionResult = false;
		$.ajax({
			url: '../admin/phoneNumberCheckMatch',
			type: 'GET',
			dataType: 'text',
			data: {
				phoneNumber: phoneNumber,
				accountID: id
			},

			success: (function(result) {
				
					if (result === 'true') {
						$('#phoneNumberMessage').text('sdt đã tồn tại, vui lòng nhập lại !');
						phoneNumberVaild = false;
					} else {
						phoneNumberVaild = true;
						$('#phoneNumberMessage').text('');
					}
				

			})
		})
	}
	
	function nickNameCheckMatch() {
		var id = $("input[name=accountID]").val();
		
		var nickName = $("input[name=nickName]").val();
		
		functionResult = false;
		$.ajax({
			url: '../admin/nickNameCheckMatch',
			type: 'GET',
			dataType: 'text',
			data: {
				nickName: nickName,
				accountID: id
			},

			success: (function(result) {
				
					if (result === 'true') {
						$('#nickNameMessage').text('nickName đã tồn tại, vui lòng nhập lại !');
						nickNameVaild = false;
					} else {
						nickNameVaild = true;
						$('#nickNameMessage').text('');
					}
				

			})
		})
	}

	
})