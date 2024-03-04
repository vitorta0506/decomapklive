package org.libpag;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAGImage {
    long nativeContext;

    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PAGImage(long j10) {
        this.nativeContext = j10;
    }

    public static PAGImage FromAssets(AssetManager assetManager, String str) {
        long LoadFromAssets = LoadFromAssets(assetManager, str);
        if (LoadFromAssets == 0) {
            return null;
        }
        return new PAGImage(LoadFromAssets);
    }

    public static PAGImage FromBitmap(Bitmap bitmap) {
        long LoadFromBitmap = LoadFromBitmap(bitmap);
        if (LoadFromBitmap == 0) {
            return null;
        }
        return new PAGImage(LoadFromBitmap);
    }

    public static PAGImage FromBytes(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        long LoadFromBytes = LoadFromBytes(bArr, bArr.length);
        if (LoadFromBytes == 0) {
            return null;
        }
        return new PAGImage(LoadFromBytes);
    }

    public static PAGImage FromPath(String str) {
        long LoadFromPath = LoadFromPath(str);
        if (LoadFromPath == 0) {
            return null;
        }
        return new PAGImage(LoadFromPath);
    }

    public static PAGImage FromTexture(int i9, int i10, int i11, int i12) {
        return FromTexture(i9, i10, i11, i12, false);
    }

    private static native long LoadFromAssets(AssetManager assetManager, String str);

    private static native long LoadFromBitmap(Bitmap bitmap);

    private static native long LoadFromBytes(byte[] bArr, int i9);

    private static native long LoadFromPath(String str);

    private static native long LoadFromTexture(int i9, int i10, int i11, int i12, boolean z10);

    private native void nativeFinalize();

    private native void nativeGetMatrix(float[] fArr);

    private static final native void nativeInit();

    private final native void nativeRelease();

    private native void nativeSetMatrix(float f10, float f11, float f12, float f13, float f14, float f15);

    protected void finalize() {
        nativeFinalize();
    }

    public native int height();

    public Matrix matrix() {
        float[] fArr = new float[9];
        nativeGetMatrix(fArr);
        Matrix matrix = new Matrix();
        matrix.setValues(fArr);
        return matrix;
    }

    public void release() {
        nativeRelease();
    }

    public native int scaleMode();

    public void setMatrix(Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        nativeSetMatrix(fArr[0], fArr[3], fArr[1], fArr[4], fArr[2], fArr[5]);
    }

    public native void setScaleMode(int i9);

    public native int width();

    public static PAGImage FromTexture(int i9, int i10, int i11, int i12, boolean z10) {
        long LoadFromTexture = LoadFromTexture(i9, i10, i11, i12, z10);
        if (LoadFromTexture == 0) {
            return null;
        }
        return new PAGImage(LoadFromTexture);
    }
}
