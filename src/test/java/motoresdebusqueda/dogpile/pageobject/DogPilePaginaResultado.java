package motoresdebusqueda.dogpile.pageobject;

import net.serenitybdd.core.pages.PageObject;

import java.util.List;
import java.util.stream.Collectors;

public class DogPilePaginaResultado extends PageObject {

    public static final String TITULO_RESULTADO = ".web-bing__title";
    public static final String DESCRIPCION_DE_TEXTO = "..//span[contains(@class,'web-bing__description')]";
    public static final String TITULO_RESULTADO_CON_TEXTO = "//a[contains(@class, 'web-bing__title') and contains(.,'{0}')]";

    public List<String> obtenerResultados(){
        return findAll(TITULO_RESULTADO)
                .stream()
                .map(element -> element.getAttribute("textContent"))
                .collect(Collectors.toList());
    }

    public String obtenerTextoDeTituloResultado(String tituloDeResultado) {
        return findBy(TITULO_RESULTADO_CON_TEXTO,tituloDeResultado)
                .then().findBy(DESCRIPCION_DE_TEXTO)
                .then().getText();
    }
}
