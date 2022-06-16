SELECT
    USER.name AS usuario,
    IF(
        YEAR(MAX(USER_HISTORY.rep_date)) = "2021",
        "Usuário ativo",
        "Usuário inativo"
    ) AS condicao_usuario
FROM
    user AS USER
    JOIN user_history AS USER_HISTORY ON USER.id = USER_HISTORY.user_id
GROUP BY
    usuario;