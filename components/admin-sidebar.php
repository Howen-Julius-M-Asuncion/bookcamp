<?php 
    include_once('../config/config.php');
    include_once('../modules/styling.php');
?>
<style>
    <?php
        if($_SESSION['currentPage'] == "Home"){ 
            echo "background-color: var(--gray);";
        }
    ?>
</style>
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
                    }
                ?>
                </span>
            </a>
        </li>
        <hr>
        <li>
            <a href="<?php echo BASE_URL?>">
                <span class="icon">
                    <i class="fa-solid fa-house-user"></i>
                </span>
                <span class="title">Home</span>
            </a>
        </li>
        <li>
            <a href="<?php echo BASE_URL?>">
                <span class="icon">
                    <i class="fa-solid fa-chart-line"></i>
                </span>
                <span class="title">Admin Dashboard</span>
            </a>
        </li>
        <hr>
        <li>
            <a href="<?php echo BASE_URL?>">
                <span class="icon">
                    <i class="fa-solid fa-users-gear"></i>
                </span>
                <span class="title">Users</span>
            </a>
        </li>
        <li>
            <a href="<?php echo BASE_URL?>">
                <span class="icon">
                    <i class="fa-solid fa-graduation-cap"></i>
                </span>
                <span class="title">Sections</span>
            </a>
        </li>
        <li>
            <a href="<?php echo BASE_URL?>">
                <span class="icon">
                    <i class="fa-solid fa-book"></i>
                </span>
                <span class="title">Courses</span>
            </a>
        </li>
        <li>
            <a href="<?php echo BASE_URL?>">
                <span class="icon">
                    <i class="fa-solid fa-building-user"></i>
                </span>
                <span class="title">Departments</span>
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

    <!-- Top Bar -->
    <div class="topbar">
        <div class="toggle">
            <i class="icon-bars fa-solid fa-bars"></i>
        </div>
    </div>

    <!-- Sidebar Script -->
    <script src="<?php echo BASE_URL?>/components/js/sidebar.js"></script>