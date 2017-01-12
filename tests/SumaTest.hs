-- Para ejecutar este test como script sin compilar:
-- $ runhaskell -i../src SumaTest.hs

import Test.Hspec
import Suma

main :: IO ()
main = hspec $ do

  describe "Test Suma" $ do

    it "Sumar con positivo" $ do
      suma 3 2 `shouldBe` 5

    it "Sumar con cero" $ do
      suma 3 0 `shouldBe` 3

    it "Sumar con negativo" $ do
      suma 3 (-4) `shouldBe` (-1)
