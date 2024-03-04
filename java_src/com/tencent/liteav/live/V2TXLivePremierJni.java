package com.tencent.liteav.live;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePremier;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
public class V2TXLivePremierJni {
    private static final String TAG = "V2TXLivePremierJni";
    private static long mNativeV2TXLivePremierJni;
    private static V2TXLivePremier.V2TXLivePremierObserver sObserver;

    public static int enableAudioPlayoutObserver(boolean z10, V2TXLiveDef.V2TXLiveAudioFrameObserverFormat v2TXLiveAudioFrameObserverFormat) {
        int nativeEnableAudioPlayoutObserver;
        synchronized (V2TXLivePremierJni.class) {
            if (mNativeV2TXLivePremierJni == 0) {
                mNativeV2TXLivePremierJni = nativeCreate();
            }
            nativeEnableAudioPlayoutObserver = nativeEnableAudioPlayoutObserver(mNativeV2TXLivePremierJni, z10, v2TXLiveAudioFrameObserverFormat.sampleRate, v2TXLiveAudioFrameObserverFormat.channel, v2TXLiveAudioFrameObserverFormat.samplesPerCall, v2TXLiveAudioFrameObserverFormat.mode.ordinal());
        }
        return nativeEnableAudioPlayoutObserver;
    }

    private static native long nativeCreate();

    private static native int nativeEnableAudioPlayoutObserver(long j10, boolean z10, int i9, int i10, int i11, int i12);

    @CalledByNative
    public static void onAudioPlayoutData(byte[] bArr, long j10, int i9, int i10) {
        V2TXLivePremier.V2TXLivePremierObserver v2TXLivePremierObserver = sObserver;
        if (v2TXLivePremierObserver == null) {
            return;
        }
        V2TXLiveDef.V2TXLiveAudioFrame v2TXLiveAudioFrame = new V2TXLiveDef.V2TXLiveAudioFrame();
        v2TXLiveAudioFrame.data = bArr;
        v2TXLiveAudioFrame.sampleRate = i9;
        v2TXLiveAudioFrame.channel = i10;
        v2TXLivePremierObserver.onPlayoutAudioFrame(v2TXLiveAudioFrame);
    }

    public static void setObserver(V2TXLivePremier.V2TXLivePremierObserver v2TXLivePremierObserver) {
        sObserver = v2TXLivePremierObserver;
    }
}
