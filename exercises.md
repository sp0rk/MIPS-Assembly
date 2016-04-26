	Ćwiczenie 1
Celem ćwiczenia jest zapoznanie się z możliwościami stosowanego symulatora poprzez
napisanie prostego programu, uruchomienie go w różnych trybach pracy oraz obserwację
zawartości poszczególnych rejestrów przy pracy krokowej.
	Zadanie do wykonania:
1. Napisz program obliczający wartość wielomianu 4 stopnia
2. Uruchom program przy pomocy komendy go oraz single step
3. Porównaj kod napisany w języku asemblera oraz wygenerowany kod „wynikowy”,
skomentuj zauważone różnice.
4. Skomentuj zmiany zawartości rejestrów podczas wykonania obu programów.

	Ćwiczenie 2
Celem ćwiczenia jest zapoznanie się z implementacją różnych „wersji” instrukcji pętli w
języku asemblera procesora MIPS.
	Zadanie do wykonania:
1. Napisz program obliczający wartość silni zadanej liczby
a. Wykorzystaj implementację pętli for (liczba ma być zadana przez użytkownika
programu)
b. Wykorzystaj implementację pętli while (działanie programu ma być następujące: na
wstępie zadawane jest pytanie o liczbę przebiegów pętli, po wykonaniu określonej
liczby przebiegów pojawia się pytanie czy kontynuować obliczenia, jeśli odpowiedz
będzie „Nie” wyświetlana jest liczba oraz jej silnia, jeśli odpowiedź będzie „Tak”
ponownie zadawane jest pytanie o liczbę przebiegów pętli)
2. Czy program w wersji (b) można wykorzystać dla wyznaczenia maksymalnej liczby
całkowitej ? Jeśli tak to jak przeprowadzić „pomiar” ?
3. Czy można napisać program w wersji (b) tak aby nie był zgłaszany nadmiar ? Jeśli tak to
napisz kolejna wersję programu.

	Ćwiczenie 3
Celem ćwiczenia jest zapoznanie się z implementacją procedur (funkcji) w języku asemblera
procesora MIPS.
	Zadanie do wykonania:
1. Napisz program sortujący zadany ciąg liczb całkowitych algorytmem bąbelkowym.
a. Struktura programu ma być następująca: „Moduł główny” jest odpowiedzialny za
komunikacje z użytkownikiem, wprowadzanie danych oraz wyprowadzanie
wyniku, sam algorytm sortowania ma być zaimplementowany jako procedura
(funkcja) wywoływana z modułu głównego.
b. Zmodyfikuj program napisany w punkcie (a) w taki sposób aby przestawienie
dwóch elementów ciągu było realizowane przez procedurę (funkcję) wywoływaną
przez procedurę sortującą.
c. Czym różnią się programy w wersji (a) oraz (b), oczywiście poza dodatkową
procedurą (funkcją) ?
2. Czy w programie wersji (b) musiałeś zachowywać wartości rejestrów, jeśli tak to czy za
zabezpieczenie wartości rejestrów odpowiedzialna była funkcja wywoływana czy wywołująca
? Dlaczego wybrałeś takie rozwiązanie ? Jeśli nie to przeprowadź „teoretyczną” dyskusję
która z wymienionych powyżej możliwości jest „lepsza” i dlaczego

	Ćwiczenie 4
	Zadanie do wykonania:
1. Wektorami rzadkimi nazywamy wektory o dużej ilości zer. Są one najczęściej
zapisywane w specjalnej postaci: wektora porządku oraz wektora wartości. Wektor
porządku wskazuje, które współrzędne wektora rzadkiego przyjmują wartość różną
od zera w następujący sposób: wystąpienie "1" w wektorze porządku oznacza, ze na
odpowiadającej mu pozycji wektora współrzędna przyjmuje wartość różną od zera,
natomiast wystąpienie "0" oznacza, ze współrzędna przyjmuje wartość zero. Wektor
wartości jest wektorem niezerowych współrzędnych wektora. Napisz program
który wczytuje wektory rzadkie zapisane w standardowej postaci, przekształca je do
postaci opisanej powyżej oraz wylicza wartość ich iloczynu skalarnego. 

	Ćwiczenie 5
	Zadanie do wykonania:
1. Zmień implementację jednego z poprzednich zadań (1,2,3,4). Wykorzystaj w nowej
implementacji operacje zmiennoprzecinkowe. 