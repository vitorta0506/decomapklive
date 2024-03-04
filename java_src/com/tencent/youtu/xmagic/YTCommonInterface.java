package com.tencent.youtu.xmagic;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import com.google.android.exoplayer2.PlaybackException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes4.dex */
public class YTCommonInterface {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static String TAG = "YTCommon";
    private static int enable_log = 1;
    private long nativePtr;

    public static int getDeviceInfo(Context context, YTDeviceInfo yTDeviceInfo) {
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 23 && i9 < 29 && context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
            if (enable_log != 0) {
                Log.e("YTCommon", "优图鉴权：获取本机设备信息失败，请给APP添加READ_PHONE_STATE权限。");
                return PlaybackException.ERROR_CODE_DECODING_FAILED;
            }
            return PlaybackException.ERROR_CODE_DECODING_FAILED;
        }
        return nativeGetDeviceInfo(yTDeviceInfo);
    }

    public static native long getEndTime();

    public static native int[] getSDKList();

    public static native String getSDKNameByID(int i9);

    public static native String getVersion();

    public static int initAuthByAssets(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        return nativeInitAuthByAssets(str, str2);
    }

    public static int initAuthByFilePath(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        File file = new File(str);
        if (file.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[2048];
                int read = fileInputStream.read(bArr);
                fileInputStream.close();
                if (read < 2048) {
                    return nativeInitAuthByString(Base64.encodeToString(bArr, 0, read, 2).toString(), str2);
                }
                if (enable_log != 0) {
                    Log.e(TAG, "license length oversize.");
                    return -2;
                }
                return -2;
            } catch (FileNotFoundException e10) {
                if (enable_log != 0) {
                    String str3 = TAG;
                    Log.e(str3, "file not found: " + str);
                    e10.printStackTrace();
                    Log.e("YTCommon", "优图鉴权：读取文件失败，请检查APP是否拥有READ_EXTERNAL_STORAGE权限。");
                }
                return -10;
            } catch (IOException e11) {
                if (enable_log != 0) {
                    String str4 = TAG;
                    Log.e(str4, "io error: " + str);
                    e11.printStackTrace();
                    return -4;
                }
                return -4;
            }
        }
        if (enable_log != 0) {
            String str5 = TAG;
            Log.e(str5, "file not exists: " + str);
        }
        return -10;
    }

    public static int initAuthByString(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        return nativeInitAuthByString(str, str2);
    }

    public static int initAuthForQQ() {
        return nativeInitAuthForQQ();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0124 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int initAuthOnlineWithCache(android.content.Context r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.youtu.xmagic.YTCommonInterface.initAuthOnlineWithCache(android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean):int");
    }

    private static native int nativeGetDeviceInfo(YTDeviceInfo yTDeviceInfo);

    private static native int nativeInitAuthByAssets(String str, String str2);

    private static native int nativeInitAuthByString(String str, String str2);

    private static native int nativeInitAuthForQQ();

    private static native void nativePrintAuthResult(int i9);

    private static native void nativeSetEnableLog(int i9);

    public static void setEnableLog(int i9) {
        nativeSetEnableLog(i9);
        enable_log = i9;
    }
}
