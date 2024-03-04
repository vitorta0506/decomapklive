package org.bouncycastle.util.test;

import org.bouncycastle.util.encoders.d;
import org.bouncycastle.util.test.FixedSecureRandom;
/* loaded from: classes7.dex */
public class TestRandomData extends FixedSecureRandom {
    public TestRandomData(String str) {
        super(new FixedSecureRandom.e[]{new FixedSecureRandom.b(d.a(str))});
    }

    public TestRandomData(byte[] bArr) {
        super(new FixedSecureRandom.e[]{new FixedSecureRandom.b(bArr)});
    }
}
