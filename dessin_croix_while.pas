
program dessin_croix_while;

uses crt;
{//But : avec le caractère demandé par l'utilisateur (peut importe lequel) et la taille donnée par l'utilisateur, 
on veut dessiner une croix symétrique, qu'elle soit composée d'un nombre paire ou impaire de caractères, qu'on affichera donc sur l'interface FPC. 
On se servira d'une boucle pour et d'une boucle tant que.
//Entrées : caractère choisi par l'utilisateur et taille choisie par l'utilisateur
//Sorties : croix dimensionnée selon la taille et le caractère choisis par l'utilisateur.}

VAR
	taillecroix, ligne, colonne : integer;
	carcroix : Char;

BEGIN 
writeln('Quel est le caractere choisi pour le dessin ?');
	readln(carcroix);

	writeln('Quelle est la taille (nombre reel) de la croix ?');
	readln(taillecroix);

	clrscr;

	WHILE (ligne <= taillecroix)DO
			BEGIN
				FOR colonne:=1 TO taillecroix DO
					BEGIN
						IF ((ligne=colonne) OR (ligne+colonne=taillecroix+1))THEN
						write(carcroix) 
						ELSE 
						write(' ');
					
					END;
					ligne := ligne +1;
					writeln;
			END;

			readln;
			
	END.
//Il faut créer un compteur manuellement, dans la fin de la boucle WHILE.
