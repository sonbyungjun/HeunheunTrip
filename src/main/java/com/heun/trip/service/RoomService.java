package com.heun.trip.service;
 
import java.util.List;
import com.heun.trip.domain.Room;

public interface RoomService {
  List<Room> list(int pageNo, int pageSize, String lati, String longi);
  int size(String lati, String longi);
  int delete(int no); 
  Room get(int no);
  List<Room> hostroomlist(int hostNo);
  int add(Room room);
}
 