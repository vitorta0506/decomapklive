package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class ServerVideoConsumerConfig {
    public boolean enableVui = true;
    public int hwDecoderMaxCacheForHighRes = 8;
    public int hwDecoderMaxCacheForLowRes = 6;
    public boolean enableMediaCodecReusing = false;

    public static boolean isHWHevcDecodeAllowed() {
        return nativeIsHardwareHevcDecodeAllowed();
    }

    private static native boolean nativeIsHardwareHevcDecodeAllowed();

    @CalledByNative
    public void setEnableMediaCodecReusing(boolean z10) {
        this.enableMediaCodecReusing = z10;
    }

    @CalledByNative
    public void setEnableVui(boolean z10) {
        this.enableVui = z10;
    }

    @CalledByNative
    public void setHardwareDecoderMaxCache(int i9, int i10) {
        this.hwDecoderMaxCacheForHighRes = i9;
        this.hwDecoderMaxCacheForLowRes = i10;
    }

    public String toString() {
        return "ServerVideoConsumerConfig(" + ("enableVui=" + this.enableVui + ",hwDecoderMaxCacheForHighRes=" + this.hwDecoderMaxCacheForHighRes + ",hwDecoderMaxCacheForLowRes=" + this.hwDecoderMaxCacheForLowRes + ",enableMediaCodecReusing=" + this.enableMediaCodecReusing) + ")";
    }
}
