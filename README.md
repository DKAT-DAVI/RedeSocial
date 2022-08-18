<div>
    <h1 align="center"> Problema 5 - A Rede Social</h1>
    <p>
        Trabalho sobre Banco de Dados passado pelo professor Laércio Ives do IFNMG- Campus Montes Claros
    </p>
    <p>
        O trabalho consiste em receber requisitos para criação de um sistema e a partir disso elaborar um <abbr title="Diagrama Entidade Relacionamento">DER</abbr>. Depois fazer a modelagem do Banco de Dados usando o <abbr title="Sistema de Gerenciamento de Banco de Dados">SGBD</abbr> MySQL aplicando o conceito de chave estrangeira discutido em sala de aula e inserir dados no <abbr title="Banco de Dados">BD</abbr> que serão buscados durante a apresentação do trabalho.
    </p>
</div>

<div align="center">
    <img style="max-width: 543px" alt="img1" src="https://cdn.discordapp.com/attachments/755839774807556242/1009842135161393164/bd1aetapa_page-0001.jpg">
    <img style="max-width: 543px" alt="img2" src="https://cdn.discordapp.com/attachments/755839774807556242/1009842135580811474/bd1aetapa_page-0002.jpg">
    <img style="max-width: 543px" alt="img3" src="https://cdn.discordapp.com/attachments/755839774807556242/1009842135991844995/bd1aetapa_page-0003.jpg">
</div>

<div>
    <h2>Exemplo de busca no Banco de Dados</h2>
    <pre><code>SELECT
pessoa.usuario AS post_de,
post.descTexto AS legenda,
cm.usuario AS comentado_por,
cm.texto AS comentario
FROM 
pessoa INNER JOIN post ON pessoa.usuario = post.usuario
INNER JOIN comentario AS cm ON post.idPost = cm.idPost
ORDER BY pessoa.usuario;</code></pre>
</div>

<div>
    <img style="max-width: 543px" alt="img4" src="https://cdn.discordapp.com/attachments/755839774807556242/1009874286263148694/Screenshot_from_2022-08-18_14-17-18.png">
</div>