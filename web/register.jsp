<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <style>
            .mes-register1{
                color: red;
            }
        </style>
    </head>
    <body>
        
        <!-- Section: Design Block -->
        <section class="vh-100">
            <div class="container-fluid h-custom">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-md-9 col-lg-6 col-xl-5">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                             class="img-fluid" alt="Sample image">
                    </div>
                    <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                        <form action="register" method="POST">

                            <p class="text-center font-weight-bold mb-0 me-3 ">Sign up</p>
                            <p class="mes-register1">${mesRegister1}</p>
                            <!-- Full name input -->
                            <div class="form-outline mb-4  ">
                                <input type="text" id="form3Example3" name="fullname" class="form-control form-control-lg"
                                       placeholder="Full name" />
                                <!-- <label class="form-label" for="form3Example3"></label> -->
                            </div>

                          
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <input type="email" id="form3Example3" name="email"class="form-control form-control-lg "
                                       placeholder="Email address" />
                                <!-- <label class="form-label" for="form3Example3"></label> -->
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-3">
                                <input type="password" name="password"id="form3Example4" class="form-control form-control-lg"
                                       placeholder="Enter password" />
                                <!-- <label class="form-label" for="form3Example4"></label> -->
                            </div>

                            <!-- <div class="d-flex justify-content-between align-items-center">
                                Checkbox
                                <div class="form-check mb-0">
                                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                                    <label class="form-check-label" for="form2Example3">
                                        Remember me
                                    </label>
                                </div>
                                <a href="#!" class="text-body">Forgot password?</a>
                            </div> -->

                            <div class="text-center text-lg-start mt-4 pt-2">
                                <button type="submit" class="btn color-teal btn-lg"
                                        style="padding-left: 2.5rem; padding-right: 2.5rem;">Sign up</button>
                                <p class="small fw-bold mt-2 pt-1 mb-0">I have an account?
                                    <a href="login.jsp" class="link-danger registed-teal">Login</a>
                                </p>
                            </div>

                            <!-- <div class="divider d-flex align-items-center my-4">
                                <p class="text-center fw-bold mx-3 mb-0">Or</p>
                            </div>
    
                            <div class="d-flex flex-row align-items-center justify-content-center">
                                
                                <button type="button" class="btn color-teal btn-floating mx-2 circle">
                                    <i class="fab fa-facebook-f"></i>
                                </button>
    
                                <button type="button" class="btn color-teal btn-floating mx-2 circle">
                                    <i class="fab fa-twitter"></i>
                                </button>
    
                                <button type="button" class="btn color-teal btn-floating mx-2 circle">
                                    <i class="fab fa-linkedin-in"></i>
                                </button>
                            </div> -->

                        </form>
                    </div>
                </div>
            </div>
            <div
                class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 color-teal">
                <!-- Copyright -->
                <div class="text-white mb-3 mb-md-0 footer-title">
                    Viet Hoang Express
                </div>
                <!-- Copyright -->

                <!-- Right -->
                <!-- <div>
                    <a href="#!" class="text-white me-4 mx-3">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#!" class="text-white me-4 mx-3">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#!" class="text-white me-4 mx-3">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="#!" class="text-white me-4 mx-3">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div> -->
                <!-- Right -->
            </div>
        </section>
        <!-- Section: Design Block -->



    

    </body>
    <script>
        function validateEmail() {
            var emailInput = document.getElementById("form3Example3");
            var email = emailInput.value;
            var emailFormat = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            if (!email.match(emailFormat)) {
                alert("Email không hợp lệ. Vui lòng nhập đúng định dạng email.");
                emailInput.focus();
                return false;
            }
            return true;
        }
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>
