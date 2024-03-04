package com.google.zxing.client.result;
/* loaded from: classes3.dex */
public final class ExpandedProductResultParser extends ResultParser {
    private static String findAIvalue(int i9, String str) {
        if (str.charAt(i9) != '(') {
            return null;
        }
        String substring = str.substring(i9 + 1);
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < substring.length(); i10++) {
            char charAt = substring.charAt(i10);
            if (charAt == ')') {
                return sb2.toString();
            }
            if (charAt < '0' || charAt > '9') {
                return null;
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }

    private static String findValue(int i9, String str) {
        StringBuilder sb2 = new StringBuilder();
        String substring = str.substring(i9);
        for (int i10 = 0; i10 < substring.length(); i10++) {
            char charAt = substring.charAt(i10);
            if (charAt == '(') {
                if (findAIvalue(i10, substring) != null) {
                    break;
                }
                sb2.append('(');
            } else {
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x020b, code lost:
        if (r1.equals(com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper.TYPE_XIAOMI_CHINA) == false) goto L12;
     */
    @Override // com.google.zxing.client.result.ResultParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.client.result.ExpandedProductParsedResult parse(com.google.zxing.Result r24) {
        /*
            Method dump skipped, instructions count: 862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.ExpandedProductResultParser.parse(com.google.zxing.Result):com.google.zxing.client.result.ExpandedProductParsedResult");
    }
}
