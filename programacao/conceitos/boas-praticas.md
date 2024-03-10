# Conceitos de Boas Praticas

---

## Metodologias

Design Thinking, SCRUM, Kanban e TDD (Desenvolvimento Orientado a Testes) são todas metodologias usadas no campo do desenvolvimento de software, cada uma com sua própria abordagem e foco. Aqui está uma breve visão geral de cada uma:

Design Thinking: Esta é uma abordagem centrada no ser humano para a inovação que se baseia no conjunto de ferramentas do designer para integrar as necessidades das pessoas, as possibilidades da tecnologia e os requisitos para o sucesso nos negócios. Envolve uma série de etapas, incluindo a empatia com os usuários, a definição do problema, a idealização de soluções potenciais, a prototipagem e os testes.

SCRUM: Este é um framework ágil para gerenciar o trabalho com ênfase no desenvolvimento de software. É um framework ágil para o desenvolvimento, e a metodologia ágil mais popular. É um framework dentro do qual as pessoas podem abordar problemas complexos adaptativos, enquanto entregam produtos de valor máximo de forma produtiva e criativa.

Kanban: Este é um método para gerenciar o trabalho de conhecimento com ênfase na entrega just-in-time sem sobrecarregar os membros da equipe. Nesta abordagem, o processo, desde a definição de uma tarefa até sua entrega ao cliente, é exibido para os participantes verem, e os membros da equipe retiram o trabalho de uma fila conforme a capacidade permite.

TDD (Desenvolvimento Orientado a Testes): Este é um processo de desenvolvimento de software que se baseia na repetição de um ciclo de desenvolvimento muito curto: primeiro, o desenvolvedor escreve um caso de teste automatizado (inicialmente falhando) que define uma melhoria desejada ou nova função, depois produz a quantidade mínima de código para passar nesse teste e, finalmente, refatora o novo código para padrões aceitáveis.

Cada uma dessas metodologias tem seus próprios pontos fortes e fracos, e a escolha de qual usar geralmente depende das necessidades e restrições específicas de um projeto ou organização.

---

## Real-Time e RESTful

Real-time e RESTful são duas abordagens diferentes para o desenvolvimento de sistemas de software, especialmente aplicativos da web e APIs (Interfaces de Programação de Aplicativos). Aqui está uma explicação sobre cada uma delas:

Real-time: Real-time, ou tempo real, refere-se à capacidade de um sistema de responder a eventos quase que instantaneamente. Em um aplicativo real-time, as atualizações de dados são entregues ao usuário assim que ocorrem, sem atrasos perceptíveis. Isso é essencial para aplicativos como sistemas de mensagens, jogos online, sistemas de rastreamento de veículos em tempo real e sistemas de monitoramento de sensores. O desenvolvimento de aplicativos real-time geralmente envolve tecnologias como WebSockets, que permitem uma comunicação bidirecional entre o cliente e o servidor, e bancos de dados que suportam operações de leitura e gravação em tempo real, como Firebase Realtime Database ou MongoDB Realm.

RESTful: REST (Representational State Transfer) é um estilo arquitetural que define um conjunto de princípios para criar APIs (Interfaces de Programação de Aplicativos) que são consistentes, escaláveis e fáceis de entender e usar. As APIs RESTful são baseadas em recursos (ou seja, entidades de dados) que são acessados por meio de URIs (Identificadores de Recursos Uniformes) e manipulados usando métodos HTTP padrão, como GET, POST, PUT e DELETE. As APIs RESTful geralmente usam o formato JSON (JavaScript Object Notation) para trocar dados entre o cliente e o servidor. Elas são amplamente usadas em aplicativos da web e móveis, bem como em serviços da web.

Em resumo, enquanto aplicativos real-time são aqueles que fornecem atualizações em tempo real aos usuários, as APIs RESTful são aquelas que seguem os princípios do estilo arquitetural REST para fornecer uma interface consistente e fácil de usar para acessar e manipular recursos. É importante notar que um aplicativo pode ser tanto real-time quanto RESTful, dependendo dos requisitos do sistema.

---

## Facade Partition

Fachada de Partição (Facade Partition): Em arquitetura de software, uma fachada (ou façade) é um padrão de design que fornece uma interface simplificada para um conjunto complexo de classes ou subsistemas. Uma fachada de partição poderia ser uma fachada específica que lida com operações relacionadas à partição de dados ou recursos em um sistema. Por exemplo, em um sistema de gerenciamento de arquivos, uma fachada de partição poderia fornecer métodos simplificados para criar, excluir ou redimensionar partições de disco.

---

## Estilizacao

As regras de estilização, também conhecidas como CSS (Cascading Style Sheets), são um conjunto de instruções que definem a aparência visual de um documento HTML ou XML. As regras de estilização são aplicadas aos elementos HTML usando seletores, propriedades e valores. Aqui estão algumas das regras de estilização mais comuns:

Seletores: Os seletores são usados para selecionar os elementos HTML aos quais as regras de estilização devem ser aplicadas. Os seletores podem ser simples, como h1 para selecionar todos os elementos \<h1\>, ou mais complexos, como .classe para selecionar elementos com uma classe específica.

Propriedades: As propriedades são os atributos que definem a aparência visual de um elemento HTML. Por exemplo, a propriedade color define a cor do texto, a propriedade font-size define o tamanho da fonte e a propriedade background-color define a cor de fundo.

Valores: Os valores são os valores específicos que são atribuídos às propriedades. Por exemplo, o valor red pode ser atribuído à propriedade color para definir a cor do texto como vermelho, e o valor 16px pode ser atribuído à propriedade font-size para definir o tamanho da fonte como 16 pixels.

Aqui está um exemplo de uma regra de estilização simples:

```css
h1 {
    color: red;
    font-size: 24px;
}
```

Neste exemplo, a regra de estilização seleciona todos os elementos \<h1\> e define a cor do texto como vermelho e o tamanho da fonte como 24 pixels.

As regras de estilização podem ser aplicadas a elementos individuais, a classes de elementos ou a todos os elementos de um tipo específico. Elas também podem ser aninhadas, o que significa que uma regra de estilização pode ser aplicada a um elemento apenas se ele estiver dentro de outro elemento específico.

---

## Abstracao e Relativizacao

Em programação, abstração e relativização são conceitos fundamentais que ajudam a entender e organizar a complexidade dos sistemas de software. Aqui está uma explicação de cada termo no contexto da programação:

Abstração: Abstração em programação refere-se à capacidade de esconder detalhes de implementação complexos e fornecer uma interface simplificada para o usuário. Isso permite que os programadores se concentrem nos aspectos mais importantes de uma tarefa, sem se preocupar com os detalhes internos de como ela é realizada. Um exemplo comum de abstração em programação é o uso de funções. Uma função pode encapsular um conjunto de instruções complexas e ser chamada por seu nome, sem a necessidade de entender os detalhes de como ela funciona internamente.

Relativização: Relativização em programação refere-se à capacidade de tornar um conceito ou ideia dependente de um contexto específico. Isso permite que o mesmo código ou conceito seja reutilizado em diferentes situações, adaptando-se ao contexto em que é usado. Um exemplo de relativização em programação é o uso de parâmetros em funções. Os parâmetros permitem que uma função seja aplicada a diferentes conjuntos de dados, tornando-a mais flexível e reutilizável.

Em resumo, abstração e relativização são conceitos fundamentais em programação que ajudam a simplificar e organizar a complexidade dos sistemas de software. Ambos são usados para criar código mais legível, modular e reutilizável.
