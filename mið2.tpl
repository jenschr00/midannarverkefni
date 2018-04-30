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
			<h2 class="asdf">Bensín</h2>
			<h2 class="asdfg">Dísel</h2>
			<h3 class="haegri"><a class="as" href="/allt2/{{x['name']}}">{{x["company"]}}</a><p> <p> <a class="asd">{{x["name"]}}</a><p> <p><a class="asdf">{{x["bensin95"]}}<p> <p><a class="asdfg">{{x["diesel"]}}</h3>
		</div>
	%end			
</body>
</html>
