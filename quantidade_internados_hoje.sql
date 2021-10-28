SELECT
    SUM(QT_UNIDADE) -4 as total_leitos,
    SUM(qt_unidade_ocupada)-4   as ocupados ,
    ( SUM(qt_unidade_ocupada) -4 ) * 100 / ( SUM(QT_UNIDADE) -4  ) as percentual_ocupado,
    100 -  ( SUM(qt_unidade_ocupada) -4 ) * 100 / ( SUM(QT_UNIDADE) -4  ) as percentual_livre
    FROM OCUPACAO_ACOMODACAO_V
