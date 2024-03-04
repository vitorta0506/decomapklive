package mj;

import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.u;
/* loaded from: classes7.dex */
public class b extends m {

    /* renamed from: a  reason: collision with root package name */
    private u f55161a;

    private b(u uVar) {
        this.f55161a = uVar;
    }

    public static b y(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(u.L(obj));
        }
        return null;
    }

    public boolean B() {
        return this.f55161a.size() > 1;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        return this.f55161a;
    }

    public int size() {
        return this.f55161a.size();
    }

    public a x() {
        if (this.f55161a.size() == 0) {
            return null;
        }
        return a.x(this.f55161a.N(0));
    }

    public a[] z() {
        int size = this.f55161a.size();
        a[] aVarArr = new a[size];
        for (int i9 = 0; i9 != size; i9++) {
            aVarArr[i9] = a.x(this.f55161a.N(i9));
        }
        return aVarArr;
    }
}
