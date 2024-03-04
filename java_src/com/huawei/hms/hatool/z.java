package com.huawei.hms.hatool;

import android.util.Log;
/* loaded from: classes4.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    public boolean f27618a = false;

    /* renamed from: b  reason: collision with root package name */
    public int f27619b = 4;

    public static String a() {
        return "FormalHASDK_2.2.0.313" + k1.a();
    }

    public void a(int i9) {
        Log.i("FormalHASDK", System.lineSeparator() + "======================================= " + System.lineSeparator() + a() + "" + System.lineSeparator() + "=======================================");
        this.f27619b = i9;
        this.f27618a = true;
    }

    public void a(int i9, String str, String str2) {
        if (i9 == 3) {
            Log.d(str, str2);
        } else if (i9 == 5) {
            Log.w(str, str2);
        } else if (i9 != 6) {
            Log.i(str, str2);
        } else {
            Log.e(str, str2);
        }
    }

    public void b(int i9, String str, String str2) {
        a(i9, "FormalHASDK", str + "=> " + str2);
    }

    public boolean b(int i9) {
        return this.f27618a && i9 >= this.f27619b;
    }
}
