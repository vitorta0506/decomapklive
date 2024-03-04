package com.google.zxing.oned;

import io.jsonwebtoken.JwtParser;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public final class CodaBarWriter extends OneDimensionalCodeWriter {
    private static final char[] ALT_START_END_CHARS = {'T', 'N', '*', 'E'};
    private static final char[] CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED = {IOUtils.DIR_SEPARATOR_UNIX, ':', '+', JwtParser.SEPARATOR_CHAR};
    private static final char DEFAULT_GUARD;
    private static final char[] START_END_CHARS;

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        START_END_CHARS = cArr;
        DEFAULT_GUARD = cArr[0];
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int i9;
        if (str.length() < 2) {
            StringBuilder sb2 = new StringBuilder();
            char c10 = DEFAULT_GUARD;
            sb2.append(c10);
            sb2.append(str);
            sb2.append(c10);
            str = sb2.toString();
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = START_END_CHARS;
            boolean arrayContains = CodaBarReader.arrayContains(cArr, upperCase);
            boolean arrayContains2 = CodaBarReader.arrayContains(cArr, upperCase2);
            char[] cArr2 = ALT_START_END_CHARS;
            boolean arrayContains3 = CodaBarReader.arrayContains(cArr2, upperCase);
            boolean arrayContains4 = CodaBarReader.arrayContains(cArr2, upperCase2);
            if (arrayContains) {
                if (!arrayContains2) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
            } else if (arrayContains3) {
                if (!arrayContains4) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
            } else if (!arrayContains2 && !arrayContains4) {
                StringBuilder sb3 = new StringBuilder();
                char c11 = DEFAULT_GUARD;
                sb3.append(c11);
                sb3.append(str);
                sb3.append(c11);
                str = sb3.toString();
            } else {
                throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
            }
        }
        int i10 = 20;
        for (int i11 = 1; i11 < str.length() - 1; i11++) {
            if (Character.isDigit(str.charAt(i11)) || str.charAt(i11) == '-' || str.charAt(i11) == '$') {
                i10 += 9;
            } else if (!CodaBarReader.arrayContains(CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED, str.charAt(i11))) {
                throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i11) + '\'');
            } else {
                i10 += 10;
            }
        }
        boolean[] zArr = new boolean[i10 + (str.length() - 1)];
        int i12 = 0;
        for (int i13 = 0; i13 < str.length(); i13++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i13));
            if (i13 == 0 || i13 == str.length() - 1) {
                if (upperCase3 == '*') {
                    upperCase3 = 'C';
                } else if (upperCase3 == 'E') {
                    upperCase3 = 'D';
                } else if (upperCase3 == 'N') {
                    upperCase3 = 'B';
                } else if (upperCase3 == 'T') {
                    upperCase3 = 'A';
                }
            }
            int i14 = 0;
            while (true) {
                char[] cArr3 = CodaBarReader.ALPHABET;
                if (i14 >= cArr3.length) {
                    i9 = 0;
                    break;
                } else if (upperCase3 == cArr3[i14]) {
                    i9 = CodaBarReader.CHARACTER_ENCODINGS[i14];
                    break;
                } else {
                    i14++;
                }
            }
            int i15 = 0;
            boolean z10 = true;
            while (true) {
                int i16 = 0;
                while (i15 < 7) {
                    zArr[i12] = z10;
                    i12++;
                    if (((i9 >> (6 - i15)) & 1) == 0 || i16 == 1) {
                        z10 = !z10;
                        i15++;
                    } else {
                        i16++;
                    }
                }
                break;
            }
            if (i13 < str.length() - 1) {
                zArr[i12] = false;
                i12++;
            }
        }
        return zArr;
    }
}
