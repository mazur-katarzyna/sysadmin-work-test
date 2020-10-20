SysAdmin exercises

Zadanie składa się z dwóch części, obie należy wykonać w GCP (Google Cloud):

1. Używając Packera (packer.io) przygotuj obraz systemu z zainstalowanym dowolnym serwerem HTTP serwującym plik index.html o treści: <h1>Hello SysAdmins</h1>.

2. Napisz kod Terraforma stawiający środowisko:

    Autoskalującą grupę wirtualnych maszyn korzystających z obrazu z punktu 1 (może być jedna instancja, żeby ograniczyć koszty).
    Autoskalująca się grupa powinna być podpięta pod loadbalancer i przez niego udostępniać powyższą stronę www.

Prace nad kodem z obu punktów należy zapisywać w repozytorium Git i udostępnić w tej formie po wykonaniu zadania.
