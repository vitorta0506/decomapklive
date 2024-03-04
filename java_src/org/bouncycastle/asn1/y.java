package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes7.dex */
public abstract class y extends r implements u1 {

    /* renamed from: a  reason: collision with root package name */
    final int f55994a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f55995b;

    /* renamed from: c  reason: collision with root package name */
    final e f55996c;

    public y(boolean z10, int i9, e eVar) {
        Objects.requireNonNull(eVar, "'obj' cannot be null");
        this.f55994a = i9;
        this.f55995b = z10 || (eVar instanceof d);
        this.f55996c = eVar;
    }

    public static y K(Object obj) {
        if (obj == null || (obj instanceof y)) {
            return (y) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        try {
            return K(r.G((byte[]) obj));
        } catch (IOException e10) {
            throw new IllegalArgumentException("failed to construct tagged object from byte[]: " + e10.getMessage());
        }
    }

    public static y L(y yVar, boolean z10) {
        if (z10) {
            return K(yVar.M());
        }
        throw new IllegalArgumentException("implicitly tagged tagged object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r I() {
        return new d1(this.f55995b, this.f55994a, this.f55996c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r J() {
        return new r1(this.f55995b, this.f55994a, this.f55996c);
    }

    public r M() {
        return this.f55996c.f();
    }

    public int N() {
        return this.f55994a;
    }

    public boolean O() {
        return this.f55995b;
    }

    @Override // org.bouncycastle.asn1.u1
    public r d() {
        return f();
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return (this.f55994a ^ (this.f55995b ? 15 : 240)) ^ this.f55996c.f().hashCode();
    }

    public String toString() {
        return "[" + this.f55994a + "]" + this.f55996c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof y) {
            y yVar = (y) rVar;
            if (this.f55994a == yVar.f55994a && this.f55995b == yVar.f55995b) {
                r f10 = this.f55996c.f();
                r f11 = yVar.f55996c.f();
                return f10 == f11 || f10.x(f11);
            }
            return false;
        }
        return false;
    }
}
