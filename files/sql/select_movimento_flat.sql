SELECT associado.nome AS nome_associado, associado.sobrenome AS sobrenome_associado, associado.idade AS idade_associado,
	movimento.vlr_transacao AS vlr_transacao_movimento, movimento.des_transacao AS des_transacao_movimento, movimento.data_movimento AS data_movimento,
	cartao.num_cartao AS numero_cartao, cartao.nom_impresso AS nome_impresso_cartao,
    conta.tipo AS tipo_conta, conta.data_criacao AS data_criacao_conta
	FROM associado, conta, cartao, movimento
    WHERE conta.id_associado = associado.id
		AND cartao.id_conta = conta.id
		AND cartao.id_associado = associado.id
		AND cartao.id = movimento.id_cartao