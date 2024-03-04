package com.guochao.faceshow.aaspring.utils.location;
/* loaded from: classes3.dex */
public class FcLocation {
    public static final FcLocation DEFAULT = new FcLocation(0.0d, 0.0d);
    private double latitude;
    private double longitude;

    private FcLocation() {
    }

    public static FcLocation create(double d10, double d11) {
        return new FcLocation(d10, d11);
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void setLatitude(double d10) {
        this.latitude = d10;
    }

    public void setLongitude(double d10) {
        this.longitude = d10;
    }

    private FcLocation(double d10, double d11) {
        this.latitude = d10;
        this.longitude = d11;
    }
}
