package com.google.android.gms.measurement;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.measurement.internal.m6;
import com.google.android.gms.measurement.internal.n4;
import java.util.List;
import java.util.Map;
import p4.t;
/* loaded from: classes2.dex */
final class a extends d {

    /* renamed from: a  reason: collision with root package name */
    private final n4 f9251a;

    /* renamed from: b  reason: collision with root package name */
    private final m6 f9252b;

    public a(@NonNull n4 n4Var) {
        super(null);
        p.j(n4Var);
        this.f9251a = n4Var;
        this.f9252b = n4Var.I();
    }

    @Override // p4.v
    public final long D() {
        return this.f9251a.N().r0();
    }

    @Override // p4.v
    public final String G() {
        return this.f9252b.X();
    }

    @Override // p4.v
    public final String a() {
        return this.f9252b.V();
    }

    @Override // p4.v
    public final int b(String str) {
        this.f9252b.Q(str);
        return 25;
    }

    @Override // p4.v
    public final void c(t tVar) {
        this.f9252b.N(tVar);
    }

    @Override // p4.v
    public final String d() {
        return this.f9252b.W();
    }

    @Override // p4.v
    public final String e() {
        return this.f9252b.V();
    }

    @Override // p4.v
    public final void f(String str, String str2, Bundle bundle) {
        this.f9252b.r(str, str2, bundle);
    }

    @Override // p4.v
    public final void g(t tVar) {
        this.f9252b.x(tVar);
    }

    @Override // p4.v
    public final void h(String str) {
        this.f9251a.y().l(str, this.f9251a.c().b());
    }

    @Override // p4.v
    public final void i(String str) {
        this.f9251a.y().m(str, this.f9251a.c().b());
    }

    @Override // p4.v
    public final List j(String str, String str2) {
        return this.f9252b.Z(str, str2);
    }

    @Override // p4.v
    public final Map k(String str, String str2, boolean z10) {
        return this.f9252b.a0(str, str2, z10);
    }

    @Override // p4.v
    public final void l(Bundle bundle) {
        this.f9252b.D(bundle);
    }

    @Override // p4.v
    public final void m(String str, String str2, Bundle bundle) {
        this.f9251a.I().o(str, str2, bundle);
    }
}
