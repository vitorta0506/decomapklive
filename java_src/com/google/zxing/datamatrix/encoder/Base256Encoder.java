package com.google.zxing.datamatrix.encoder;

import androidx.core.view.InputDeviceCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class Base256Encoder implements Encoder {
    private static char randomize255State(char c10, int i9) {
        int i10 = c10 + ((i9 * 149) % 255) + 1;
        return i10 <= 255 ? (char) i10 : (char) (i10 + InputDeviceCompat.SOURCE_ANY);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(EncoderContext encoderContext) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((char) 0);
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            sb2.append(encoderContext.getCurrentChar());
            encoderContext.pos++;
            if (HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode()) != getEncodingMode()) {
                encoderContext.signalEncoderChange(0);
                break;
            }
        }
        int length = sb2.length() - 1;
        int codewordCount = encoderContext.getCodewordCount() + length + 1;
        encoderContext.updateSymbolInfo(codewordCount);
        boolean z10 = encoderContext.getSymbolInfo().getDataCapacity() - codewordCount > 0;
        if (encoderContext.hasMoreCharacters() || z10) {
            if (length <= 249) {
                sb2.setCharAt(0, (char) length);
            } else if (length <= 1555) {
                sb2.setCharAt(0, (char) ((length / 250) + 249));
                sb2.insert(1, (char) (length % 250));
            } else {
                throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
            }
        }
        int length2 = sb2.length();
        for (int i9 = 0; i9 < length2; i9++) {
            encoderContext.writeCodeword(randomize255State(sb2.charAt(i9), encoderContext.getCodewordCount() + 1));
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 5;
    }
}
