package com.google.android.gms.measurement.internal;

import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b9 {

    /* renamed from: a  reason: collision with root package name */
    com.google.android.gms.internal.measurement.w4 f9313a;

    /* renamed from: b  reason: collision with root package name */
    List f9314b;

    /* renamed from: c  reason: collision with root package name */
    List f9315c;

    /* renamed from: d  reason: collision with root package name */
    long f9316d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ d9 f9317e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b9(d9 d9Var, p4.z zVar) {
        this.f9317e = d9Var;
    }

    private static final long b(com.google.android.gms.internal.measurement.l4 l4Var) {
        return ((l4Var.z() / 1000) / 60) / 60;
    }

    public final boolean a(long j10, com.google.android.gms.internal.measurement.l4 l4Var) {
        com.google.android.gms.common.internal.p.j(l4Var);
        if (this.f9315c == null) {
            this.f9315c = new ArrayList();
        }
        if (this.f9314b == null) {
            this.f9314b = new ArrayList();
        }
        if (this.f9315c.isEmpty() || b((com.google.android.gms.internal.measurement.l4) this.f9315c.get(0)) == b(l4Var)) {
            long g10 = this.f9316d + l4Var.g();
            this.f9317e.U();
            if (g10 >= Math.max(0, ((Integer) z2.f10044j.a(null)).intValue())) {
                return false;
            }
            this.f9316d = g10;
            this.f9315c.add(l4Var);
            this.f9314b.add(Long.valueOf(j10));
            int size = this.f9315c.size();
            this.f9317e.U();
            return size < Math.max(1, ((Integer) z2.f10046k.a(null)).intValue());
        }
        return false;
    }
}
