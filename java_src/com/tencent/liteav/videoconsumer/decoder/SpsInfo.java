package com.tencent.liteav.videoconsumer.decoder;

import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import java.nio.ByteBuffer;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class SpsInfo {
    public int width = 0;
    public int height = 0;
    public Integer videoFormat = null;
    public Integer videoFullRangeFlag = null;
    public Integer colourPrimaries = null;
    public Integer transferCharacteristics = null;
    public Integer matrixCoefficients = null;

    public static native SpsInfo nativeDecodeSps(boolean z10, ByteBuffer byteBuffer);

    public static native byte[] nativeGetSpsPps(byte[] bArr, boolean z10, boolean z11);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SpsInfo) {
            SpsInfo spsInfo = (SpsInfo) obj;
            return spsInfo.width == this.width && spsInfo.height == this.height && com.tencent.liteav.base.util.h.a(this.videoFormat, spsInfo.videoFormat) && com.tencent.liteav.base.util.h.a(this.videoFullRangeFlag, spsInfo.videoFullRangeFlag) && com.tencent.liteav.base.util.h.a(this.colourPrimaries, spsInfo.colourPrimaries) && com.tencent.liteav.base.util.h.a(this.transferCharacteristics, spsInfo.transferCharacteristics) && com.tencent.liteav.base.util.h.a(this.matrixCoefficients, spsInfo.matrixCoefficients);
        }
        return false;
    }

    public void set(SpsInfo spsInfo) {
        if (spsInfo == null) {
            spsInfo = new SpsInfo();
        }
        this.width = spsInfo.width;
        this.height = spsInfo.height;
        this.videoFormat = spsInfo.videoFormat;
        this.videoFullRangeFlag = spsInfo.videoFullRangeFlag;
        this.colourPrimaries = spsInfo.colourPrimaries;
        this.transferCharacteristics = spsInfo.transferCharacteristics;
        this.matrixCoefficients = spsInfo.matrixCoefficients;
    }

    @CalledByNative
    public void setColourPrimaries(int i9) {
        this.colourPrimaries = Integer.valueOf(i9);
    }

    @CalledByNative
    public void setHeight(int i9) {
        this.height = i9;
    }

    @CalledByNative
    public void setMatrixCoefficients(int i9) {
        this.matrixCoefficients = Integer.valueOf(i9);
    }

    @CalledByNative
    public void setTransferCharacteristics(int i9) {
        this.transferCharacteristics = Integer.valueOf(i9);
    }

    @CalledByNative
    public void setVideoFormat(int i9) {
        this.videoFormat = Integer.valueOf(i9);
    }

    @CalledByNative
    public void setVideoFullRangeFlag(int i9) {
        this.videoFullRangeFlag = Integer.valueOf(i9);
    }

    @CalledByNative
    public void setWidth(int i9) {
        this.width = i9;
    }

    @NonNull
    public String toString() {
        return "SpsInfo(" + ("width=" + this.width + ",height=" + this.height + ",videoFormat=" + this.videoFormat + ",videoFullRangeFlag=" + this.videoFullRangeFlag + ",colourPrimaries=" + this.colourPrimaries + ",transferCharacteristics=" + this.transferCharacteristics + ",matrixCoefficients=" + this.matrixCoefficients) + ")";
    }
}
