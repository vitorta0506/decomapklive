package com.tencent.liteav.base.util;

import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes4.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f31031a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f31032b = false;

    /* renamed from: c  reason: collision with root package name */
    private static String f31033c = "";

    public static boolean a() {
        boolean z10;
        synchronized (f31031a) {
            if (!f31032b) {
                Log.w("SoLoader", "load library txsoundtouch ".concat(String.valueOf(a("txsoundtouch"))));
                Log.w("SoLoader", "load library txffmpeg ".concat(String.valueOf(a("txffmpeg"))));
                f31032b = a("liteavsdk");
                Log.w("SoLoader", "load library liteavsdk " + f31032b);
            }
            z10 = f31032b;
        }
        return z10;
    }

    public static String b() {
        return f31033c;
    }

    public static void b(String str) {
        Log.w("SoLoader", "setLibraryPath ".concat(String.valueOf(str)));
        f31033c = str;
    }

    public static boolean a(String str) {
        try {
            if (!TextUtils.isEmpty(f31033c) ? a(f31033c, str) : false) {
                return true;
            }
            Log.w("SoLoader", "load library " + str + " from system path ");
            System.loadLibrary(str);
            return true;
        } catch (Error e10) {
            Log.w("SoLoader", "load library : " + e10.toString());
            return false;
        } catch (Exception e11) {
            Log.w("SoLoader", "load library : " + e11.toString());
            return false;
        }
    }

    private static boolean a(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Log.w("SoLoader", "load library " + str2 + " from path " + str);
            System.load(str + "/lib" + str2 + ".so");
            return true;
        } catch (Error e10) {
            Log.w("SoLoader", "load library : " + e10.toString());
            return false;
        } catch (Exception e11) {
            Log.w("SoLoader", "load library : " + e11.toString());
            return false;
        }
    }
}
