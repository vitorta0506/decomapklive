package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import gj.c;
import java.math.BigInteger;
import oj.c0;
import org.bouncycastle.asn1.n;
import org.bouncycastle.util.d;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final n[] f56063a = {c.f40124l0, c0.f55722m, c.f40142r0, c.f40151u0};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(BigInteger bigInteger) {
        return new d(bigInteger.toByteArray(), 32).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(BigInteger bigInteger) {
        return new d(bigInteger.toByteArray()).toString();
    }
}
