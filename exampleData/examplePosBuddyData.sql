
INSERT INTO public.identity (posbuddyid, surname, lastname, birthday, atribute1, atribute2, atribute3, startallocation, endallocation, balance)
VALUES ('a89cee33-7e12-42c6-bffe-1b3a3c5fca64', 'Wallace', 'Chedar', '1975-03-08', 'big Nose', null, null, '2023-12-01', null, 20);

INSERT INTO public.identity (posbuddyid, surname, lastname, birthday, atribute1, atribute2, atribute3, startallocation, endallocation, balance)
VALUES ('6be777b9-4cfe-4c3b-a8c5-5f6874efe84f', 'Gromit', 'Dog', '2006-06-09', '4 legs', null, null, '2023-05-20', null, 45.33);

INSERT INTO public.revenues (id, posbuddyid, itemtext, amount, paymentaction, value, timeofaction, itemid)
VALUES (9, '6be777b9-4cfe-4c3b-a8c5-5f6874efe84f', 'Bratwurst', 10, 'R', 30, '2024-01-16 21:20:32.820813', null);
