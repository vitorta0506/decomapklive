package kj;

import java.math.BigInteger;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.d1;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.y;
/* loaded from: classes7.dex */
public class b extends m {

    /* renamed from: a  reason: collision with root package name */
    BigInteger f53977a;

    /* renamed from: b  reason: collision with root package name */
    a f53978b;

    /* renamed from: c  reason: collision with root package name */
    k f53979c;

    /* renamed from: d  reason: collision with root package name */
    o f53980d;

    /* renamed from: e  reason: collision with root package name */
    k f53981e;

    /* renamed from: f  reason: collision with root package name */
    o f53982f;

    private b(s sVar) {
        this.f53977a = BigInteger.valueOf(0L);
        int i9 = 0;
        if (sVar.M(0) instanceof y) {
            y yVar = (y) sVar.M(0);
            if (!yVar.O() || yVar.N() != 0) {
                throw new IllegalArgumentException("object parse error");
            }
            this.f53977a = k.K(yVar.d()).N();
            i9 = 1;
        }
        this.f53978b = a.x(sVar.M(i9));
        int i10 = i9 + 1;
        this.f53979c = k.K(sVar.M(i10));
        int i11 = i10 + 1;
        this.f53980d = o.K(sVar.M(i11));
        int i12 = i11 + 1;
        this.f53981e = k.K(sVar.M(i12));
        this.f53982f = o.K(sVar.M(i12 + 1));
    }

    public static b F(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(s.K(obj));
        }
        return null;
    }

    public byte[] B() {
        return org.bouncycastle.util.a.e(this.f53982f.M());
    }

    public BigInteger G() {
        return this.f53981e.N();
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(6);
        if (this.f53977a.compareTo(BigInteger.valueOf(0L)) != 0) {
            fVar.a(new d1(true, 0, new k(this.f53977a)));
        }
        fVar.a(this.f53978b);
        fVar.a(this.f53979c);
        fVar.a(this.f53980d);
        fVar.a(this.f53981e);
        fVar.a(this.f53982f);
        return new a1(fVar);
    }

    public BigInteger x() {
        return this.f53979c.N();
    }

    public byte[] y() {
        return org.bouncycastle.util.a.e(this.f53980d.M());
    }

    public a z() {
        return this.f53978b;
    }
}
