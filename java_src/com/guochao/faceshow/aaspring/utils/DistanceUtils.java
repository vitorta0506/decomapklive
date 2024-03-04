package com.guochao.faceshow.aaspring.utils;

import com.guochao.faceshow.aaspring.utils.location.FcLocation;
/* loaded from: classes3.dex */
public class DistanceUtils {
    private static final double EARTH_RADIUS = 6378.137d;

    public static double getDistance(double d10, double d11, double d12, double d13) {
        double rad = rad(d11);
        double rad2 = rad(d13);
        double rad3 = rad(d10 - d12);
        double sin = Math.sin((rad - rad2) / 2.0d);
        double sin2 = Math.sin(rad3 / 2.0d);
        return Math.asin(Math.sqrt((sin * sin) + (Math.cos(rad) * Math.cos(rad2) * sin2 * sin2))) * 12756.274d * 1000.0d;
    }

    public static String getFormatDistance(FcLocation fcLocation, FcLocation fcLocation2) {
        int distance = (int) getDistance(fcLocation.getLongitude(), fcLocation.getLatitude(), fcLocation2.getLongitude(), fcLocation2.getLongitude());
        if (distance < 1000) {
            return distance + "m";
        }
        return String.format("%2fKm", Double.valueOf(distance / 1000.0d));
    }

    private static double rad(double d10) {
        return (d10 * 3.141592653589793d) / 180.0d;
    }
}
