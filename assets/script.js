function clicarBotao(){
    let aluno = document.getElementById("idAluno").value;
    buscarAluno(aluno)
}

async function buscarAluno(aluno){
    let dadosAluno = await fetch(`https://localhost:7236/api/Alunos/${aluno}`).then(Response => Response.json());
}
