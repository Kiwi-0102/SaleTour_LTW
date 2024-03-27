package vn.edu.hcmuaf.serice;

import vn.edu.hcmuaf.bean.Tour;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;

public class SortTour {
    ArrayList listour = new ArrayList();

    public SortTour(ArrayList listour) {
        this.listour = listour;
    }

    public static ArrayList<Tour> SortByRegion(ArrayList<Tour> TourOnCart, String param) {
        ArrayList<Tour> result = new ArrayList<>();
        for (Tour tour : TourOnCart) {
            String sortBy = tour.getRegion().trim().toUpperCase();
            System.out.println("Tour Duration: " + sortBy + ", Param: " + param);
            if (sortBy.equalsIgnoreCase(param.trim().toUpperCase())) {
                result.add(tour);
            }
        }
        return result;
    }

    public static ArrayList<Tour> SortByDuration(ArrayList<Tour> TourOnCart, String param) {
        ArrayList<Tour> result = new ArrayList<>();
        for (Tour tour : TourOnCart) {
            String sortBy = tour.getDuration().trim().toUpperCase();
//            System.out.println("Tour Duration: " + sortBy + ", Param: " + param);
            if (sortBy.contains(param.trim().toUpperCase())) {
                result.add(tour);
            }
        }
        return result;
    }

    // số 1 là tour bình thường @@
    public static ArrayList<Tour> SortDiscountId(ArrayList<Tour> TourOnCart, int param) {
        ArrayList<Tour> result = new ArrayList<>();
        for (Tour tour : TourOnCart) {
            int sortBy = tour.getDiscountId();
            System.out.println("Tour Duration: " + sortBy + ", Param: " + param);
            if (sortBy == param) {
                result.add(tour);
            }
        }
        return result;
    }

    // sắp xếp theo 1 khoảng tiền
    public static ArrayList<Tour> SortRangePrice(LinkedList<Tour> TourOnCart, int min, int max) {
        ArrayList<Tour> result = new ArrayList<>();
        for (Tour tour : TourOnCart) {
            int sortBy = tour.getPrice();
            System.out.println(min+"<="+sortBy+"<="+max);
            if (min <= sortBy && sortBy <= max) {
                result.add(tour);
            }
        }
        return result;
    }

    public static ArrayList<Tour> SortByPriceAscending(ArrayList<Tour> TourOnCart) {
        ArrayList<Tour> result = new ArrayList<>(TourOnCart);
        Collections.sort(result, new Comparator<Tour>() {
            @Override
            public int compare(Tour tour1, Tour tour2) {
                return Integer.compare(tour1.getPrice(), tour2.getPrice());
            }
        });
        return result;
    }

    // Sắp xếp theo giá tiền giảm dần
    public static ArrayList<Tour> SortByPriceDescending(ArrayList<Tour> TourOnCart) {
        ArrayList<Tour> result = new ArrayList<>(TourOnCart);
        Collections.sort(result, new Comparator<Tour>() {
            @Override
            public int compare(Tour tour1, Tour tour2) {
                return Integer.compare(tour2.getPrice(), tour1.getPrice());
            }
        });
        return result;
    }


    public static void main(String[] args) {
        ArrayList<Tour> tour = new TourService().getListTourbySearch("Hà Nội");
        ArrayList<Tour> listsearch= SortByPriceDescending(tour);
        System.out.println(listsearch.size());
        for (Tour tour1: listsearch) {
            System.out.println(tour1);
        }

    }
}
