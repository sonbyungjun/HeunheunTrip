package com.heun.trip.service;

import java.awt.image.BufferedImage;
import java.io.InputStream;
import java.io.OutputStream;

public interface FileService {
  int uploadImage(InputStream in, long size, String filename);
  int uploadImage(BufferedImage image, String filename);
  int downloadImage(String filename, OutputStream out); 
}
 