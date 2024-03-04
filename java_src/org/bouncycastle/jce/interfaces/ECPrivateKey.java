package org.bouncycastle.jce.interfaces;

import ek.d;
import java.math.BigInteger;
import java.security.PrivateKey;
/* loaded from: classes7.dex */
public interface ECPrivateKey extends PrivateKey {
    BigInteger getD();

    /* synthetic */ d getParameters();
}
