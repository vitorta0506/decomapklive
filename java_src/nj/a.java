package nj;

import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.e;
/* loaded from: classes7.dex */
public abstract class a implements mj.d {
    private int d(e eVar) {
        return c.d(eVar).hashCode();
    }

    public static Hashtable e(Hashtable hashtable) {
        Hashtable hashtable2 = new Hashtable();
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            hashtable2.put(nextElement, hashtable.get(nextElement));
        }
        return hashtable2;
    }

    private boolean f(boolean z10, mj.b bVar, mj.b[] bVarArr) {
        if (z10) {
            for (int length = bVarArr.length - 1; length >= 0; length--) {
                if (bVarArr[length] != null && g(bVar, bVarArr[length])) {
                    bVarArr[length] = null;
                    return true;
                }
            }
        } else {
            for (int i9 = 0; i9 != bVarArr.length; i9++) {
                if (bVarArr[i9] != null && g(bVar, bVarArr[i9])) {
                    bVarArr[i9] = null;
                    return true;
                }
            }
        }
        return false;
    }

    @Override // mj.d
    public int a(mj.c cVar) {
        mj.b[] B = cVar.B();
        int i9 = 0;
        for (int i10 = 0; i10 != B.length; i10++) {
            if (B[i10].B()) {
                mj.a[] z10 = B[i10].z();
                for (int i11 = 0; i11 != z10.length; i11++) {
                    i9 = (i9 ^ z10[i11].y().hashCode()) ^ d(z10[i11].z());
                }
            } else {
                i9 = (i9 ^ B[i10].x().y().hashCode()) ^ d(B[i10].x().z());
            }
        }
        return i9;
    }

    @Override // mj.d
    public boolean c(mj.c cVar, mj.c cVar2) {
        mj.b[] B = cVar.B();
        mj.b[] B2 = cVar2.B();
        if (B.length != B2.length) {
            return false;
        }
        boolean z10 = (B[0].x() == null || B2[0].x() == null) ? false : !B[0].x().y().F(B2[0].x().y());
        for (int i9 = 0; i9 != B.length; i9++) {
            if (!f(z10, B[i9], B2)) {
                return false;
            }
        }
        return true;
    }

    protected boolean g(mj.b bVar, mj.b bVar2) {
        return c.g(bVar, bVar2);
    }
}
