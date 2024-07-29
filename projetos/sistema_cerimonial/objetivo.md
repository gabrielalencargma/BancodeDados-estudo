## Requerimentos

- Criar a modelagem conceitual e lógica do banco de dados;
- Desenvolver o banco de dados para o sistema;
- Fazer a seleção das tabelas no SQL.

## Enunciado

Uma firma especializada em cerimônias de formatura (cerimonial) possui um nome, CNPJ e endereço. O cerimonial organiza várias formaturas. Para cada formatura, é importante registrar o nome do curso, faculdade, nome e telefone do chefe da turma, além da forma de pagamento e valor do pagamento. Fazem parte da formatura vários eventos. Um evento tem uma data, descrição do evento, local de realização e duração prevista. O sistema permite a marcação e o adiamento de eventos. Existem alguns eventos que são eventos fechados, para os quais o sistema registra o número de convidados.

Em um evento, trabalham vários profissionais do cerimonial. Um profissional tem o seu número de matrícula, nome, telefone, tipo de profissional e salário. O cerimonial pode contratar ou demitir profissionais. Um profissional pode trabalhar em vários eventos, sendo importante registrar a quantidade de horas que o profissional será alocado em um evento específico. Alguns profissionais são recepcionistas, e para estes é preciso armazenar o tipo do uniforme. No fim do mês, para calcular o salário do profissional, é consultada a política de horas extras da empresa, que armazena o limite de horas extras, valor da hora para cada tipo de profissional.

Um cerimonial possui vários "buffets" associados. Um "buffet" possui nome, CNPJ, endereço e tempo de parceria com o cerimonial. O sistema deve permitir o cadastro de "buffets" parceiros do cerimonial. Todo "buffet" oferece vários tipos de cardápio. Cada tipo de cardápio tem uma descrição das bebidas e aperitivos oferecidos, bem como o preço unitário por pessoa servida.
