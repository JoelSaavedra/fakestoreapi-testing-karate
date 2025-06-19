package Runner;

import com.intuit.karate.junit5.Karate;

public class testRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:BDD/API_Fakestore/Carts/GetCarts.feature").tags("@GetCarts");
    }
}
