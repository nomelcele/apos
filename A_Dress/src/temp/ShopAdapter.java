package temp;

import or.adress.mvc.dao.BoardDao;
import or.adress.mvc.dao.ChatDao;
import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.SalesCheckDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.SmangDao;
import or.adress.mvc.dao.StaffDao;
import or.adress.mvc.dao.StockDao;
import or.adress.mvc.dao.SuggestDao;

import org.springframework.beans.factory.annotation.Autowired;

import xml.MakeXML;

// Shop에서 사용하는 Dao Adapter
public class ShopAdapter implements AdapterInter{
     @Autowired
      private StaffDao staffdao;
      @Autowired
      private ShopDao shdao;
      @Autowired
      private ProductDao pdao;
      @Autowired
      private BoardDao bdao;
      @Autowired
      private SmangDao smdao;
      @Autowired
      private StockDao stdao;
      @Autowired
      private ChatDao chdao;
      @Autowired
      private SalesCheckDao skdao;
      @Autowired
      private SuggestDao sgdao;
      @Autowired
      private MakeXML xml;
      
      public MakeXML XMLreturn(){
         return xml;
      }
      
      public SuggestDao SGDAOreturn(){
         return sgdao;
      }
      
      public SmangDao SMDAOreturn(){
         return smdao;
      }
      
      public StaffDao STAFFDAOreturn(){
         return staffdao;
      }
      
      @Override
      public BoardDao BDAOreturn() {
         return bdao;
      }

      @Override
      public ShopDao SHDAOreturn() {
         return shdao;
      }

      @Override
      public ProductDao PDAOreturn() {
         return pdao;
      }

      @Override
      public StockDao STDAOreturn() {
         return stdao;
      }

      @Override
      public ChatDao CHDAOreturn() {
         return chdao;
      }

      @Override
      public SalesCheckDao SKDAOreturn() {
         return skdao;
      }

}