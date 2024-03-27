package vn.edu.hcmuaf.serice;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Tour;
import vn.edu.hcmuaf.bean.valies;

import java.util.ArrayList;
import java.util.List;

public class TourService {

    public List<Tour> findAll() {
        return TourDao.findAll();
    }
    public Tour findtourbyid(int id){
        return  TourDao.findtourbyid(id);
    }
    public List<valies> getValiTour(ArrayList<valies> valiList) {
        return TourDao.getValiTour(valiList);
    }
    public void insertVali(ArrayList<valies> valiList) {
        TourDao.insertVali(valiList);
    }
    public ArrayList<Tour> getListTourbySearch(String search){
        return TourDao.getListTourbySearch(search);
    }
}
