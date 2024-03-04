package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class cf implements sh {

    /* renamed from: a  reason: collision with root package name */
    private final bf f8568a;

    /* renamed from: b  reason: collision with root package name */
    private int f8569b;

    /* renamed from: c  reason: collision with root package name */
    private int f8570c;

    /* renamed from: d  reason: collision with root package name */
    private int f8571d = 0;

    private cf(bf bfVar) {
        mg.f(bfVar, "input");
        this.f8568a = bfVar;
        bfVar.f8537c = this;
    }

    private final Object O(zzuh zzuhVar, Class<?> cls, pf pfVar) throws IOException {
        zzuh zzuhVar2 = zzuh.zza;
        switch (zzuhVar.ordinal()) {
            case 0:
                return Double.valueOf(zza());
            case 1:
                return Float.valueOf(D());
            case 2:
                return Long.valueOf(g());
            case 3:
                return Long.valueOf(J());
            case 4:
                return Integer.valueOf(f());
            case 5:
                return Long.valueOf(e());
            case 6:
                return Integer.valueOf(b());
            case 7:
                return Boolean.valueOf(h());
            case 8:
                return L();
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                S(2);
                return Q(ph.a().b(cls), pfVar);
            case 11:
                return H();
            case 12:
                return Integer.valueOf(G());
            case 13:
                return Integer.valueOf(l());
            case 14:
                return Integer.valueOf(a());
            case 15:
                return Long.valueOf(F());
            case 16:
                return Integer.valueOf(d());
            case 17:
                return Long.valueOf(I());
        }
    }

    private final <T> T P(uh<T> uhVar, pf pfVar) throws IOException {
        int i9 = this.f8570c;
        this.f8570c = ((this.f8569b >>> 3) << 3) | 4;
        try {
            T E = uhVar.E();
            uhVar.d(E, this, pfVar);
            uhVar.c(E);
            if (this.f8569b == this.f8570c) {
                return E;
            }
            throw zzrr.zzg();
        } finally {
            this.f8570c = i9;
        }
    }

    private final <T> T Q(uh<T> uhVar, pf pfVar) throws IOException {
        bf bfVar;
        int r10 = this.f8568a.r();
        bf bfVar2 = this.f8568a;
        if (bfVar2.f8535a < bfVar2.f8536b) {
            int k10 = bfVar2.k(r10);
            T E = uhVar.E();
            this.f8568a.f8535a++;
            uhVar.d(E, this, pfVar);
            uhVar.c(E);
            this.f8568a.A(0);
            bfVar.f8535a--;
            this.f8568a.a(k10);
            return E;
        }
        throw new zzrr("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    private final void R(int i9) throws IOException {
        if (this.f8568a.j() != i9) {
            throw zzrr.zzj();
        }
    }

    private final void S(int i9) throws IOException {
        if ((this.f8569b & 7) != i9) {
            throw zzrr.zza();
        }
    }

    private static final void T(int i9) throws IOException {
        if ((i9 & 3) != 0) {
            throw zzrr.zzg();
        }
    }

    private static final void U(int i9) throws IOException {
        if ((i9 & 7) != 0) {
            throw zzrr.zzg();
        }
    }

    public static cf V(bf bfVar) {
        cf cfVar = bfVar.f8537c;
        return cfVar != null ? cfVar : new cf(bfVar);
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void A(List<Long> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof vg) {
            vg vgVar = (vg) list;
            int i9 = this.f8569b & 7;
            if (i9 == 1) {
                do {
                    vgVar.f(this.f8568a.u());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int r10 = this.f8568a.r();
                U(r10);
                int j10 = this.f8568a.j() + r10;
                do {
                    vgVar.f(this.f8568a.u());
                } while (this.f8568a.j() < j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 1) {
            do {
                list.add(Long.valueOf(this.f8568a.u()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int r11 = this.f8568a.r();
            U(r11);
            int j11 = this.f8568a.j() + r11;
            do {
                list.add(Long.valueOf(this.f8568a.u()));
            } while (this.f8568a.j() < j11);
        } else {
            throw zzrr.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final <T> T B(uh<T> uhVar, pf pfVar) throws IOException {
        S(2);
        return (T) Q(uhVar, pfVar);
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final boolean C() throws IOException {
        int i9;
        if (this.f8568a.b() || (i9 = this.f8569b) == this.f8570c) {
            return false;
        }
        return this.f8568a.d(i9);
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final float D() throws IOException {
        S(5);
        return this.f8568a.i();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final int E() throws IOException {
        int i9 = this.f8571d;
        if (i9 != 0) {
            this.f8569b = i9;
            this.f8571d = 0;
        } else {
            i9 = this.f8568a.q();
            this.f8569b = i9;
        }
        if (i9 == 0 || i9 == this.f8570c) {
            return Integer.MAX_VALUE;
        }
        return i9 >>> 3;
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final long F() throws IOException {
        S(1);
        return this.f8568a.u();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final int G() throws IOException {
        S(0);
        return this.f8568a.r();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final zzpy H() throws IOException {
        S(2);
        return this.f8568a.x();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final long I() throws IOException {
        S(0);
        return this.f8568a.v();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final long J() throws IOException {
        S(0);
        return this.f8568a.w();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final String K() throws IOException {
        S(2);
        return this.f8568a.y();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final String L() throws IOException {
        S(2);
        return this.f8568a.z();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void M(List<Long> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof vg) {
            vg vgVar = (vg) list;
            int i9 = this.f8569b & 7;
            if (i9 == 0) {
                do {
                    vgVar.f(this.f8568a.v());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int j10 = this.f8568a.j() + this.f8568a.r();
                do {
                    vgVar.f(this.f8568a.v());
                } while (this.f8568a.j() < j10);
                R(j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 0) {
            do {
                list.add(Long.valueOf(this.f8568a.v()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int j11 = this.f8568a.j() + this.f8568a.r();
            do {
                list.add(Long.valueOf(this.f8568a.v()));
            } while (this.f8568a.j() < j11);
            R(j11);
        } else {
            throw zzrr.zza();
        }
    }

    public final void N(List<String> list, boolean z10) throws IOException {
        int q10;
        int q11;
        if ((this.f8569b & 7) == 2) {
            if (!(list instanceof qg) || z10) {
                do {
                    list.add(z10 ? L() : K());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q10 = this.f8568a.q();
                } while (q10 == this.f8569b);
                this.f8571d = q10;
                return;
            }
            qg qgVar = (qg) list;
            do {
                qgVar.h0(H());
                if (this.f8568a.b()) {
                    return;
                }
                q11 = this.f8568a.q();
            } while (q11 == this.f8569b);
            this.f8571d = q11;
            return;
        }
        throw zzrr.zza();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final int a() throws IOException {
        S(5);
        return this.f8568a.o();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final int b() throws IOException {
        S(5);
        return this.f8568a.m();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final int c() {
        return this.f8569b;
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final int d() throws IOException {
        S(0);
        return this.f8568a.p();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final long e() throws IOException {
        S(1);
        return this.f8568a.s();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final int f() throws IOException {
        S(0);
        return this.f8568a.n();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final long g() throws IOException {
        S(0);
        return this.f8568a.t();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final boolean h() throws IOException {
        S(0);
        return this.f8568a.c();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void i(List<Integer> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof eg) {
            eg egVar = (eg) list;
            int i9 = this.f8569b & 7;
            if (i9 == 0) {
                do {
                    egVar.e(this.f8568a.l());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int j10 = this.f8568a.j() + this.f8568a.r();
                do {
                    egVar.e(this.f8568a.l());
                } while (this.f8568a.j() < j10);
                R(j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 0) {
            do {
                list.add(Integer.valueOf(this.f8568a.l()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int j11 = this.f8568a.j() + this.f8568a.r();
            do {
                list.add(Integer.valueOf(this.f8568a.l()));
            } while (this.f8568a.j() < j11);
            R(j11);
        } else {
            throw zzrr.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void j(List<Long> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof vg) {
            vg vgVar = (vg) list;
            int i9 = this.f8569b & 7;
            if (i9 == 0) {
                do {
                    vgVar.f(this.f8568a.t());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int j10 = this.f8568a.j() + this.f8568a.r();
                do {
                    vgVar.f(this.f8568a.t());
                } while (this.f8568a.j() < j10);
                R(j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 0) {
            do {
                list.add(Long.valueOf(this.f8568a.t()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int j11 = this.f8568a.j() + this.f8568a.r();
            do {
                list.add(Long.valueOf(this.f8568a.t()));
            } while (this.f8568a.j() < j11);
            R(j11);
        } else {
            throw zzrr.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void k(List<Double> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof jf) {
            jf jfVar = (jf) list;
            int i9 = this.f8569b & 7;
            if (i9 == 1) {
                do {
                    jfVar.d(this.f8568a.h());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int r10 = this.f8568a.r();
                U(r10);
                int j10 = this.f8568a.j() + r10;
                do {
                    jfVar.d(this.f8568a.h());
                } while (this.f8568a.j() < j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 1) {
            do {
                list.add(Double.valueOf(this.f8568a.h()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int r11 = this.f8568a.r();
            U(r11);
            int j11 = this.f8568a.j() + r11;
            do {
                list.add(Double.valueOf(this.f8568a.h()));
            } while (this.f8568a.j() < j11);
        } else {
            throw zzrr.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final int l() throws IOException {
        S(0);
        return this.f8568a.l();
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void m(List<zzpy> list) throws IOException {
        int q10;
        if ((this.f8569b & 7) != 2) {
            throw zzrr.zza();
        }
        do {
            list.add(H());
            if (this.f8568a.b()) {
                return;
            }
            q10 = this.f8568a.q();
        } while (q10 == this.f8569b);
        this.f8571d = q10;
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void n(List<Integer> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof eg) {
            eg egVar = (eg) list;
            int i9 = this.f8569b & 7;
            if (i9 == 0) {
                do {
                    egVar.e(this.f8568a.n());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int j10 = this.f8568a.j() + this.f8568a.r();
                do {
                    egVar.e(this.f8568a.n());
                } while (this.f8568a.j() < j10);
                R(j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 0) {
            do {
                list.add(Integer.valueOf(this.f8568a.n()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int j11 = this.f8568a.j() + this.f8568a.r();
            do {
                list.add(Integer.valueOf(this.f8568a.n()));
            } while (this.f8568a.j() < j11);
            R(j11);
        } else {
            throw zzrr.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void o(List<Integer> list) throws IOException {
        int q10;
        int q11;
        if (!(list instanceof eg)) {
            int i9 = this.f8569b & 7;
            if (i9 == 2) {
                int r10 = this.f8568a.r();
                T(r10);
                int j10 = this.f8568a.j() + r10;
                do {
                    list.add(Integer.valueOf(this.f8568a.o()));
                } while (this.f8568a.j() < j10);
                return;
            } else if (i9 != 5) {
                throw zzrr.zza();
            } else {
                do {
                    list.add(Integer.valueOf(this.f8568a.o()));
                    if (this.f8568a.b()) {
                        return;
                    }
                    q10 = this.f8568a.q();
                } while (q10 == this.f8569b);
                this.f8571d = q10;
                return;
            }
        }
        eg egVar = (eg) list;
        int i10 = this.f8569b & 7;
        if (i10 == 2) {
            int r11 = this.f8568a.r();
            T(r11);
            int j11 = this.f8568a.j() + r11;
            do {
                egVar.e(this.f8568a.o());
            } while (this.f8568a.j() < j11);
        } else if (i10 != 5) {
            throw zzrr.zza();
        } else {
            do {
                egVar.e(this.f8568a.o());
                if (this.f8568a.b()) {
                    return;
                }
                q11 = this.f8568a.q();
            } while (q11 == this.f8569b);
            this.f8571d = q11;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void p(List<Integer> list) throws IOException {
        int q10;
        int q11;
        if (!(list instanceof eg)) {
            int i9 = this.f8569b & 7;
            if (i9 == 2) {
                int r10 = this.f8568a.r();
                T(r10);
                int j10 = this.f8568a.j() + r10;
                do {
                    list.add(Integer.valueOf(this.f8568a.m()));
                } while (this.f8568a.j() < j10);
                return;
            } else if (i9 != 5) {
                throw zzrr.zza();
            } else {
                do {
                    list.add(Integer.valueOf(this.f8568a.m()));
                    if (this.f8568a.b()) {
                        return;
                    }
                    q10 = this.f8568a.q();
                } while (q10 == this.f8569b);
                this.f8571d = q10;
                return;
            }
        }
        eg egVar = (eg) list;
        int i10 = this.f8569b & 7;
        if (i10 == 2) {
            int r11 = this.f8568a.r();
            T(r11);
            int j11 = this.f8568a.j() + r11;
            do {
                egVar.e(this.f8568a.m());
            } while (this.f8568a.j() < j11);
        } else if (i10 != 5) {
            throw zzrr.zza();
        } else {
            do {
                egVar.e(this.f8568a.m());
                if (this.f8568a.b()) {
                    return;
                }
                q11 = this.f8568a.q();
            } while (q11 == this.f8569b);
            this.f8571d = q11;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.recaptcha.sh
    public final <T> void q(List<T> list, uh<T> uhVar, pf pfVar) throws IOException {
        int q10;
        int i9 = this.f8569b;
        if ((i9 & 7) != 2) {
            throw zzrr.zza();
        }
        do {
            list.add(Q(uhVar, pfVar));
            if (this.f8568a.b() || this.f8571d != 0) {
                return;
            }
            q10 = this.f8568a.q();
        } while (q10 == i9);
        this.f8571d = q10;
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void r(List<Long> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof vg) {
            vg vgVar = (vg) list;
            int i9 = this.f8569b & 7;
            if (i9 == 1) {
                do {
                    vgVar.f(this.f8568a.s());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int r10 = this.f8568a.r();
                U(r10);
                int j10 = this.f8568a.j() + r10;
                do {
                    vgVar.f(this.f8568a.s());
                } while (this.f8568a.j() < j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 1) {
            do {
                list.add(Long.valueOf(this.f8568a.s()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int r11 = this.f8568a.r();
            U(r11);
            int j11 = this.f8568a.j() + r11;
            do {
                list.add(Long.valueOf(this.f8568a.s()));
            } while (this.f8568a.j() < j11);
        } else {
            throw zzrr.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void s(List<Boolean> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof le) {
            le leVar = (le) list;
            int i9 = this.f8569b & 7;
            if (i9 == 0) {
                do {
                    leVar.d(this.f8568a.c());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int j10 = this.f8568a.j() + this.f8568a.r();
                do {
                    leVar.d(this.f8568a.c());
                } while (this.f8568a.j() < j10);
                R(j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 0) {
            do {
                list.add(Boolean.valueOf(this.f8568a.c()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int j11 = this.f8568a.j() + this.f8568a.r();
            do {
                list.add(Boolean.valueOf(this.f8568a.c()));
            } while (this.f8568a.j() < j11);
            R(j11);
        } else {
            throw zzrr.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void t(List<Float> list) throws IOException {
        int q10;
        int q11;
        if (!(list instanceof vf)) {
            int i9 = this.f8569b & 7;
            if (i9 == 2) {
                int r10 = this.f8568a.r();
                T(r10);
                int j10 = this.f8568a.j() + r10;
                do {
                    list.add(Float.valueOf(this.f8568a.i()));
                } while (this.f8568a.j() < j10);
                return;
            } else if (i9 != 5) {
                throw zzrr.zza();
            } else {
                do {
                    list.add(Float.valueOf(this.f8568a.i()));
                    if (this.f8568a.b()) {
                        return;
                    }
                    q10 = this.f8568a.q();
                } while (q10 == this.f8569b);
                this.f8571d = q10;
                return;
            }
        }
        vf vfVar = (vf) list;
        int i10 = this.f8569b & 7;
        if (i10 == 2) {
            int r11 = this.f8568a.r();
            T(r11);
            int j11 = this.f8568a.j() + r11;
            do {
                vfVar.d(this.f8568a.i());
            } while (this.f8568a.j() < j11);
        } else if (i10 != 5) {
            throw zzrr.zza();
        } else {
            do {
                vfVar.d(this.f8568a.i());
                if (this.f8568a.b()) {
                    return;
                }
                q11 = this.f8568a.q();
            } while (q11 == this.f8569b);
            this.f8571d = q11;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.recaptcha.sh
    public final <T> void u(List<T> list, uh<T> uhVar, pf pfVar) throws IOException {
        int q10;
        int i9 = this.f8569b;
        if ((i9 & 7) != 3) {
            throw zzrr.zza();
        }
        do {
            list.add(P(uhVar, pfVar));
            if (this.f8568a.b() || this.f8571d != 0) {
                return;
            }
            q10 = this.f8568a.q();
        } while (q10 == i9);
        this.f8571d = q10;
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void v(List<Long> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof vg) {
            vg vgVar = (vg) list;
            int i9 = this.f8569b & 7;
            if (i9 == 0) {
                do {
                    vgVar.f(this.f8568a.w());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int j10 = this.f8568a.j() + this.f8568a.r();
                do {
                    vgVar.f(this.f8568a.w());
                } while (this.f8568a.j() < j10);
                R(j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 0) {
            do {
                list.add(Long.valueOf(this.f8568a.w()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int j11 = this.f8568a.j() + this.f8568a.r();
            do {
                list.add(Long.valueOf(this.f8568a.w()));
            } while (this.f8568a.j() < j11);
            R(j11);
        } else {
            throw zzrr.zza();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.recaptcha.sh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <K, V> void w(java.util.Map<K, V> r8, com.google.android.gms.internal.recaptcha.zg<K, V> r9, com.google.android.gms.internal.recaptcha.pf r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.S(r0)
            com.google.android.gms.internal.recaptcha.bf r1 = r7.f8568a
            int r1 = r1.r()
            com.google.android.gms.internal.recaptcha.bf r2 = r7.f8568a
            int r1 = r2.k(r1)
            K r2 = r9.f9243b
            V r3 = r9.f9245d
        L14:
            int r4 = r7.E()     // Catch: java.lang.Throwable -> L65
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5c
            com.google.android.gms.internal.recaptcha.bf r5 = r7.f8568a     // Catch: java.lang.Throwable -> L65
            boolean r5 = r5.b()     // Catch: java.lang.Throwable -> L65
            if (r5 == 0) goto L26
            goto L5c
        L26:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L47
            if (r4 == r0) goto L3a
            boolean r4 = r7.C()     // Catch: com.google.android.gms.internal.recaptcha.zzrq -> L4f java.lang.Throwable -> L65
            if (r4 == 0) goto L34
            goto L14
        L34:
            com.google.android.gms.internal.recaptcha.zzrr r4 = new com.google.android.gms.internal.recaptcha.zzrr     // Catch: com.google.android.gms.internal.recaptcha.zzrq -> L4f java.lang.Throwable -> L65
            r4.<init>(r6)     // Catch: com.google.android.gms.internal.recaptcha.zzrq -> L4f java.lang.Throwable -> L65
            throw r4     // Catch: com.google.android.gms.internal.recaptcha.zzrq -> L4f java.lang.Throwable -> L65
        L3a:
            com.google.android.gms.internal.recaptcha.zzuh r4 = r9.f9244c     // Catch: com.google.android.gms.internal.recaptcha.zzrq -> L4f java.lang.Throwable -> L65
            V r5 = r9.f9245d     // Catch: com.google.android.gms.internal.recaptcha.zzrq -> L4f java.lang.Throwable -> L65
            java.lang.Class r5 = r5.getClass()     // Catch: com.google.android.gms.internal.recaptcha.zzrq -> L4f java.lang.Throwable -> L65
            java.lang.Object r3 = r7.O(r4, r5, r10)     // Catch: com.google.android.gms.internal.recaptcha.zzrq -> L4f java.lang.Throwable -> L65
            goto L14
        L47:
            com.google.android.gms.internal.recaptcha.zzuh r4 = r9.f9242a     // Catch: com.google.android.gms.internal.recaptcha.zzrq -> L4f java.lang.Throwable -> L65
            r5 = 0
            java.lang.Object r2 = r7.O(r4, r5, r5)     // Catch: com.google.android.gms.internal.recaptcha.zzrq -> L4f java.lang.Throwable -> L65
            goto L14
        L4f:
            boolean r4 = r7.C()     // Catch: java.lang.Throwable -> L65
            if (r4 == 0) goto L56
            goto L14
        L56:
            com.google.android.gms.internal.recaptcha.zzrr r8 = new com.google.android.gms.internal.recaptcha.zzrr     // Catch: java.lang.Throwable -> L65
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L65
            throw r8     // Catch: java.lang.Throwable -> L65
        L5c:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L65
            com.google.android.gms.internal.recaptcha.bf r8 = r7.f8568a
            r8.a(r1)
            return
        L65:
            r8 = move-exception
            com.google.android.gms.internal.recaptcha.bf r9 = r7.f8568a
            r9.a(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.cf.w(java.util.Map, com.google.android.gms.internal.recaptcha.zg, com.google.android.gms.internal.recaptcha.pf):void");
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void x(List<Integer> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof eg) {
            eg egVar = (eg) list;
            int i9 = this.f8569b & 7;
            if (i9 == 0) {
                do {
                    egVar.e(this.f8568a.r());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int j10 = this.f8568a.j() + this.f8568a.r();
                do {
                    egVar.e(this.f8568a.r());
                } while (this.f8568a.j() < j10);
                R(j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 0) {
            do {
                list.add(Integer.valueOf(this.f8568a.r()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int j11 = this.f8568a.j() + this.f8568a.r();
            do {
                list.add(Integer.valueOf(this.f8568a.r()));
            } while (this.f8568a.j() < j11);
            R(j11);
        } else {
            throw zzrr.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final void y(List<Integer> list) throws IOException {
        int q10;
        int q11;
        if (list instanceof eg) {
            eg egVar = (eg) list;
            int i9 = this.f8569b & 7;
            if (i9 == 0) {
                do {
                    egVar.e(this.f8568a.p());
                    if (this.f8568a.b()) {
                        return;
                    }
                    q11 = this.f8568a.q();
                } while (q11 == this.f8569b);
                this.f8571d = q11;
                return;
            } else if (i9 == 2) {
                int j10 = this.f8568a.j() + this.f8568a.r();
                do {
                    egVar.e(this.f8568a.p());
                } while (this.f8568a.j() < j10);
                R(j10);
                return;
            } else {
                throw zzrr.zza();
            }
        }
        int i10 = this.f8569b & 7;
        if (i10 == 0) {
            do {
                list.add(Integer.valueOf(this.f8568a.p()));
                if (this.f8568a.b()) {
                    return;
                }
                q10 = this.f8568a.q();
            } while (q10 == this.f8569b);
            this.f8571d = q10;
        } else if (i10 == 2) {
            int j11 = this.f8568a.j() + this.f8568a.r();
            do {
                list.add(Integer.valueOf(this.f8568a.p()));
            } while (this.f8568a.j() < j11);
            R(j11);
        } else {
            throw zzrr.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final <T> T z(uh<T> uhVar, pf pfVar) throws IOException {
        S(3);
        return (T) P(uhVar, pfVar);
    }

    @Override // com.google.android.gms.internal.recaptcha.sh
    public final double zza() throws IOException {
        S(1);
        return this.f8568a.h();
    }
}
