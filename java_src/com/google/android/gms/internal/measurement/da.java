package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2.dex */
final class da implements ka {

    /* renamed from: a  reason: collision with root package name */
    private final z9 f8035a;

    /* renamed from: b  reason: collision with root package name */
    private final bb f8036b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8037c;

    /* renamed from: d  reason: collision with root package name */
    private final l8 f8038d;

    private da(bb bbVar, l8 l8Var, z9 z9Var) {
        this.f8036b = bbVar;
        this.f8037c = l8Var.c(z9Var);
        this.f8038d = l8Var;
        this.f8035a = z9Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static da i(bb bbVar, l8 l8Var, z9 z9Var) {
        return new da(bbVar, l8Var, z9Var);
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final int a(Object obj) {
        bb bbVar = this.f8036b;
        int b10 = bbVar.b(bbVar.c(obj));
        if (this.f8037c) {
            this.f8038d.a(obj);
            throw null;
        }
        return b10;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final int b(Object obj) {
        int hashCode = this.f8036b.c(obj).hashCode();
        if (this.f8037c) {
            this.f8038d.a(obj);
            throw null;
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final void c(Object obj) {
        this.f8036b.g(obj);
        this.f8038d.b(obj);
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final void d(Object obj, sb sbVar) throws IOException {
        this.f8038d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final void e(Object obj, Object obj2) {
        ma.f(this.f8036b, obj, obj2);
        if (this.f8037c) {
            ma.e(this.f8038d, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final boolean f(Object obj, Object obj2) {
        if (this.f8036b.c(obj).equals(this.f8036b.c(obj2))) {
            if (this.f8037c) {
                this.f8038d.a(obj);
                this.f8038d.a(obj2);
                throw null;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final boolean g(Object obj) {
        this.f8038d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final void h(Object obj, byte[] bArr, int i9, int i10, l7 l7Var) throws IOException {
        x8 x8Var = (x8) obj;
        if (x8Var.zzc == cb.c()) {
            x8Var.zzc = cb.e();
        }
        v8 v8Var = (v8) obj;
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final Object l() {
        return this.f8035a.a().p0();
    }
}
