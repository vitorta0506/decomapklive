package kj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class a extends m {

    /* renamed from: a  reason: collision with root package name */
    private int f53973a;

    /* renamed from: b  reason: collision with root package name */
    private int f53974b;

    /* renamed from: c  reason: collision with root package name */
    private int f53975c;

    /* renamed from: d  reason: collision with root package name */
    private int f53976d;

    private a(s sVar) {
        this.f53973a = k.K(sVar.M(0)).P();
        if (sVar.M(1) instanceof k) {
            this.f53974b = ((k) sVar.M(1)).P();
        } else if (!(sVar.M(1) instanceof s)) {
            throw new IllegalArgumentException("object parse error");
        } else {
            s K = s.K(sVar.M(1));
            this.f53974b = k.K(K.M(0)).P();
            this.f53975c = k.K(K.M(1)).P();
            this.f53976d = k.K(K.M(2)).P();
        }
    }

    public static a x(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(s.K(obj));
        }
        return null;
    }

    public int B() {
        return this.f53976d;
    }

    public int F() {
        return this.f53973a;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        fVar.a(new k(this.f53973a));
        if (this.f53975c == 0) {
            fVar.a(new k(this.f53974b));
        } else {
            org.bouncycastle.asn1.f fVar2 = new org.bouncycastle.asn1.f(3);
            fVar2.a(new k(this.f53974b));
            fVar2.a(new k(this.f53975c));
            fVar2.a(new k(this.f53976d));
            fVar.a(new a1(fVar2));
        }
        return new a1(fVar);
    }

    public int y() {
        return this.f53974b;
    }

    public int z() {
        return this.f53975c;
    }
}
