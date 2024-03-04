package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
/* loaded from: classes7.dex */
public class h extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private org.bouncycastle.asn1.k f57052a;

    /* renamed from: b  reason: collision with root package name */
    private org.bouncycastle.asn1.n f57053b;

    /* renamed from: c  reason: collision with root package name */
    private org.bouncycastle.asn1.k f57054c;

    /* renamed from: d  reason: collision with root package name */
    private byte[][] f57055d;

    /* renamed from: e  reason: collision with root package name */
    private byte[][] f57056e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f57057f;

    public h(int i9, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.f57052a = new org.bouncycastle.asn1.k(0L);
        this.f57054c = new org.bouncycastle.asn1.k(i9);
        this.f57055d = wk.a.c(sArr);
        this.f57056e = wk.a.c(sArr2);
        this.f57057f = wk.a.a(sArr3);
    }

    private h(s sVar) {
        if (sVar.M(0) instanceof org.bouncycastle.asn1.k) {
            this.f57052a = org.bouncycastle.asn1.k.K(sVar.M(0));
        } else {
            this.f57053b = org.bouncycastle.asn1.n.P(sVar.M(0));
        }
        this.f57054c = org.bouncycastle.asn1.k.K(sVar.M(1));
        s K = s.K(sVar.M(2));
        this.f57055d = new byte[K.size()];
        for (int i9 = 0; i9 < K.size(); i9++) {
            this.f57055d[i9] = org.bouncycastle.asn1.o.K(K.M(i9)).M();
        }
        s sVar2 = (s) sVar.M(3);
        this.f57056e = new byte[sVar2.size()];
        for (int i10 = 0; i10 < sVar2.size(); i10++) {
            this.f57056e[i10] = org.bouncycastle.asn1.o.K(sVar2.M(i10)).M();
        }
        this.f57057f = org.bouncycastle.asn1.o.K(((s) sVar.M(4)).M(0)).M();
    }

    public static h F(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(s.K(obj));
        }
        return null;
    }

    public int B() {
        return this.f57054c.R();
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        org.bouncycastle.asn1.e eVar = this.f57052a;
        if (eVar == null) {
            eVar = this.f57053b;
        }
        fVar.a(eVar);
        fVar.a(this.f57054c);
        org.bouncycastle.asn1.f fVar2 = new org.bouncycastle.asn1.f();
        int i9 = 0;
        int i10 = 0;
        while (true) {
            byte[][] bArr = this.f57055d;
            if (i10 >= bArr.length) {
                break;
            }
            fVar2.a(new w0(bArr[i10]));
            i10++;
        }
        fVar.a(new a1(fVar2));
        org.bouncycastle.asn1.f fVar3 = new org.bouncycastle.asn1.f();
        while (true) {
            byte[][] bArr2 = this.f57056e;
            if (i9 >= bArr2.length) {
                fVar.a(new a1(fVar3));
                org.bouncycastle.asn1.f fVar4 = new org.bouncycastle.asn1.f();
                fVar4.a(new w0(this.f57057f));
                fVar.a(new a1(fVar4));
                return new a1(fVar);
            }
            fVar3.a(new w0(bArr2[i9]));
            i9++;
        }
    }

    public short[][] x() {
        return wk.a.d(this.f57055d);
    }

    public short[] y() {
        return wk.a.b(this.f57057f);
    }

    public short[][] z() {
        return wk.a.d(this.f57056e);
    }
}
