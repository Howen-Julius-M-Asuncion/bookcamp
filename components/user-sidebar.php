<?php 
    include_once('../config/config.php');
    include_once('../modules/styling.php');
?>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/71f85e3db5.js" crossorigin="anonymous"></script> -->
<link rel="stylesheet" href="<?php echo BASE_URL?>/components/css/sidebar.css">

<!-- Sidebar -->
<div class="navigation">
    <ul>
        <li>
            <a href="#">
                <span class="icon"><img src="<?php echo FAVICON;?>"></span>
                <span class="title">
                <?php 
                    if (isset($_SESSION['authenticated']) == "TRUE" && (isset($_SESSION['userID']))){
                        echo "{$_SESSION['userName']}";
                    }else{
                        echo "Not Logged In.";
                    }
                ?>
                </span>
            </a>
        </li>
        <hr>
        <li>
            <a href="<?php echo BASE_URL?>">
                <span class="icon">
                    <i class="fa-solid fa-user-graduate"></i>
                </span>
                <span class="title">User</span>
            </a>
        </li>
        <hr>
        <li>
            <a href="<?php echo BASE_URL?>/includes/logout.php">
                <span class="icon">
                    <i class="fa-solid fa-person-walking-arrow-right"></i>
                </span>
                <span class="title">Log Out</span>
            </a>
        </li>
    </ul>
</div>
<!-- Main Section -->
<div class="main">

    <!-- Sidebar -->
    <div class="topbar">
        <div class="toggle">
            <i class="icon-bars fa-solid fa-bars"></i>
        </div>
    </div>

    <!-- Sidebar Script -->
    <script src="<?php echo BASE_URL?>/components/js/sidebar.js"></script>