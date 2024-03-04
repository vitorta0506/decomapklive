package com.waynejo.androidndkgif;

import android.graphics.Bitmap;
import java.io.FileNotFoundException;
import java.util.Locale;
/* loaded from: classes5.dex */
public class GifEncoder {

    /* renamed from: a  reason: collision with root package name */
    private long f36190a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f36191b = 1;

    /* renamed from: c  reason: collision with root package name */
    private int f36192c;

    /* renamed from: d  reason: collision with root package name */
    private int f36193d;

    /* loaded from: classes5.dex */
    public enum EncodingType {
        ENCODING_TYPE_SIMPLE_FAST,
        ENCODING_TYPE_FAST,
        ENCODING_TYPE_NORMAL_LOW_MEMORY,
        ENCODING_TYPE_STABLE_HIGH_MEMORY
    }

    static {
        System.loadLibrary("androidndkgif");
    }

    private native void nativeClose(long j10);

    private native boolean nativeEncodeFrame(long j10, Bitmap bitmap, int i9);

    private native long nativeInit(int i9, int i10, String str, int i11, int i12);

    public void a() {
        nativeClose(this.f36190a);
        this.f36190a = 0L;
    }

    public boolean b(Bitmap bitmap, int i9) {
        if (0 == this.f36190a) {
            return false;
        }
        if (bitmap.getWidth() == this.f36192c && bitmap.getHeight() == this.f36193d) {
            nativeEncodeFrame(this.f36190a, bitmap, i9);
            return true;
        }
        throw new RuntimeException(String.format(Locale.ENGLISH, "The size specified at initialization differs from the size of the image.\n expected:(%d, %d) actual:(%d,%d)", Integer.valueOf(this.f36192c), Integer.valueOf(this.f36193d), Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight())));
    }

    public void c(int i9, int i10, String str) throws FileNotFoundException {
        d(i9, i10, str, EncodingType.ENCODING_TYPE_NORMAL_LOW_MEMORY);
    }

    public void d(int i9, int i10, String str, EncodingType encodingType) throws FileNotFoundException {
        if (0 != this.f36190a) {
            a();
        }
        this.f36192c = i9;
        this.f36193d = i10;
        long nativeInit = nativeInit(i9, i10, str, encodingType.ordinal(), this.f36191b);
        this.f36190a = nativeInit;
        if (0 == nativeInit) {
            throw new FileNotFoundException();
        }
    }
}
