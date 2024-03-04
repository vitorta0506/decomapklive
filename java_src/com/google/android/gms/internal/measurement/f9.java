package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public class f9 {

    /* renamed from: c  reason: collision with root package name */
    private static final k8 f8077c = k8.f8168c;

    /* renamed from: a  reason: collision with root package name */
    protected volatile z9 f8078a;

    /* renamed from: b  reason: collision with root package name */
    private volatile zzjd f8079b;

    public final int a() {
        if (this.f8079b != null) {
            return ((w7) this.f8079b).f8414a.length;
        }
        if (this.f8078a != null) {
            return this.f8078a.g();
        }
        return 0;
    }

    public final zzjd b() {
        if (this.f8079b != null) {
            return this.f8079b;
        }
        synchronized (this) {
            if (this.f8079b != null) {
                return this.f8079b;
            }
            if (this.f8078a == null) {
                this.f8079b = zzjd.zzb;
            } else {
                this.f8079b = this.f8078a.e();
            }
            return this.f8079b;
        }
    }

    protected final void c(z9 z9Var) {
        if (this.f8078a != null) {
            return;
        }
        synchronized (this) {
            if (this.f8078a == null) {
                try {
                    this.f8078a = z9Var;
                    this.f8079b = zzjd.zzb;
                } catch (zzko unused) {
                    this.f8078a = z9Var;
                    this.f8079b = zzjd.zzb;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f9) {
            f9 f9Var = (f9) obj;
            z9 z9Var = this.f8078a;
            z9 z9Var2 = f9Var.f8078a;
            if (z9Var == null && z9Var2 == null) {
                return b().equals(f9Var.b());
            }
            if (z9Var == null || z9Var2 == null) {
                if (z9Var != null) {
                    f9Var.c(z9Var.f());
                    return z9Var.equals(f9Var.f8078a);
                }
                c(z9Var2.f());
                return this.f8078a.equals(z9Var2);
            }
            return z9Var.equals(z9Var2);
        }
        return false;
    }

    public int hashCode() {
        return 1;
    }
}
