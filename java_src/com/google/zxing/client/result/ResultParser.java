package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public abstract class ResultParser {
    private static final String BYTE_ORDER_MARK = "\ufeff";
    private static final ResultParser[] PARSERS = {new BookmarkDoCoMoResultParser(), new AddressBookDoCoMoResultParser(), new EmailDoCoMoResultParser(), new AddressBookAUResultParser(), new VCardResultParser(), new BizcardResultParser(), new VEventResultParser(), new EmailAddressResultParser(), new SMTPResultParser(), new TelResultParser(), new SMSMMSResultParser(), new SMSTOMMSTOResultParser(), new GeoResultParser(), new WifiResultParser(), new URLTOResultParser(), new URIResultParser(), new ISBNResultParser(), new ProductResultParser(), new ExpandedProductResultParser(), new VINResultParser()};
    private static final Pattern DIGITS = Pattern.compile("\\d+");
    private static final Pattern AMPERSAND = Pattern.compile(ContainerUtils.FIELD_DELIMITER);
    private static final Pattern EQUALS = Pattern.compile(ContainerUtils.KEY_VALUE_DELIMITER);

    private static void appendKeyValue(CharSequence charSequence, Map<String, String> map) {
        String[] split = EQUALS.split(charSequence, 2);
        if (split.length == 2) {
            try {
                map.put(split[0], urlDecode(split[1]));
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    private static int countPrecedingBackslashes(CharSequence charSequence, int i9) {
        int i10 = 0;
        for (int i11 = i9 - 1; i11 >= 0 && charSequence.charAt(i11) == '\\'; i11--) {
            i10++;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String getMassagedText(Result result) {
        String text = result.getText();
        return text.startsWith(BYTE_ORDER_MARK) ? text.substring(1) : text;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isStringOfDigits(CharSequence charSequence, int i9) {
        return charSequence != null && i9 > 0 && i9 == charSequence.length() && DIGITS.matcher(charSequence).matches();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isSubstringOfDigits(CharSequence charSequence, int i9, int i10) {
        int i11;
        return charSequence != null && i10 > 0 && charSequence.length() >= (i11 = i10 + i9) && DIGITS.matcher(charSequence.subSequence(i9, i11)).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] matchPrefixedField(String str, String str2, char c10, boolean z10) {
        int length = str2.length();
        ArrayList arrayList = null;
        int i9 = 0;
        while (i9 < length) {
            int indexOf = str2.indexOf(str, i9);
            if (indexOf < 0) {
                break;
            }
            int length2 = indexOf + str.length();
            ArrayList arrayList2 = arrayList;
            boolean z11 = true;
            int i10 = length2;
            while (z11) {
                int indexOf2 = str2.indexOf(c10, i10);
                if (indexOf2 < 0) {
                    i10 = str2.length();
                } else if (countPrecedingBackslashes(str2, indexOf2) % 2 != 0) {
                    i10 = indexOf2 + 1;
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(3);
                    }
                    String unescapeBackslash = unescapeBackslash(str2.substring(length2, indexOf2));
                    if (z10) {
                        unescapeBackslash = unescapeBackslash.trim();
                    }
                    if (!unescapeBackslash.isEmpty()) {
                        arrayList2.add(unescapeBackslash);
                    }
                    i10 = indexOf2 + 1;
                }
                z11 = false;
            }
            i9 = i10;
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String matchSinglePrefixedField(String str, String str2, char c10, boolean z10) {
        String[] matchPrefixedField = matchPrefixedField(str, str2, c10, z10);
        if (matchPrefixedField == null) {
            return null;
        }
        return matchPrefixedField[0];
    }

    protected static void maybeAppend(String str, StringBuilder sb2) {
        if (str != null) {
            sb2.append('\n');
            sb2.append(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String[] maybeWrap(String str) {
        if (str == null) {
            return null;
        }
        return new String[]{str};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int parseHexDigit(char c10) {
        if (c10 < '0' || c10 > '9') {
            char c11 = 'a';
            if (c10 < 'a' || c10 > 'f') {
                c11 = 'A';
                if (c10 < 'A' || c10 > 'F') {
                    return -1;
                }
            }
            return (c10 - c11) + 10;
        }
        return c10 - '0';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> parseNameValuePairs(String str) {
        int indexOf = str.indexOf(63);
        if (indexOf < 0) {
            return null;
        }
        HashMap hashMap = new HashMap(3);
        for (String str2 : AMPERSAND.split(str.substring(indexOf + 1))) {
            appendKeyValue(str2, hashMap);
        }
        return hashMap;
    }

    public static ParsedResult parseResult(Result result) {
        for (ResultParser resultParser : PARSERS) {
            ParsedResult parse = resultParser.parse(result);
            if (parse != null) {
                return parse;
            }
        }
        return new TextParsedResult(result.getText(), null);
    }

    protected static String unescapeBackslash(String str) {
        int indexOf = str.indexOf(92);
        if (indexOf < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(length - 1);
        sb2.append(str.toCharArray(), 0, indexOf);
        boolean z10 = false;
        while (indexOf < length) {
            char charAt = str.charAt(indexOf);
            if (z10 || charAt != '\\') {
                sb2.append(charAt);
                z10 = false;
            } else {
                z10 = true;
            }
            indexOf++;
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String urlDecode(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public abstract ParsedResult parse(Result result);

    protected static void maybeAppend(String[] strArr, StringBuilder sb2) {
        if (strArr != null) {
            for (String str : strArr) {
                sb2.append('\n');
                sb2.append(str);
            }
        }
    }
}
