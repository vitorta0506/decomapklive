package com.tencent.thumbplayer.core.richmedia.async;

import android.content.Context;
import com.tencent.thumbplayer.core.common.TPFieldCalledByNative;
import com.tencent.thumbplayer.core.common.TPGeneralError;
import com.tencent.thumbplayer.core.common.TPNativeLibraryLoader;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeature;
import com.tencent.thumbplayer.core.richmedia.TPNativeTimeRange;
/* loaded from: classes4.dex */
public class TPNativeRichMediaAsyncRequester implements ITPNativeRichMediaAsyncRequester {
    private static final int REQUEST_ID_NATIVE_EXCEPTION_THROW = -100;
    @TPFieldCalledByNative
    private long mNativeContext = 0;

    public TPNativeRichMediaAsyncRequester(Context context) {
        TPNativeLibraryLoader.loadLibIfNeeded(context);
        try {
            if (_nativeSetup() == 0) {
                return;
            }
            throw new UnsupportedOperationException("failed to setup rich media");
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, "Failed to create native rich media:" + th2.getMessage());
            throw new UnsupportedOperationException("failed to create rich media");
        }
    }

    private native void _cancelRequest(int i9);

    private native TPNativeRichMediaFeature[] _getFeatures();

    private native int _nativeSetup();

    private native int _prepareAsync();

    private native void _release();

    private native int _requestFeatureDataAsyncAtTimeMs(int i9, long j10);

    private native int _requestFeatureDataAsyncAtTimeMsArray(int i9, long[] jArr);

    private native int _requestFeatureDataAsyncAtTimeRange(int i9, TPNativeTimeRange tPNativeTimeRange);

    private native int _requestFeatureDataAsyncAtTimeRanges(int i9, TPNativeTimeRange[] tPNativeTimeRangeArr);

    private native void _setRequesterListener(ITPNativeRichMediaAsyncRequesterListener iTPNativeRichMediaAsyncRequesterListener);

    private native int _setRichMediaSource(String str);

    @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester
    public void cancelRequest(int i9) {
        try {
            _cancelRequest(i9);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester
    public TPNativeRichMediaFeature[] getFeatures() {
        try {
            return _getFeatures();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return new TPNativeRichMediaFeature[0];
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester
    public void prepareAsync() {
        int i9;
        try {
            i9 = _prepareAsync();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            i9 = TPGeneralError.FAILED;
        }
        if (i9 != 0) {
            throw new IllegalStateException("prepareAsync, ret=".concat(String.valueOf(i9)));
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester
    public void release() {
        try {
            _release();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeMs(int i9, long j10) {
        try {
            return _requestFeatureDataAsyncAtTimeMs(i9, j10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return -100;
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeMsArray(int i9, long[] jArr) {
        try {
            return _requestFeatureDataAsyncAtTimeMsArray(i9, jArr);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return -100;
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeRange(int i9, TPNativeTimeRange tPNativeTimeRange) {
        try {
            return _requestFeatureDataAsyncAtTimeRange(i9, tPNativeTimeRange);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return -100;
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeRanges(int i9, TPNativeTimeRange[] tPNativeTimeRangeArr) {
        try {
            return _requestFeatureDataAsyncAtTimeRanges(i9, tPNativeTimeRangeArr);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return -100;
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester
    public void setRequesterListener(ITPNativeRichMediaAsyncRequesterListener iTPNativeRichMediaAsyncRequesterListener) {
        try {
            _setRequesterListener(iTPNativeRichMediaAsyncRequesterListener);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester
    public void setRichMediaSource(String str) {
        int i9;
        try {
            i9 = _setRichMediaSource(str);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            i9 = TPGeneralError.FAILED;
        }
        if (i9 == 0) {
            return;
        }
        if (i9 != 1000012) {
            throw new IllegalStateException("setRichMediaSource:".concat(String.valueOf(i9)));
        }
        throw new IllegalArgumentException("setRichMediaSource，invalid argument, url=".concat(String.valueOf(str)));
    }
}
