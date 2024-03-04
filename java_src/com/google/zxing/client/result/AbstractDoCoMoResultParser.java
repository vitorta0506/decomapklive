package com.google.zxing.client.result;
/* loaded from: classes3.dex */
abstract class AbstractDoCoMoResultParser extends ResultParser {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] matchDoCoMoPrefixedField(String str, String str2, boolean z10) {
        return ResultParser.matchPrefixedField(str, str2, ';', z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String matchSingleDoCoMoPrefixedField(String str, String str2, boolean z10) {
        return ResultParser.matchSinglePrefixedField(str, str2, ';', z10);
    }
}
