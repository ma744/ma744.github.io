---
layout: post
title: Suchmaschinenoptimierung - Kurzreferenz (SEO Cheatsheet)
---


## Inhalt
1. [Einleitung](#einleitung)
2. [Ein paar Grundsätze vorab](#ein-paar-grundstze)
3. [Planung und Organisation](#planung-und-organisation)
   1. [Wahl der Domainadresse](#wahl-der-domainadresse)
   2. [Duplicate Content](#duplicate-content)
   3. [HTTPS verwenden](#https-verwenden)
   4. [Subdomain www](#subdomain-www)
   5. [Benennung und Aufbau der Verzeichnisstruktur](#benennung-und-aufbau-der-verzeichnisstruktur)
4. [Webseiteninhalt suchmaschinenfreundlich aufbereiten](#webseiteninhalt-suchmaschinenfreundlich-aufbereiten)
   1. [Keyword-Dichte und Textgewichtung](#keyword-dichte-und-textgewichtung)
   2. [Eine gute Überschrift](#eine-gute-berschrift)
   3. [HTML5-Metatags](#html5-metatags)
   4. [Skripte, Stylesheets und valides HTML](#skripte-stylesheets-und-valides-html)
5. [Webseiten-Marketing](#webseiten-marketing)
   1. [robots.txt](#robotstxt)
   2. [Indexierung der Webseite durch Crawler](#indexierung-der-website-durch-crawler)
   3. [Linkaustausch](#linkaustausch)
   4. [Indirekt verlinkt werden durch die Veröffentlichung vor Artikeln](#indirekt-verlinkt-werden-durch-die-verffentlichung-vor-artikeln)
   5. [Nutzerbindung und erhöhte Aufrufe](#nutzerbindung-und-erhhte-aufrufe)
6. [Weiterführende Links](#weiterfhrende-links)


## Einleitung ##

Im Laufe der Zeit haben sich einige Dos and Don'ts zum Bereich Suchmaschinenoptimierung (SEO) angesammelt, die ich mit euch in diesem Post teilen möchte.
Die einzelnen Tipps können separat gelesen werden und sollen als Nachschlagmöglichkeit dienen.
Um diese Referenz möglichst kurzzuhalten, sind triviale Erklärungen nicht zusätzlich notiert.

## Ein paar Grundsätze vorab ##
Nicht benötigte Daten gehören nicht auf die Webseite.
Solche Daten verfälschen die thematische Einordnung des Webseiteninhalts.
Veraltete Technologien wie Flash sollten selbstredend nicht verwendet werden.
Das Einbinden von etlichen Bibliotheken verlangsamt das Laden der Webseite und erhöht den Datenverbrauch des Besuchers.
Aus dem gleichen Grund sollten viele oder große Grafiken bewusst eingesetzt werden.
Eine längere Ladezeit führt schnell zu einem schlechteren SEO-Ranking.
Grafiken sollten zudem immer mit einem `alt` Attribut versehen werden.

iFramesets sollten nicht verwendet werden.

---

# Planung und Organisation #


## Wahl der Domainadresse ##

Das Hauptkeyword der Website ist im Idealfall (alleiniger) Bestandteil der Domainadresse.
Für renommierte und viel beworbene Firmen eignet sich der Firmenname,
für andere Firmen oftmals »Firmenname-Tätigkeitsfeld«.
Für persönliche Seiten wie Blogs etc. eignet sich »vorname-nachname.de«.
Der Bindestrich ist in beiden Fällen für eine bessere Lesbarkeit empfehlenswert.

Die Länge der Domainadresse sollte verhältnismäßig kurz und prägnant sein.
Ist der Nachname außerordentlich lang, kann darüber nachgedacht werden den Vornamen abzukürzen oder ganz wegzulassen.
Schwer lesbare Adressen sollten nicht verwendet werden.
Auch nicht, wenn die Adresse aus dem Nachnamen besteht.
Teilweise bieten sich Adressen der Form »nachname-tätigkeitsfeld« als Alternative an.

Grundsätzlich sollte das im Domainnamen stehen worunter man gefunden werden möchte.

Die Domainendung (alias Top-Level-Domain) sollte individuell passend gewählt werden.
Oftmals bietet sich ».de« als renommierte Domainendung für deutschsprachige Websites an. 
Im englischsprachigen / internationalen Bereich bietet sich grundsätzlich ».com« an.
(Die URL-Endung sollte landesspezifisch angepasst sein.)


## Duplicate Content ##

Es macht praktisch keinen Sinn sich mehrere Domains zu sichern.
Ausnahmen bilden z.B. [Domain-Grabbing](https://de.wikipedia.org/wiki/Domaingrabbing) oder 
wenn weltweit bekannte Unternehmen Nutzern die Möglichkeit bieten möchten durch landesspezifische Top-Level-Domains einfacher zu finden zu sein.
Es besteht nämlich die Gefahr, falls alle Domains auf denselben Inhalt zeigen,
dass die Suchmaschine zwar alle Inhalte findet,
sich für die Zukunft jedoch nur die entdeckte "Hauptdomain" merkt (und die anderen ignoriert),
oder sogar alle Inhalte nicht mehr listet.

Jede erdenkliche Art von Duplicate Content sollte vermieden werden!


## HTTPS verwenden ##

Jede Website sollte [HTTPS](https://developer.mozilla.org/de/docs/Glossary/https) unterstützen.
Ein Zertifikat kann bei Certifacate-Authentification-Authorities wie Let's Encrypt beantragt werden.
Nach der Zertifizierung muss nur noch jeder User, der die Webseite über eine unverschlüsselte Verbindung via HTTP aufruft umgeleitet werden.
Dies ist z.B. mittels der ».htaccess-Datei« möglich, welche im Root-Verzeichnis der Website abgelegt wird.
Wenn später weitere Rewrite-Rules genutzt werden, d.h. zusätzlich zur Umleitung,
ist es sinnvoll die Weiterleitungs-Regel vor den anderen Rewrite-Regeln anzuwenden (d.h. vor die anderen Regeln zu schreiben).

*Eintrag in der [.htaccess-Datei](https://httpd.apache.org/docs/2.4/howto/htaccess.html): Falls die Webseite nicht über Port 443 (ist HTTPS zugewiesen) aufgerufen wird, soll dem User eine "Site Moved" Nachricht geschickt werden:*
```text
RewriteEngine On

RewriteCond %{SERVER_PORT} !=443

RewriteRule ^(.*)$ https://your-domain.tld/$1 [R=301,L]
```

Weitere Informationen zu mod_rewrite Regeln sind auf dem [Cheatsheet von Dave Child](https://cheatography.com/davechild/cheat-sheets/mod-rewrite/) und auf [modrewrite.de](https://modrewrite.de/) zu finden.


## Subdomain www ##

Die Subdomain »www« wird heutzutage nicht mehr benötigt.
Für Firmen mit einer "älteren" Kundschaft, kann es sinnvoll sein sie als Hauptdomain zu verwenden,
um die Besucher der Webseite nicht zu irritieren.
Außerdem wird der www-Zusatz häufig in Signaturen in Office etc. verwendet und lässt jeden erkennen,
dass es sich um eine URL handelt.

Da manche User jedoch die URL ohne den www-Zusatz eintippen, sollten diese User automatisch umgeleitet werden.
Eine Regel zur Umleitung kann in der .htaccess-Datei festgeschrieben werden:

```
RewriteEngine on

Rewritecond %{HTTPS_HOST} !^www\.your-domain\.tld

RewriteRule ^(.*) https://www.your-domain.tld/$1 [R=301,L]
```

*Eintrag in der .htaccess-Datei*

*Nice to know*: Abseits des Bereiches SEO sind (Sub-)Domains wichtig für das Setzen von Cookies, da Cookies nicht von der [Origin](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin) (bestehend aus Protokoll + Domain + Port) abhängig sind, sondern von der [Domain](https://developer.mozilla.org/en-US/docs/Glossary/Domain) sind.

## Benennung und Aufbau der Verzeichnisstruktur

Alle Dateien (selbst Bilder, Dokumente etc.) sollten einen eindeutigen, von jeder Person lesbaren Namen tragen. Dies kann abhängig vom Parser etc. für eine hübschere URL wie »www.your-domain.de/auswertung/versuchsdaten.pdf« sorgen.
Bei dynamisch generierten URLs sollten Möglichkeiten geschaffen werden, um diese für den Menschen lesbar zu generieren.

Die Verzeichnisstruktur kann dazu genutzt werden die URL mit Schlüsselwörtern anzureichern. Bsp. für das Verzeichnis »it-sicherheit«: »www.marcel-artz.de/blog/it-sicherheit/artikelname«.

Dateiendungen wie .html oder .php können zudem automatisch aus der URL entfernt werden.

Die Navigation sollte aus Textlinks bestehen, nicht aus Grafiken.
Jede Seite sollte eine [Sitemap](https://www.sitemaps.org/) besitzen.
Von einer ausufernden [Footer-Navigation](https://www.ionos.de/digitalguide/websites/webseiten-erstellen/was-ist-ein-footer/) ist abzuraten, 
da sie besonders bei größeren / größer werdenden Seiten als »Keyword-Spamming« von den Suchmaschinen angesehen werden kann.
Die Footer-Navigation ist zu unterscheiden von einer Navbar, die sich am unteren Bildschirmrand befinden kann. 
Eine solche Bottom-Navbar lässt sich leicht mit [Bootstrap](https://getbootstrap.com/docs/4.0/examples/navbar-bottom/) umsetzen.


---

# Webseiteninhalt suchmaschinenfreundlich aufbereiten

## Keyword-Dichte und Textgewichtung ##

Verschiedene Quellen geben unterschiedliche Angaben bezüglich der Keyword-Dichte an,
weshalb an dieser Stellen kein Prozentwert angegeben werden kann.
Im ersten Absatz eines Textes sollten die wichtigsten Schlüsselwörter auftauchen.
Es ist empfehlenswert Schlüsselwörter in die Überschrift einzubunden
oder in Fettschrift zu markieren oder
um einen Link zu weiterführenden Informationen zu ergänzen.

Eine Auflistung der Unterseiten sollte den Startpunkt einer jeden Seite darstellen,
weil die dort vorhandenen Keywords die Seite meist gut abbilden.


## Eine gute Überschrift ##

In dem HTML-\<title\>-Tag sollten wichtige Schlüsselbegriffe genannt werden.
Darunter fallen der Name des Unternehmens / Betreibers, eine kurze Beschreibung,
eine Ansammlung an Keywords. Ein Bsp.: »Marcel Artz - Dokumentationen über meine IT-Projekte rund um Red Teaming, Scripting, Dark-Themes und Kryptografie!


## HTML5-Metatags ##

Die folgenden HTML5-Metatags sind empfehlenswert:
```html
<meta name="description" content="Meine tolle Seite - Hier preise ich an wie toll sie ist und was sie alles zu bieten hat."></meta>

<meta name="keywords" content="seo, optimierung, google, metatags, gute Beschreibung, Aufbau, beispiel"></meta>
<meta name="robots" content="INDEX,FOLLOW"></meta>
<meta name="revisit" content="After 7 days"></meta>
<meta name="language" content="de"></meta>
<meta name="author" content="">Marcel Artz</meta>
```


Das Metatag "revisit" sollte nach den eigenen Bedürfnissen angepasst werden. 
Es gibt dem Crawler eine Empfehlung an wie oft er vorbeikommen soll.
Ob sich der Crawler daran hält, steht jedoch nicht fest.
Daher darf die Zweckmäßigkeit von "revisit" kritisch betrachtet werden.

Keywords sollten im Singular verwendet werden.
Nur Keywords, die der Nutzer häufiger im Plural eintippt, sollten im Plural stehen.

Auf die Umwandlung der Umlaute in z.B. »ae, ue, oe« sollte verzichtet werden. 


## Skripte, Stylesheets und valides HTML ##

Skripte sollten immer über eine / mehrere externe JavaScript-Dateien geladen werden.
Die JavaScript-Datei sollte als allerletztes Element im <body> eingebunden werden,
um den Seitenaufbau zu beschleunigen. 
Ausnahmen von dieser Regel bilden z.B. das Einbinden von [Google Analytics](https://analytics.google.com/).

Skripte sollten vermieden werden, wenn sie keinen essenziellen Mehrwert bieten.

CSS-Dateien sollten ebenfalls über eine / mehrere externe CSS-Dateien geladen werden. 
Um die Dateien einfacher warten zu können,
empfiehlt sich ggf. eine Aufteilung auf mehrere CSS-Dateien.

Alle Skripte, der HTML-Quelltext und alle Stylesheets sollten valide und funktionsfähig sein.
Hierfür eignen sich Online-Validatoren wie der [Markup Validation Service](https://validator.w3.org/#validate_by_input) des W3C.




---

# Webseiten-Marketing #

## Anmelden bei Suchmaschinen ##

Manche Suchmaschinen eignen sich besonders für eine spezielle Zielgruppe.
Hast du eine bestimmte Zielgruppe,
so ist es ratsam solche Suchmaschinen ausfindig zu machen und sich dort, 
wenn möglich, indexieren zu lassen.

Ansonsten ist es generell ratsam sich bei Google und Bing anzumelden.
Suche dafür nach der [Google Search Console](https://search.google.com/search-console) (welche zudem weitere SEO-Strategien bereithält) und nach [Bing Webmasters](https://www.bing.com/webmasters/).


## robots.txt ##

Die [robots.txt](https://developers.google.com/search/docs/advanced/robots/intro?hl=de) muss im Root-Verzeichnis hinterlegt werden,
darf nur einmal existieren und muss kleingeschrieben werden.

Anweisungen in dieser Datei bestehen aus zwei Teilen:

1. Die User-Agent-Definiton: Benutze dafür den Namen des User-Agents der Suchmaschine, mit welcher die Webseite gefunden werden wollten, oder ein Asterisk (*) um alle User-Agents anzusprechen.
2. Die Anweisungen: mit »Allow« kann die Indexierung (einzelner Verzeichnisse) erlaubt, mit »Disallow« verboten werden. Folgt nach der Anweisung Disallow keine Angabe, so ist alles erlaubt.

Hier ein Beispiel:

```
User-agent: searchengine-bot

Disallow: /private/documents/

User-agent: *

Disallow: /backup/

Disallow: /not-for-you/secret.html/

User-agent: ixquick-bot

Disallow:
```

*Beispiel einer robots.txt*

Es sollte klar sein, dass die robots.txt öffentlich einsehbar ist und lediglich eine Richtlinie für Crawler darstellt.
Sie dient nicht dazu bestimmte Verzeichnisse zu verstecken.

## Indexierung der Website durch Crawler ##

Um einen Eindruck davon zu bekommen, wie ein Webcrawler eine Website sieht,
kann ein Text-Browser wie [browsh](https://www.brow.sh/) verwendet werden.


--- 
## Linkaustausch ##

Links auf externen Seiten, 
die auf deine Seite verweisen sind bei Suchmaschinen gerne gesehen.
Dementsprechend ist es wünschenswert sogenannte »Linktauschpartner« zu finden.

### Vorbereitungen zum Linkaustausch ###

Auswahl der potenziellen Partner nach den folgenden Kriterien:

- Für welche Schlüsselwörter soll deine Seite optimiert werden?
- Wonach sucht deine Zielgruppe?
- Wie könnte ein Link auf deine Seite auf der Partnerseite aussehen?

Deinen Link aufwerten:

- Gleiche Frage: Wie könnte ein Link auf deine Seite auf der Partnerseite aussehen?
- Was bieten deine Seiten im Vergleich zur Konkurrenz?
- Wie würdest du deine Seite / Ihr Angebot beschreiben?

Verwende am besten auf unterschiedlichen Seiten unterschiedliche Beschreibungen etc.. 
So vermeidest du die Gefahr als Spam wahrgenommen zu werden und 
personalisierst gleichzeitig deinen Link.

### Anforderungen an einen guten Austauschpartner ###

Dein Austauschpartner sollte:

- über ein (sehr) gutes Ranking verfügen
- der gleichen Webseitenkategorie angehören, z.B. Anime & Mangas
- Übereinstimmungen in Thematik, Keyword-Dichte, Seitentitel etc. haben
- eventuell bereits sehr gute Linkaustauschpartner haben
- nach Möglichkeit lange existieren
- eine valide Webseite haben
- eine Website frei von Rechtschreibung- und Grammatikfehlern besitzen
- eine seriöse Website mit passender (Top-Level-)Domain haben

Im Zweifelsfall gilt: Auf einen Linkaustausch verzichten!

### Bedingungen für die gegenseitige Verlinkung schriftlich vereinbaren ###

Frage höflich beim Webmaster der Website nach und lege ihm die Vorteile einer Verlinkung mit dir dar. 
Schmeichel ihm.
Nenne deinen guten Pagerank.
Deine Qualitätsmerkmale.
Alles was dich einzigartig macht.
(lol)

Kläre alle Vereinbarungen detailliert und schriftlich ab.

Der Verweis auf deine Seite sollte im Idealfall im ersten Drittel der Website,
jedoch nicht im Footer sein.
Achte darauf, dass der Link nicht das Attribut »nofollow« trägt.

Zum Zeitpunkt der Erstellung dieses Abschnittes ist mir nichts über die Vor- und Nachteile von reziproken Links bekannt.
(Stand 3. Sep. 2019)

### Einen geeigneten Tauschpartner in der Praxis finden ##

Hier hilft nur suchen.
Zum Beispiel mit der Suchmaschine [MetaGer](https://metager.de/).
Vielleicht finden sich auch regionale Partner oder Kunden,
die dich auf Ihrer Seite mit Dankesworten bewerten.

Ein gutes Bewertungssystem bietet das englischsprachige Linkaustauschsystem »Link Vault«.
Eine bekannte deutsche Linkaustauschbörse ist Webmasterwelt. (Stand Sep. 2019)

## Indirekt verlinkt werden durch die Veröffentlichung vor Artikeln ##

Schreibe Artikel auf fremden Websites und hinterlasse so Links zu deiner Webseite.

---



## Nutzerbindung und erhöhte Aufrufe ##

Binde Nutzer durch neue Artikel, RSS- und Atom-Feeds, Newsletter etc. und motiviere
die Nutzer deine Website mit Freunden zu teilen.
Diese Motivation sollte im Idealfall intrinsischer Natur sein und durch Merkmale wie Qualität und Aktualität deiner Website hervorgerufen werden.


---



## Weiterführende Links ##

### .htaccess ###

[modrewrite.de](http://modrewrite.de/)

[htaccess Cheat Sheet](https://cheatography.com/davechild/cheat-sheets/mod-rewrite/)

[Guide to creating htaccess files](https://www.askapache.com/htaccess/#Creating_Htaccess_Files)

### Schlüsselwörter finden ###

[https://www.wordtracker.com/](https://www.wordtracker.com/)

[Google Trends](https://trends.google.de/trends/)

[Google Ads Keyword Planner](https://ads.google.com/home/tools/keyword-planner/)


### Weitere SEO-Guides ###

[Startleitfaden zur Suchmaschinenoptimierung (SEO) by Google](https://developers.google.com/search/docs/beginner/seo-starter-guide)

[Einstieg für fortgeschrittene Nutzer - SEO by Google](https://developers.google.com/search/docs/advanced/guidelines/get-started)

[Ryte Wiki zu SEO](https://de.ryte.com/wiki/Kategorie:Suchmaschinenoptimierung)

[Ionos SEO Checker](https://www.ionos.de/tools/seo-check)

[Measure Page Quality with PageSpeed Insights](https://web.dev/measure/)

