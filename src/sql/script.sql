CREATE SEQUENCE RoleSeq START WITH 1;
CREATE TABLE Role(
   id_role VARCHAR(50) DEFAULT ('ROL000000' || NEXTVAL('RoleSeq')) ,
   libelle VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_role)
);

CREATE SEQUENCE UtilisateurSeq START WITH 1;
CREATE TABLE Utilisateur(
   id_utilisateur VARCHAR(50) DEFAULT ('USR000000' || NEXTVAL('UtilisateurSeq')),
   email VARCHAR(50) ,
   mdp VARCHAR(50) ,
   nom VARCHAR(50) ,
   id_role VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_utilisateur),
   FOREIGN KEY(id_role) REFERENCES Role(id_role)
);
