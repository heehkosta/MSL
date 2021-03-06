package model.card;

import java.sql.SQLException;
import java.util.List;

public interface CardTemplateService {
	void createCardTemplate(CardTemplateVO ctvo) throws SQLException;
	   CardTemplateVO getCardTemplateByTemplateName(String cardTemplateName) throws SQLException;
	   CardTemplateVO getCardTemplateByTemplateNo(int cardTemplateNo) throws SQLException;
	   List<CardTemplateVO>  getAllCardTemplates() throws SQLException;
	   void deleteTemplate(int cardTemplateNo) throws SQLException;
}
