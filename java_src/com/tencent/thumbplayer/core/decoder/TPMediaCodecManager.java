package com.tencent.thumbplayer.core.decoder;

import android.os.Build;
import android.util.SparseArray;
import android.view.Surface;
import androidx.annotation.RequiresApi;
import com.tencent.thumbplayer.core.common.TPMethodCalledByNative;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import java.util.concurrent.atomic.AtomicInteger;
@RequiresApi(api = 16)
/* loaded from: classes4.dex */
public class TPMediaCodecManager {
    private static final String TAG = "TPMediaCodecManager";
    private static SparseArray<ITPMediaCodecDecoder> mCodecList = new SparseArray<>();
    private static AtomicInteger codecNum = new AtomicInteger(0);

    private static native void _onMediaCodecException(int i9, String str);

    private static native void _onMediaCodecReady(int i9, String str);

    private static native void _onMediaCodecReportEvent(int i9, int i10);

    private static native void _onMediaDrmInfo(int i9, Object obj);

    private static void addCodecToList(int i9, ITPMediaCodecDecoder iTPMediaCodecDecoder) {
        synchronized (TPMediaCodecManager.class) {
            mCodecList.put(i9, iTPMediaCodecDecoder);
        }
    }

    @TPMethodCalledByNative
    public static int createMediaCodec(boolean z10) {
        if (codecNum.get() >= Integer.MAX_VALUE) {
            codecNum.set(0);
        }
        int andIncrement = codecNum.getAndIncrement();
        addCodecToList(andIncrement, z10 ? new TPMediaCodecAudioDecoder(andIncrement) : new TPMediaCodecVideoDecoder(andIncrement));
        return andIncrement;
    }

    @TPMethodCalledByNative
    public static int flushMediaCodec(int i9) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "flushMediaCodec failed!");
            return 3;
        }
        return codecById.flush();
    }

    private static ITPMediaCodecDecoder getCodecById(int i9) {
        ITPMediaCodecDecoder iTPMediaCodecDecoder;
        synchronized (TPMediaCodecManager.class) {
            iTPMediaCodecDecoder = mCodecList.get(i9);
        }
        if (iTPMediaCodecDecoder == null) {
            TPNativeLog.printLog(3, TAG, "No such codec by id:".concat(String.valueOf(i9)));
            return null;
        }
        return iTPMediaCodecDecoder;
    }

    @TPMethodCalledByNative
    public static int getSDKVersion() {
        return Build.VERSION.SDK_INT;
    }

    @TPMethodCalledByNative
    public static boolean initAudioMediaCodec(int i9, String str, int i10, int i11, int i12, int i13) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "initAudioMediaCodec failed!");
            return false;
        } else if (codecById.initDecoder(str, i10, i11, i12, i13)) {
            return codecById.startDecoder();
        } else {
            return false;
        }
    }

    @TPMethodCalledByNative
    public static boolean initVideoMediaCodec(int i9, String str, int i10, int i11, int i12, Surface surface, int i13, int i14, int i15) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "initVideoMediaCodec failed!");
            return false;
        } else if (codecById.initDecoder(str, i10, i11, i12, surface, i13, i14, i15)) {
            return codecById.startDecoder();
        } else {
            return false;
        }
    }

    public static void onMediaCodecException(int i9, String str) {
        _onMediaCodecException(i9, str);
    }

    public static void onMediaCodecReady(int i9, String str) {
        _onMediaCodecReady(i9, str);
    }

    public static void onMediaCodecReportEvent(int i9, int i10) {
        _onMediaCodecReportEvent(i9, i10);
    }

    public static void onMediaDrmInfo(int i9, Object obj) {
        _onMediaDrmInfo(i9, obj);
    }

    @TPMethodCalledByNative
    public static TPFrameInfo receiveOneFrame(int i9) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "receiveOneFrame failed!");
            return null;
        }
        return codecById.dequeueOutputBuffer();
    }

    @TPMethodCalledByNative
    public static int releaseMediaCodec(int i9) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "releaseMediaCodec failed!");
            return 3;
        }
        removeCodecFromList(i9);
        return codecById.release();
    }

    @TPMethodCalledByNative
    public static int releaseVideoFrame(int i9, int i10, boolean z10) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "releaseVideoFrame failed!");
            return 3;
        }
        return codecById.releaseOutputBuffer(i10, z10);
    }

    private static void removeCodecFromList(int i9) {
        synchronized (TPMediaCodecManager.class) {
            mCodecList.remove(i9);
        }
    }

    @TPMethodCalledByNative
    public static int sendOnePacket(int i9, byte[] bArr, boolean z10, long j10, boolean z11) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "sendOnePacket failed!");
            return 3;
        }
        return codecById.decode(bArr, z10, j10, z11);
    }

    @TPMethodCalledByNative
    public static void setCryptoInfo(int i9, int i10, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i11) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "setMediaCodecParamObject failed!");
        } else {
            codecById.setCryptoInfo(i10, iArr, iArr2, bArr, bArr2, i11);
        }
    }

    @TPMethodCalledByNative
    public static int setMediaCodecOperateRate(int i9, float f10) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "setMediaCodecOperateRate failed!");
            return 3;
        }
        return codecById.setOperateRate(f10);
    }

    @TPMethodCalledByNative
    public static boolean setMediaCodecParamBool(int i9, int i10, boolean z10) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "setMediaCodecParamBool failed!");
            return false;
        }
        return codecById.setParamBool(i10, z10);
    }

    @TPMethodCalledByNative
    public static boolean setMediaCodecParamBytes(int i9, int i10, byte[] bArr) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "setMediaCodecParamBytes failed!");
            return false;
        }
        return codecById.setParamBytes(i10, bArr);
    }

    @TPMethodCalledByNative
    public static boolean setMediaCodecParamInt(int i9, int i10, int i11) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "setMediaCodecParamInt failed!");
            return false;
        }
        return codecById.setParamInt(i10, i11);
    }

    @TPMethodCalledByNative
    public static boolean setMediaCodecParamLong(int i9, int i10, long j10) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "setMediaCodecParamLong failed!");
            return false;
        }
        return codecById.setParamLong(i10, j10);
    }

    @TPMethodCalledByNative
    public static boolean setMediaCodecParamObject(int i9, int i10, Object obj) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "setMediaCodecParamObject failed!");
            return false;
        }
        return codecById.setParamObject(i10, obj);
    }

    @TPMethodCalledByNative
    public static boolean setMediaCodecParamString(int i9, int i10, String str) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "setMediaCodecParamString failed!");
            return false;
        }
        return codecById.setParamString(i10, str);
    }

    @TPMethodCalledByNative
    public static int setMediaCodecSurface(int i9, Surface surface) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "setMediaCodecSurface failed!");
            return 3;
        }
        return codecById.setOutputSurface(surface);
    }

    @TPMethodCalledByNative
    public static int signalEndOfStream(int i9) {
        ITPMediaCodecDecoder codecById = getCodecById(i9);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "signalEndOfStream failed!");
            return 3;
        }
        return codecById.signalEndOfStream();
    }
}
