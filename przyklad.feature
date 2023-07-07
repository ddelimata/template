# language: pl
Właściwość: Zakupy

  Ogólny opis:
  * Wbijam do sklepu
  * Wyszukuję produkt
  * Dodaję pierwszy z listy
  * Do kasy
  * Metoda wysyłki
  * Metoda płatności

  Szablon scenariusza: Zakup użytkownika niezalogowanego
    Zakładając, że użytkownik wszedł na stronę główną i zamknął popup o cookies
    I językiem strony jest "pl"
    Gdy użytkownik wyszukuje "<wyszukanie>"
    Wtedy sklep prezentuje listę wyników dla "<wyszukanie>"
    Gdy użytkownik klika na pierwszy produkt
    Wtedy sklep przechodzi do strony produktu "<produkt>"
    Gdy użytkownik dodaje produkt do koszyka
    Wtedy sklep prezentuje mini-koszyk
    Gdy użytkownik przechodzi do kasy
    Wtedy sklep prezentuje stronę zakupu
    Gdy użytkownik wypełnia formularz i dokonuje zakupu "<wysylka>" "<platnosc>"
    Wtedy sklep prezentuje stronę sukcesu

    Przykłady:
      | wyszukanie | produkt         | wysylka                | platnosc              |
      | krawat     | Krawat Mixkolor | stationaryshop:pick-up | cashondelivery        |
      | krawat     | Krawat Mixkolor | stationaryshop:pick-up | bluepayment           |
      | krawat     | Krawat Mixkolor | stationaryshop:pick-up | payu_gateway          |
      | krawat     | Krawat Mixkolor | stationaryshop:pick-up | paypo                 |
      | krawat     | Krawat Mixkolor | stationaryshop:pick-up | bitbaypay_paymentpage |
      | krawat     | Krawat Mixkolor | stationaryshop:pick-up | bluepaymentcards      |
      | krawat     | Krawat Mixkolor | inpost:parcelshop      | bluepayment           |
      | krawat     | Krawat Mixkolor | inpost:parcelshop      | payu_gateway          |
      | krawat     | Krawat Mixkolor | inpost:parcelshop      | paypo                 |
      | krawat     | Krawat Mixkolor | inpost:parcelshop      | bitbaypay_paymentpage |
      | krawat     | Krawat Mixkolor | inpost:parcelshop      | bluepaymentcards      |
      | krawat     | Krawat Mixkolor | dpd:courier            | bluepayment           |
      | krawat     | Krawat Mixkolor | dpd:courier            | payu_gateway          |
      | krawat     | Krawat Mixkolor | dpd:courier            | paypo                 |
      | krawat     | Krawat Mixkolor | dpd:courier            | bitbaypay_paymentpage |
      | krawat     | Krawat Mixkolor | dpd:courier            | bluepaymentcards      |
      | krawat     | Krawat Mixkolor | dpdcash:courier        | cashondelivery        |
      | krawat     | Krawat Mixkolor | inpost:parcelshopcod   | cashondelivery        |
