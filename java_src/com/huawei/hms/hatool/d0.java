package com.huawei.hms.hatool;

import android.os.Build;
import android.text.TextUtils;
/* loaded from: classes4.dex */
public class d0 {

    /* renamed from: c  reason: collision with root package name */
    public static d0 f27442c;

    /* renamed from: a  reason: collision with root package name */
    public String f27443a;

    /* renamed from: b  reason: collision with root package name */
    public String f27444b;

    public static d0 f() {
        if (f27442c == null) {
            g();
        }
        return f27442c;
    }

    public static synchronized void g() {
        synchronized (d0.class) {
            if (f27442c == null) {
                f27442c = new d0();
            }
        }
    }

    public String a() {
        if (TextUtils.isEmpty(this.f27443a)) {
            this.f27443a = c();
        }
        return this.f27443a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
        if (e() != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(java.lang.String r3) {
        /*
            r2 = this;
            boolean r0 = r2.e()
            if (r0 == 0) goto Ld
            java.lang.String r0 = "analytics_keystore"
            java.lang.String r0 = ac.a.d(r0, r3)
            goto Lf
        Ld:
            java.lang.String r0 = ""
        Lf:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L4f
            java.lang.String r0 = "hmsSdk"
            java.lang.String r1 = "deCrypt work key first"
            com.huawei.hms.hatool.y.c(r0, r1)
            java.lang.String r0 = r2.d()
            java.lang.String r0 = com.huawei.hms.hatool.d.a(r3, r0)
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 == 0) goto L41
            r3 = 16
            java.lang.String r0 = bc.b.d(r3)
            java.lang.String r3 = r2.b(r0)
            r2.c(r3)
            boolean r3 = r2.e()
            if (r3 == 0) goto L4f
        L3d:
            com.huawei.hms.hatool.c0.d()
            goto L4f
        L41:
            boolean r3 = r2.e()
            if (r3 == 0) goto L4f
            java.lang.String r3 = r2.b(r0)
            r2.c(r3)
            goto L3d
        L4f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.hatool.d0.a(java.lang.String):java.lang.String");
    }

    public final String b(String str) {
        return e() ? ac.a.g("analytics_keystore", str) : d.b(str, d());
    }

    public void b() {
        String d10 = bc.b.d(16);
        if (c(b(d10))) {
            this.f27443a = d10;
        }
    }

    public final String c() {
        String a10 = g0.a(b.i(), "Privacy_MY", "PrivacyData", "");
        if (TextUtils.isEmpty(a10)) {
            String d10 = bc.b.d(16);
            c(b(d10));
            return d10;
        }
        return a(a10);
    }

    public final boolean c(String str) {
        y.c("hmsSdk", "refresh sp aes key");
        if (TextUtils.isEmpty(str)) {
            y.c("hmsSdk", "refreshLocalKey(): encrypted key is empty");
            return false;
        }
        g0.b(b.i(), "Privacy_MY", "PrivacyData", str);
        g0.b(b.i(), "Privacy_MY", "flashKeyTime", System.currentTimeMillis());
        return true;
    }

    public final String d() {
        if (TextUtils.isEmpty(this.f27444b)) {
            this.f27444b = new c0().a();
        }
        return this.f27444b;
    }

    public final boolean e() {
        return Build.VERSION.SDK_INT >= 23;
    }
}
