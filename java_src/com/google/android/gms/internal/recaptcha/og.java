package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public class og {

    /* renamed from: c  reason: collision with root package name */
    private static final pf f8951c = pf.a();

    /* renamed from: a  reason: collision with root package name */
    protected volatile gh f8952a;

    /* renamed from: b  reason: collision with root package name */
    private volatile zzpy f8953b;

    public final int a() {
        if (this.f8953b != null) {
            return ((ve) this.f8953b).f9108a.length;
        }
        if (this.f8952a != null) {
            return this.f8952a.K();
        }
        return 0;
    }

    public final zzpy b() {
        if (this.f8953b != null) {
            return this.f8953b;
        }
        synchronized (this) {
            if (this.f8953b != null) {
                return this.f8953b;
            }
            if (this.f8952a == null) {
                this.f8953b = zzpy.zzb;
            } else {
                this.f8953b = this.f8952a.e();
            }
            return this.f8953b;
        }
    }

    protected final void c(gh ghVar) {
        if (this.f8952a != null) {
            return;
        }
        synchronized (this) {
            if (this.f8952a == null) {
                try {
                    this.f8952a = ghVar;
                    this.f8953b = zzpy.zzb;
                } catch (zzrr unused) {
                    this.f8952a = ghVar;
                    this.f8953b = zzpy.zzb;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof og) {
            og ogVar = (og) obj;
            gh ghVar = this.f8952a;
            gh ghVar2 = ogVar.f8952a;
            if (ghVar == null && ghVar2 == null) {
                return b().equals(ogVar.b());
            }
            if (ghVar == null || ghVar2 == null) {
                if (ghVar != null) {
                    ogVar.c(ghVar.h());
                    return ghVar.equals(ogVar.f8952a);
                }
                c(ghVar2.h());
                return this.f8952a.equals(ghVar2);
            }
            return ghVar.equals(ghVar2);
        }
        return false;
    }

    public int hashCode() {
        return 1;
    }
}
