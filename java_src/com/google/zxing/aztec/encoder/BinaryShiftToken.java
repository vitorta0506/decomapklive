package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import kotlin.text.Typography;
/* loaded from: classes3.dex */
final class BinaryShiftToken extends Token {
    private final short binaryShiftByteCount;
    private final short binaryShiftStart;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinaryShiftToken(Token token, int i9, int i10) {
        super(token);
        this.binaryShiftStart = (short) i9;
        this.binaryShiftByteCount = (short) i10;
    }

    @Override // com.google.zxing.aztec.encoder.Token
    public void appendTo(BitArray bitArray, byte[] bArr) {
        int i9 = 0;
        while (true) {
            short s10 = this.binaryShiftByteCount;
            if (i9 >= s10) {
                return;
            }
            if (i9 == 0 || (i9 == 31 && s10 <= 62)) {
                bitArray.appendBits(31, 5);
                short s11 = this.binaryShiftByteCount;
                if (s11 > 62) {
                    bitArray.appendBits(s11 - 31, 16);
                } else if (i9 == 0) {
                    bitArray.appendBits(Math.min((int) s11, 31), 5);
                } else {
                    bitArray.appendBits(s11 - 31, 5);
                }
            }
            bitArray.appendBits(bArr[this.binaryShiftStart + i9], 8);
            i9++;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("<");
        sb2.append((int) this.binaryShiftStart);
        sb2.append("::");
        sb2.append((this.binaryShiftStart + this.binaryShiftByteCount) - 1);
        sb2.append(Typography.greater);
        return sb2.toString();
    }
}
