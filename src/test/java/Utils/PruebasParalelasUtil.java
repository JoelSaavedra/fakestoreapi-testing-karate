package Utils;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import static Utils.ReportsUtil.generateCucumberReport;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

class PruebasParalelasUtil {
    private static final Logger logger = LoggerFactory.getLogger(PruebasParalelasUtil.class);


    @BeforeAll
    static void beforeClass(){
        logger.info("INICIANDO LAS PRUEBAS>>>>>>>>>>>>");
    }

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:BDD/API_Fakestore/Users/PostUser.feature").tags("@CP02")
                .outputCucumberJson(true)
                .parallel(2);
        generateCucumberReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

    @AfterAll
    static void afterClass(){
        logger.info("FINALIZANDO LAS PRUEBAS>>>>>>>>>>>>");
    }

}
