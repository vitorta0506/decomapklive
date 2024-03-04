package pj;

import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.w0;
/* loaded from: classes7.dex */
public class k extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final org.bouncycastle.asn1.o f56945a;

    /* renamed from: b  reason: collision with root package name */
    private fk.e f56946b;

    /* renamed from: c  reason: collision with root package name */
    private fk.i f56947c;

    public k(fk.e eVar, org.bouncycastle.asn1.o oVar) {
        this(eVar, oVar.M());
    }

    public k(fk.e eVar, byte[] bArr) {
        this.f56946b = eVar;
        this.f56945a = new w0(org.bouncycastle.util.a.e(bArr));
    }

    public k(fk.i iVar, boolean z10) {
        this.f56947c = iVar.y();
        this.f56945a = new w0(iVar.l(z10));
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        return this.f56945a;
    }

    public synchronized fk.i x() {
        if (this.f56947c == null) {
            this.f56947c = this.f56946b.h(this.f56945a.M()).y();
        }
        return this.f56947c;
    }
}
