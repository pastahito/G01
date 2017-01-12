-- Para ejecutar este test como script:
-- $ runhaskell -i../src ProductoTest.hs

import Test.Hspec
import Producto

main :: IO ()
main = hspec $ do

  describe "Test Producto" $ do

    it "Multiplicar con positivo" $ do
      producto 3 2 `shouldBe` 6

    it "Multiplicar con cero" $ do
      producto 3 0 `shouldBe` 0

    it "Multiplicar con negativo" $ do
      producto 3 (-4) `shouldBe` (-12)
