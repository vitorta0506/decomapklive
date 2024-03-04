package gj;

import org.bouncycastle.asn1.d1;
import org.bouncycastle.asn1.f0;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.u;
/* loaded from: classes7.dex */
public class h extends m implements c {

    /* renamed from: a  reason: collision with root package name */
    private k f40194a;

    /* renamed from: b  reason: collision with root package name */
    private u f40195b;

    /* renamed from: c  reason: collision with root package name */
    private a f40196c;

    /* renamed from: d  reason: collision with root package name */
    private u f40197d;

    /* renamed from: e  reason: collision with root package name */
    private u f40198e;

    /* renamed from: f  reason: collision with root package name */
    private u f40199f;

    public h(k kVar, u uVar, a aVar, u uVar2, u uVar3, u uVar4) {
        this.f40194a = kVar;
        this.f40195b = uVar;
        this.f40196c = aVar;
        this.f40197d = uVar2;
        this.f40198e = uVar3;
        this.f40199f = uVar4;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(6);
        fVar.a(this.f40194a);
        fVar.a(this.f40195b);
        fVar.a(this.f40196c);
        u uVar = this.f40197d;
        if (uVar != null) {
            fVar.a(new d1(false, 0, uVar));
        }
        u uVar2 = this.f40198e;
        if (uVar2 != null) {
            fVar.a(new d1(false, 1, uVar2));
        }
        fVar.a(this.f40199f);
        return new f0(fVar);
    }
}
