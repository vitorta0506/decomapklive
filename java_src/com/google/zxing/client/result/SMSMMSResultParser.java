package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes3.dex */
public final class SMSMMSResultParser extends ResultParser {
    private static void addNumberVia(Collection<String> collection, Collection<String> collection2, String str) {
        int indexOf = str.indexOf(59);
        if (indexOf < 0) {
            collection.add(str);
            collection2.add(null);
            return;
        }
        collection.add(str.substring(0, indexOf));
        String substring = str.substring(indexOf + 1);
        collection2.add(substring.startsWith("via=") ? substring.substring(4) : null);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public SMSParsedResult parse(Result result) {
        String str;
        String substring;
        String massagedText = ResultParser.getMassagedText(result);
        String str2 = null;
        if (!massagedText.startsWith("sms:") && !massagedText.startsWith("SMS:") && !massagedText.startsWith("mms:") && !massagedText.startsWith("MMS:")) {
            return null;
        }
        Map<String, String> parseNameValuePairs = ResultParser.parseNameValuePairs(massagedText);
        boolean z10 = false;
        if (parseNameValuePairs == null || parseNameValuePairs.isEmpty()) {
            str = null;
        } else {
            str2 = parseNameValuePairs.get("subject");
            str = parseNameValuePairs.get("body");
            z10 = true;
        }
        int indexOf = massagedText.indexOf(63, 4);
        if (indexOf >= 0 && z10) {
            substring = massagedText.substring(4, indexOf);
        } else {
            substring = massagedText.substring(4);
        }
        int i9 = -1;
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        while (true) {
            int i10 = i9 + 1;
            int indexOf2 = substring.indexOf(44, i10);
            if (indexOf2 > i9) {
                addNumberVia(arrayList, arrayList2, substring.substring(i10, indexOf2));
                i9 = indexOf2;
            } else {
                addNumberVia(arrayList, arrayList2, substring.substring(i10));
                return new SMSParsedResult((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str2, str);
            }
        }
    }
}
