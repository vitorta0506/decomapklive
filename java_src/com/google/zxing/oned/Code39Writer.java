package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public final class Code39Writer extends OneDimensionalCodeWriter {
    private static void toIntArray(int i9, int[] iArr) {
        for (int i10 = 0; i10 < 9; i10++) {
            int i11 = 1;
            if (((1 << (8 - i10)) & i9) != 0) {
                i11 = 2;
            }
            iArr[i10] = i11;
        }
    }

    private static String tryToConvertToExtendedMode(String str) {
        int length = str.length();
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < length; i9++) {
            char charAt = str.charAt(i9);
            if (charAt != 0) {
                if (charAt != ' ') {
                    if (charAt == '@') {
                        sb2.append("%V");
                    } else if (charAt == '`') {
                        sb2.append("%W");
                    } else if (charAt != '-' && charAt != '.') {
                        if (charAt <= 26) {
                            sb2.append(Typography.dollar);
                            sb2.append((char) ((charAt - 1) + 65));
                        } else if (charAt < ' ') {
                            sb2.append('%');
                            sb2.append((char) ((charAt - 27) + 65));
                        } else if (charAt <= ',' || charAt == '/' || charAt == ':') {
                            sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
                            sb2.append((char) ((charAt - '!') + 65));
                        } else if (charAt <= '9') {
                            sb2.append((char) ((charAt - '0') + 48));
                        } else if (charAt <= '?') {
                            sb2.append('%');
                            sb2.append((char) ((charAt - ';') + 70));
                        } else if (charAt <= 'Z') {
                            sb2.append((char) ((charAt - 'A') + 65));
                        } else if (charAt <= '_') {
                            sb2.append('%');
                            sb2.append((char) ((charAt - '[') + 75));
                        } else if (charAt <= 'z') {
                            sb2.append('+');
                            sb2.append((char) ((charAt - 'a') + 65));
                        } else if (charAt <= 127) {
                            sb2.append('%');
                            sb2.append((char) ((charAt - '{') + 80));
                        } else {
                            throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i9) + "'");
                        }
                    }
                }
                sb2.append(charAt);
            } else {
                sb2.append("%U");
            }
        }
        return sb2.toString();
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_39) {
            return super.encode(str, barcodeFormat, i9, i10, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length <= 80) {
            int i9 = 0;
            while (true) {
                if (i9 >= length) {
                    break;
                } else if ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i9)) < 0) {
                    str = tryToConvertToExtendedMode(str);
                    length = str.length();
                    if (length > 80) {
                        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length + " (extended full ASCII mode)");
                    }
                } else {
                    i9++;
                }
            }
            int[] iArr = new int[9];
            int i10 = length + 25;
            for (int i11 = 0; i11 < length; i11++) {
                toIntArray(Code39Reader.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i11))], iArr);
                for (int i12 = 0; i12 < 9; i12++) {
                    i10 += iArr[i12];
                }
            }
            boolean[] zArr = new boolean[i10];
            toIntArray(148, iArr);
            int appendPattern = OneDimensionalCodeWriter.appendPattern(zArr, 0, iArr, true);
            int[] iArr2 = {1};
            int appendPattern2 = appendPattern + OneDimensionalCodeWriter.appendPattern(zArr, appendPattern, iArr2, false);
            for (int i13 = 0; i13 < length; i13++) {
                toIntArray(Code39Reader.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i13))], iArr);
                int appendPattern3 = appendPattern2 + OneDimensionalCodeWriter.appendPattern(zArr, appendPattern2, iArr, true);
                appendPattern2 = appendPattern3 + OneDimensionalCodeWriter.appendPattern(zArr, appendPattern3, iArr2, false);
            }
            toIntArray(148, iArr);
            OneDimensionalCodeWriter.appendPattern(zArr, appendPattern2, iArr, true);
            return zArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
    }
}
