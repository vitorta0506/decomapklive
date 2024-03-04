package com.airbnb.lottie.parser.moshi;

import io.jsonwebtoken.JwtParser;
import kotlin.text.Typography;
/* loaded from: classes.dex */
final class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i9, int[] iArr, String[] strArr, int[] iArr2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Typography.dollar);
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = iArr[i10];
            if (i11 == 1 || i11 == 2) {
                sb2.append('[');
                sb2.append(iArr2[i10]);
                sb2.append(']');
            } else if (i11 == 3 || i11 == 4 || i11 == 5) {
                sb2.append(JwtParser.SEPARATOR_CHAR);
                if (strArr[i10] != null) {
                    sb2.append(strArr[i10]);
                }
            }
        }
        return sb2.toString();
    }
}
