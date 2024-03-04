package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes7.dex */
public class t0 extends r implements x {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f55972a;

    public t0(String str) {
        this(str, false);
    }

    public t0(String str, boolean z10) {
        Objects.requireNonNull(str, "'string' cannot be null");
        if (z10 && !M(str)) {
            throw new IllegalArgumentException("'string' contains illegal characters");
        }
        this.f55972a = org.bouncycastle.util.i.e(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(byte[] bArr) {
        this.f55972a = bArr;
    }

    public static t0 K(Object obj) {
        if (obj == null || (obj instanceof t0)) {
            return (t0) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (t0) r.G((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static t0 L(y yVar, boolean z10) {
        r M = yVar.M();
        return (z10 || (M instanceof t0)) ? K(M) : new t0(o.K(M).M());
    }

    public static boolean M(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) > 127) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    @Override // org.bouncycastle.asn1.x
    public String g() {
        return org.bouncycastle.util.i.b(this.f55972a);
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(this.f55972a);
    }

    public String toString() {
        return g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof t0) {
            return org.bouncycastle.util.a.a(this.f55972a, ((t0) rVar).f55972a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 22, this.f55972a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55972a.length) + 1 + this.f55972a.length;
    }
}
