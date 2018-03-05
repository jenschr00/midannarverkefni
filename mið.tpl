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
	img{height:55px;width:55px;}
</style>
	<h1>Söluaðilar eldsneytis á Íslandi</h1>
	<div class="image">
		<img src="/Myndir/AO.png">
		<img src="/Myndir/Costco.png">
		<img src="/Myndir/Dælan.png">
		<img src="/Myndir/N1.png">
		<img src="/Myndir/OB.png">
		<img src="/Myndir/Olís.png">
		<img src="/Myndir/Orkan.png">
		<img src="/Myndir/Orkanx.png">
	</div>
	% listi=[]
	%for i in data['results']:
    	%if i["company"] not in listi:
        	%listi.append(i["company"])
        %end
    % end
	%for x in listi:
    	<h3><a href="/allt/{{x}}">{{x}}</h3>
    %end
    


</body>
</html>