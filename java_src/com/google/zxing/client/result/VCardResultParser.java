package com.google.zxing.client.result;

import com.facebook.share.internal.ShareConstants;
import com.google.zxing.Result;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public final class VCardResultParser extends ResultParser {
    private static final Pattern BEGIN_VCARD = Pattern.compile("BEGIN:VCARD", 2);
    private static final Pattern VCARD_LIKE_DATE = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
    private static final Pattern CR_LF_SPACE_TAB = Pattern.compile("\r\n[ \t]");
    private static final Pattern NEWLINE_ESCAPE = Pattern.compile("\\\\[nN]");
    private static final Pattern VCARD_ESCAPES = Pattern.compile("\\\\([,;\\\\])");
    private static final Pattern EQUALS = Pattern.compile(ContainerUtils.KEY_VALUE_DELIMITER);
    private static final Pattern SEMICOLON = Pattern.compile(";");
    private static final Pattern UNESCAPED_SEMICOLONS = Pattern.compile("(?<!\\\\);+");
    private static final Pattern COMMA = Pattern.compile(",");
    private static final Pattern SEMICOLON_OR_COMMA = Pattern.compile("[;,]");

    private static String decodeQuotedPrintable(CharSequence charSequence, String str) {
        char charAt;
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i9 = 0;
        while (i9 < length) {
            char charAt2 = charSequence.charAt(i9);
            if (charAt2 != '\n' && charAt2 != '\r') {
                if (charAt2 != '=') {
                    maybeAppendFragment(byteArrayOutputStream, str, sb2);
                    sb2.append(charAt2);
                } else if (i9 < length - 2 && (charAt = charSequence.charAt(i9 + 1)) != '\r' && charAt != '\n') {
                    i9 += 2;
                    char charAt3 = charSequence.charAt(i9);
                    int parseHexDigit = ResultParser.parseHexDigit(charAt);
                    int parseHexDigit2 = ResultParser.parseHexDigit(charAt3);
                    if (parseHexDigit >= 0 && parseHexDigit2 >= 0) {
                        byteArrayOutputStream.write((parseHexDigit << 4) + parseHexDigit2);
                    }
                }
            }
            i9++;
        }
        maybeAppendFragment(byteArrayOutputStream, str, sb2);
        return sb2.toString();
    }

    private static void formatNames(Iterable<List<String>> iterable) {
        int indexOf;
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i9 = 0;
                int i10 = 0;
                while (i9 < 4 && (indexOf = str.indexOf(59, i10)) >= 0) {
                    strArr[i9] = str.substring(i10, indexOf);
                    i9++;
                    i10 = indexOf + 1;
                }
                strArr[i9] = str.substring(i10);
                StringBuilder sb2 = new StringBuilder(100);
                maybeAppendComponent(strArr, 3, sb2);
                maybeAppendComponent(strArr, 1, sb2);
                maybeAppendComponent(strArr, 2, sb2);
                maybeAppendComponent(strArr, 0, sb2);
                maybeAppendComponent(strArr, 4, sb2);
                list.set(0, sb2.toString().trim());
            }
        }
    }

    private static boolean isLikeVCardDate(CharSequence charSequence) {
        return charSequence == null || VCARD_LIKE_DATE.matcher(charSequence).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z10, boolean z11) {
        List<List<String>> matchVCardPrefixedField = matchVCardPrefixedField(charSequence, str, z10, z11);
        if (matchVCardPrefixedField == null || matchVCardPrefixedField.isEmpty()) {
            return null;
        }
        return matchVCardPrefixedField.get(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<List<String>> matchVCardPrefixedField(CharSequence charSequence, String str, boolean z10, boolean z11) {
        ArrayList arrayList;
        boolean z12;
        String str2;
        String str3;
        int indexOf;
        String replaceAll;
        int length = str.length();
        int i9 = 0;
        int i10 = 0;
        ArrayList arrayList2 = null;
        while (i10 < length) {
            int i11 = 2;
            Matcher matcher = Pattern.compile("(?:^|\n)" + ((Object) charSequence) + "(?:;([^:]*))?:", 2).matcher(str);
            if (i10 > 0) {
                i10--;
            }
            if (!matcher.find(i10)) {
                break;
            }
            int end = matcher.end(i9);
            String group = matcher.group(1);
            if (group != null) {
                String[] split = SEMICOLON.split(group);
                int length2 = split.length;
                int i12 = 0;
                arrayList = null;
                z12 = false;
                str2 = null;
                str3 = null;
                while (i12 < length2) {
                    String str4 = split[i12];
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(str4);
                    String[] split2 = EQUALS.split(str4, i11);
                    if (split2.length > 1) {
                        String str5 = split2[0];
                        String str6 = split2[1];
                        if ("ENCODING".equalsIgnoreCase(str5) && "QUOTED-PRINTABLE".equalsIgnoreCase(str6)) {
                            z12 = true;
                        } else if ("CHARSET".equalsIgnoreCase(str5)) {
                            str2 = str6;
                        } else if ("VALUE".equalsIgnoreCase(str5)) {
                            str3 = str6;
                        }
                    }
                    i12++;
                    i11 = 2;
                }
            } else {
                arrayList = null;
                z12 = false;
                str2 = null;
                str3 = null;
            }
            int i13 = end;
            while (true) {
                indexOf = str.indexOf(10, i13);
                if (indexOf < 0) {
                    break;
                }
                if (indexOf < str.length() - 1) {
                    int i14 = indexOf + 1;
                    if (str.charAt(i14) == ' ' || str.charAt(i14) == '\t') {
                        i13 = indexOf + 2;
                    }
                }
                if (!z12) {
                    break;
                }
                if (indexOf > 0) {
                    if (str.charAt(indexOf - 1) == '=') {
                        i13 = indexOf + 1;
                    }
                }
                if (indexOf < 2) {
                    break;
                }
                if (str.charAt(indexOf - 2) != '=') {
                    break;
                }
                i13 = indexOf + 1;
            }
            if (indexOf < 0) {
                i10 = length;
            } else {
                if (indexOf > end) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                    }
                    if (indexOf > 0 && str.charAt(indexOf - 1) == '\r') {
                        indexOf--;
                    }
                    String substring = str.substring(end, indexOf);
                    if (z10) {
                        substring = substring.trim();
                    }
                    if (z12) {
                        replaceAll = decodeQuotedPrintable(substring, str2);
                        if (z11) {
                            replaceAll = UNESCAPED_SEMICOLONS.matcher(replaceAll).replaceAll(IOUtils.LINE_SEPARATOR_UNIX).trim();
                        }
                    } else {
                        if (z11) {
                            substring = UNESCAPED_SEMICOLONS.matcher(substring).replaceAll(IOUtils.LINE_SEPARATOR_UNIX).trim();
                        }
                        replaceAll = VCARD_ESCAPES.matcher(NEWLINE_ESCAPE.matcher(CR_LF_SPACE_TAB.matcher(substring).replaceAll("")).replaceAll(IOUtils.LINE_SEPARATOR_UNIX)).replaceAll("$1");
                    }
                    if (ShareConstants.MEDIA_URI.equals(str3)) {
                        try {
                            replaceAll = URI.create(replaceAll).getSchemeSpecificPart();
                        } catch (IllegalArgumentException unused) {
                        }
                    }
                    if (arrayList == null) {
                        ArrayList arrayList3 = new ArrayList(1);
                        arrayList3.add(replaceAll);
                        arrayList2.add(arrayList3);
                    } else {
                        arrayList.add(0, replaceAll);
                        arrayList2.add(arrayList);
                        i10 = indexOf + 1;
                    }
                }
                i10 = indexOf + 1;
            }
            i9 = 0;
        }
        return arrayList2;
    }

    private static void maybeAppendComponent(String[] strArr, int i9, StringBuilder sb2) {
        if (strArr[i9] == null || strArr[i9].isEmpty()) {
            return;
        }
        if (sb2.length() > 0) {
            sb2.append(' ');
        }
        sb2.append(strArr[i9]);
    }

    private static void maybeAppendFragment(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb2) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, StandardCharsets.UTF_8);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException unused) {
                    str2 = new String(byteArray, StandardCharsets.UTF_8);
                }
            }
            byteArrayOutputStream.reset();
            sb2.append(str2);
        }
    }

    private static String toPrimaryValue(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static String[] toPrimaryValues(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            String str = list.get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static String[] toTypes(Collection<List<String>> collection) {
        String str;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            String str2 = list.get(0);
            if (str2 != null && !str2.isEmpty()) {
                int i9 = 1;
                while (true) {
                    if (i9 >= list.size()) {
                        str = null;
                        break;
                    }
                    str = list.get(i9);
                    int indexOf = str.indexOf(61);
                    if (indexOf < 0) {
                        break;
                    } else if ("TYPE".equalsIgnoreCase(str.substring(0, indexOf))) {
                        str = str.substring(indexOf + 1);
                        break;
                    } else {
                        i9++;
                    }
                }
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        Matcher matcher = BEGIN_VCARD.matcher(massagedText);
        if (matcher.find() && matcher.start() == 0) {
            List<List<String>> matchVCardPrefixedField = matchVCardPrefixedField("FN", massagedText, true, false);
            if (matchVCardPrefixedField == null) {
                matchVCardPrefixedField = matchVCardPrefixedField("N", massagedText, true, false);
                formatNames(matchVCardPrefixedField);
            }
            List<String> matchSingleVCardPrefixedField = matchSingleVCardPrefixedField("NICKNAME", massagedText, true, false);
            String[] split = matchSingleVCardPrefixedField == null ? null : COMMA.split(matchSingleVCardPrefixedField.get(0));
            List<List<String>> matchVCardPrefixedField2 = matchVCardPrefixedField("TEL", massagedText, true, false);
            List<List<String>> matchVCardPrefixedField3 = matchVCardPrefixedField("EMAIL", massagedText, true, false);
            List<String> matchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField("NOTE", massagedText, false, false);
            List<List<String>> matchVCardPrefixedField4 = matchVCardPrefixedField("ADR", massagedText, true, true);
            List<String> matchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField("ORG", massagedText, true, true);
            List<String> matchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField("BDAY", massagedText, true, false);
            List<String> list = (matchSingleVCardPrefixedField4 == null || isLikeVCardDate(matchSingleVCardPrefixedField4.get(0))) ? matchSingleVCardPrefixedField4 : null;
            List<String> matchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField(ShareConstants.TITLE, massagedText, true, false);
            List<List<String>> matchVCardPrefixedField5 = matchVCardPrefixedField("URL", massagedText, true, false);
            List<String> matchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField("IMPP", massagedText, true, false);
            List<String> matchSingleVCardPrefixedField7 = matchSingleVCardPrefixedField("GEO", massagedText, true, false);
            String[] split2 = matchSingleVCardPrefixedField7 == null ? null : SEMICOLON_OR_COMMA.split(matchSingleVCardPrefixedField7.get(0));
            return new AddressBookParsedResult(toPrimaryValues(matchVCardPrefixedField), split, null, toPrimaryValues(matchVCardPrefixedField2), toTypes(matchVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField3), toTypes(matchVCardPrefixedField3), toPrimaryValue(matchSingleVCardPrefixedField6), toPrimaryValue(matchSingleVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField4), toTypes(matchVCardPrefixedField4), toPrimaryValue(matchSingleVCardPrefixedField3), toPrimaryValue(list), toPrimaryValue(matchSingleVCardPrefixedField5), toPrimaryValues(matchVCardPrefixedField5), (split2 == null || split2.length == 2) ? split2 : null);
        }
        return null;
    }
}
