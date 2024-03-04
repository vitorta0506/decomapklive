package org.light.utils;

import android.os.RemoteException;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.light.ILightSDKServiceInterface;
import org.light.listener.AIDLILightLogger;
/* loaded from: classes7.dex */
public class LightLogUtil {
    private static final String TAG = "LightLogUtil";
    private static ILightSDKServiceInterface lightSDKServiceInterface = null;
    private static ILightLogger mLogger = null;
    private static int minPriority = 5;

    public static void d(String str, String str2) {
        if (3 < minPriority) {
            return;
        }
        ILightLogger iLightLogger = mLogger;
        if (iLightLogger == null) {
            Log.d(str, str2);
        } else {
            iLightLogger.log(3, str, str2);
        }
    }

    public static void destroy() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightLogUtilDestroy();
                return;
            } catch (RemoteException e10) {
                e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeDestroy();
    }

    public static void e(String str, String str2) {
        if (6 < minPriority) {
            return;
        }
        ILightLogger iLightLogger = mLogger;
        if (iLightLogger == null) {
            Log.e(str, str2);
        } else {
            iLightLogger.log(6, str, str2);
        }
    }

    public static String getString(ByteBuffer byteBuffer) {
        try {
            return Charset.forName("UTF-8").decode(byteBuffer.asReadOnlyBuffer()).toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static void i(String str, String str2) {
        if (4 < minPriority) {
            return;
        }
        ILightLogger iLightLogger = mLogger;
        if (iLightLogger == null) {
            Log.i(str, str2);
        } else {
            iLightLogger.log(4, str, str2);
        }
    }

    public static void init(ILightLogger iLightLogger) {
        setLightLogger(iLightLogger);
        init();
    }

    private static native void nativeDestroy();

    private static native void nativeInit();

    private static native void nativeSetMinPriority(int i9);

    public static void setLightLogger(final ILightLogger iLightLogger) {
        AIDLILightLogger.Stub stub;
        mLogger = iLightLogger;
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            if (iLightLogger == null) {
                stub = null;
            } else {
                try {
                    stub = new AIDLILightLogger.Stub() { // from class: org.light.utils.LightLogUtil.1
                        @Override // org.light.listener.AIDLILightLogger
                        public void d(String str, String str2) throws RemoteException {
                            ILightLogger.this.d(str, str2);
                        }

                        @Override // org.light.listener.AIDLILightLogger
                        public void e(String str, String str2) throws RemoteException {
                            ILightLogger.this.e(str, str2);
                        }

                        @Override // org.light.listener.AIDLILightLogger
                        public void i(String str, String str2) throws RemoteException {
                            ILightLogger.this.i(str, str2);
                        }

                        @Override // org.light.listener.AIDLILightLogger
                        public void log(int i9, String str, String str2) throws RemoteException {
                            ILightLogger.this.log(i9, str, str2);
                        }

                        @Override // org.light.listener.AIDLILightLogger
                        public void v(String str, String str2) throws RemoteException {
                            ILightLogger.this.v(str, str2);
                        }

                        @Override // org.light.listener.AIDLILightLogger
                        public void w(String str, String str2) throws RemoteException {
                            ILightLogger.this.w(str, str2);
                        }
                    };
                } catch (RemoteException e10) {
                    e(TAG, "RemoteException:\n" + e10);
                    return;
                }
            }
            iLightSDKServiceInterface.lightLogUtilSetLightLogger(stub);
        }
    }

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    public static void setLogInfo(int i9, ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        String str = new String(bArr);
        int indexOf = str.indexOf(CertificateUtil.DELIMITER);
        if (indexOf == -1) {
            return;
        }
        String substring = str.substring(0, indexOf);
        String substring2 = str.substring(indexOf + 1);
        if (i9 < minPriority) {
            return;
        }
        if (i9 == 2) {
            v(substring, substring2);
        } else if (i9 == 3) {
            d(substring, substring2);
        } else if (i9 == 4) {
            i(substring, substring2);
        } else if (i9 == 5) {
            w(substring, substring2);
        } else if (i9 != 6) {
        } else {
            e(substring, substring2);
        }
    }

    public static void setMinPriority(int i9) {
        minPriority = i9;
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightLogUtilSetMinPriority(i9);
                return;
            } catch (RemoteException e10) {
                e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetMinPriority(i9);
    }

    public static void v(String str, String str2) {
        if (2 < minPriority) {
            return;
        }
        ILightLogger iLightLogger = mLogger;
        if (iLightLogger == null) {
            Log.v(str, str2);
        } else {
            iLightLogger.log(2, str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (5 < minPriority) {
            return;
        }
        ILightLogger iLightLogger = mLogger;
        if (iLightLogger == null) {
            Log.w(str, str2);
        } else {
            iLightLogger.log(5, str, str2);
        }
    }

    public static void init() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightLogUtilInit();
                return;
            } catch (RemoteException e10) {
                e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeInit();
    }

    public static void d(String str, String str2, Throwable th2) {
        if (3 < minPriority) {
            return;
        }
        ILightLogger iLightLogger = mLogger;
        if (iLightLogger == null) {
            Log.d(str, str2, th2);
        } else {
            iLightLogger.log(3, str, str2, th2);
        }
    }

    public static void e(String str, String str2, Throwable th2) {
        if (6 < minPriority) {
            return;
        }
        ILightLogger iLightLogger = mLogger;
        if (iLightLogger == null) {
            Log.e(str, str2, th2);
        } else {
            iLightLogger.log(6, str, str2);
        }
    }

    public static void i(String str, String str2, Throwable th2) {
        if (4 < minPriority) {
            return;
        }
        ILightLogger iLightLogger = mLogger;
        if (iLightLogger == null) {
            Log.i(str, str2, th2);
        } else {
            iLightLogger.log(4, str, str2, th2);
        }
    }

    public static void v(String str, String str2, Throwable th2) {
        if (2 < minPriority) {
            return;
        }
        ILightLogger iLightLogger = mLogger;
        if (iLightLogger == null) {
            Log.v(str, str2, th2);
        } else {
            iLightLogger.log(2, str, str2, th2);
        }
    }

    public static void w(String str, String str2, Throwable th2) {
        if (5 < minPriority) {
            return;
        }
        ILightLogger iLightLogger = mLogger;
        if (iLightLogger == null) {
            Log.w(str, str2, th2);
        } else {
            iLightLogger.log(5, str, str2, th2);
        }
    }

    public static void e(Throwable th2) {
        th2.printStackTrace();
    }
}
