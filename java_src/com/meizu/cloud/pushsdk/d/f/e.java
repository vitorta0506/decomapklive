package com.meizu.cloud.pushsdk.d.f;

import android.content.Context;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.WindowManager;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f28673a = "e";

    public static long a(String str) {
        long j10;
        long j11 = 0;
        int i9 = 0;
        while (i9 < str.length()) {
            char charAt = str.charAt(i9);
            if (charAt <= 127) {
                j10 = 1;
            } else if (charAt <= 2047) {
                j10 = 2;
            } else {
                if (charAt >= 55296 && charAt <= 57343) {
                    j11 += 4;
                    i9++;
                } else if (charAt < 65535) {
                    j10 = 3;
                } else {
                    j11 += 4;
                }
                i9++;
            }
            j11 += j10;
            i9++;
        }
        return j11;
    }

    private static Object a(Object obj) {
        return obj;
    }

    public static String a() {
        return Long.toString(System.currentTimeMillis());
    }

    public static JSONObject a(Map map) {
        return new JSONObject(map);
    }

    public static boolean a(long j10, long j11, long j12) {
        return j10 > j11 - j12;
    }

    public static boolean a(Context context) {
        try {
            String str = f28673a;
            c.c(str, "Checking tracker internet connectivity.", new Object[0]);
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            boolean z10 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
            c.b(str, "Tracker connection online: %s", Boolean.valueOf(z10));
            return z10;
        } catch (Exception e10) {
            c.a(f28673a, "Security exception checking connection: %s", e10.toString());
            return true;
        }
    }

    public static String b() {
        return UUID.randomUUID().toString();
    }

    public static String b(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getNetworkOperatorName();
            }
            return null;
        } catch (Exception e10) {
            c.a(f28673a, "getCarrier: %s", e10.toString());
            return null;
        }
    }

    public static String c(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getSimOperator();
            }
            return null;
        } catch (Exception e10) {
            String str = f28673a;
            c.a(str, "getOperator error " + e10.getMessage(), new Object[0]);
            return null;
        }
    }

    public static Point d(Context context) {
        WindowManager windowManager;
        Point point = new Point();
        Display display = null;
        try {
            windowManager = (WindowManager) context.getSystemService("window");
        } catch (Exception unused) {
            String str = f28673a;
            c.a(str, "Display.getSize isn't available on older devices.", new Object[0]);
            if (display != null) {
                point.x = display.getWidth();
                point.y = display.getHeight();
            } else {
                c.a(str, "error get display", new Object[0]);
            }
        }
        if (windowManager == null) {
            return null;
        }
        display = windowManager.getDefaultDisplay();
        Display.class.getMethod("getSize", Point.class);
        display.getSize(point);
        return point;
    }
}
