<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ȸ������ ȭ�� ���� - Bootstrap</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    body {
    
	background: #848484;  /* fallback for old browsers */
	

      min-height: 100vh;
        
     
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: lightgray;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>

<body>

<%
	
	MemberVO vo = (MemberVO)session.getAttribute("member"); 
	%>


  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">ȸ����������</h4>
        <form class="validation-form" action="Update">
          <div class="row">
            
           
            <div class="col-md-6 mb-3">
                <label for="height">Ű</label>
                <input name="height" type="text" class="form-control" id="height" placeholder="Ű�� �Է����ּ���." value="" required="required">
                <div class="invalid-feedback">
                 Ű�� �Է����ּ���.
                </div>
              </div>

              <div class="col-md-6 mb-3">
                <label for="weight">������</label>
                <input name="kg" type="text" class="form-control" id="weight" placeholder="�����Ը� �Է����ּ���." value="" required="required">
                <div class="invalid-feedback">
                �����Ը� �Է����ּ���.
                </div>
              </div>

              <div class="col-md-6 mb-3">
                <label for="age">����</label>
                <input name="age" type="text" class="form-control" id="age" placeholder="���̸� �Է����ּ���." value="" required="required">
                <div class="invalid-feedback">
                ���̸� �Է����ּ���.
                </div>
              </div>

              <div class="col-md-6 mb-3">
                <label for="pw">pw</label>
                <input name="pw" type="text" class="form-control" id="pw" placeholder="pw�� �Է����ּ���." value="" required="required">
                <div class="invalid-feedback">
                pw�� �Է����ּ���.
                </div>
              </div>
              
               <div class="col-md-6 mb-3">
                <label for="bmi">BMI</label>
                <input name="bmi" type="text" class="form-control" id="bmi" placeholder="BMI�� �Է����ּ���." value="" required="required">
                <div class="invalid-feedback">
                BMI�� �Է����ּ���.
                </div>
              </div>
     

          </div>

          

          

          <div class="col-md-6 mb-3" style="display:block">
        <label for="gender">����<span class="text-muted" style="text-align:center; display:block; margin: 20px;" ></span></label>
               ���� <input type="radio" name="gender" value="M" required="required">    ���� <input type="radio" name="gender" value="W" required="required">
          </div>

          
          <hr class="mb-4">
          
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">���� �Ϸ�</button>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; JavaChipPurapuchino</p>
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
</body>

</html>