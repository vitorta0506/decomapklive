package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
/* loaded from: classes7.dex */
public class a extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private int f56993a;

    /* renamed from: b  reason: collision with root package name */
    private int f56994b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f56995c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f56996d;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f56997e;

    /* renamed from: f  reason: collision with root package name */
    private oj.a f56998f;

    public a(int i9, int i10, cl.b bVar, cl.i iVar, cl.h hVar, oj.a aVar) {
        this.f56993a = i9;
        this.f56994b = i10;
        this.f56995c = bVar.e();
        this.f56996d = iVar.h();
        this.f56997e = hVar.a();
        this.f56998f = aVar;
    }

    private a(s sVar) {
        this.f56993a = ((org.bouncycastle.asn1.k) sVar.M(0)).R();
        this.f56994b = ((org.bouncycastle.asn1.k) sVar.M(1)).R();
        this.f56995c = ((org.bouncycastle.asn1.o) sVar.M(2)).M();
        this.f56996d = ((org.bouncycastle.asn1.o) sVar.M(3)).M();
        this.f56997e = ((org.bouncycastle.asn1.o) sVar.M(4)).M();
        this.f56998f = oj.a.y(sVar.M(5));
    }

    public static a B(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(s.K(obj));
        }
        return null;
    }

    public int F() {
        return this.f56994b;
    }

    public int G() {
        return this.f56993a;
    }

    public cl.h H() {
        return new cl.h(this.f56997e);
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(new org.bouncycastle.asn1.k(this.f56993a));
        fVar.a(new org.bouncycastle.asn1.k(this.f56994b));
        fVar.a(new w0(this.f56995c));
        fVar.a(new w0(this.f56996d));
        fVar.a(new w0(this.f56997e));
        fVar.a(this.f56998f);
        return new a1(fVar);
    }

    public oj.a x() {
        return this.f56998f;
    }

    public cl.b y() {
        return new cl.b(this.f56995c);
    }

    public cl.i z() {
        return new cl.i(y(), this.f56996d);
    }
}
