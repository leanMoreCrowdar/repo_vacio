@lean
Feature: feature de prueba para card 3537
  
   Usuario envía un mensaje multilínea
  
  @prueba @Automated @Smoke @Candidate 
  Scenario: Usuario envía un mensaje multilínea
    When este es un ejemplo usando Doc String:
      """
      Some Title, Eh?
      ===============
      Here is the first paragraph of my blog post. Lorem ipsum dolor sit amet,
      consectetur adipiscing elit.
      """
    And este es un ejemplo usando "Cucumber Expression"
      """
      Some Title, Eh?
      ===============
      Here is the first paragraph of my blog post. Lorem ipsum dolor sit amet,
      consectetur adipiscing elit.
      """
    And este es un ejemplo utilizando Regex clásica
    And ahora vamos a hacer un data table
      | nombre    | precio |
      | producto1 | 100    |
      | producto2 | 200    |
    And un ejemplo de para step combinados sería un datatable y "Cucumber Expression"
      | nombre | precio |
      | notebook | 1200 |
      | smartphone | 900 |
      | teclado | 150 |
    Then voy a hacer una combinacion con regex "Cucumber Expression" y Doc String:
    """
    Hola equipo,
    """
    And test commit
    
  @Candidate 
  Scenario: Envío exitoso de un mensaje multilínea
    Given el usuario está en la página de mensajes
    When el usuario ingresa un mensaje multilínea en el campo de texto
    And hace clic en el botón "Enviar"
    Then el sistema muestra el mensaje enviado en el historial de mensajes