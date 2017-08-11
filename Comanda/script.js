// apaga 
// somente debug
localStorage.clear();

var vet = [];



function inicializa(){
	if (localStorage.getItem("vet") != undefined){
		vet = JSON.parse(localStorage.getItem("vet"));
	}	
}


function validaNome(nome,sobrenome){
	if (nome.length < 3){
		alert("O nome tem que ter mais do que 3 letras");
		
	} 
	if (sobrenome.length == 0){
		alert("O sobrenome não pode estar vazio");
		
	} 
	
	
}

// opcao 1
function Cliente(id, nome, sobrenome,valorFinal){
	this.id = id;
	this.nome = nome;
	this.sobrenome = sobrenome;
	this.valorFinal = valorFinal;

}

// opcao 2
//var Pessoa = {nome: "", sobrenome: ""};

function excluir(id){
	// JSON.parse transforma uma string em objeto ou vetor
	var vet = JSON.parse(localStorage.getItem("vet"));
	var vetNovo = [];
	for (var i = 0; i < vet.length; i++){
		var g = vet[i];
		if (g.id != id){
			vetNovo.push(g);
		}
	}
	vet = vetNovo;	
	localStorage.setItem("vet", JSON.stringify(vet));
	alert("Excluido");
	listar();
}

function listar(){
	document.getElementById("divResultado").innerHTML = "";

	var vet = JSON.parse(localStorage.getItem("vet"));
	for (var i = 0; i < vet.length; i++){
		var g = vet[i];
		document.getElementById("divResultado").innerHTML+=  "Id da Comanda: "+ g.id + "<br> Nome: "+ g.nome + "<br> Sobrenome: "+g.sobrenome+  "<br> Valor total: R$ "+g.valorFinal+"<br><button onclick=excluir("+g.id+")>Excluir</button> "+"<button onclick=editar("+g.id+")>Editar</button> <br>";
		}
		alert("Listou com sucesso");
	


	
}

function adiciona(){
	var nome = document.getElementById("nome").value;
	var sobrenome = document.getElementById("sobrenome").value;
	validaNome(nome,sobrenome);
	// crio um novo objeto de Cliente
	//debugger;
	
	var id = vet.length + 1;
	var cliente= new Cliente(id,nome,sobrenome,Total());
	// adiciono no vetor que armazena todas os clientes
	vet.push(cliente);
	// atualizo o vetor no localStorage
	localStorage.setItem("vet", JSON.stringify(vet));
	alert("Adicionou...");
}


function Total(){
	
	var inteiro=0;
	var valorFinal = 0;
	var mult=1;
	var valores = document.getElementsByName('valorproduto');
	var multiplica = document.getElementsByName('quant');


    for (var i = 0; i < valores.length; i++){
		if (valores[i].checked) {
			mult = parseInt(multiplica[i].value);
			inteiro = parseInt(valores[i].value) * mult;
			valorFinal = parseInt(valorFinal) + inteiro ;
		}	
	}
	
	var nome = document.getElementById("nome").value;
	var sobrenome = document.getElementById("sobrenome").value;
	document.getElementById("resultado").innerHTML= "R$ "+ valorFinal;
	alert("Cliente : "+ nome  + " \nSobrenome:" + sobrenome + "\nValor da Conta : R$" + valorFinal);
	

	
return valorFinal;
	}

	function editar(id){
	}
