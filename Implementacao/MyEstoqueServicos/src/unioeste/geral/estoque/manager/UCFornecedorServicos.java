package unioeste.geral.estoque.manager;

import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.common.bo.AtividadeComercial;
import unioeste.geral.common.bo.Email;
import unioeste.geral.common.bo.EnderecoEspecifico;
import unioeste.geral.common.bo.Fone;
import unioeste.geral.common.col.ColAtividadeComercial;
import unioeste.geral.common.col.ColDDD;
import unioeste.geral.common.col.ColDDI;
import unioeste.geral.common.col.ColEmail;
import unioeste.geral.common.col.ColFone;
import unioeste.geral.common.col.ColTipoFone;
import unioeste.geral.endereco.bo.Endereco;
import unioeste.geral.endereco.manager.UCEnderecoGeralServicos;
import unioeste.geral.estoque.bo.Fornecedor;
import unioeste.geral.estoque.col.ColFornecedor;

public class UCFornecedorServicos {

	public Fornecedor consultarFornecedor(Fornecedor f) throws Exception{
		// TODO Auto-generated method stub
		
		SQLConnector connector = new SQLConnector();
		ColFornecedor colFornecedor = new ColFornecedor();
		UCEnderecoGeralServicos ucEndereco = new UCEnderecoGeralServicos();
		ColAtividadeComercial colAtividadeComercial = new ColAtividadeComercial();
		ColEmail colEmail = new ColEmail();
		ColFone colFone = new ColFone();
		
		f = colFornecedor.consultarFornecedorPorCnpj(f, connector);
		Endereco e = ucEndereco.obterEnderecoPorId(f.getEnderecoEspecifico().getEndereco());
		EnderecoEspecifico ee = f.getEnderecoEspecifico();
		ee.setEndereco(e);
		f.setEnderecoEspecifico(ee);
		
		ArrayList<Email> emails = colEmail.obterEmailFornecedor(f, connector);
		f.setEmail(emails.toArray(new Email[emails.size()]));
		
		ArrayList<Fone> fones = colFone.obterFoneFornecedor(f, connector);
		ColDDD colDDD = new ColDDD();
		ColDDI colDDI = new ColDDI();
		ColTipoFone colTipoFone = new ColTipoFone();
		for(Fone fone : fones) {
			fone.setDdd(colDDD.obterDDDPorId(fone.getDdd(), connector));
			fone.setDdi(colDDI.obterDDIPorId(fone.getDdi(), connector));
			fone.setTipoFone(colTipoFone.obterTipoFonePorId(fone.getTipoFone(), connector));
		}
		
		f.setFone(fones.toArray(new Fone[fones.size()]));
		
		ArrayList<AtividadeComercial> atividades = colAtividadeComercial.obterAtividadeComercialPorFornecedor(f, connector);
		f.setAtividadeComercial(atividades.toArray(new AtividadeComercial[atividades.size()]));
		
		connector.close();
		return f;
	}

}
