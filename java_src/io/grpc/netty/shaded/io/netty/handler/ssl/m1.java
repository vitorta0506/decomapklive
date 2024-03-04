package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
final class m1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f44707a = Pattern.compile("(?:(^[a-zA-Z].+)With(.+)Encryption$)|(?:(^[a-zA-Z].+)(?:_with_|-with-|_pkcs1_|_pss_rsae_)(.+$))|(?:(^[a-zA-Z].+)_(.+$))");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f44707a.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            if (group != null) {
                StringBuilder sb2 = new StringBuilder();
                Locale locale = Locale.ROOT;
                sb2.append(group.toUpperCase(locale));
                sb2.append("with");
                sb2.append(matcher.group(2).toUpperCase(locale));
                return sb2.toString();
            } else if (matcher.group(3) != null) {
                StringBuilder sb3 = new StringBuilder();
                String group2 = matcher.group(4);
                Locale locale2 = Locale.ROOT;
                sb3.append(group2.toUpperCase(locale2));
                sb3.append("with");
                sb3.append(matcher.group(3).toUpperCase(locale2));
                return sb3.toString();
            } else if (matcher.group(5) != null) {
                StringBuilder sb4 = new StringBuilder();
                String group3 = matcher.group(6);
                Locale locale3 = Locale.ROOT;
                sb4.append(group3.toUpperCase(locale3));
                sb4.append("with");
                sb4.append(matcher.group(5).toUpperCase(locale3));
                return sb4.toString();
            }
        }
        return null;
    }
}
