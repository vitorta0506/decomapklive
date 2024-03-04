package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes4.dex */
public abstract class a1 {
    public final x0 a(int i9) {
        String str;
        if (i9 != 0) {
            str = f();
            if (!TextUtils.isEmpty(str)) {
                return new x0(y0.UDID, str);
            }
        } else {
            str = "";
        }
        return new x0(y0.EMPTY, str);
    }

    public x0 a(Context context) {
        String c10 = c();
        if (TextUtils.isEmpty(c10)) {
            String a10 = a();
            if (TextUtils.isEmpty(a10)) {
                boolean e10 = e();
                String b10 = b();
                return !TextUtils.isEmpty(b10) ? e10 ? new x0(y0.SN, b10) : new x0(y0.UDID, a(b10)) : e10 ? a(d()) : b(d());
            }
            return new x0(y0.IMEI, a10);
        }
        return new x0(y0.UDID, c10);
    }

    public abstract String a();

    public abstract String a(String str);

    public final x0 b(int i9) {
        String str;
        if ((i9 & 4) != 0) {
            str = f();
            if (!TextUtils.isEmpty(str)) {
                return new x0(y0.UDID, str);
            }
        } else {
            str = "";
        }
        return new x0(y0.EMPTY, str);
    }

    public abstract String b();

    public abstract String c();

    public abstract int d();

    public final boolean e() {
        l b10 = i.c().b();
        if (TextUtils.isEmpty(b10.l())) {
            b10.h(f.a());
        }
        return !TextUtils.isEmpty(b10.l());
    }

    public final String f() {
        l b10 = i.c().b();
        if (TextUtils.isEmpty(b10.i())) {
            b10.e(b1.c());
        }
        return b10.i();
    }
}
