package org.libpag;

import android.graphics.Matrix;
import org.extra.tools.LibraryLoadUtils;
@Deprecated
/* loaded from: classes7.dex */
public class PAGRenderer {
    private PAGSurface pagSurface = null;
    private PAGFile pagFile = null;
    private long nativeContext = 0;

    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    @Deprecated
    public PAGRenderer() {
        nativeSetup();
    }

    private native void nativeFinalize();

    private native void nativeGetMatrix(float[] fArr);

    private static final native void nativeInit();

    private final native void nativeRelease();

    private native void nativeReplaceImage(int i9, long j10);

    private native void nativeSetFile(long j10);

    private native void nativeSetMatrix(float f10, float f11, float f12, float f13, float f14, float f15);

    private native void nativeSetSurface(long j10);

    private final native void nativeSetup();

    @Deprecated
    public native boolean cacheEnabled();

    @Deprecated
    public native float cacheScale();

    @Deprecated
    public native void draw();

    protected void finalize() {
        nativeFinalize();
    }

    @Deprecated
    public boolean flush() {
        return flush(false);
    }

    @Deprecated
    public native boolean flush(boolean z10);

    @Deprecated
    public PAGFile getFile() {
        return this.pagFile;
    }

    @Deprecated
    public native PAGLayer[] getLayersUnderPoint(float f10, float f11);

    @Deprecated
    public native double getProgress();

    @Deprecated
    public native PAGComposition getRootComposition();

    @Deprecated
    public PAGSurface getSurface() {
        return this.pagSurface;
    }

    @Deprecated
    public Matrix matrix() {
        float[] fArr = new float[9];
        nativeGetMatrix(fArr);
        Matrix matrix = new Matrix();
        matrix.setValues(fArr);
        return matrix;
    }

    @Deprecated
    public native float maxFrameRate();

    public void release() {
        nativeRelease();
    }

    @Deprecated
    public void replaceImage(int i9, PAGImage pAGImage) {
        if (pAGImage == null) {
            nativeReplaceImage(i9, 0L);
        } else {
            nativeReplaceImage(i9, pAGImage.nativeContext);
        }
    }

    @Deprecated
    public native void reset();

    @Deprecated
    public native int scaleMode();

    @Deprecated
    public native void setCacheEnabled(boolean z10);

    @Deprecated
    public native void setCacheScale(float f10);

    @Deprecated
    public void setFile(PAGFile pAGFile) {
        this.pagFile = pAGFile;
        if (pAGFile != null) {
            nativeSetFile(pAGFile.nativeContext);
        } else {
            nativeSetFile(0L);
        }
    }

    @Deprecated
    public void setMatrix(Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        nativeSetMatrix(fArr[0], fArr[3], fArr[1], fArr[4], fArr[2], fArr[5]);
    }

    @Deprecated
    public native void setMaxFrameRate(float f10);

    @Deprecated
    public native void setProgress(double d10);

    @Deprecated
    public native void setScaleMode(int i9);

    @Deprecated
    public void setSurface(PAGSurface pAGSurface) {
        this.pagSurface = pAGSurface;
        if (pAGSurface == null) {
            nativeSetSurface(0L);
        } else {
            nativeSetSurface(pAGSurface.nativeSurface);
        }
    }

    @Deprecated
    public native void setTextData(int i9, PAGText pAGText);
}
