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
    buscarTurma();
}

async function buscarTurma(){
    let turma = document.getElementById("turma").value;
    let dadosTurma = await fetch(`https://localhost:7236/api/Turmas/${turma}`).then(Response => Response.json());
    console.log(dadosTurma);
    mostrarDadosTurma(dadosTurma);
}

function mostrarDadosTurma(dadosTurma){
    document.getElementById('professor').value = dadosTurma.profResponsavel;
    document.getElementById('instrumento').value = dadosTurma.instrumento;
    document.getElementById('turno').value = dadosTurma.turno;
}

function limparDados(){
    document.getElementById("idAluno").value = "";
    document.getElementById("nome").value = "";
    document.getElementById("dataNascimento").value = "";
    document.getElementById("dataInicio").value = "";
    document.getElementById("turma").value = "";
    document.getElementById("professor").value = "";
    document.getElementById("instrumento").value = "";
    document.getElementById("turno").value = "";
}