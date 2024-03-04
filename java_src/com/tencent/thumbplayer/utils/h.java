package com.tencent.thumbplayer.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseIntArray;
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static int f34464a = -1;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f34465b = false;

    /* renamed from: c  reason: collision with root package name */
    private static int f34466c = -1;

    /* renamed from: d  reason: collision with root package name */
    private static final SparseIntArray f34467d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f34467d = sparseIntArray;
        sparseIntArray.put(1, 1);
        sparseIntArray.put(2, 1);
        sparseIntArray.put(4, 1);
        sparseIntArray.put(7, 1);
        sparseIntArray.put(11, 1);
        sparseIntArray.put(3, 2);
        sparseIntArray.put(5, 2);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(8, 2);
        sparseIntArray.put(9, 2);
        sparseIntArray.put(10, 2);
        sparseIntArray.put(12, 2);
        sparseIntArray.put(14, 2);
        sparseIntArray.put(15, 2);
        sparseIntArray.put(13, 3);
    }

    public static int a(Context context) {
        int i9 = f34464a;
        if (i9 <= 0 || f34465b) {
            if (context == null) {
                return -1;
            }
            int g10 = g(context);
            f34464a = g10;
            return g10;
        }
        return i9;
    }

    private static int a(Context context, int i9) {
        return Build.VERSION.SDK_INT >= 29 ? h(context) : b(context, i9);
    }

    private static boolean a() {
        return Build.VERSION.SDK_INT >= 23;
    }

    private static boolean a(Context context, String str) {
        if (a()) {
            if (context == null || TextUtils.isEmpty(str)) {
                return false;
            }
            if ("android.permission.WRITE_SETTINGS".equals(str)) {
                return Settings.System.canWrite(context);
            }
            try {
                return context.checkSelfPermission(str) == 0;
            } catch (Exception e10) {
                TPLogUtil.e("TPNetWorkUtils", e10.getMessage());
                return false;
            }
        }
        return true;
    }

    private static int b(Context context, int i9) {
        if (d(context) == 20) {
            TPLogUtil.i("TPNetWorkUtils", "get5GNetworkTypeIfNeed netWorkType==4");
            return 4;
        }
        Integer valueOf = Integer.valueOf(f34467d.get(i9));
        if (valueOf == null) {
            return -1;
        }
        return valueOf.intValue();
    }

    public static void b(Context context) {
        f34465b = true;
        c(context);
        a(context);
        f34465b = false;
    }

    public static boolean c(Context context) {
        int i9 = f34466c;
        if (i9 != -1 && !f34465b) {
            return i9 == 1;
        }
        if (context != null) {
            try {
                NetworkInfo f10 = f(context);
                f34466c = 0;
                if (f10 != null && f10.getState() == NetworkInfo.State.CONNECTED) {
                    f34466c = 1;
                }
            } catch (Exception e10) {
                TPLogUtil.e("TPNetWorkUtils", e10.getMessage());
            }
        }
        return f34466c == 1;
    }

    private static int d(Context context) {
        int i9 = 0;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed TelephonyManager is null");
                return 0;
            } else if (context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
                TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed no permission");
                return 0;
            } else if (Build.VERSION.SDK_INT < 29) {
                TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed less api 29");
                return 0;
            } else {
                int networkType = telephonyManager.getNetworkType();
                try {
                    if (networkType != 13) {
                        TPLogUtil.i("TPNetWorkUtils", "get5GNetworkTypeIfNeed not NETWORK_TYPE_LTE");
                        return networkType;
                    }
                    ServiceState serviceState = telephonyManager.getServiceState();
                    if (serviceState == null) {
                        TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed serviceState is null");
                        return networkType;
                    }
                    int intValue = ((Integer) k.a(serviceState, "android.telephony.ServiceState", "getNrState", new Class[0], new Object[0])).intValue();
                    if (intValue == 2 || intValue == 3) {
                        TPLogUtil.i("TPNetWorkUtils", "get5GNetworkTypeIfNeed networkType is 20, 5G");
                        return 20;
                    }
                    return networkType;
                } catch (Throwable th2) {
                    i9 = networkType;
                    th = th2;
                    TPLogUtil.e("TPNetWorkUtils", th.getMessage());
                    return i9;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static ConnectivityManager e(Context context) {
        if (context == null) {
            return null;
        }
        return (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
    }

    private static NetworkInfo f(Context context) {
        ConnectivityManager e10 = e(context);
        if (e10 == null) {
            return null;
        }
        return e10.getActiveNetworkInfo();
    }

    private static int g(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
                return -1;
            }
            int type = activeNetworkInfo.getType();
            return type != 0 ? type != 1 ? -1 : 0 : a(context, activeNetworkInfo.getSubtype());
        } catch (Throwable th2) {
            TPLogUtil.e("TPNetWorkUtils", th2.getMessage());
            return -1;
        }
    }

    private static int h(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (a(context, "android.permission.READ_PHONE_STATE")) {
                return b(context, telephonyManager.getDataNetworkType());
            }
            TPLogUtil.e("TPNetWorkUtils", "getNetWorkClassAPI29 fail: no phone permission");
            return -1;
        } catch (Throwable th2) {
            TPLogUtil.e("TPNetWorkUtils", th2.getMessage());
            return -1;
        }
    }
}
