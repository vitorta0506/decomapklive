package com.tencent.thumbplayer.core.richmedia;

import android.content.Context;
import com.tencent.thumbplayer.core.common.TPFieldCalledByNative;
import com.tencent.thumbplayer.core.common.TPNativeLibraryLoader;
import com.tencent.thumbplayer.core.common.TPNativeLog;
/* loaded from: classes4.dex */
public class TPNativeRichMediaProcessor implements ITPNativeRichMediaProcessor {
    @TPFieldCalledByNative
    private long mNativeContext = 0;

    public TPNativeRichMediaProcessor(Context context) {
        TPNativeLibraryLoader.loadLibIfNeeded(context.getApplicationContext());
        try {
            _nativeSetup();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, "Failed to create native rich media:" + th2.getMessage());
            throw new UnsupportedOperationException("Failed to create rich media");
        }
    }

    private native int _deselectFeatureAsync(int i9);

    private native int _getCurrentPositionMsFeatureData(long j10, int[] iArr, TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData);

    private native TPNativeRichMediaFeature[] _getFeatures();

    private native void _nativeSetup();

    private native int _prepareAsync();

    private native void _release();

    private native int _reset();

    private native int _seek(long j10);

    private native int _selectFeatureAsync(int i9, TPNativeRichMediaRequestExtraInfo tPNativeRichMediaRequestExtraInfo);

    private native void _setInnerProcessorCallback(ITPNativeRichMediaInnerProcessorCallback iTPNativeRichMediaInnerProcessorCallback);

    private native int _setPlaybackRate(float f10);

    private native void _setProcessorCallback(ITPNativeRichMediaProcessorCallback iTPNativeRichMediaProcessorCallback);

    private native int _setRichMediaSource(String str);

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public void deselectFeatureAsync(int i9) {
        try {
            int _deselectFeatureAsync = _deselectFeatureAsync(i9);
            if (_deselectFeatureAsync == 0) {
                return;
            }
            if (_deselectFeatureAsync != 1000012) {
                throw new IllegalStateException("deSelectAsync:".concat(String.valueOf(_deselectFeatureAsync)));
            }
            throw new IllegalArgumentException();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public TPNativeRichMediaFeatureData getCurrentPositionMsFeatureData(long j10, int[] iArr) {
        TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData = new TPNativeRichMediaFeatureData();
        try {
            int _getCurrentPositionMsFeatureData = _getCurrentPositionMsFeatureData(j10, iArr, tPNativeRichMediaFeatureData);
            if (_getCurrentPositionMsFeatureData == 0) {
                return tPNativeRichMediaFeatureData;
            }
            if (_getCurrentPositionMsFeatureData == 1000012) {
                throw new IllegalArgumentException();
            }
            throw new IllegalStateException("getCurrentTimeContent:".concat(String.valueOf(_getCurrentPositionMsFeatureData)));
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public TPNativeRichMediaFeature[] getFeatures() {
        try {
            return _getFeatures();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return new TPNativeRichMediaFeature[0];
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public void prepareAsync() {
        try {
            int _prepareAsync = _prepareAsync();
            if (_prepareAsync != 0) {
                throw new IllegalStateException("prepareAsync:".concat(String.valueOf(_prepareAsync)));
            }
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public void release() {
        try {
            _release();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public void reset() {
        try {
            int _reset = _reset();
            if (_reset != 0) {
                throw new IllegalStateException("reset:".concat(String.valueOf(_reset)));
            }
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public void seek(long j10) {
        try {
            int _seek = _seek(j10);
            if (_seek == 0) {
                return;
            }
            if (_seek != 1000012) {
                throw new IllegalStateException("seek:".concat(String.valueOf(_seek)));
            }
            throw new IllegalArgumentException();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public void selectFeatureAsync(int i9, TPNativeRichMediaRequestExtraInfo tPNativeRichMediaRequestExtraInfo) {
        try {
            int _selectFeatureAsync = _selectFeatureAsync(i9, tPNativeRichMediaRequestExtraInfo);
            if (_selectFeatureAsync == 0) {
                return;
            }
            if (_selectFeatureAsync != 1000012) {
                throw new IllegalStateException("selectAsync:".concat(String.valueOf(_selectFeatureAsync)));
            }
            throw new IllegalArgumentException();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public void setInnerProcessorCallback(ITPNativeRichMediaInnerProcessorCallback iTPNativeRichMediaInnerProcessorCallback) {
        try {
            _setInnerProcessorCallback(iTPNativeRichMediaInnerProcessorCallback);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public void setPlaybackRate(float f10) {
        try {
            int _setPlaybackRate = _setPlaybackRate(f10);
            if (_setPlaybackRate == 0) {
                return;
            }
            if (_setPlaybackRate != 1000012) {
                throw new IllegalStateException("setPlaybackRate:".concat(String.valueOf(_setPlaybackRate)));
            }
            throw new IllegalArgumentException();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public void setProcessorCallback(ITPNativeRichMediaProcessorCallback iTPNativeRichMediaProcessorCallback) {
        try {
            _setProcessorCallback(iTPNativeRichMediaProcessorCallback);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.ITPNativeRichMediaProcessor
    public void setRichMediaSource(String str) {
        try {
            int _setRichMediaSource = _setRichMediaSource(str);
            if (_setRichMediaSource == 0) {
                return;
            }
            if (_setRichMediaSource != 1000012) {
                throw new IllegalStateException("setRichMediaSource:".concat(String.valueOf(_setRichMediaSource)));
            }
            throw new IllegalArgumentException();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }
}
