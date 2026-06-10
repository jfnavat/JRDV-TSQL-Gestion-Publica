CREATE OR REPLACE FUNCTION fn_calcular_peso_dinamico(p_id_impacto IN INTEGER) RETURN NUMBER IS
    v_tipo VARCHAR2(50);
    v_params JSON;
    v_peso NUMBER;
BEGIN
    SELECT tipo_regla, json_params INTO v_tipo, v_params FROM 
    impacto_transversal WHERE id_impacto = p_id_impacto;
    IF v_tipo = 'POR_POBLACION' THEN
        -- Extrae valores del JSON de parámetros
        v_peso := v_params.pob_objetivo / v_params.pob_total;
    ELSIF v_tipo = 'FORMULA_FIJA' THEN
        v_peso := v_params.valor_constante;
    ELSE
        v_peso := 0;
    END IF;
    RETURN ROUND(v_peso, 4);
END;
