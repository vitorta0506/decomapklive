package com.google.zxing.datamatrix.encoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class EdifactEncoder implements Encoder {
    private static void encodeChar(char c10, StringBuilder sb2) {
        if (c10 >= ' ' && c10 <= '?') {
            sb2.append(c10);
        } else if (c10 >= '@' && c10 <= '^') {
            sb2.append((char) (c10 - '@'));
        } else {
            HighLevelEncoder.illegalCharacter(c10);
        }
    }

    private static String encodeToCodewords(CharSequence charSequence, int i9) {
        int length = charSequence.length() - i9;
        if (length != 0) {
            int charAt = (charSequence.charAt(i9) << 18) + ((length >= 2 ? charSequence.charAt(i9 + 1) : (char) 0) << '\f') + ((length >= 3 ? charSequence.charAt(i9 + 2) : (char) 0) << 6) + (length >= 4 ? charSequence.charAt(i9 + 3) : (char) 0);
            char c10 = (char) ((charAt >> 8) & 255);
            char c11 = (char) (charAt & 255);
            StringBuilder sb2 = new StringBuilder(3);
            sb2.append((char) ((charAt >> 16) & 255));
            if (length >= 2) {
                sb2.append(c10);
            }
            if (length >= 3) {
                sb2.append(c11);
            }
            return sb2.toString();
        }
        throw new IllegalStateException("StringBuilder must not be empty");
    }

    private static void handleEOD(EncoderContext encoderContext, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                return;
            }
            boolean z10 = true;
            if (length == 1) {
                encoderContext.updateSymbolInfo();
                int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount();
                int remainingCharacters = encoderContext.getRemainingCharacters();
                if (remainingCharacters > dataCapacity) {
                    encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + 1);
                    dataCapacity = encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount();
                }
                if (remainingCharacters <= dataCapacity && dataCapacity <= 2) {
                    return;
                }
            }
            if (length <= 4) {
                int i9 = length - 1;
                String encodeToCodewords = encodeToCodewords(charSequence, 0);
                if (!(!encoderContext.hasMoreCharacters()) || i9 > 2) {
                    z10 = false;
                }
                if (i9 <= 2) {
                    encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + i9);
                    if (encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount() >= 3) {
                        encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + encodeToCodewords.length());
                        z10 = false;
                    }
                }
                if (z10) {
                    encoderContext.resetSymbolInfo();
                    encoderContext.pos -= i9;
                } else {
                    encoderContext.writeCodewords(encodeToCodewords);
                }
                return;
            }
            throw new IllegalStateException("Count must not exceed 4");
        } finally {
            encoderContext.signalEncoderChange(0);
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(EncoderContext encoderContext) {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            encodeChar(encoderContext.getCurrentChar(), sb2);
            encoderContext.pos++;
            if (sb2.length() >= 4) {
                encoderContext.writeCodewords(encodeToCodewords(sb2, 0));
                sb2.delete(0, 4);
                if (HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode()) != getEncodingMode()) {
                    encoderContext.signalEncoderChange(0);
                    break;
                }
            }
        }
        sb2.append((char) 31);
        handleEOD(encoderContext, sb2);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 4;
    }
}
