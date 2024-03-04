package org.bouncycastle.cert;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import oj.m;
import org.bouncycastle.asn1.i;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.util.h;
/* loaded from: classes7.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static Set f56004a = Collections.unmodifiableSet(new HashSet());

    /* renamed from: b  reason: collision with root package name */
    private static List f56005b = Collections.unmodifiableList(new ArrayList());

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean[] a(n0 n0Var) {
        if (n0Var != null) {
            byte[] L = n0Var.L();
            int length = (L.length * 8) - n0Var.N();
            boolean[] zArr = new boolean[length];
            for (int i9 = 0; i9 != length; i9++) {
                zArr[i9] = (L[i9 / 8] & (128 >>> (i9 % 8))) != 0;
            }
            return zArr;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set b(m mVar) {
        return mVar == null ? f56004a : Collections.unmodifiableSet(new HashSet(Arrays.asList(mVar.x())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List c(m mVar) {
        return mVar == null ? f56005b : Collections.unmodifiableList(Arrays.asList(mVar.z()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set d(m mVar) {
        return mVar == null ? f56004a : Collections.unmodifiableSet(new HashSet(Arrays.asList(mVar.G())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(oj.a aVar, oj.a aVar2) {
        if (aVar.x().F(aVar2.x())) {
            if (h.b("org.bouncycastle.x509.allow_absent_equiv_NULL")) {
                if (aVar.B() == null) {
                    return aVar2.B() == null || aVar2.B().equals(u0.f55980a);
                } else if (aVar2.B() == null) {
                    return aVar.B() == null || aVar.B().equals(u0.f55980a);
                }
            }
            if (aVar.B() != null) {
                return aVar.B().equals(aVar2.B());
            }
            if (aVar2.B() != null) {
                return aVar2.B().equals(aVar.B());
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r f(byte[] bArr) throws IOException {
        r G = r.G(bArr);
        if (G != null) {
            return G;
        }
        throw new IOException("no content found");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Date g(i iVar) {
        try {
            return iVar.N();
        } catch (ParseException e10) {
            throw new IllegalStateException("unable to recover date: " + e10.getMessage());
        }
    }
}
