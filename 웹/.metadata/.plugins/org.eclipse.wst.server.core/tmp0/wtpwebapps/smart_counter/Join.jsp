<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	

  <style>
    body {
    	
      background: #848484;  /* fallback for old browsers */
    

	
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

     
      background:lightgray;  /* fallback for old browsers */
     


      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(175, 122, 122, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(100, 58, 58, 0.15);
      box-shadow: 0 8px 20px 0 rgba(36, 3, 3, 0.15)
    }
  </style>


</head>
<body>

	<form action="#" method="post">
   <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
 
        <h4 class="mb-3">ȸ������</h4>
        <form class="validation-form" novalidate>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="id">ID</label>
              <input maxlength='9' name="id" type="text" class="form-control" id="id" placeholder="ID�� �Է��� �ּ���." value="" required="required" >
              
              <div class="invalid-feedback">
                ID�� �Է����ּ���. 
              </div>
             <input type="button" value="�ߺ�üũ" onclick="idCheck()" required="required" style = "background-color :light-grey ">
             <span id="sp_result"></span>
             <input type="hidden" id='chk' name = "chk" value="0">
            </div>
            
            
            
            
      
            
 
            <div class="col-md-6 mb-3">
              <label for="pw">PW</label>
              <input maxlength="9" name="pw" type="password" class="form-control" id="pw" placeholder="PW�� �Է��� �ּ���." value="" required>
              <div class="invalid-feedback">
                PW�� �Է����ּ���.
              </div>
            </div>
           
        
            <div class="col-md-6 mb-3">
                <label for="email">Ű</label>
                <input maxlength="3" name="height" type="text" class="form-control" id="email" placeholder="ȫ�浿" required="required">
                <div class="invalid-feedback">
                 Ű�� �Է����ּ���.
                </div>
              </div>

              <div class="col-md-6 mb-3">
                <label for="id">������</label>
                <input maxlength="3" name="kg" type="text" class="form-control" id="id" placeholder="�����Ը� �Է����ּ���." value="" required="required">
                <div class="invalid-feedback">
                �����Ը� �Է����ּ���.
                </div>
              </div>

              <div class="col-md-6 mb-3">
                <label for="id">����</label>
                <input maxlength="3"  name="age" type="text" class="form-control" id="id" placeholder="���̸� �Է����ּ���." value="" required="required">
                <div class="invalid-feedback">
                ���̸� �Է����ּ���.
                </div>
              </div>

              <div class="col-md-6 mb-3">
                <label for="id">BMI</label>
                <input maxlength="9" name="bmi" type="text" class="form-control" id="id" placeholder="BMI�� �Է����ּ���." value="" required="required">
                <div class="invalid-feedback">
                BMI�� �Է����ּ���.
                </div>
              </div>
              
              <div class="col-md-6 mb-3">
                <label for="id">�г���</label>
                <input maxlength="9" name="nick" type="text" class="form-control" id="id" placeholder="�г����� �Է����ּ���." value="" required="required">
                <div class="invalid-feedback">
                �г����� �Է����ּ���.
                </div>
              </div>

          </div>

          

          

          <div class="mb-3" style="display:block">
            <label for="address2">����<span class="text-muted" style="text-align:center; display:block; margin: 0 auto" ></span></label>
            ����<input type="radio" name="gender" value="M"  required="required"> ����<input type="radio" name="gender" value="W" required="required">
          </div>

          
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">�������� ���� �� �̿뿡 �����մϴ�.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit" onclick="fn_submit()">���� �Ϸ�</button>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2021 YD</p>
    </footer>
  </div>
  <script>//��ȿ�� �˻���.
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          
          

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
  
  <script src="https://code.jquery.com/jquery-1.12.4.js" integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
  
  
  <script>
  				
  
		
  
			
				function idCheck() {
				
				var input = document.getElementById("id");
				
				$.ajax({
					type : "post", // ������ ����(��û) ���
					data : {"id": input.value}, // �����ϴ� ������
					url : "idCheck", // �����͸� �����ϴ� (��û�ϴ�) ���������� url
					dataType : "text", // ���� �������� ����
					success : function(data) { //��� ����
						
						var sp_result = document.getElementById("sp_result");
						
						if(data=="true"){
							
							sp_result.innerText = "���Ұ����� ���̵�";
							input.value="";
							$('#chk').attr('value', '0');
							
						}else{
							
							$("#sp_result").text("��밡���� ���̵�");
							$('#chk').attr('value', '1');
							$('form').attr('action', 'Join');
			
						}
						
						
					}, 
					error : function () { // ��� ����
						alert("��Ž���")
					}
										
				});
	
				}
			
				
				
				
			      function fn_submit() {
						if($('#chk').val() =='0'){ // value�� �����ö��� .val()
							alert("ID �ߺ�üũ�� ���ּ���!!");
							return false;
							// �� false���� �޾Ƽ� if �� �̿��ؼ� action�� �������ְ� alert�� ���ټ��� �ְڳ׿� 
							//�� ���� �� ���� �غ��� ��������� �ɱ��! �� ������ �ð��� �ʿ��մϴ� �Ф� �� �̵� ī������ ������ �ּ��� �����Ͽ��� ��������
							//�� �����մϴ�!!
						}
						else{
							alert("ȸ������ ����");
						}
		            }
				
				
			
			</script>
			
  
  
 </form>
 


</body>
</html>