package com.tencent.thumbplayer.core.common;

import com.tencent.thumbplayer.core.common.TPScreenRefreshRateDetector;
/* loaded from: classes4.dex */
public class TPScreenRefreshRateCallBackToNative implements TPScreenRefreshRateDetector.ScreenRefreshRateChangedListener {
    private static final String TAG = "TPScreenRefreshRateCallBack";
    private long mNativeContext;

    private TPScreenRefreshRateCallBackToNative(long j10) {
        this.mNativeContext = j10;
    }

    private native void _onScreenRefreshRateChanged(float f10);

    @TPMethodCalledByNative
    private long getNativeContext() {
        return this.mNativeContext;
    }

    @TPMethodCalledByNative
    private void registerCallback() {
        TPScreenRefreshRateDetector.addListener(this);
    }

    @TPMethodCalledByNative
    private void unregisterCallback() {
        TPScreenRefreshRateDetector.removeListener(this);
    }

    @Override // com.tencent.thumbplayer.core.common.TPScreenRefreshRateDetector.ScreenRefreshRateChangedListener
    public void onScreenRefreshRateChanged(float f10) {
        TPNativeLog.printLog(2, TAG, "onScreenRefreshRateChanged refreshRate:".concat(String.valueOf(f10)));
        _onScreenRefreshRateChanged(f10);
    }
}
