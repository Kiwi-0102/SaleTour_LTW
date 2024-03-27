package vn.edu.hcmuaf.DAO;

public interface objectDAO {

        public boolean add(Object obj);

        public boolean delete(String id);

        public boolean edit(String id , Object obj);

        public void read();


}
