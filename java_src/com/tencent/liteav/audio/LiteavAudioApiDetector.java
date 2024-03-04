package com.tencent.liteav.audio;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
@JNINamespace("liteav::audio")
/* loaded from: classes4.dex */
class LiteavAudioApiDetector {
    private static final boolean DEBUG = true;
    private static final String TAG = "LiteavAudioApiDetector";
    private boolean mIsAAudioSupported;
    private boolean mIsOboeSupported;
    private boolean mIsOpenSLSupported;

    @CalledByNative
    LiteavAudioApiDetector(long j10) {
        storeAudioParameters();
        nativeCacheAudioParameters(j10, this.mIsOpenSLSupported, this.mIsAAudioSupported);
    }

    private boolean isAAudioSupported() {
        return LiteavSystemInfo.getSystemOSVersionInt() >= 27;
    }

    private boolean isOboeSupported() {
        return isOpenSLSupported() || isAAudioSupported();
    }

    private boolean isOpenSLSupported() {
        return LiteavSystemInfo.getSystemOSVersionInt() >= 24;
    }

    private static native void nativeCacheAudioParameters(long j10, boolean z10, boolean z11);

    private void storeAudioParameters() {
        this.mIsOboeSupported = isOboeSupported();
        this.mIsOpenSLSupported = isOpenSLSupported();
        this.mIsAAudioSupported = isAAudioSupported();
    }
}
