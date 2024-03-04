package org.bouncycastle.crypto;
/* loaded from: classes7.dex */
public interface g {
    int a(byte[] bArr, int i9) throws DataLengthException, IllegalStateException;

    void b(byte b10) throws IllegalStateException;

    void c(byte[] bArr, int i9, int i10) throws DataLengthException, IllegalStateException;

    int d();

    void e(c cVar) throws IllegalArgumentException;

    String getAlgorithmName();
}
