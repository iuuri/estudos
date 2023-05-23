package produto;

import io.restassured.http.ContentType;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import pojo.UsuarioPojo;

import static io.restassured.RestAssured.*;
import static io.restassured.matcher.RestAssuredMatchers.*;
import static org.hamcrest.Matchers.*;

@DisplayName("Testes de API do modulo de Produtos")
public class ProdutoTest {
    private String token;

    @BeforeEach
    public void beforeEach(){
        //configurando os dados da API
        baseURI = "http://165.227.93.41";
        //port = "" - caso precise indicar porta de acesso
        basePath = "/lojinha";

        UsuarioPojo usuario = new UsuarioPojo();
        usuario.setUsuarioLogin("admin");
        usuario.setUsuarioSenha("admin");

        // Obter o token do usuario admin
        this.token = given()
                .contentType(ContentType.JSON)
                .body(usuario)
                .when()
                .post("/v2/login")
                .then()
                .extract()
                .path("data.token");

    }

    @Test
    @DisplayName("Validar que o valor do produto igual 0.00 não é permitido")
    public void testValidarValorZeradoDoProduto(){

        // Inserir um produto com valor 0.00 e validar mensagem de erro e status code

        given()
                .contentType((ContentType.JSON))
                .header("token", this.token)
                .body("{\n" +
                        "  \"produtoNome\": \"Corsa\",\n" +
                        "  \"produtoValor\": 0.00,\n" +
                        "  \"produtoCores\": [\n" +
                        "    \"preto\", \"azul\"\n" +
                        "  ],\n" +
                        "  \"produtoUrlMock\": \"\",\n" +
                        "  \"componentes\": [\n" +
                        "    {\n" +
                        "      \"componenteNome\": \"Radio\",\n" +
                        "      \"componenteQuantidade\": 1\n" +
                        "    }\n" +
                        "  ]\n" +
                        "}")
        .when()
                .post("/v2/produtos")
        .then()
                .assertThat()
                .body("error", equalTo("O valor do produto deve estar entre R$ 0,01 e R$ 7.000,00"))
                .statusCode(422);

    }

    @Test
    @DisplayName("Validar que o valor do produto igual 7000.01 não é permitido")
    public void testValidarValorSeteMilEUmDoProduto(){

        // Inserir um produto com valor 7000.01 e validar mensagem de erro e status code

        given()
                .contentType((ContentType.JSON))
                .header("token", this.token)
                .body("{\n" +
                        "  \"produtoNome\": \"Corsa\",\n" +
                        "  \"produtoValor\": 7000.01,\n" +
                        "  \"produtoCores\": [\n" +
                        "    \"preto\", \"azul\"\n" +
                        "  ],\n" +
                        "  \"produtoUrlMock\": \"\",\n" +
                        "  \"componentes\": [\n" +
                        "    {\n" +
                        "      \"componenteNome\": \"Radio\",\n" +
                        "      \"componenteQuantidade\": 1\n" +
                        "    }\n" +
                        "  ]\n" +
                        "}")
                .when()
                .post("/v2/produtos")
                .then()
                .assertThat()
                .body("error", equalTo("O valor do produto deve estar entre R$ 0,01 e R$ 7.000,00"))
                .statusCode(422);

    }

    @Test
    @DisplayName("Validar que o valor 0.01 é permitido e status code 201 created")
    public void testValidarValorZeroUmDoProduto(){

        // Inserir um produto com valor 0.01 e validar mensagem do status code

        given()
                .contentType((ContentType.JSON))
                .header("token", this.token)
                .body("{\n" +
                        "  \"produtoNome\": \"Play Station 5\",\n" +
                        "  \"produtoValor\": 0.01,\n" +
                        "  \"produtoCores\": [\n" +
                        "    \"preto\", \"branco\"\n" +
                        "  ],\n" +
                        "  \"produtoUrlMock\": \"\",\n" +
                        "  \"componentes\": [\n" +
                        "    {\n" +
                        "      \"componenteNome\": \"Controle\",\n" +
                        "      \"componenteQuantidade\": 1\n" +
                        "    }\n" +
                        "  ]\n" +
                        "}")
                .when()
                .post("/v2/produtos")
                .then()
                .assertThat()
                .body("message", equalTo("Produto adicionado com sucesso"))
                .statusCode(201);

    }

    @Test
    @DisplayName("Validar que o valor 7000.00 é permitido e status code 201 created")
    public void testValidarValorSeteMilDoProduto(){

        // Inserir um produto com valor 0.01 e validar mensagem do status code

        given()
                .contentType((ContentType.JSON))
                .header("token", this.token)
                .body("{\n" +
                        "  \"produtoNome\": \"Play Station 5\",\n" +
                        "  \"produtoValor\": 7000.00,\n" +
                        "  \"produtoCores\": [\n" +
                        "    \"preto\", \"branco\"\n" +
                        "  ],\n" +
                        "  \"produtoUrlMock\": \"\",\n" +
                        "  \"componentes\": [\n" +
                        "    {\n" +
                        "      \"componenteNome\": \"Controle\",\n" +
                        "      \"componenteQuantidade\": 1\n" +
                        "    }\n" +
                        "  ]\n" +
                        "}")
                .when()
                .post("/v2/produtos")
                .then()
                .assertThat()
                .body("message", equalTo("Produto adicionado com sucesso"))
                .statusCode(201);

    }

}

