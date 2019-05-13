-- alterar senha do usuario admin
UPDATE usuario SET senha= md5('12345') WHERE usuario='admin'

-- alterar nivel de acesso do usuario carlos
UPDATE usuario SET nivel_acesso='3' WHERE cod='2';