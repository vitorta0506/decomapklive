package com.tencent.thumbplayer.core.downloadproxy.utils;

import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener;
/* loaded from: classes4.dex */
public class TPDLProxyLog {
    private static ITPDLProxyLogListener mLogListener;
    private static int mServiceType;

    public static void d(String str, int i9, String str2, String str3) {
        ITPDLProxyLogListener iTPDLProxyLogListener = mLogListener;
        if (iTPDLProxyLogListener != null) {
            iTPDLProxyLogListener.d(str, i9, str2, str3);
            return;
        }
        Log.d("[" + str2 + "][" + str + CertificateUtil.DELIMITER + i9 + "]", str3);
    }

    public static void e(String str, int i9, String str2, String str3) {
        ITPDLProxyLogListener iTPDLProxyLogListener = mLogListener;
        if (iTPDLProxyLogListener != null) {
            iTPDLProxyLogListener.e(str, i9, str2, str3);
            return;
        }
        Log.e("[" + str2 + "][" + str + CertificateUtil.DELIMITER + i9 + "]", str3);
    }

    public static void i(String str, int i9, String str2, String str3) {
        ITPDLProxyLogListener iTPDLProxyLogListener = mLogListener;
        if (iTPDLProxyLogListener != null) {
            iTPDLProxyLogListener.i(str, i9, str2, str3);
            return;
        }
        Log.i("[" + str2 + "][" + str + CertificateUtil.DELIMITER + i9 + "]", str3);
    }

    public static void setLogListener(int i9, ITPDLProxyLogListener iTPDLProxyLogListener) {
        mServiceType = i9;
        mLogListener = iTPDLProxyLogListener;
    }

    public static void w(String str, int i9, String str2, String str3) {
        ITPDLProxyLogListener iTPDLProxyLogListener = mLogListener;
        if (iTPDLProxyLogListener != null) {
            iTPDLProxyLogListener.w(str, i9, str2, str3);
            return;
        }
        Log.w("[" + str2 + "][" + str + CertificateUtil.DELIMITER + i9 + "]", str3);
    }
}
