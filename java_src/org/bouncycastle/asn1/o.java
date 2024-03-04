package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* loaded from: classes7.dex */
public abstract class o extends r implements p {

    /* renamed from: a  reason: collision with root package name */
    byte[] f55958a;

    public o(byte[] bArr) {
        Objects.requireNonNull(bArr, "'string' cannot be null");
        this.f55958a = bArr;
    }

    public static o K(Object obj) {
        if (obj == null || (obj instanceof o)) {
            return (o) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return K(r.G((byte[]) obj));
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct OCTET STRING from byte[]: " + e10.getMessage());
            }
        }
        if (obj instanceof e) {
            r f10 = ((e) obj).f();
            if (f10 instanceof o) {
                return (o) f10;
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static o L(y yVar, boolean z10) {
        if (z10) {
            if (yVar.O()) {
                return K(yVar.M());
            }
            throw new IllegalArgumentException("object implicit - explicit expected.");
        }
        r M = yVar.M();
        if (yVar.O()) {
            o K = K(M);
            return yVar instanceof j0 ? new d0(new o[]{K}) : (o) new d0(new o[]{K}).J();
        } else if (M instanceof o) {
            o oVar = (o) M;
            return yVar instanceof j0 ? oVar : (o) oVar.J();
        } else if (M instanceof s) {
            s sVar = (s) M;
            return yVar instanceof j0 ? d0.P(sVar) : (o) d0.P(sVar).J();
        } else {
            throw new IllegalArgumentException("unknown object in getInstance: " + yVar.getClass().getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r I() {
        return new w0(this.f55958a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r J() {
        return new w0(this.f55958a);
    }

    public byte[] M() {
        return this.f55958a;
    }

    @Override // org.bouncycastle.asn1.p
    public InputStream c() {
        return new ByteArrayInputStream(this.f55958a);
    }

    @Override // org.bouncycastle.asn1.u1
    public r d() {
        return f();
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(M());
    }

    public String toString() {
        return "#" + org.bouncycastle.util.i.b(org.bouncycastle.util.encoders.d.d(this.f55958a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof o) {
            return org.bouncycastle.util.a.a(this.f55958a, ((o) rVar).f55958a);
        }
        return false;
    }
}
