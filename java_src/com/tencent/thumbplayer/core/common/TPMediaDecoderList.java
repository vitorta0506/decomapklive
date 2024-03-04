package com.tencent.thumbplayer.core.common;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class TPMediaDecoderList {
    private static final String MEDIA_DECODER_INFO_KEY = "DecoderInfos_Key";
    private static String MEDIA_DECODER_VERSION = "2.31.0.139.min";
    private static final String MEDIA_DECODER_VERSION_KEY = "Version_Key";
    private static final String TAG = "TPMediaDecoderList";
    private static TPMediaDecoderInfo[] sDecoderInfos;

    private static String buildCacheDecoderVersion() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(MEDIA_DECODER_VERSION);
        stringBuffer.append("_");
        stringBuffer.append(TPSystemInfo.getDeviceName());
        stringBuffer.append("_");
        stringBuffer.append(TPSystemInfo.getProductBoard());
        stringBuffer.append("_");
        stringBuffer.append(TPSystemInfo.getProductDevice());
        stringBuffer.append("_");
        stringBuffer.append(TPSystemInfo.getApiLevel());
        return stringBuffer.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void cacheDecoderInfos(LocalCache localCache, TPMediaDecoderInfo[] tPMediaDecoderInfoArr) {
        try {
            localCache.put(MEDIA_DECODER_INFO_KEY, (Serializable) tPMediaDecoderInfoArr);
        } catch (Throwable unused) {
            TPNativeLog.printLog(4, TAG, "cache decode infos failed");
        }
    }

    private static void cacheVersion(LocalCache localCache, String str) {
        try {
            localCache.put(MEDIA_DECODER_VERSION_KEY, str);
        } catch (Throwable unused) {
            TPNativeLog.printLog(4, TAG, "cache version failed");
        }
    }

    private static TPMediaDecoderInfo[] getCachedDecoderInfos(LocalCache localCache) {
        try {
            return (TPMediaDecoderInfo[]) localCache.getAsObject(MEDIA_DECODER_INFO_KEY);
        } catch (Throwable unused) {
            TPNativeLog.printLog(4, TAG, "get decoder info failed");
            return null;
        }
    }

    private static String getCachedVersion(LocalCache localCache) {
        try {
            String asString = localCache.getAsString(MEDIA_DECODER_VERSION_KEY);
            TPNativeLog.printLog(2, TAG, "version:".concat(String.valueOf(asString)));
            return asString;
        } catch (Throwable unused) {
            TPNativeLog.printLog(4, TAG, "get version failed");
            return null;
        }
    }

    private static final MediaCodecInfo[] getCodecInfos() {
        try {
            return new MediaCodecList(1).getCodecInfos();
        } catch (Exception e10) {
            TPNativeLog.printLog(4, "getCodecInfos MediaCodecList " + e10.getMessage());
            return new MediaCodecInfo[0];
        }
    }

    private static final TPMediaDecoderInfo[] getLocalCacheMediaCodecList(LocalCache localCache) {
        TPMediaDecoderInfo[] cachedDecoderInfos;
        TPNativeLog.printLog(2, "getLocalCacheMediaCodecList");
        if (!TextUtils.equals(getCachedVersion(localCache), buildCacheDecoderVersion()) || (cachedDecoderInfos = getCachedDecoderInfos(localCache)) == null) {
            return null;
        }
        TPNativeLog.printLog(2, "getCachedDecoderInfos length " + cachedDecoderInfos.length);
        return cachedDecoderInfos;
    }

    private static final TPMediaDecoderInfo[] getSystemMediaCodecList() {
        String[] supportedTypes;
        TPNativeLog.printLog(2, "getSystemMediaCodecList");
        MediaCodecInfo[] codecInfos = getCodecInfos();
        if (codecInfos == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (MediaCodecInfo mediaCodecInfo : codecInfos) {
            if (!mediaCodecInfo.isEncoder()) {
                for (String str : mediaCodecInfo.getSupportedTypes()) {
                    TPMediaDecoderInfo tPMediaDecoderInfo = new TPMediaDecoderInfo(str, mediaCodecInfo.getName(), mediaCodecInfo.getCapabilitiesForType(str));
                    if (tPMediaDecoderInfo.isValidDecoder()) {
                        TPNativeLog.printLog(2, "MediaCodecList codecName " + mediaCodecInfo.getName() + " supportedType " + str);
                        arrayList.add(tPMediaDecoderInfo);
                    }
                }
            }
        }
        return (TPMediaDecoderInfo[]) arrayList.toArray(new TPMediaDecoderInfo[arrayList.size()]);
    }

    public static final synchronized TPMediaDecoderInfo[] getTPMediaDecoderInfos(LocalCache localCache) {
        synchronized (TPMediaDecoderList.class) {
            if (sDecoderInfos == null) {
                sDecoderInfos = initCodecList(localCache);
            }
            TPMediaDecoderInfo[] tPMediaDecoderInfoArr = sDecoderInfos;
            if (tPMediaDecoderInfoArr == null) {
                return new TPMediaDecoderInfo[0];
            }
            return (TPMediaDecoderInfo[]) Arrays.copyOf(tPMediaDecoderInfoArr, tPMediaDecoderInfoArr.length);
        }
    }

    private static final TPMediaDecoderInfo[] initCodecList(LocalCache localCache) {
        TPMediaDecoderInfo[] localCacheMediaCodecList = getLocalCacheMediaCodecList(localCache);
        if (localCacheMediaCodecList == null) {
            TPMediaDecoderInfo[] systemMediaCodecList = getSystemMediaCodecList();
            storeLocalCacheMediaCodecList(localCache, systemMediaCodecList);
            return systemMediaCodecList;
        }
        return localCacheMediaCodecList;
    }

    private static final void storeLocalCacheMediaCodecList(LocalCache localCache, TPMediaDecoderInfo[] tPMediaDecoderInfoArr) {
        TPNativeLog.printLog(2, "storeLocalCacheMediaCodecList");
        cacheDecoderInfos(localCache, tPMediaDecoderInfoArr);
        cacheVersion(localCache, buildCacheDecoderVersion());
    }
}
