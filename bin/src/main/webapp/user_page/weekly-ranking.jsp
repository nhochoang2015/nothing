<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<head>
    <title>Bảng xếp hạng tuần</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="ranking/css/style.css">
</head>
<body>
<section class="main-content">
    <div class="container">
        <h1>Top 3</h1>
        <br>
        <br>

        <div class="row">
<!--            Hạng nhì-->
            <div class="col-sm-4">
                <div class="leaderboard-card leaderboard-card-second">
                    <div class="leaderboard-card__top">
                        <h3 class="text-center">Điểm</h3>
                    </div>
                    <div class="leaderboard-card__body">
                        <div class="text-center">
                            <img src="img/user2.jpg" class="circle-img mb-2" alt="User Img">
                            <h5 class="mb-0">Tên</h5>
                            <p class="text-muted mb-0">Thời gian nhanh nhẩtt</p>
                            <p class="text-muted mb-0">1:10</p>
                            <hr>
                            <div class="d-flex justify-content-between align-items-center">
                                <button class="btn btn-outline-success btn-sm">Chúc mừng</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!--            Háº NG NHáº¤T-->
            <div class="col-sm-4">
                <div class="leaderboard-card leaderboard-card-first">
                    <div class="leaderboard-card__top">
                        <h3 class="text-center">Điểm</h3>
                    </div>
                    <div class="leaderboard-card__body">
                        <div class="text-center">
                            <img src="img/user1.jpg" class="circle-img mb-2" alt="User Img">
                            <h5 class="mb-0">Tên</h5>
                            <p class="text-muted mb-0">Thời gian nhanh nhẩt</p>
                            <p class="text-muted mb-0">1:00</p>
                            <hr>
                            <div class="d-flex justify-content-between align-items-center">
                                <button class="btn btn-outline-success btn-sm">Chúc mừng</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!--            Háº NG BA-->
            <div class="col-sm-4">
                <div class="leaderboard-card leaderboard-card-third">
                    <div class="leaderboard-card__top">
                        <h3 class="text-center">Điểm</h3>
                    </div>
                    <div class="leaderboard-card__body">
                        <div class="text-center">
                            <img src="img/user3.jpg" class="circle-img mb-2" alt="User Img">
                            <h5 class="mb-0">Tên</h5>
                            <p class="text-muted mb-0">Thời gian nhanh nhẩtt</p>
                            <p class="text-muted mb-0">1:30</p>
                            <hr>
                            <div class="d-flex justify-content-between align-items-center">
                                <button class="btn btn-outline-success btn-sm">Chúc mừng</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <h4>Tất cả Người dùng</h4>

        <table class="table">
            <thead>
            <tr>
                <th>Hạng</th>
                <th>Người dùng</th>
                <th>Thời gian nhanh nhẩtt</th>
                <th>Điểm</th>
                <th>Chúc mừng</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <div class="d-flex align-items-baseline">
                        <h4 class="mr-1">1</h4><small class="text-success"><i class="fa fa-arrow-up"></i>1</small>
                    </div>
                </td>
                <td>
                    <div class="d-flex align-items-center">
                        <img src="img/user1.jpg" class="circle-img circle-img--small mr-2" alt="User Img">
                        <div class="user-info__basic">
                            <h5 class="mb-0">Kiran Acharya</h5>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="d-flex align-items-baseline">
                        <h4 class="mr-1">1:40</h4><small class="text-success"><i class="fa fa-arrow-down"></i>0:10</small>
                    </div>
                </td>
                <td>
                    <div class="d-flex align-items-baseline">
                        <h4 class="mr-1">500</h4><small class="text-success"><i class="fa fa-arrow-up"></i>20</small>
                    </div>
                </td>
                <td>
                    <button class="btn btn-success btn-sm">Chúc mừng</button>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="d-flex align-items-baseline">
                        <h4 class="mr-1">2</h4>
                    </div>
                </td>
                <td>
                    <div class="d-flex align-items-center">
                        <img src="img/user1.jpg" class="circle-img circle-img--small mr-2" alt="User Img">
                        <div class="user-info__basic">
                            <h5 class="mb-0">Kiran Acharya</h5>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="d-flex align-items-baseline">
                        <h4 class="mr-1">1:50</h4>
                    </div>
                </td>
                <td>
                    <div class="d-flex align-items-baseline">
                        <h4 class="mr-1">450</h4>
                    </div>
                </td>
                <td>
                    <button class="btn btn-success btn-sm">Chúc mừng</button>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="d-flex align-items-baseline">
                        <h4 class="mr-1">3</h4>
                    </div>
                </td>
                <td>
                    <div class="d-flex align-items-center">
                        <img src="img/user1.jpg" class="circle-img circle-img--small mr-2" alt="User Img">
                        <div class="user-info__basic">
                            <h5 class="mb-0">Kiran Acharya</h5>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="d-flex align-items-baseline">
                        <h4 class="mr-1">2:30</h4>
                    </div>
                </td>
                <td>
                    <div class="d-flex align-items-baseline">
                        <h4 class="mr-1">400</h4>
                    </div>
                </td>
                <td>
                    <button class="btn btn-success btn-sm">Chúc mừng</button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</section>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>