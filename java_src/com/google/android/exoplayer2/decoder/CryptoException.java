package com.google.android.exoplayer2.decoder;
/* loaded from: classes.dex */
public class CryptoException extends Exception {
    public final int errorCode;

    public CryptoException(int i9, String str) {
        super(str);
        this.errorCode = i9;
    }
}
