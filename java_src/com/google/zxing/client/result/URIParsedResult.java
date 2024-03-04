package com.google.zxing.client.result;

import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public final class URIParsedResult extends ParsedResult {
    private static final Pattern USER_IN_HOST = Pattern.compile(":/*([^/@]+)@[^/]+");
    private final String title;
    private final String uri;

    public URIParsedResult(String str, String str2) {
        super(ParsedResultType.URI);
        this.uri = massageURI(str);
        this.title = str2;
    }

    private static boolean isColonFollowedByPortNumber(String str, int i9) {
        int i10 = i9 + 1;
        int indexOf = str.indexOf(47, i10);
        if (indexOf < 0) {
            indexOf = str.length();
        }
        return ResultParser.isSubstringOfDigits(str, i10, indexOf - i10);
    }

    private static String massageURI(String str) {
        String trim = str.trim();
        int indexOf = trim.indexOf(58);
        return (indexOf < 0 || isColonFollowedByPortNumber(trim, indexOf)) ? "http://".concat(trim) : trim;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb2 = new StringBuilder(30);
        ParsedResult.maybeAppend(this.title, sb2);
        ParsedResult.maybeAppend(this.uri, sb2);
        return sb2.toString();
    }

    public String getTitle() {
        return this.title;
    }

    public String getURI() {
        return this.uri;
    }

    public boolean isPossiblyMaliciousURI() {
        return USER_IN_HOST.matcher(this.uri).find();
    }
}
