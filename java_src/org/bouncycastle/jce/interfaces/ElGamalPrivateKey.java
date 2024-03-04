package org.bouncycastle.jce.interfaces;

import ek.h;
import java.math.BigInteger;
import javax.crypto.interfaces.DHKey;
import javax.crypto.interfaces.DHPrivateKey;
/* loaded from: classes7.dex */
public interface ElGamalPrivateKey extends DHKey, DHPrivateKey {
    /* synthetic */ h getParameters();

    BigInteger getX();
}
