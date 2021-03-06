<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
	<title><?php echo htmlentities($config['title']) ?></title>
	<style type="text/css">
	a:hover {
		text-decoration: none;
		color: white;
		background-color: black;
		background: #000000;
		color: #FFFFFF;
		cursor: pointer;
	}
	body,p,td {
		text-decoration: none;
		font-family: Verdana, Arial, Helvetica, sans-serif;
		font-size: 11px;
		color: #7EB688;
		background-color: #242424;
	}
	a:link {
		color: #00CCFF;
		text-decoration: none;
	}
	li.active {
		font-weight: bold;
	}

	</style>
<body vlink="#999999" alink="#00CCFF">
	
	<h1><?php echo $config['title'] ?></h1>

<?php if ($next_file || $prev_file): ?>
	<p class="paging">
		<?php if ($prev_file): ?>
			<a class="prev" href="<?php echo $_SERVER['PHP_SELF'] ?>?f=<?php echo urlencode($prev_file) ?>">Previous</a>
		<?php endif ?>
		|
		<?php if ($next_file): ?>
			<a class="next" href="<?php echo $_SERVER['PHP_SELF'] ?>?f=<?php echo urlencode($next_file) ?>">Next</a>
		<?php endif ?>
	</p>
<?php endif; ?>
<?php if ($file): ?>
	<img src="<?php echo $_SERVER['PHP_SELF'] ?>?a=view&f=<?php echo urlencode($file) ?>" alt="<?php echo htmlentities($file) ?>" />
	<br /><br />
<?php endif; ?>

<?php if (count($images)): ?>
	<h3>Images</h3>
	<ol>
		<?php foreach ($images as $curr_file): ?>
			<li<?php if ($curr_file == $file) echo ' class="active"' ?>><a href="<?php echo $_SERVER['PHP_SELF'] ?>?f=<?php echo urlencode($curr_file) ?>"><?php echo htmlentities($curr_file) ?></a></li>
		<?php endforeach; ?>
	</ol>
<?php endif ?>
<?php if (count($files)): ?>
	<h3>Other Files</h3>
	<ol>
		<?php foreach ($files as $curr_file): ?>
			<li><a href="<?php echo $_SERVER['PHP_SELF'] ?>?a=file&f=<?php echo urlencode($curr_file) ?>"><?php echo htmlentities($curr_file) ?></a></li>
		<?php endforeach; ?>
	</ol>
<?php endif ?>
<?php if (!count($images) && !count($other_files)): ?>
	<p>No files found</p>
<?php endif; ?>

</html>
</body>
