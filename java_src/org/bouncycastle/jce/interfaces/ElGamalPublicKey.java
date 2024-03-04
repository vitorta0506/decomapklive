package org.bouncycastle.jce.interfaces;

import ek.h;
import java.math.BigInteger;
import javax.crypto.interfaces.DHKey;
import javax.crypto.interfaces.DHPublicKey;
/* loaded from: classes7.dex */
public interface ElGamalPublicKey extends DHKey, DHPublicKey {
    /* synthetic */ h getParameters();

    BigInteger getY();
}
