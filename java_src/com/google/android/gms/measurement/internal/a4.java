package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
public final class a4 {

    /* renamed from: a  reason: collision with root package name */
    final n4 f9262a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a4(d9 d9Var) {
        this.f9262a = d9Var.c0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        try {
            g4.b a10 = g4.c.a(this.f9262a.f());
            if (a10 != null) {
                return a10.e("com.android.vending", 128).versionCode >= 80837300;
            }
            this.f9262a.b().v().a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e10) {
            this.f9262a.b().v().b("Failed to retrieve Play Store version for Install Referrer", e10);
            return false;
        }
    }
}
