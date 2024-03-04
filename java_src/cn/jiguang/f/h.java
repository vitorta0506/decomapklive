package cn.jiguang.f;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public class h {
    public static int a(Context context) {
        return a(c(context));
    }

    private static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if ("wifi".equals(str)) {
            return 1;
        }
        if ("2g".equals(str)) {
            return 2;
        }
        if ("3g".equals(str)) {
            return 3;
        }
        if ("4g".equals(str)) {
            return 4;
        }
        return "5g".equals(str) ? 5 : 0;
    }

    public static String a(int i9) {
        cn.jiguang.as.d.a("TeleonyManagerUtils", "getRadioType - networkType:" + i9);
        String str = (i9 == 4 || i9 == 7 || i9 == 5 || i9 == 6 || i9 == 12 || i9 == 14) ? "cdma" : i9 == 13 ? "lte" : "gsm";
        cn.jiguang.as.d.a("TeleonyManagerUtils", "getRadioType - radioType:" + str);
        return str;
    }

    public static String a(Context context, int i9) {
        String c10 = c(context);
        cn.jiguang.as.d.a("TeleonyManagerUtils", "getCurrentNetType - type:" + c10);
        if (TextUtils.isEmpty(c10)) {
            try {
                Object a10 = f.a((Class<?>) TelephonyManager.class, "getNetworkClass", new Object[]{Integer.valueOf(i9)}, new Class[]{Integer.TYPE});
                if (((Integer) a10).intValue() == 0) {
                    c10 = "unknown";
                } else if (((Integer) a10).intValue() == 1) {
                    c10 = "2g";
                } else if (((Integer) a10).intValue() == 2) {
                    c10 = "3g";
                } else if (((Integer) a10).intValue() == 3) {
                    c10 = "4g";
                }
                cn.jiguang.as.d.c("TeleonyManagerUtils", "step2 - type:" + c10);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException | Exception unused) {
            }
        }
        return TextUtils.isEmpty(c10) ? "unknown" : c10;
    }

    private static String b(int i9) {
        cn.jiguang.as.d.a("TeleonyManagerUtils", "getNetworkClass networkType:" + i9);
        switch (i9) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2g";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3g";
            case 13:
                return "4g";
            default:
                switch (i9) {
                    case 16:
                        return "2g";
                    case 17:
                        return "3g";
                    case 18:
                    case 19:
                        return "4g";
                    case 20:
                        return "5g";
                    default:
                        return "unknown";
                }
        }
    }

    public static String b(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String c(Context context) {
        String b10;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.getType() == 1) {
                    b10 = "wifi";
                } else if (activeNetworkInfo.getType() != 0) {
                    return "unknown";
                } else {
                    b10 = b(activeNetworkInfo.getSubtype());
                }
                return b10;
            }
            return "unknown";
        } catch (Exception e10) {
            e10.printStackTrace();
            return "unknown";
        }
    }

    public static int d(Context context) {
        try {
            return a(b(((TelephonyManager) context.getSystemService("phone")).getNetworkType()));
        } catch (Throwable th2) {
            cn.jiguang.as.d.i("TeleonyManagerUtils", "get getNetworkType error :" + th2);
            return 0;
        }
    }
}
