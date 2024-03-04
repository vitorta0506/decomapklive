package com.google.android.gms.internal.recaptcha;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class l3 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f8833a = Pattern.compile("(\\w+).*");

    public static String a(List<String> list) {
        if (list.isEmpty()) {
            return null;
        }
        k9 listIterator = ((zzkj) list).listIterator(0);
        StringBuilder sb2 = new StringBuilder();
        q7.b(sb2, listIterator, "+");
        String valueOf = String.valueOf(sb2.toString());
        return valueOf.length() != 0 ? "transform=".concat(valueOf) : new String("transform=");
    }

    public static String b(String str) {
        Matcher matcher = f8833a.matcher(str);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid fragment spec: ".concat(valueOf) : new String("Invalid fragment spec: "));
        }
        return matcher.group(1);
    }
}
