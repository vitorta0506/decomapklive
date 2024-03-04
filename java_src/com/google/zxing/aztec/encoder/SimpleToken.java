package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import kotlin.text.Typography;
/* loaded from: classes3.dex */
final class SimpleToken extends Token {
    private final short bitCount;
    private final short value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleToken(Token token, int i9, int i10) {
        super(token);
        this.value = (short) i9;
        this.bitCount = (short) i10;
    }

    @Override // com.google.zxing.aztec.encoder.Token
    void appendTo(BitArray bitArray, byte[] bArr) {
        bitArray.appendBits(this.value, this.bitCount);
    }

    public String toString() {
        short s10 = this.value;
        short s11 = this.bitCount;
        int i9 = (s10 & ((1 << s11) - 1)) | (1 << s11);
        return "<" + Integer.toBinaryString(i9 | (1 << this.bitCount)).substring(1) + Typography.greater;
    }
}
