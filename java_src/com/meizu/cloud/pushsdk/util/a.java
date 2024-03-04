package com.meizu.cloud.pushsdk.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* loaded from: classes4.dex */
public class a {
    public static NetworkInfo a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return null;
            }
            return connectivityManager.getActiveNetworkInfo();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean b(Context context) {
        NetworkInfo a10 = a(context);
        return a10 != null && a10.isConnected() && a10.getType() == 1;
    }
}
