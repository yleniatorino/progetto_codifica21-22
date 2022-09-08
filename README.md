# Codifica Di Testi (2021/22)
Il progetto contenuto in questo repository è stato realizzato per l'esame di Codifica di Testi del professor Angelo Mario Del Grosso dagli studenti del Corso di Laurea in Informatica Umanistica (triennale):

Irene Ivaldi (mat. 581281)

Ylenia Torino (mat. 579809)

Sono state codificate due pagine di manoscritto, in particolare i fogli 15 e 16 del manoscritto Ms. fr. 3951/1 - prolusioni 3

Il progetto è stato validato con Xerces con il seguente comando:

java -cp "xerces-2_12_1/xml-apis.jar;xerces-2_12_1/xercesImpl.jar;xerces-2_12_1/xercesSamples.jar" dom.Counter definitivo.xml

I file XML e XSL sono stati trasformati con Saxon-HE 10.3 in un file HTML "test.html" con il seguente comando:

java -jar SaxonHE10-3J/saxon-he-10.3.jar -s:definitivo.xml -xsl:style.xsl -o:test.html
