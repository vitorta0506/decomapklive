package gj;

import org.bouncycastle.asn1.f0;
import org.bouncycastle.asn1.j0;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.n1;
import org.bouncycastle.asn1.r;
/* loaded from: classes7.dex */
public class a extends m implements c {

    /* renamed from: a  reason: collision with root package name */
    private n f40090a;

    /* renamed from: b  reason: collision with root package name */
    private org.bouncycastle.asn1.e f40091b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f40092c = true;

    public a(n nVar, org.bouncycastle.asn1.e eVar) {
        this.f40090a = nVar;
        this.f40091b = eVar;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        fVar.a(this.f40090a);
        org.bouncycastle.asn1.e eVar = this.f40091b;
        if (eVar != null) {
            fVar.a(new j0(true, 0, eVar));
        }
        return this.f40092c ? new f0(fVar) : new n1(fVar);
    }
}
