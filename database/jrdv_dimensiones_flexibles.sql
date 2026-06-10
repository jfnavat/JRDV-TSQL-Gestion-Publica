CREATE OR REPLACE JSON RELATIONAL DUALITY VIEW v_dimensiones_flexibles_dv AS
SELECT JSON {
    '_id'             : nodo_id,
    'nombre_macro'    : nombre_dimension,
    'codigo_origen'   : codigo_clasificador,
    'definicion'      : descripcion_nodo,
    -- Sub-arreglo recursivo para renderizar los hijos de este nodo (Nivel + 1)
    'nodos_hijos'     : [ 
        SELECT JSON {
            'id_hijo'        : h.nodo_id,
            'codigo_hijo'    : h.codigo_clasificador,
            'descripcion'    : h.descripcion_nodo,
            'mapeo_edad'     : h.codigo_rango_edad,
            'grupo_destino'  : h.grupo_etario
        }
        FROM dm_dimensiones_flexibles h WITH INSERT UPDATE DELETE
        WHERE h.nodo_padre_id = dm_dimensiones_flexibles.nodo_id 
    ]
}
FROM dm_dimensiones_flexibles 
WHERE nodo_padre_id IS NULL; -- El punto de entrada de la vista son las raíces de nivel 1.
