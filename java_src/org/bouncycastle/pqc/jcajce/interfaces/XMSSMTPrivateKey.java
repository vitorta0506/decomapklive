package org.bouncycastle.pqc.jcajce.interfaces;

import java.security.PrivateKey;
/* loaded from: classes7.dex */
public interface XMSSMTPrivateKey extends PrivateKey {
    XMSSMTPrivateKey extractKeyShard(int i9);

    /* synthetic */ int getHeight();

    long getIndex();

    /* synthetic */ int getLayers();

    /* synthetic */ String getTreeDigest();

    long getUsagesRemaining();
}
