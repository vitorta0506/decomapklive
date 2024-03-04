package com.appsflyer.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
/* loaded from: classes.dex */
final class AFa1iSDK {

    /* loaded from: classes.dex */
    static final class AFa1vSDK {
        final String AFInAppEventType;
        final String AFKeystoreWrapper;
        final String values;

        AFa1vSDK(@NonNull String str, @Nullable String str2, @Nullable String str3) {
            this.values = str;
            this.AFInAppEventType = str2;
            this.AFKeystoreWrapper = str3;
        }
    }

    /* loaded from: classes.dex */
    static final class AFa1xSDK {
        static final AFa1iSDK valueOf = new AFa1iSDK();
    }

    AFa1iSDK() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AFa1vSDK AFKeystoreWrapper(@NonNull Context context) {
        String str;
        String str2;
        String str3 = "unknown";
        String str4 = null;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                Network[] allNetworks = connectivityManager.getAllNetworks();
                int length = allNetworks.length;
                int i9 = 0;
                while (true) {
                    if (i9 >= length) {
                        break;
                    }
                    NetworkInfo networkInfo = connectivityManager.getNetworkInfo(allNetworks[i9]);
                    if (!valueOf(networkInfo)) {
                        i9++;
                    } else if (1 == networkInfo.getType()) {
                        str3 = "WIFI";
                    } else if (networkInfo.getType() == 0) {
                        str3 = "MOBILE";
                    }
                }
            }
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            str2 = telephonyManager.getSimOperatorName();
            try {
                str4 = telephonyManager.getNetworkOperatorName();
                if (str4 == null || str4.isEmpty()) {
                    if (2 == telephonyManager.getPhoneType()) {
                        str4 = "CDMA";
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                str = str4;
                str4 = str2;
                AFLogger.afErrorLog("Exception while collecting network info. ", th);
                String str5 = str;
                str2 = str4;
                str4 = str5;
                return new AFa1vSDK(str3, str4, str2);
            }
        } catch (Throwable th3) {
            th = th3;
            str = null;
        }
        return new AFa1vSDK(str3, str4, str2);
    }

    private static boolean valueOf(NetworkInfo networkInfo) {
        return networkInfo != null && networkInfo.isConnectedOrConnecting();
    }
}
