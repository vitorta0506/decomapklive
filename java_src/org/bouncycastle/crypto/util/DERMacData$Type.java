package org.bouncycastle.crypto.util;

import org.bouncycastle.util.i;
/* loaded from: classes7.dex */
public enum DERMacData$Type {
    UNILATERALU("KC_1_U"),
    UNILATERALV("KC_1_V"),
    BILATERALU("KC_2_U"),
    BILATERALV("KC_2_V");
    
    private final String enc;

    DERMacData$Type(String str) {
        this.enc = str;
    }

    public byte[] getHeader() {
        return i.e(this.enc);
    }
}
