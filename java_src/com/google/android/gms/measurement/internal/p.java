package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    final String f9739a;

    /* renamed from: b  reason: collision with root package name */
    final String f9740b;

    /* renamed from: c  reason: collision with root package name */
    final String f9741c;

    /* renamed from: d  reason: collision with root package name */
    final long f9742d;

    /* renamed from: e  reason: collision with root package name */
    final long f9743e;

    /* renamed from: f  reason: collision with root package name */
    final zzau f9744f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(n4 n4Var, String str, String str2, String str3, long j10, long j11, Bundle bundle) {
        zzau zzauVar;
        com.google.android.gms.common.internal.p.f(str2);
        com.google.android.gms.common.internal.p.f(str3);
        this.f9739a = str2;
        this.f9740b = str3;
        this.f9741c = true == TextUtils.isEmpty(str) ? null : str;
        this.f9742d = j10;
        this.f9743e = j11;
        if (j11 != 0 && j11 > j10) {
            n4Var.b().w().b("Event created with reverse previous/current timestamps. appId", j3.z(str2));
        }
        if (bundle != null && !bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    n4Var.b().r().a("Param name can't be null");
                    it.remove();
                } else {
                    Object o10 = n4Var.N().o(next, bundle2.get(next));
                    if (o10 == null) {
                        n4Var.b().w().b("Param value can't be null", n4Var.D().e(next));
                        it.remove();
                    } else {
                        n4Var.N().C(bundle2, next, o10);
                    }
                }
            }
            zzauVar = new zzau(bundle2);
        } else {
            zzauVar = new zzau(new Bundle());
        }
        this.f9744f = zzauVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final p a(n4 n4Var, long j10) {
        return new p(n4Var, this.f9741c, this.f9739a, this.f9740b, this.f9742d, j10, this.f9744f);
    }

    public final String toString() {
        String str = this.f9739a;
        String str2 = this.f9740b;
        String obj = this.f9744f.toString();
        return "Event{appId='" + str + "', name='" + str2 + "', params=" + obj + "}";
    }

    private p(n4 n4Var, String str, String str2, String str3, long j10, long j11, zzau zzauVar) {
        com.google.android.gms.common.internal.p.f(str2);
        com.google.android.gms.common.internal.p.f(str3);
        com.google.android.gms.common.internal.p.j(zzauVar);
        this.f9739a = str2;
        this.f9740b = str3;
        this.f9741c = true == TextUtils.isEmpty(str) ? null : str;
        this.f9742d = j10;
        this.f9743e = j11;
        if (j11 != 0 && j11 > j10) {
            n4Var.b().w().c("Event created with reverse previous/current timestamps. appId, name", j3.z(str2), j3.z(str3));
        }
        this.f9744f = zzauVar;
    }
}
