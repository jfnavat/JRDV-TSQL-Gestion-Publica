CREATE OR REPLACE JSON RELATIONAL DUALITY VIEW presupuesto_completo_dv AS
SELECT JSON {
    'id'        	: p.id_presupuesto,
    'gestion'  	: {
        'montos': { 'devengado': p.monto_devengado }
    },
    'dimensiones_transversales' : [
        SELECT JSON {
            'dimension'	: t.tipo_dimension,
            'especifica'	: t.especifica,
            -- Factor de peso (Por ejemplo 80%)
            'peso'       : t.valor_asignado / 100 
        }
        FROM impacto_transversal t
        WHERE t.id_presupuesto = p.id_presupuesto
    ]
}
FROM presupuesto p;
