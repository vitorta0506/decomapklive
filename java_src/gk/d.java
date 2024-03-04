package gk;

import fk.e;
import fk.f;
import fk.i;
import nk.h;
/* loaded from: classes7.dex */
public class d extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(e eVar, f fVar, f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(e eVar, f fVar, f fVar2, f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public i E() {
        if (t()) {
            return this;
        }
        return this.f39807c.i() ? i().r() : J(true);
    }

    @Override // fk.i
    public i F(i iVar) {
        return this == iVar ? I() : t() ? iVar : iVar.t() ? E() : this.f39807c.i() ? iVar : J(false).a(iVar);
    }

    protected c G(c cVar, int[] iArr) {
        c cVar2 = (c) i().l();
        if (cVar.h()) {
            return cVar2;
        }
        c cVar3 = new c();
        if (iArr == null) {
            iArr = cVar3.f40212g;
            b.n(cVar.f40212g, iArr);
        }
        b.n(iArr, cVar3.f40212g);
        int[] iArr2 = cVar3.f40212g;
        b.g(iArr2, cVar2.f40212g, iArr2);
        return cVar3;
    }

    protected c H() {
        f[] fVarArr = this.f39808d;
        c cVar = (c) fVarArr[1];
        if (cVar == null) {
            c G = G((c) fVarArr[0], null);
            fVarArr[1] = G;
            return G;
        }
        return cVar;
    }

    public i I() {
        return (t() || this.f39807c.i()) ? this : J(false).a(this);
    }

    protected d J(boolean z10) {
        c cVar = (c) this.f39806b;
        c cVar2 = (c) this.f39807c;
        c cVar3 = (c) this.f39808d[0];
        c H = H();
        int[] i9 = h.i();
        b.n(cVar.f40212g, i9);
        b.m(h.b(i9, i9, i9) + h.d(H.f40212g, i9), i9);
        int[] i10 = h.i();
        b.s(cVar2.f40212g, i10);
        int[] i11 = h.i();
        b.g(i10, cVar2.f40212g, i11);
        int[] i12 = h.i();
        b.g(i11, cVar.f40212g, i12);
        b.s(i12, i12);
        int[] i13 = h.i();
        b.n(i11, i13);
        b.s(i13, i13);
        c cVar4 = new c(i11);
        b.n(i9, cVar4.f40212g);
        int[] iArr = cVar4.f40212g;
        b.r(iArr, i12, iArr);
        int[] iArr2 = cVar4.f40212g;
        b.r(iArr2, i12, iArr2);
        c cVar5 = new c(i12);
        b.r(i12, cVar4.f40212g, cVar5.f40212g);
        int[] iArr3 = cVar5.f40212g;
        b.g(iArr3, i9, iArr3);
        int[] iArr4 = cVar5.f40212g;
        b.r(iArr4, i13, iArr4);
        c cVar6 = new c(i10);
        if (!h.t(cVar3.f40212g)) {
            int[] iArr5 = cVar6.f40212g;
            b.g(iArr5, cVar3.f40212g, iArr5);
        }
        c cVar7 = null;
        if (z10) {
            cVar7 = new c(i13);
            int[] iArr6 = cVar7.f40212g;
            b.g(iArr6, H.f40212g, iArr6);
            int[] iArr7 = cVar7.f40212g;
            b.s(iArr7, iArr7);
        }
        return new d(i(), cVar4, cVar5, new f[]{cVar6, cVar7});
    }

    @Override // fk.i
    public i a(i iVar) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (t()) {
            return iVar;
        }
        if (iVar.t()) {
            return this;
        }
        if (this == iVar) {
            return E();
        }
        e i9 = i();
        c cVar = (c) this.f39806b;
        c cVar2 = (c) this.f39807c;
        c cVar3 = (c) this.f39808d[0];
        c cVar4 = (c) iVar.p();
        c cVar5 = (c) iVar.q();
        c cVar6 = (c) iVar.r(0);
        int[] k10 = h.k();
        int[] i10 = h.i();
        int[] i11 = h.i();
        int[] i12 = h.i();
        boolean h10 = cVar3.h();
        if (h10) {
            iArr = cVar4.f40212g;
            iArr2 = cVar5.f40212g;
        } else {
            b.n(cVar3.f40212g, i11);
            b.g(i11, cVar4.f40212g, i10);
            b.g(i11, cVar3.f40212g, i11);
            b.g(i11, cVar5.f40212g, i11);
            iArr = i10;
            iArr2 = i11;
        }
        boolean h11 = cVar6.h();
        if (h11) {
            iArr3 = cVar.f40212g;
            iArr4 = cVar2.f40212g;
        } else {
            b.n(cVar6.f40212g, i12);
            b.g(i12, cVar.f40212g, k10);
            b.g(i12, cVar6.f40212g, i12);
            b.g(i12, cVar2.f40212g, i12);
            iArr3 = k10;
            iArr4 = i12;
        }
        int[] i13 = h.i();
        b.r(iArr3, iArr, i13);
        b.r(iArr4, iArr2, i10);
        if (h.v(i13)) {
            return h.v(i10) ? E() : i9.r();
        }
        int[] i14 = h.i();
        b.n(i13, i14);
        int[] i15 = h.i();
        b.g(i14, i13, i15);
        b.g(i14, iArr3, i11);
        b.i(i15, i15);
        h.y(iArr4, i15, k10);
        b.m(h.b(i11, i11, i15), i15);
        c cVar7 = new c(i12);
        b.n(i10, cVar7.f40212g);
        int[] iArr5 = cVar7.f40212g;
        b.r(iArr5, i15, iArr5);
        c cVar8 = new c(i15);
        b.r(i11, cVar7.f40212g, cVar8.f40212g);
        b.h(cVar8.f40212g, i10, k10);
        b.l(k10, cVar8.f40212g);
        c cVar9 = new c(i13);
        if (!h10) {
            int[] iArr6 = cVar9.f40212g;
            b.g(iArr6, cVar3.f40212g, iArr6);
        }
        if (!h11) {
            int[] iArr7 = cVar9.f40212g;
            b.g(iArr7, cVar6.f40212g, iArr7);
        }
        return new d(i9, cVar7, cVar8, new f[]{cVar9, G(cVar9, (h10 && h11) ? null : null)});
    }

    @Override // fk.i
    protected i d() {
        return new d(null, f(), g());
    }

    @Override // fk.i
    public f r(int i9) {
        return i9 == 1 ? H() : super.r(i9);
    }

    @Override // fk.i
    public i x() {
        return t() ? this : new d(i(), this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
