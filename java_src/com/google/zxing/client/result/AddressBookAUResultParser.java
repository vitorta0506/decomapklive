package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public final class AddressBookAUResultParser extends ResultParser {
    private static String[] matchMultipleValuePrefix(String str, int i9, String str2, boolean z10) {
        ArrayList arrayList = null;
        for (int i10 = 1; i10 <= i9; i10++) {
            String matchSinglePrefixedField = ResultParser.matchSinglePrefixedField(str + i10 + ':', str2, '\r', z10);
            if (matchSinglePrefixedField == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList(i9);
            }
            arrayList.add(matchSinglePrefixedField);
        }
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        if (massagedText.contains("MEMORY") && massagedText.contains(IOUtils.LINE_SEPARATOR_WINDOWS)) {
            String matchSinglePrefixedField = ResultParser.matchSinglePrefixedField("NAME1:", massagedText, '\r', true);
            String matchSinglePrefixedField2 = ResultParser.matchSinglePrefixedField("NAME2:", massagedText, '\r', true);
            String[] matchMultipleValuePrefix = matchMultipleValuePrefix("TEL", 3, massagedText, true);
            String[] matchMultipleValuePrefix2 = matchMultipleValuePrefix("MAIL", 3, massagedText, true);
            String matchSinglePrefixedField3 = ResultParser.matchSinglePrefixedField("MEMORY:", massagedText, '\r', false);
            String matchSinglePrefixedField4 = ResultParser.matchSinglePrefixedField("ADD:", massagedText, '\r', true);
            return new AddressBookParsedResult(ResultParser.maybeWrap(matchSinglePrefixedField), null, matchSinglePrefixedField2, matchMultipleValuePrefix, null, matchMultipleValuePrefix2, null, null, matchSinglePrefixedField3, matchSinglePrefixedField4 != null ? new String[]{matchSinglePrefixedField4} : null, null, null, null, null, null, null);
        }
        return null;
    }
}
