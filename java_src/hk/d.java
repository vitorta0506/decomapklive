package hk;

import fk.e;
import fk.f;
import fk.i;
import nk.h;
import nk.n;
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
        e i9 = i();
        c cVar = (c) this.f39807c;
        if (cVar.i()) {
            return i9.r();
        }
        c cVar2 = (c) this.f39806b;
        c cVar3 = (c) this.f39808d[0];
        int[] i10 = h.i();
        int[] i11 = h.i();
        int[] i12 = h.i();
        b.n(cVar.f40818g, i12);
        int[] i13 = h.i();
        b.n(i12, i13);
        boolean h10 = cVar3.h();
        int[] iArr = cVar3.f40818g;
        if (!h10) {
            b.n(iArr, i11);
            iArr = i11;
        }
        b.q(cVar2.f40818g, iArr, i10);
        b.a(cVar2.f40818g, iArr, i11);
        b.g(i11, i10, i11);
        b.m(h.b(i11, i11, i11), i11);
        b.g(i12, cVar2.f40818g, i12);
        b.m(n.L(8, i12, 2, 0), i12);
        b.m(n.M(8, i13, 3, 0, i10), i10);
        c cVar4 = new c(i13);
        b.n(i11, cVar4.f40818g);
        int[] iArr2 = cVar4.f40818g;
        b.q(iArr2, i12, iArr2);
        int[] iArr3 = cVar4.f40818g;
        b.q(iArr3, i12, iArr3);
        c cVar5 = new c(i12);
        b.q(i12, cVar4.f40818g, cVar5.f40818g);
        int[] iArr4 = cVar5.f40818g;
        b.g(iArr4, i11, iArr4);
        int[] iArr5 = cVar5.f40818g;
        b.q(iArr5, i10, iArr5);
        c cVar6 = new c(i11);
        b.r(cVar.f40818g, cVar6.f40818g);
        if (!h10) {
            int[] iArr6 = cVar6.f40818g;
            b.g(iArr6, cVar3.f40818g, iArr6);
        }
        return new d(i9, cVar4, cVar5, new f[]{cVar6});
    }

    @Override // fk.i
    public i F(i iVar) {
        return this == iVar ? G() : t() ? iVar : iVar.t() ? E() : this.f39807c.i() ? iVar : E().a(iVar);
    }

    public i G() {
        return (t() || this.f39807c.i()) ? this : E().a(this);
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
        c cVar3 = (c) iVar.p();
        c cVar4 = (c) iVar.q();
        c cVar5 = (c) this.f39808d[0];
        c cVar6 = (c) iVar.r(0);
        int[] k10 = h.k();
        int[] i10 = h.i();
        int[] i11 = h.i();
        int[] i12 = h.i();
        boolean h10 = cVar5.h();
        if (h10) {
            iArr = cVar3.f40818g;
            iArr2 = cVar4.f40818g;
        } else {
            b.n(cVar5.f40818g, i11);
            b.g(i11, cVar3.f40818g, i10);
            b.g(i11, cVar5.f40818g, i11);
            b.g(i11, cVar4.f40818g, i11);
            iArr = i10;
            iArr2 = i11;
        }
        boolean h11 = cVar6.h();
        if (h11) {
            iArr3 = cVar.f40818g;
            iArr4 = cVar2.f40818g;
        } else {
            b.n(cVar6.f40818g, i12);
            b.g(i12, cVar.f40818g, k10);
            b.g(i12, cVar6.f40818g, i12);
            b.g(i12, cVar2.f40818g, i12);
            iArr3 = k10;
            iArr4 = i12;
        }
        int[] i13 = h.i();
        b.q(iArr3, iArr, i13);
        b.q(iArr4, iArr2, i10);
        if (h.v(i13)) {
            return h.v(i10) ? E() : i9.r();
        }
        b.n(i13, i11);
        int[] i14 = h.i();
        b.g(i11, i13, i14);
        b.g(i11, iArr3, i11);
        b.i(i14, i14);
        h.y(iArr4, i14, k10);
        b.m(h.b(i11, i11, i14), i14);
        c cVar7 = new c(i12);
        b.n(i10, cVar7.f40818g);
        int[] iArr5 = cVar7.f40818g;
        b.q(iArr5, i14, iArr5);
        c cVar8 = new c(i14);
        b.q(i11, cVar7.f40818g, cVar8.f40818g);
        b.h(cVar8.f40818g, i10, k10);
        b.l(k10, cVar8.f40818g);
        c cVar9 = new c(i13);
        if (!h10) {
            int[] iArr6 = cVar9.f40818g;
            b.g(iArr6, cVar5.f40818g, iArr6);
        }
        if (!h11) {
            int[] iArr7 = cVar9.f40818g;
            b.g(iArr7, cVar6.f40818g, iArr7);
        }
        return new d(i9, cVar7, cVar8, new f[]{cVar9});
    }

    @Override // fk.i
    protected i d() {
        return new d(null, f(), g());
    }

    @Override // fk.i
    public i x() {
        return t() ? this : new d(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
