package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.lc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class v9 extends u9 {

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.gms.internal.measurement.k3 f9926g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ b f9927h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v9(b bVar, String str, int i9, com.google.android.gms.internal.measurement.k3 k3Var) {
        super(str, i9);
        this.f9927h = bVar;
        this.f9926g = k3Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.u9
    public final int a() {
        return this.f9926g.w();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.u9
    public final boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.u9
    public final boolean c() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean k(Long l10, Long l11, com.google.android.gms.internal.measurement.f5 f5Var, boolean z10) {
        lc.b();
        boolean B = this.f9927h.f9432a.z().B(this.f9901a, z2.W);
        boolean C = this.f9926g.C();
        boolean D = this.f9926g.D();
        boolean E = this.f9926g.E();
        boolean z11 = C || D || E;
        Boolean bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        if (z10 && !z11) {
            this.f9927h.f9432a.b().v().c("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.f9902b), this.f9926g.F() ? Integer.valueOf(this.f9926g.w()) : null);
            return true;
        }
        com.google.android.gms.internal.measurement.d3 x10 = this.f9926g.x();
        boolean C2 = x10.C();
        if (f5Var.M()) {
            if (!x10.E()) {
                this.f9927h.f9432a.b().w().b("No number filter for long property. property", this.f9927h.f9432a.D().f(f5Var.B()));
            } else {
                bool = u9.j(u9.h(f5Var.x(), x10.y()), C2);
            }
        } else if (f5Var.L()) {
            if (!x10.E()) {
                this.f9927h.f9432a.b().w().b("No number filter for double property. property", this.f9927h.f9432a.D().f(f5Var.B()));
            } else {
                bool = u9.j(u9.g(f5Var.w(), x10.y()), C2);
            }
        } else if (f5Var.O()) {
            if (!x10.G()) {
                if (!x10.E()) {
                    this.f9927h.f9432a.b().w().b("No string or number filter defined. property", this.f9927h.f9432a.D().f(f5Var.B()));
                } else if (g9.N(f5Var.C())) {
                    bool = u9.j(u9.i(f5Var.C(), x10.y()), C2);
                } else {
                    this.f9927h.f9432a.b().w().c("Invalid user property value for Numeric number filter. property, value", this.f9927h.f9432a.D().f(f5Var.B()), f5Var.C());
                }
            } else {
                bool = u9.j(u9.f(f5Var.C(), x10.z(), this.f9927h.f9432a.b()), C2);
            }
        } else {
            this.f9927h.f9432a.b().w().b("User property has no value, property", this.f9927h.f9432a.D().f(f5Var.B()));
        }
        this.f9927h.f9432a.b().v().b("Property filter result", bool == null ? "null" : bool);
        if (bool == null) {
            return false;
        }
        this.f9903c = Boolean.TRUE;
        if (!E || bool.booleanValue()) {
            if (!z10 || this.f9926g.C()) {
                this.f9904d = bool;
            }
            if (bool.booleanValue() && z11 && f5Var.N()) {
                long y10 = f5Var.y();
                if (l10 != null) {
                    y10 = l10.longValue();
                }
                if (B && this.f9926g.C() && !this.f9926g.D() && l11 != null) {
                    y10 = l11.longValue();
                }
                if (this.f9926g.D()) {
                    this.f9906f = Long.valueOf(y10);
                } else {
                    this.f9905e = Long.valueOf(y10);
                }
            }
            return true;
        }
        return true;
    }
}
