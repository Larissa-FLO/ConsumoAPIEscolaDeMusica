function clicarBotao(){
    let aluno = document.getElementById("idAluno").value;
    buscarAluno(aluno)
}

async function buscarAluno(aluno){
    let dadosAluno = await fetch(`https://localhost:7236/api/Alunos/${aluno}`).then(Response => Response.json());
    console.log(dadosAluno);
    dadosTela(dadosAluno)
}

function dadosTela(dadosAluno){
    document.getElementById('nome').value = dadosAluno.nomeAluno;
    document.getElementById('dataNascimento').value = dadosAluno.dataNasc;
    document.getElementById('dataInicio').value = dadosAluno.dataNasc;
    document.getElementById('turma').value = dadosAluno.codTurma;
}

