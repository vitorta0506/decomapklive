package com.tencent.liteav.videobase.common;

import android.media.MediaCodec;
import android.media.MediaFormat;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import java.nio.ByteBuffer;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class EncodedVideoFrame {
    private static final String TAG = "EncodedVideoFrame";
    public ByteBuffer data;
    public long dts;
    public int height;
    public a nalType;
    public b profileType;
    public long pts;
    public int rotation;
    public MediaFormat videoFormat;
    public int width;
    public long nativePtr = 0;
    public CodecType codecType = CodecType.H264;
    public long gopIndex = 0;
    public long gopFrameIndex = 0;
    public long frameIndex = 0;
    public long refFrameIndex = 0;
    public Integer svcInfo = null;
    public boolean isEosFrame = false;
    public MediaCodec.BufferInfo info = null;

    @CalledByNative
    public static EncodedVideoFrame createEncodedVideoFrame(ByteBuffer byteBuffer, int i9, int i10, int i11, long j10, long j11, long j12, long j13, long j14, long j15, int i12, long j16, int i13, int i14, boolean z10, int i15) {
        EncodedVideoFrame encodedVideoFrame = new EncodedVideoFrame();
        encodedVideoFrame.data = byteBuffer;
        encodedVideoFrame.nativePtr = j16;
        encodedVideoFrame.nalType = a.a(i9);
        encodedVideoFrame.profileType = b.a(i10);
        encodedVideoFrame.codecType = CodecType.a(i12);
        encodedVideoFrame.rotation = i11;
        encodedVideoFrame.dts = j10;
        encodedVideoFrame.pts = j11;
        encodedVideoFrame.gopIndex = j12;
        encodedVideoFrame.gopFrameIndex = j13;
        encodedVideoFrame.frameIndex = j14;
        encodedVideoFrame.refFrameIndex = j15;
        encodedVideoFrame.info = null;
        encodedVideoFrame.width = i13;
        encodedVideoFrame.height = i14;
        if (z10) {
            encodedVideoFrame.svcInfo = Integer.valueOf(i15);
        } else {
            encodedVideoFrame.svcInfo = null;
        }
        return encodedVideoFrame;
    }

    private a getNalTypeFromH264NALHeader(ByteBuffer byteBuffer, int i9) {
        int i10 = byteBuffer.get(i9) & 31;
        if (i10 != 5) {
            if (i10 != 6) {
                if (i10 != 7) {
                    if (i10 != 8) {
                        return a.UNKNOWN;
                    }
                    return a.PPS;
                }
                return a.SPS;
            }
            return a.SEI;
        }
        return a.IDR;
    }

    private a getNalTypeFromH265NALHeader(ByteBuffer byteBuffer, int i9) {
        int i10 = (byteBuffer.get(i9) & 126) >> 1;
        if (i10 != 39) {
            switch (i10) {
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                    return a.IDR;
                default:
                    switch (i10) {
                        case 32:
                            return a.VPS;
                        case 33:
                            return a.SPS;
                        case 34:
                            return a.PPS;
                        default:
                            return a.UNKNOWN;
                    }
            }
        }
        return a.SEI;
    }

    public static int getNextNALHeaderPos(int i9, ByteBuffer byteBuffer) {
        while (true) {
            int i10 = i9 + 3;
            if (i10 >= byteBuffer.remaining()) {
                return -1;
            }
            if (byteBuffer.get(i9) == 0 && byteBuffer.get(i9 + 1) == 0 && byteBuffer.get(i9 + 2) == 0 && byteBuffer.get(i10) == 1) {
                return i9 + 4;
            }
            if (byteBuffer.get(i9) == 0 && byteBuffer.get(i9 + 1) == 0 && byteBuffer.get(i9 + 2) == 1) {
                return i10;
            }
            i9++;
        }
    }

    private native void nativeRelease(long j10);

    @CalledByNative
    public static long resetEncodedVideoFrame(EncodedVideoFrame encodedVideoFrame) {
        long j10 = encodedVideoFrame.nativePtr;
        if (j10 == 0 || encodedVideoFrame.data == null) {
            return 0L;
        }
        encodedVideoFrame.data = null;
        encodedVideoFrame.nativePtr = 0L;
        return j10;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.nativePtr != 0) {
            LiteavLog.w(TAG, "nativePtr != 0, must call release before finalize ");
            release();
        }
    }

    public boolean isH265() {
        return this.codecType == CodecType.H265;
    }

    public boolean isIDRFrame() {
        a aVar = this.nalType;
        if (aVar != null) {
            if (aVar == a.IDR) {
                return true;
            }
        }
        return false;
    }

    public boolean isRPSEnable() {
        b bVar = this.profileType;
        return bVar == b.BASELINE_RPS || bVar == b.MAIN_RPS || bVar == b.HIGH_RPS;
    }

    public boolean isSVCEnable() {
        return this.svcInfo != null;
    }

    public void release() {
        long j10 = this.nativePtr;
        if (j10 != 0) {
            nativeRelease(j10);
            this.nativePtr = 0L;
        }
    }

    @NonNull
    public String toString() {
        return "nalType = " + this.nalType + ", profiletype=" + this.profileType + ", rotation=" + this.rotation + ", codecType=" + this.codecType + ", dts=" + this.dts + ", pts=" + this.pts + ", gopIndex=" + this.gopIndex + ", gopFrameIndex=" + this.gopFrameIndex + ", frameIndex=" + this.frameIndex;
    }

    public void updateNALTypeAccordingNALHeader() {
        a nalTypeFromH264NALHeader;
        if (this.data == null) {
            return;
        }
        a aVar = this.nalType;
        if (aVar != null && aVar != a.UNKNOWN) {
            return;
        }
        int i9 = 0;
        while (true) {
            i9 = getNextNALHeaderPos(i9, this.data);
            if (i9 == -1 || i9 >= this.data.remaining()) {
                return;
            }
            a aVar2 = a.UNKNOWN;
            if (isH265()) {
                nalTypeFromH264NALHeader = getNalTypeFromH265NALHeader(this.data, i9);
            } else {
                nalTypeFromH264NALHeader = getNalTypeFromH264NALHeader(this.data, i9);
            }
            a aVar3 = this.nalType;
            if (aVar3 == null || aVar3 == aVar2 || nalTypeFromH264NALHeader == a.IDR) {
                this.nalType = nalTypeFromH264NALHeader;
            }
            a aVar4 = this.nalType;
            if (aVar4 != a.SPS && aVar4 != a.PPS && aVar4 != a.VPS && aVar4 != a.SEI) {
                return;
            }
        }
    }
}
