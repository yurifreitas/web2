// apaga 
// somente debug
localStorage.clear();

var vet = [];



function inicializa(){
	if (localStorage.getItem("vet") != undefined){
		vet = JSON.parse(localStorage.getItem("vet"));
	}	
}


function validaNome(nome){
	if (nome.length < 2){
		alert("Tem que ser maior...");
	} 
	
	
}

// opcao 1
function Pessoa(id, nome, sobrenome){
	this.id = id;
	this.nome = nome;
	this.sobrenome = sobrenome;

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
	listar();
}

function listar(){
	document.getElementById("divResultado").innerHTML = "";

	var vet = JSON.parse(localStorage.getItem("vet"));
	for (var i = 0; i < vet.length; i++){
		var g = vet[i];
		document.getElementById("divResultado").innerHTML+= "<button onclick=excluir("+g.id+")> " + g.nome + "</button> <br>";
	}
	alert("Listou com sucesso");
	
}

function adiciona(){
	// obter valores dos inputs


	var nome = document.getElementById("nome").value;
			function validaNome(nome){
	if (nome.length < 3){
		alert("Tem que ser maior...");
	} 
	
	
}
	var sobrenome = document.getElementById("sobrenome").value;
	// crio um novo objeto de Pessoa
	var id = vet.length + 1;
	var pessoa = new Pessoa(id, nome, sobrenome);
	// adiciono no vetor que armazena todas as Pessoas
	vet.push(pessoa);
	// atualizo o vetor no localStorage
	localStorage.setItem("vet", JSON.stringify(vet));
	alert("Adicionou...");
}

function soma(nro1, nro2){
 	var soma = nro1 + nro2;
 	alert(soma);	
 }

function somaDiferente(){
	var nro1 = parseInt(prompt("Digite:"));
	var nro2 = parseInt(prompt("Digite:"));
	alert(nro1+nro2);
}

function curtiu(){
	alert("curtiu?");
}

function bemvindo(){
	alert("Bemvindo");
}

function Total(){
	alert("Gerando Total");

	}
function Salvar(){
	

	}