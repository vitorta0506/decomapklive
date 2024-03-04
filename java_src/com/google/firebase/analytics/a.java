package com.google.firebase.analytics;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.measurement.w2;
import java.util.List;
import java.util.Map;
import p4.t;
import p4.v;
/* loaded from: classes2.dex */
final class a implements v {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ w2 f13810a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(w2 w2Var) {
        this.f13810a = w2Var;
    }

    @Override // p4.v
    public final long D() {
        return this.f13810a.r();
    }

    @Override // p4.v
    @Nullable
    public final String G() {
        return this.f13810a.z();
    }

    @Override // p4.v
    @Nullable
    public final String a() {
        return this.f13810a.x();
    }

    @Override // p4.v
    public final int b(String str) {
        return this.f13810a.q(str);
    }

    @Override // p4.v
    public final void c(t tVar) {
        this.f13810a.i(tVar);
    }

    @Override // p4.v
    @Nullable
    public final String d() {
        return this.f13810a.y();
    }

    @Override // p4.v
    @Nullable
    public final String e() {
        return this.f13810a.A();
    }

    @Override // p4.v
    public final void f(String str, String str2, Bundle bundle) {
        this.f13810a.K(str, str2, bundle);
    }

    @Override // p4.v
    public final void g(t tVar) {
        this.f13810a.b(tVar);
    }

    @Override // p4.v
    public final void h(String str) {
        this.f13810a.G(str);
    }

    @Override // p4.v
    public final void i(String str) {
        this.f13810a.I(str);
    }

    @Override // p4.v
    public final List j(@Nullable String str, @Nullable String str2) {
        return this.f13810a.B(str, str2);
    }

    @Override // p4.v
    public final Map k(@Nullable String str, @Nullable String str2, boolean z10) {
        return this.f13810a.C(str, str2, z10);
    }

    @Override // p4.v
    public final void l(Bundle bundle) {
        this.f13810a.c(bundle);
    }

    @Override // p4.v
    public final void m(String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.f13810a.H(str, str2, bundle);
    }
}
