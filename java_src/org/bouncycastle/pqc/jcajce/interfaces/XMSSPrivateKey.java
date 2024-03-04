package org.bouncycastle.pqc.jcajce.interfaces;

import java.security.PrivateKey;
/* loaded from: classes7.dex */
public interface XMSSPrivateKey extends PrivateKey {
    XMSSPrivateKey extractKeyShard(int i9);

    /* synthetic */ int getHeight();

    long getIndex();

    /* synthetic */ String getTreeDigest();

    long getUsagesRemaining();
}
