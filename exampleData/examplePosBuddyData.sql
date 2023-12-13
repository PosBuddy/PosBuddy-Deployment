INSERT INTO public.items (id, artikel, unit, minage, dispensingstation, price)
VALUES ('coke', 'Coka Cola', 'Glas', 0, 'bar1', 2.2);
INSERT INTO public.items (id, artikel, unit, minage, dispensingstation, price)
VALUES ('fanta', 'Fanta Orange', 'Glas', 0, 'bar1', 2.2);
INSERT INTO public.items (id, artikel, unit, minage, dispensingstation, price)
VALUES ('wurst', 'Bratwurst', 'Stück', 0, 'grill', 2.5);

INSERT INTO public.dispensingstations (id, name, location)
VALUES ('bar1', 'Drinks dispenser', 'in Front of the House');
INSERT INTO public.dispensingstations (id, name, location)
VALUES ('grill', 'Food', 'At the entrance');

INSERT INTO public.identity (posbuddyid, surname, lastname, birthday, atribute1, atribute2, atribute3, startallocation, endallocation, balance)
VALUES ('a89cee33-7e12-42c6-bffe-1b3a3c5fca64', 'Wallace', 'Chedar', '1975-03-08', 'big Nose', null, null, '2023-12-01', null, 20);
INSERT INTO public.identity (posbuddyid, surname, lastname, birthday, atribute1, atribute2, atribute3, startallocation, endallocation, balance)
VALUES ('6be777b9-4cfe-4c3b-a8c5-5f6874efe84f', 'Gromit', 'Dog', '2006-06-09', '4 legs', null, null, '2023-05-20', null, 45.33);
