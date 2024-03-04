package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
/* loaded from: classes7.dex */
public class d extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final int f57010a;

    /* renamed from: b  reason: collision with root package name */
    private final int f57011b;

    /* renamed from: c  reason: collision with root package name */
    private final cl.a f57012c;

    public d(int i9, int i10, cl.a aVar) {
        this.f57010a = i9;
        this.f57011b = i10;
        this.f57012c = new cl.a(aVar);
    }

    private d(s sVar) {
        this.f57010a = ((org.bouncycastle.asn1.k) sVar.M(0)).R();
        this.f57011b = ((org.bouncycastle.asn1.k) sVar.M(1)).R();
        this.f57012c = new cl.a(((org.bouncycastle.asn1.o) sVar.M(2)).M());
    }

    public static d y(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(s.K(obj));
        }
        return null;
    }

    public int B() {
        return this.f57011b;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(new org.bouncycastle.asn1.k(this.f57010a));
        fVar.a(new org.bouncycastle.asn1.k(this.f57011b));
        fVar.a(new w0(this.f57012c.c()));
        return new a1(fVar);
    }

    public cl.a x() {
        return new cl.a(this.f57012c);
    }

    public int z() {
        return this.f57010a;
    }
}
