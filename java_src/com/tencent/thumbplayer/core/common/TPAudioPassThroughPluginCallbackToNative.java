package com.tencent.thumbplayer.core.common;

import com.tencent.thumbplayer.core.common.TPAudioPassThroughPluginDetector;
/* loaded from: classes4.dex */
public class TPAudioPassThroughPluginCallbackToNative implements TPAudioPassThroughPluginDetector.AudioPassThroughPluginListener {
    private static final String TAG = "TPAudioPassThroughPluginCallback";
    private long mNativeContext;

    private TPAudioPassThroughPluginCallbackToNative(long j10) {
        this.mNativeContext = j10;
    }

    private native void _onAudioPassThroughStateChanged(boolean z10);

    @TPMethodCalledByNative
    private long getNativeContext() {
        return this.mNativeContext;
    }

    @TPMethodCalledByNative
    private void registerCallback() {
        TPAudioPassThroughPluginDetector.addListener(this);
    }

    @TPMethodCalledByNative
    private void unregisterCallback() {
        TPAudioPassThroughPluginDetector.removeListener(this);
    }

    @Override // com.tencent.thumbplayer.core.common.TPAudioPassThroughPluginDetector.AudioPassThroughPluginListener
    public void onAudioPassThroughPlugin(boolean z10) {
        TPNativeLog.printLog(2, TAG, "onAudioPassThroughPlugin bPlugin:".concat(String.valueOf(z10)));
        _onAudioPassThroughStateChanged(z10);
    }
}
