package j5;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final b f53152a = new c("-_.*", true);

    /* renamed from: b  reason: collision with root package name */
    private static final b f53153b = new c("-_.*", false);

    /* renamed from: c  reason: collision with root package name */
    private static final b f53154c = new c("-_.!~*'()@:$&,;=+");

    /* renamed from: d  reason: collision with root package name */
    private static final b f53155d = new c("-_.!~*'()@:$&,;=+/?");

    /* renamed from: e  reason: collision with root package name */
    private static final b f53156e = new c("-_.!~*'():$&,;=");

    /* renamed from: f  reason: collision with root package name */
    private static final b f53157f = new c("-_.!~*'()@:$,;/?:");

    public static String a(String str) {
        try {
            return URLDecoder.decode(str, StandardCharsets.UTF_8.name());
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLDecoder.decode(str.replace("+", "%2B"), StandardCharsets.UTF_8.name());
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Deprecated
    public static String c(String str) {
        return f53152a.a(str);
    }

    public static String d(String str) {
        return f53154c.a(str);
    }

    public static String e(String str) {
        return f53157f.a(str);
    }

    public static String f(String str) {
        return f53156e.a(str);
    }
}
