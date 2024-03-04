package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
/* loaded from: classes7.dex */
public class g extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private org.bouncycastle.asn1.k f57044a;

    /* renamed from: b  reason: collision with root package name */
    private org.bouncycastle.asn1.n f57045b;

    /* renamed from: c  reason: collision with root package name */
    private byte[][] f57046c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f57047d;

    /* renamed from: e  reason: collision with root package name */
    private byte[][] f57048e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f57049f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f57050g;

    /* renamed from: h  reason: collision with root package name */
    private vk.a[] f57051h;

    private g(s sVar) {
        int i9 = 0;
        if (sVar.M(0) instanceof org.bouncycastle.asn1.k) {
            this.f57044a = org.bouncycastle.asn1.k.K(sVar.M(0));
        } else {
            this.f57045b = org.bouncycastle.asn1.n.P(sVar.M(0));
        }
        s sVar2 = (s) sVar.M(1);
        this.f57046c = new byte[sVar2.size()];
        for (int i10 = 0; i10 < sVar2.size(); i10++) {
            this.f57046c[i10] = ((org.bouncycastle.asn1.o) sVar2.M(i10)).M();
        }
        this.f57047d = ((org.bouncycastle.asn1.o) ((s) sVar.M(2)).M(0)).M();
        s sVar3 = (s) sVar.M(3);
        this.f57048e = new byte[sVar3.size()];
        for (int i11 = 0; i11 < sVar3.size(); i11++) {
            this.f57048e[i11] = ((org.bouncycastle.asn1.o) sVar3.M(i11)).M();
        }
        this.f57049f = ((org.bouncycastle.asn1.o) ((s) sVar.M(4)).M(0)).M();
        this.f57050g = ((org.bouncycastle.asn1.o) ((s) sVar.M(5)).M(0)).M();
        s sVar4 = (s) sVar.M(6);
        byte[][][][] bArr = new byte[sVar4.size()][][];
        byte[][][][] bArr2 = new byte[sVar4.size()][][];
        byte[][][] bArr3 = new byte[sVar4.size()][];
        byte[][] bArr4 = new byte[sVar4.size()];
        int i12 = 0;
        while (i12 < sVar4.size()) {
            s sVar5 = (s) sVar4.M(i12);
            s sVar6 = (s) sVar5.M(i9);
            bArr[i12] = new byte[sVar6.size()][];
            for (int i13 = 0; i13 < sVar6.size(); i13++) {
                s sVar7 = (s) sVar6.M(i13);
                bArr[i12][i13] = new byte[sVar7.size()];
                for (int i14 = 0; i14 < sVar7.size(); i14++) {
                    bArr[i12][i13][i14] = ((org.bouncycastle.asn1.o) sVar7.M(i14)).M();
                }
            }
            s sVar8 = (s) sVar5.M(1);
            bArr2[i12] = new byte[sVar8.size()][];
            for (int i15 = 0; i15 < sVar8.size(); i15++) {
                s sVar9 = (s) sVar8.M(i15);
                bArr2[i12][i15] = new byte[sVar9.size()];
                for (int i16 = 0; i16 < sVar9.size(); i16++) {
                    bArr2[i12][i15][i16] = ((org.bouncycastle.asn1.o) sVar9.M(i16)).M();
                }
            }
            s sVar10 = (s) sVar5.M(2);
            bArr3[i12] = new byte[sVar10.size()];
            for (int i17 = 0; i17 < sVar10.size(); i17++) {
                bArr3[i12][i17] = ((org.bouncycastle.asn1.o) sVar10.M(i17)).M();
            }
            bArr4[i12] = ((org.bouncycastle.asn1.o) sVar5.M(3)).M();
            i12++;
            i9 = 0;
        }
        int length = this.f57050g.length - 1;
        this.f57051h = new vk.a[length];
        int i18 = 0;
        while (i18 < length) {
            byte[] bArr5 = this.f57050g;
            int i19 = i18 + 1;
            this.f57051h[i18] = new vk.a(bArr5[i18], bArr5[i19], wk.a.f(bArr[i18]), wk.a.f(bArr2[i18]), wk.a.d(bArr3[i18]), wk.a.b(bArr4[i18]));
            i18 = i19;
        }
    }

    public g(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, vk.a[] aVarArr) {
        this.f57044a = new org.bouncycastle.asn1.k(1L);
        this.f57046c = wk.a.c(sArr);
        this.f57047d = wk.a.a(sArr2);
        this.f57048e = wk.a.c(sArr3);
        this.f57049f = wk.a.a(sArr4);
        this.f57050g = wk.a.h(iArr);
        this.f57051h = aVarArr;
    }

    public static g z(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(s.K(obj));
        }
        return null;
    }

    public short[][] B() {
        return wk.a.d(this.f57046c);
    }

    public short[][] F() {
        return wk.a.d(this.f57048e);
    }

    public vk.a[] G() {
        return this.f57051h;
    }

    public int[] H() {
        return wk.a.g(this.f57050g);
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        org.bouncycastle.asn1.e eVar = this.f57044a;
        if (eVar == null) {
            eVar = this.f57045b;
        }
        fVar.a(eVar);
        org.bouncycastle.asn1.f fVar2 = new org.bouncycastle.asn1.f();
        int i9 = 0;
        while (true) {
            byte[][] bArr = this.f57046c;
            if (i9 >= bArr.length) {
                break;
            }
            fVar2.a(new w0(bArr[i9]));
            i9++;
        }
        fVar.a(new a1(fVar2));
        org.bouncycastle.asn1.f fVar3 = new org.bouncycastle.asn1.f();
        fVar3.a(new w0(this.f57047d));
        fVar.a(new a1(fVar3));
        org.bouncycastle.asn1.f fVar4 = new org.bouncycastle.asn1.f();
        int i10 = 0;
        while (true) {
            byte[][] bArr2 = this.f57048e;
            if (i10 >= bArr2.length) {
                break;
            }
            fVar4.a(new w0(bArr2[i10]));
            i10++;
        }
        fVar.a(new a1(fVar4));
        org.bouncycastle.asn1.f fVar5 = new org.bouncycastle.asn1.f();
        fVar5.a(new w0(this.f57049f));
        fVar.a(new a1(fVar5));
        org.bouncycastle.asn1.f fVar6 = new org.bouncycastle.asn1.f();
        fVar6.a(new w0(this.f57050g));
        fVar.a(new a1(fVar6));
        org.bouncycastle.asn1.f fVar7 = new org.bouncycastle.asn1.f();
        for (int i11 = 0; i11 < this.f57051h.length; i11++) {
            org.bouncycastle.asn1.f fVar8 = new org.bouncycastle.asn1.f();
            byte[][][] e10 = wk.a.e(this.f57051h[i11].a());
            org.bouncycastle.asn1.f fVar9 = new org.bouncycastle.asn1.f();
            for (int i12 = 0; i12 < e10.length; i12++) {
                org.bouncycastle.asn1.f fVar10 = new org.bouncycastle.asn1.f();
                for (int i13 = 0; i13 < e10[i12].length; i13++) {
                    fVar10.a(new w0(e10[i12][i13]));
                }
                fVar9.a(new a1(fVar10));
            }
            fVar8.a(new a1(fVar9));
            byte[][][] e11 = wk.a.e(this.f57051h[i11].b());
            org.bouncycastle.asn1.f fVar11 = new org.bouncycastle.asn1.f();
            for (int i14 = 0; i14 < e11.length; i14++) {
                org.bouncycastle.asn1.f fVar12 = new org.bouncycastle.asn1.f();
                for (int i15 = 0; i15 < e11[i14].length; i15++) {
                    fVar12.a(new w0(e11[i14][i15]));
                }
                fVar11.a(new a1(fVar12));
            }
            fVar8.a(new a1(fVar11));
            byte[][] c10 = wk.a.c(this.f57051h[i11].d());
            org.bouncycastle.asn1.f fVar13 = new org.bouncycastle.asn1.f();
            for (byte[] bArr3 : c10) {
                fVar13.a(new w0(bArr3));
            }
            fVar8.a(new a1(fVar13));
            fVar8.a(new w0(wk.a.a(this.f57051h[i11].c())));
            fVar7.a(new a1(fVar8));
        }
        fVar.a(new a1(fVar7));
        return new a1(fVar);
    }

    public short[] x() {
        return wk.a.b(this.f57047d);
    }

    public short[] y() {
        return wk.a.b(this.f57049f);
    }
}
