package com.google.zxing.datamatrix.encoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class C40Encoder implements Encoder {
    private int backtrackOneCharacter(EncoderContext encoderContext, StringBuilder sb2, StringBuilder sb3, int i9) {
        int length = sb2.length();
        sb2.delete(length - i9, length);
        encoderContext.pos--;
        int encodeChar = encodeChar(encoderContext.getCurrentChar(), sb3);
        encoderContext.resetSymbolInfo();
        return encodeChar;
    }

    private static String encodeToCodewords(CharSequence charSequence, int i9) {
        int charAt = (charSequence.charAt(i9) * 1600) + (charSequence.charAt(i9 + 1) * '(') + charSequence.charAt(i9 + 2) + 1;
        return new String(new char[]{(char) (charAt / 256), (char) (charAt % 256)});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeNextTriplet(EncoderContext encoderContext, StringBuilder sb2) {
        encoderContext.writeCodewords(encodeToCodewords(sb2, 0));
        sb2.delete(0, 3);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(EncoderContext encoderContext) {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            char currentChar = encoderContext.getCurrentChar();
            encoderContext.pos++;
            int encodeChar = encodeChar(currentChar, sb2);
            int codewordCount = encoderContext.getCodewordCount() + ((sb2.length() / 3) << 1);
            encoderContext.updateSymbolInfo(codewordCount);
            int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity() - codewordCount;
            if (!encoderContext.hasMoreCharacters()) {
                StringBuilder sb3 = new StringBuilder();
                if (sb2.length() % 3 == 2 && (dataCapacity < 2 || dataCapacity > 2)) {
                    encodeChar = backtrackOneCharacter(encoderContext, sb2, sb3, encodeChar);
                }
                while (sb2.length() % 3 == 1 && ((encodeChar <= 3 && dataCapacity != 1) || encodeChar > 3)) {
                    encodeChar = backtrackOneCharacter(encoderContext, sb2, sb3, encodeChar);
                }
            } else if (sb2.length() % 3 == 0 && HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode()) != getEncodingMode()) {
                encoderContext.signalEncoderChange(0);
                break;
            }
        }
        handleEOD(encoderContext, sb2);
    }

    int encodeChar(char c10, StringBuilder sb2) {
        if (c10 == ' ') {
            sb2.append((char) 3);
            return 1;
        } else if (c10 >= '0' && c10 <= '9') {
            sb2.append((char) ((c10 - '0') + 4));
            return 1;
        } else if (c10 >= 'A' && c10 <= 'Z') {
            sb2.append((char) ((c10 - 'A') + 14));
            return 1;
        } else if (c10 < ' ') {
            sb2.append((char) 0);
            sb2.append(c10);
            return 2;
        } else if (c10 >= '!' && c10 <= '/') {
            sb2.append((char) 1);
            sb2.append((char) (c10 - '!'));
            return 2;
        } else if (c10 >= ':' && c10 <= '@') {
            sb2.append((char) 1);
            sb2.append((char) ((c10 - ':') + 15));
            return 2;
        } else if (c10 >= '[' && c10 <= '_') {
            sb2.append((char) 1);
            sb2.append((char) ((c10 - '[') + 22));
            return 2;
        } else if (c10 >= '`' && c10 <= 127) {
            sb2.append((char) 2);
            sb2.append((char) (c10 - '`'));
            return 2;
        } else {
            sb2.append("\u0001\u001e");
            return encodeChar((char) (c10 - 128), sb2) + 2;
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 1;
    }

    void handleEOD(EncoderContext encoderContext, StringBuilder sb2) {
        int length = sb2.length() % 3;
        int codewordCount = encoderContext.getCodewordCount() + ((sb2.length() / 3) << 1);
        encoderContext.updateSymbolInfo(codewordCount);
        int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity() - codewordCount;
        if (length == 2) {
            sb2.append((char) 0);
            while (sb2.length() >= 3) {
                writeNextTriplet(encoderContext, sb2);
            }
            if (encoderContext.hasMoreCharacters()) {
                encoderContext.writeCodeword((char) 254);
            }
        } else if (dataCapacity == 1 && length == 1) {
            while (sb2.length() >= 3) {
                writeNextTriplet(encoderContext, sb2);
            }
            if (encoderContext.hasMoreCharacters()) {
                encoderContext.writeCodeword((char) 254);
            }
            encoderContext.pos--;
        } else if (length == 0) {
            while (sb2.length() >= 3) {
                writeNextTriplet(encoderContext, sb2);
            }
            if (dataCapacity > 0 || encoderContext.hasMoreCharacters()) {
                encoderContext.writeCodeword((char) 254);
            }
        } else {
            throw new IllegalStateException("Unexpected case. Please report!");
        }
        encoderContext.signalEncoderChange(0);
    }
}
