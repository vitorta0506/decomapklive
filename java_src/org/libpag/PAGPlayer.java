package org.libpag;

import android.graphics.Matrix;
import android.graphics.RectF;
import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAGPlayer {
    private PAGSurface pagSurface = null;
    private long nativeContext = 0;

    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    public PAGPlayer() {
        nativeSetup();
    }

    private native void nativeFinalize();

    private native void nativeGetMatrix(float[] fArr);

    private static final native void nativeInit();

    private final native void nativeRelease();

    private native void nativeSetMatrix(float f10, float f11, float f12, float f13, float f14, float f15);

    private native void nativeSetSurface(long j10);

    private final native void nativeSetup();

    public native boolean cacheEnabled();

    public native float cacheScale();

    public native long duration();

    protected void finalize() {
        nativeFinalize();
    }

    public boolean flush() {
        return flushAndFenceSync(null);
    }

    public native boolean flushAndFenceSync(long[] jArr);

    public native RectF getBounds(PAGLayer pAGLayer);

    public native PAGComposition getComposition();

    public native PAGLayer[] getLayersUnderPoint(float f10, float f11);

    public native double getProgress();

    public PAGSurface getSurface() {
        return this.pagSurface;
    }

    public native boolean hitTestPoint(PAGLayer pAGLayer, float f10, float f11, boolean z10);

    public Matrix matrix() {
        float[] fArr = new float[9];
        nativeGetMatrix(fArr);
        Matrix matrix = new Matrix();
        matrix.setValues(fArr);
        return matrix;
    }

    public native float maxFrameRate();

    public void release() {
        nativeRelease();
    }

    public native int scaleMode();

    public native void setCacheEnabled(boolean z10);

    public native void setCacheScale(float f10);

    public native void setComposition(PAGComposition pAGComposition);

    public void setMatrix(Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        nativeSetMatrix(fArr[0], fArr[3], fArr[1], fArr[4], fArr[2], fArr[5]);
    }

    public native void setMaxFrameRate(float f10);

    public native void setProgress(double d10);

    public native void setScaleMode(int i9);

    public void setSurface(PAGSurface pAGSurface) {
        this.pagSurface = pAGSurface;
        if (pAGSurface == null) {
            nativeSetSurface(0L);
        } else {
            nativeSetSurface(pAGSurface.nativeSurface);
        }
    }

    public native void setVideoEnabled(boolean z10);

    public native boolean videoEnabled();

    public native boolean waitSync(long j10);
}
