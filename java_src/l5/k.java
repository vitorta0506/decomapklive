package l5;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static final String f54209a = d(k.class, "version.gax");

    /* renamed from: b  reason: collision with root package name */
    private static final String f54210b = e();

    private k() {
    }

    public static String a() {
        return f54209a;
    }

    public static String b() {
        return f54210b;
    }

    public static String c(Class<?> cls) {
        String implementationVersion = cls.getPackage().getImplementationVersion();
        return implementationVersion != null ? implementationVersion : "";
    }

    public static String d(Class<?> cls, String str) {
        String str2;
        if (cls.equals(k.class)) {
            str2 = null;
        } else {
            str2 = c(cls);
            if (!"".equals(str2)) {
                return str2;
            }
        }
        try {
            InputStream resourceAsStream = cls.getResourceAsStream("/dependencies.properties");
            if (resourceAsStream != null) {
                Properties properties = new Properties();
                properties.load(resourceAsStream);
                str2 = properties.getProperty(str);
            }
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
        } catch (IOException unused) {
        }
        return str2 != null ? str2 : "";
    }

    private static String e() {
        return System.getProperty("java.version");
    }
}
