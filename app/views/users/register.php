<?php
require APPROOT . '/views/includes/head.php';
?>
    <?php
    require APPROOT . '/views/includes/navigation.php';
    ?>

<div class="container-login">
    <div class="wrapper-login">
        <h2>Register </h2>
        <form action="<?php echo URLROOT; ?>/users/register" method="POST">
            <input type="text" placeholder="UserName *" name="username" required>
            <span class="invalidFeedback">
                <?php echo $data['usernameError']; ?>
            </span>
            <input type="email" placeholder="Email *" name="email" required>
            <span class="invalidFeedback">
                <?php echo $data['emailError']; ?>
            </span>

            <input type="password" placeholder="PassWord *" name="password" required>
            <span class="invalidFeedback">
                <?php echo $data['passwordError']; ?>
            </span>

            <input type="password" placeholder="ConfirmPassword *" name="confirmPass" required>
            <span class="invalidFeedback">
                <?php echo $data['confirmPassError']; ?>
            </span>
            <button id="submit" type="submit" value="submit">Submit</button>

        </form>
    </div>
</div>
<?php
   require APPROOT . '/views/includes/footer.php';
?>