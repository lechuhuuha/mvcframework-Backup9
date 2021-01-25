<?php
require APPROOT . '/views/includes/head.php';
?>
    <?php
    require APPROOT . '/views/includes/navigation.php';
    ?>
<?php if (isLoggedIn()) : ?>
    <?php if (isAdmin()) : ?>

        <?php echo "<h1>admin</h1>" ?>
        <table id="customers">
            <tr>
                <th>ID</th>
                <th>Allowed to interact</th>
                <th>Username</th>
                <th>Email</th>
                <th>Role</th>
                <th>Action</th>
            </tr>
            <?php foreach ($data['users'] as $user) : ?>
                <tr>
                    <td><?php echo $user->id  ?></td>
                    <td><?php if ($user->role == $_SESSION['role']) echo "Not allowed." ?></td>
                    <td><?php echo $user->username  ?></td>
                    <td><?php echo $user->email  ?></td>
                    <td><?php if ($user->role == 1) {
                            echo 'Admin';
                        } else {
                            echo 'author';
                        }  ?></td>
                    <td><a  href="<?php echo URLROOT . "/users/delete_author/" . $user->id ?>">Delete</a> | <a  href="<?php echo URLROOT . "/users/admin/update_author/" . $user->id ?>">Update</a></td>
                </tr>
            <?php endforeach; ?>
        </table>
    <?php elseif (!isAdmin()) : ?>

        <a href="<?php echo URLROOT; ?>/index">Ur account not allowed to display this.Back to home page</a>

    <?php endif; ?>
<?php endif; ?>
<?php
   require APPROOT . '/views/includes/footer.php';
?>