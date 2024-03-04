package com.meizu.cloud.pushsdk.c.c;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f28402a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f28403b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: c  reason: collision with root package name */
    private final String f28404c;

    /* renamed from: d  reason: collision with root package name */
    private final String f28405d;

    /* renamed from: e  reason: collision with root package name */
    private final String f28406e;

    /* renamed from: f  reason: collision with root package name */
    private final String f28407f;

    private g(String str, String str2, String str3, String str4) {
        this.f28404c = str;
        this.f28405d = str2;
        this.f28406e = str3;
        this.f28407f = str4;
    }

    public static g a(String str) {
        Matcher matcher = f28402a.matcher(str);
        if (matcher.lookingAt()) {
            String group = matcher.group(1);
            Locale locale = Locale.US;
            String lowerCase = group.toLowerCase(locale);
            String lowerCase2 = matcher.group(2).toLowerCase(locale);
            Matcher matcher2 = f28403b.matcher(str);
            String str2 = null;
            for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
                matcher2.region(end, str.length());
                if (!matcher2.lookingAt()) {
                    return null;
                }
                if ("charset".equalsIgnoreCase(matcher2.group(1))) {
                    String group2 = matcher2.group(2) != null ? matcher2.group(2) : matcher2.group(3);
                    if (str2 != null && !group2.equalsIgnoreCase(str2)) {
                        throw new IllegalArgumentException("Multiple different charsets: " + str);
                    }
                    str2 = group2;
                }
            }
            return new g(str, lowerCase, lowerCase2, str2);
        }
        return null;
    }

    public String a() {
        return this.f28405d;
    }

    public Charset b() {
        String str = this.f28407f;
        if (str != null) {
            return Charset.forName(str);
        }
        return null;
    }

    public boolean equals(Object obj) {
        return (obj instanceof g) && ((g) obj).f28404c.equals(this.f28404c);
    }

    public int hashCode() {
        return this.f28404c.hashCode();
    }

    public String toString() {
        return this.f28404c;
    }
}
