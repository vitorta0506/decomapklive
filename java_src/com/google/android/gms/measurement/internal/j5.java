package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j5 {
    private long A;
    @Nullable
    private String B;
    private boolean C;
    private long D;
    private long E;

    /* renamed from: a  reason: collision with root package name */
    private final n4 f9517a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9518b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f9519c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f9520d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f9521e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f9522f;

    /* renamed from: g  reason: collision with root package name */
    private long f9523g;

    /* renamed from: h  reason: collision with root package name */
    private long f9524h;

    /* renamed from: i  reason: collision with root package name */
    private long f9525i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private String f9526j;

    /* renamed from: k  reason: collision with root package name */
    private long f9527k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f9528l;

    /* renamed from: m  reason: collision with root package name */
    private long f9529m;

    /* renamed from: n  reason: collision with root package name */
    private long f9530n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f9531o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f9532p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private String f9533q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Boolean f9534r;

    /* renamed from: s  reason: collision with root package name */
    private long f9535s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private List f9536t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f9537u;

    /* renamed from: v  reason: collision with root package name */
    private long f9538v;

    /* renamed from: w  reason: collision with root package name */
    private long f9539w;

    /* renamed from: x  reason: collision with root package name */
    private long f9540x;

    /* renamed from: y  reason: collision with root package name */
    private long f9541y;

    /* renamed from: z  reason: collision with root package name */
    private long f9542z;

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public j5(n4 n4Var, String str) {
        com.google.android.gms.common.internal.p.j(n4Var);
        com.google.android.gms.common.internal.p.f(str);
        this.f9517a = n4Var;
        this.f9518b = str;
        n4Var.a().h();
    }

    @WorkerThread
    public final long A() {
        this.f9517a.a().h();
        return 0L;
    }

    @WorkerThread
    public final void B(long j10) {
        com.google.android.gms.common.internal.p.a(j10 >= 0);
        this.f9517a.a().h();
        this.C = (this.f9523g != j10) | this.C;
        this.f9523g = j10;
    }

    @WorkerThread
    public final void C(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9524h != j10;
        this.f9524h = j10;
    }

    @WorkerThread
    public final void D(boolean z10) {
        this.f9517a.a().h();
        this.C |= this.f9531o != z10;
        this.f9531o = z10;
    }

    @WorkerThread
    public final void E(@Nullable Boolean bool) {
        this.f9517a.a().h();
        this.C |= !p4.n.a(this.f9534r, bool);
        this.f9534r = bool;
    }

    @WorkerThread
    public final void F(@Nullable String str) {
        this.f9517a.a().h();
        this.C |= !p4.n.a(this.f9521e, str);
        this.f9521e = str;
    }

    @WorkerThread
    public final void G(@Nullable List list) {
        this.f9517a.a().h();
        if (p4.n.a(this.f9536t, list)) {
            return;
        }
        this.C = true;
        this.f9536t = list != null ? new ArrayList(list) : null;
    }

    @WorkerThread
    public final void H(@Nullable String str) {
        this.f9517a.a().h();
        this.C |= !p4.n.a(this.f9537u, str);
        this.f9537u = str;
    }

    @WorkerThread
    public final boolean I() {
        this.f9517a.a().h();
        return this.f9532p;
    }

    @WorkerThread
    public final boolean J() {
        this.f9517a.a().h();
        return this.f9531o;
    }

    @WorkerThread
    public final boolean K() {
        this.f9517a.a().h();
        return this.C;
    }

    @WorkerThread
    public final long L() {
        this.f9517a.a().h();
        return this.f9527k;
    }

    @WorkerThread
    public final long M() {
        this.f9517a.a().h();
        return this.D;
    }

    @WorkerThread
    public final long N() {
        this.f9517a.a().h();
        return this.f9541y;
    }

    @WorkerThread
    public final long O() {
        this.f9517a.a().h();
        return this.f9542z;
    }

    @WorkerThread
    public final long P() {
        this.f9517a.a().h();
        return this.f9540x;
    }

    @WorkerThread
    public final long Q() {
        this.f9517a.a().h();
        return this.f9539w;
    }

    @WorkerThread
    public final long R() {
        this.f9517a.a().h();
        return this.A;
    }

    @WorkerThread
    public final long S() {
        this.f9517a.a().h();
        return this.f9538v;
    }

    @WorkerThread
    public final long T() {
        this.f9517a.a().h();
        return this.f9530n;
    }

    @WorkerThread
    public final long U() {
        this.f9517a.a().h();
        return this.f9535s;
    }

    @WorkerThread
    public final long V() {
        this.f9517a.a().h();
        return this.E;
    }

    @WorkerThread
    public final long W() {
        this.f9517a.a().h();
        return this.f9529m;
    }

    @WorkerThread
    public final long X() {
        this.f9517a.a().h();
        return this.f9525i;
    }

    @WorkerThread
    public final long Y() {
        this.f9517a.a().h();
        return this.f9523g;
    }

    @WorkerThread
    public final long Z() {
        this.f9517a.a().h();
        return this.f9524h;
    }

    @Nullable
    @WorkerThread
    public final String a() {
        this.f9517a.a().h();
        return this.f9521e;
    }

    @Nullable
    @WorkerThread
    public final Boolean a0() {
        this.f9517a.a().h();
        return this.f9534r;
    }

    @Nullable
    @WorkerThread
    public final String b() {
        this.f9517a.a().h();
        return this.f9537u;
    }

    @Nullable
    @WorkerThread
    public final String b0() {
        this.f9517a.a().h();
        return this.f9533q;
    }

    @Nullable
    @WorkerThread
    public final List c() {
        this.f9517a.a().h();
        return this.f9536t;
    }

    @Nullable
    @WorkerThread
    public final String c0() {
        this.f9517a.a().h();
        String str = this.B;
        y(null);
        return str;
    }

    @WorkerThread
    public final void d() {
        this.f9517a.a().h();
        this.C = false;
    }

    @WorkerThread
    public final String d0() {
        this.f9517a.a().h();
        return this.f9518b;
    }

    @WorkerThread
    public final void e() {
        this.f9517a.a().h();
        long j10 = this.f9523g + 1;
        if (j10 > 2147483647L) {
            this.f9517a.b().w().b("Bundle index overflow. appId", j3.z(this.f9518b));
            j10 = 0;
        }
        this.C = true;
        this.f9523g = j10;
    }

    @Nullable
    @WorkerThread
    public final String e0() {
        this.f9517a.a().h();
        return this.f9519c;
    }

    @WorkerThread
    public final void f(@Nullable String str) {
        this.f9517a.a().h();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.C |= true ^ p4.n.a(this.f9533q, str);
        this.f9533q = str;
    }

    @Nullable
    @WorkerThread
    public final String f0() {
        this.f9517a.a().h();
        return this.f9528l;
    }

    @WorkerThread
    public final void g(boolean z10) {
        this.f9517a.a().h();
        this.C |= this.f9532p != z10;
        this.f9532p = z10;
    }

    @Nullable
    @WorkerThread
    public final String g0() {
        this.f9517a.a().h();
        return this.f9526j;
    }

    @WorkerThread
    public final void h(@Nullable String str) {
        this.f9517a.a().h();
        this.C |= !p4.n.a(this.f9519c, str);
        this.f9519c = str;
    }

    @Nullable
    @WorkerThread
    public final String h0() {
        this.f9517a.a().h();
        return this.f9522f;
    }

    @WorkerThread
    public final void i(@Nullable String str) {
        this.f9517a.a().h();
        this.C |= !p4.n.a(this.f9528l, str);
        this.f9528l = str;
    }

    @Nullable
    @WorkerThread
    public final String i0() {
        this.f9517a.a().h();
        return this.f9520d;
    }

    @WorkerThread
    public final void j(@Nullable String str) {
        this.f9517a.a().h();
        this.C |= !p4.n.a(this.f9526j, str);
        this.f9526j = str;
    }

    @Nullable
    @WorkerThread
    public final String j0() {
        this.f9517a.a().h();
        return this.B;
    }

    @WorkerThread
    public final void k(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9527k != j10;
        this.f9527k = j10;
    }

    @WorkerThread
    public final void l(long j10) {
        this.f9517a.a().h();
        this.C |= this.D != j10;
        this.D = j10;
    }

    @WorkerThread
    public final void m(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9541y != j10;
        this.f9541y = j10;
    }

    @WorkerThread
    public final void n(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9542z != j10;
        this.f9542z = j10;
    }

    @WorkerThread
    public final void o(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9540x != j10;
        this.f9540x = j10;
    }

    @WorkerThread
    public final void p(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9539w != j10;
        this.f9539w = j10;
    }

    @WorkerThread
    public final void q(long j10) {
        this.f9517a.a().h();
        this.C |= this.A != j10;
        this.A = j10;
    }

    @WorkerThread
    public final void r(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9538v != j10;
        this.f9538v = j10;
    }

    @WorkerThread
    public final void s(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9530n != j10;
        this.f9530n = j10;
    }

    @WorkerThread
    public final void t(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9535s != j10;
        this.f9535s = j10;
    }

    @WorkerThread
    public final void u(long j10) {
        this.f9517a.a().h();
        this.C |= this.E != j10;
        this.E = j10;
    }

    @WorkerThread
    public final void v(@Nullable String str) {
        this.f9517a.a().h();
        this.C |= !p4.n.a(this.f9522f, str);
        this.f9522f = str;
    }

    @WorkerThread
    public final void w(@Nullable String str) {
        this.f9517a.a().h();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.C |= true ^ p4.n.a(this.f9520d, str);
        this.f9520d = str;
    }

    @WorkerThread
    public final void x(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9529m != j10;
        this.f9529m = j10;
    }

    @WorkerThread
    public final void y(@Nullable String str) {
        this.f9517a.a().h();
        this.C |= !p4.n.a(this.B, str);
        this.B = str;
    }

    @WorkerThread
    public final void z(long j10) {
        this.f9517a.a().h();
        this.C |= this.f9525i != j10;
        this.f9525i = j10;
    }
}
