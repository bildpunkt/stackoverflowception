<?php

try {
	//Your breaking code

} catch (Exception $e) {

	header("Location: http://stackoverflow.com/search?q=" . urlencode($e->getMessage()));

}