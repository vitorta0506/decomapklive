package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class h implements q {

    /* renamed from: a  reason: collision with root package name */
    private final q f8106a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8107b;

    public h() {
        throw null;
    }

    public h(String str) {
        this.f8106a = q.U;
        this.f8107b = str;
    }

    public h(String str, q qVar) {
        this.f8106a = qVar;
        this.f8107b = str;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Double a() {
        throw new IllegalStateException("Control is not a double");
    }

    public final q b() {
        return this.f8106a;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q c() {
        return new h(this.f8107b, this.f8106a.c());
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final String d() {
        throw new IllegalStateException("Control is not a String");
    }

    public final String e() {
        return this.f8107b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            return this.f8107b.equals(hVar.f8107b) && this.f8106a.equals(hVar.f8106a);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Boolean f() {
        throw new IllegalStateException("Control is not a boolean");
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Iterator g() {
        return null;
    }

    public final int hashCode() {
        return (this.f8107b.hashCode() * 31) + this.f8106a.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q u(String str, t4 t4Var, List list) {
        throw new IllegalStateException("Control does not have functions");
    }
}
