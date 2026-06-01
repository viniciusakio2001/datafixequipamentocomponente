insert into equipamentocomponente
SELECT
	nextval('equipamentocomponente_seq'),
	e.cod_equipamentopai_serial,
	e.cod_equipamento_serial,
	'999' as cod_usuario_serial,
	'2026-06-01' as datainstalacao,
	'14:17' as horainstalacao,
	null as datadesinstalacao,
	null as horadesinstalacao,
	'N' as gerartag
FROM equipamento e
WHERE e.cod_empresa_serial = 18
AND e.cod_equipamentopai_serial is not null
AND e.setor = 'N'
AND e.cod_equipamento_serial not in (
	select cod_equipamento_serial from
	equipamentocomponente
)