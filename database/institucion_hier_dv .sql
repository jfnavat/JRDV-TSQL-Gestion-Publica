-- JRDV para Institución
CREATE OR REPLACE JSON RELATIONAL DUALITY VIEW institucion_hier_dv AS
SELECT JSON {
    'id_institucion'	: i.id,
    'nombre'		: i.nombre,
    'codigo'		: i.codigo,
    'tipo'			: i.tipo,
    -- Objeto padre para reflejar la jerarquía:
    'pertenece_a'    : (
        SELECT JSON {
            'id'		: p.id,
            'nombre'	: p.nombre,
            'codigo'	: p.codigo,
            'tipo'	: p.tipo
        }
        FROM institucion p 
        WHERE p.id = i.parent_id
    )
}
FROM institucion i;
