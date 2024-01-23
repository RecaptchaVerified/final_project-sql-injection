<?php
session_start();
$session_link = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$page_directory_session = dirname($session_link);
unset($_SESSION["username"]);
?>
<script>
window.location.href = "<?php echo $page_directory_session?>/index.html";
</script>
<?php 

?>