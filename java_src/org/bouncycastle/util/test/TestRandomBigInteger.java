package org.bouncycastle.util.test;

import java.math.BigInteger;
import org.bouncycastle.util.b;
import org.bouncycastle.util.test.FixedSecureRandom;
/* loaded from: classes7.dex */
public class TestRandomBigInteger extends FixedSecureRandom {
    public TestRandomBigInteger(int i9, byte[] bArr) {
        super(new FixedSecureRandom.e[]{new FixedSecureRandom.a(i9, bArr)});
    }

    public TestRandomBigInteger(String str) {
        this(str, 10);
    }

    public TestRandomBigInteger(String str, int i9) {
        super(new FixedSecureRandom.e[]{new FixedSecureRandom.a(b.b(new BigInteger(str, i9)))});
    }

    public TestRandomBigInteger(byte[] bArr) {
        super(new FixedSecureRandom.e[]{new FixedSecureRandom.a(bArr)});
    }
}
