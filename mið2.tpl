<!DOCTYPE html>
<html>
<head>
	<title>Jens Christian</title>
</head>
<body>
	<style>
	div{
		border: 2px dotted;
	    border-radius: 5px;
	    background-color: gray;
	    padding: 5px;
	    display: block;
	}
	.wrapper{display: grid;}
	.image{display: grid;grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr ;}
	}
	h1{
		text-align: center;
	}
	body {
		background-color: grey;
		width: 1000px;
		margin-left: 250px;
		text-align: center;
	}
	.as{
		float:left;
	}
	.asd{
		margin-left:250px;
	}
	.box{
		font-family: arial, sans-serif;
   		border-collapse: collapse;
    	width: 100%;
		display: table;
    	border-collapse: separate;
    	border-spacing: 2px;
    	border-color: black;
}

	}
</style>
	%for x in data["results"]:
		%if x["company"] == name:
		<div class="box">
			<h2 class="as">Fyrirtæki</h2>
			<h2 class="asd">Staður</h2>
			<h3><a class="as" href="/allt2/{{x['name']}}">{{x["company"]}}</a> <a class="asd">{{x["name"]}}</a></h3>
		</div>
	%end			
</body>
</html>