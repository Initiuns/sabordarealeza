<%@ page language="java" import="java.sql.*" %> 

<%

	String 	cnome = request.getParameter("nome"); 

	String	ctelefone = request.getParameter("tel");

	String	cemail = request.getParameter("email");
	String	cmens = request.getParameter("textarea");
	String	ctipo = request.getParameter("tipo");


	String	driver = "net.sourceforge.jtds.jdbc.Driver"; 
	String	url = "jdbc:jtds:sqlserver://10.4.0.90:1433/bd212232018";
	String	usuario = "bd212232018";
	String	senha = "123456";

	Class.forName(driver);

	Connection conexao = DriverManager.getConnection(url, usuario, senha);

	String sql = "insert into clientes (clieNome, clieEmail, clieTelefone,clietipo,cliemensagem) values	('" + cnome + "','" + cemail +  "','" + ctelefone + "','"+ ctipo+"','"+cmens+"')";

	Statement stm = conexao.createStatement();

	stm.executeUpdate(sql);

	out.print("<font color='red'>Pedido efetuado com Sucesso !");

	out.print("<a href='formulario.html'>");
	out.print("<a href='formulario.html'>Voltar");
	out.print("</a>");

%>

<!DOCTYPE html>
<html>
<head>
	<title></title>
<style type="text/css">
	.centro {
	

	}

	.quadr {
		width: 30%;
		height: 200px;
		left: 35%;
		top: 200px;
		box-shadow: 5px 5px 50px 5px #000;
		border-radius: 10px;
		position: fixed;
	}

</style>

<link rel="stylesheet" type="text/css" href="css/style2.css">

</head>
<body>
		<header class="">
  			
		  <nav class="menu">

		  	<a href="index.html"><img src="Imagens/logo_icon.png" title="Vá para a Home" class="logo"></a>

		    <ul class="teste">
		      <li>
		        <a href="formulario.html" title="Contato">Contato</a>
		      </li>
		      <li>
		        <a href="galeria.html" title="Galeria">Bolos</a>
		        	<ul>
						<li><a href="#">Bolos</a></li>
						<li><a href="#">Pães</a></li>
					</ul>
		      </li>
		      <li>
		        <a href="sobre.html" title="Sobre">Sobre</a>
		      </li>
		      <li>
		        <a href="index.html" title="Home">Home</a>
		      </li>
		    </ul>
		  </nav>
		</header>

		<div class="centro quadr">
			<center><h1>DADOS SALVOS COM SUCESSO !</h1></center>
		</div>

</body>
</html>