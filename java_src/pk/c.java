package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
/* loaded from: classes7.dex */
public class c extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private int f57003a;

    /* renamed from: b  reason: collision with root package name */
    private int f57004b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f57005c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f57006d;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f57007e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f57008f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f57009g;

    public c(int i9, int i10, cl.b bVar, cl.i iVar, cl.h hVar, cl.h hVar2, cl.a aVar) {
        this.f57003a = i9;
        this.f57004b = i10;
        this.f57005c = bVar.e();
        this.f57006d = iVar.h();
        this.f57007e = aVar.c();
        this.f57008f = hVar.a();
        this.f57009g = hVar2.a();
    }

    private c(s sVar) {
        this.f57003a = ((org.bouncycastle.asn1.k) sVar.M(0)).R();
        this.f57004b = ((org.bouncycastle.asn1.k) sVar.M(1)).R();
        this.f57005c = ((org.bouncycastle.asn1.o) sVar.M(2)).M();
        this.f57006d = ((org.bouncycastle.asn1.o) sVar.M(3)).M();
        this.f57008f = ((org.bouncycastle.asn1.o) sVar.M(4)).M();
        this.f57009g = ((org.bouncycastle.asn1.o) sVar.M(5)).M();
        this.f57007e = ((org.bouncycastle.asn1.o) sVar.M(6)).M();
    }

    public static c z(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(s.K(obj));
        }
        return null;
    }

    public int B() {
        return this.f57004b;
    }

    public int F() {
        return this.f57003a;
    }

    public cl.h G() {
        return new cl.h(this.f57008f);
    }

    public cl.h H() {
        return new cl.h(this.f57009g);
    }

    public cl.a I() {
        return new cl.a(this.f57007e);
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(new org.bouncycastle.asn1.k(this.f57003a));
        fVar.a(new org.bouncycastle.asn1.k(this.f57004b));
        fVar.a(new w0(this.f57005c));
        fVar.a(new w0(this.f57006d));
        fVar.a(new w0(this.f57008f));
        fVar.a(new w0(this.f57009g));
        fVar.a(new w0(this.f57007e));
        return new a1(fVar);
    }

    public cl.b x() {
        return new cl.b(this.f57005c);
    }

    public cl.i y() {
        return new cl.i(x(), this.f57006d);
    }
}
