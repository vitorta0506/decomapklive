package pj;

import org.bouncycastle.asn1.r;
/* loaded from: classes7.dex */
public class g extends org.bouncycastle.asn1.m implements org.bouncycastle.asn1.d {

    /* renamed from: a  reason: collision with root package name */
    private r f56933a;

    public g(org.bouncycastle.asn1.l lVar) {
        this.f56933a = lVar;
    }

    public g(org.bouncycastle.asn1.n nVar) {
        this.f56933a = nVar;
    }

    private g(r rVar) {
        this.f56933a = rVar;
    }

    public g(i iVar) {
        this.f56933a = null;
        this.f56933a = iVar.f();
    }

    public static g x(Object obj) {
        if (obj == null || (obj instanceof g)) {
            return (g) obj;
        }
        if (obj instanceof r) {
            return new g((r) obj);
        }
        if (obj instanceof byte[]) {
            try {
                return new g(r.G((byte[]) obj));
            } catch (Exception e10) {
                throw new IllegalArgumentException("unable to parse encoded data: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance()");
    }

    public boolean B() {
        return this.f56933a instanceof org.bouncycastle.asn1.n;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        return this.f56933a;
    }

    public r y() {
        return this.f56933a;
    }

    public boolean z() {
        return this.f56933a instanceof org.bouncycastle.asn1.l;
    }
}
