package com.google.android.gms.measurement.internal;

import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f9424a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9425b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Object f9426c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Object f9427d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Object f9428e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ j3 f9429f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g3(j3 j3Var, int i9, String str, Object obj, Object obj2, Object obj3) {
        this.f9429f = j3Var;
        this.f9424a = i9;
        this.f9425b = str;
        this.f9426c = obj;
        this.f9427d = obj2;
        this.f9428e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c10;
        long j10;
        char c11;
        long j11;
        x3 F = this.f9429f.f9432a.F();
        if (F.n()) {
            j3 j3Var = this.f9429f;
            c10 = j3Var.f9501c;
            if (c10 == 0) {
                if (j3Var.f9432a.z().H()) {
                    j3 j3Var2 = this.f9429f;
                    j3Var2.f9432a.d();
                    j3Var2.f9501c = 'C';
                } else {
                    j3 j3Var3 = this.f9429f;
                    j3Var3.f9432a.d();
                    j3Var3.f9501c = 'c';
                }
            }
            j3 j3Var4 = this.f9429f;
            j10 = j3Var4.f9502d;
            if (j10 < 0) {
                j3Var4.f9432a.z().q();
                j3Var4.f9502d = 73000L;
            }
            char charAt = "01VDIWEA?".charAt(this.f9424a);
            j3 j3Var5 = this.f9429f;
            c11 = j3Var5.f9501c;
            j11 = j3Var5.f9502d;
            String str = "2" + charAt + c11 + j11 + CertificateUtil.DELIMITER + j3.A(true, this.f9425b, this.f9426c, this.f9427d, this.f9428e);
            if (str.length() > 1024) {
                str = this.f9425b.substring(0, 1024);
            }
            v3 v3Var = F.f9954d;
            if (v3Var != null) {
                v3Var.b(str, 1L);
                return;
            }
            return;
        }
        Log.println(6, this.f9429f.C(), "Persisted config not initialized. Not logging error/warn");
    }
}
