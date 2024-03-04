package zi;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.f;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class e extends m {

    /* renamed from: a  reason: collision with root package name */
    private n f60589a;

    /* renamed from: b  reason: collision with root package name */
    private n f60590b;

    /* renamed from: c  reason: collision with root package name */
    private n f60591c;

    public e(n nVar, n nVar2) {
        this.f60589a = nVar;
        this.f60590b = nVar2;
        this.f60591c = null;
    }

    public e(n nVar, n nVar2, n nVar3) {
        this.f60589a = nVar;
        this.f60590b = nVar2;
        this.f60591c = nVar3;
    }

    private e(s sVar) {
        this.f60589a = (n) sVar.M(0);
        this.f60590b = (n) sVar.M(1);
        if (sVar.size() > 2) {
            this.f60591c = (n) sVar.M(2);
        }
    }

    public static e z(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(s.K(obj));
        }
        return null;
    }

    public n B() {
        return this.f60589a;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        f fVar = new f(3);
        fVar.a(this.f60589a);
        fVar.a(this.f60590b);
        n nVar = this.f60591c;
        if (nVar != null) {
            fVar.a(nVar);
        }
        return new a1(fVar);
    }

    public n x() {
        return this.f60590b;
    }

    public n y() {
        return this.f60591c;
    }
}
