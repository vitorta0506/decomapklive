package org.libpag;

import android.graphics.Matrix;
import android.graphics.RectF;
import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAGLayer {
    public static final int LayerTypeImage = 5;
    public static final int LayerTypeNull = 1;
    public static final int LayerTypePreCompose = 6;
    public static final int LayerTypeShape = 4;
    public static final int LayerTypeSolid = 2;
    public static final int LayerTypeText = 3;
    public static final int LayerTypeUnknown = 0;
    protected long nativeContext;

    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    public PAGLayer(long j10) {
        this.nativeContext = j10;
    }

    private native void getTotalMatrix(float[] fArr);

    private native void matrix(float[] fArr);

    private static native void nativeInit();

    private native void nativeRelease();

    private native void setMatrix(float[] fArr);

    public native long currentTime();

    public native long duration();

    public native int editableIndex();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PAGLayer) && hashCode() == obj.hashCode();
    }

    public native boolean excludedFromTimeline();

    protected void finalize() {
        nativeRelease();
    }

    public native float frameRate();

    public native RectF getBounds();

    public native double getProgress();

    public Matrix getTotalMatrix() {
        float[] fArr = new float[9];
        getTotalMatrix(fArr);
        Matrix matrix = new Matrix();
        matrix.setValues(fArr);
        return matrix;
    }

    public native long globalToLocalTime(long j10);

    public int hashCode() {
        long j10 = this.nativeContext;
        return ((int) (j10 ^ (j10 >>> 32))) + 527;
    }

    public native String layerName();

    public native int layerType();

    public native long localTimeToGlobal(long j10);

    public native PAGMarker[] markers();

    public Matrix matrix() {
        float[] fArr = new float[9];
        matrix(fArr);
        Matrix matrix = new Matrix();
        matrix.setValues(fArr);
        return matrix;
    }

    public native PAGComposition parent();

    public native void resetMatrix();

    public native void setCurrentTime(long j10);

    public native void setExcludedFromTimeline(boolean z10);

    public void setMatrix(Matrix matrix) {
        if (matrix == null) {
            return;
        }
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        setMatrix(fArr);
    }

    public native void setProgress(double d10);

    public native void setStartTime(long j10);

    public native void setVisible(boolean z10);

    public native long startTime();

    public native PAGLayer trackMatteLayer();

    public native boolean visible();
}
