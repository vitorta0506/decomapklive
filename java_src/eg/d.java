package eg;

import java.util.Objects;
/* loaded from: classes5.dex */
public final class d {
    public static <T> T a(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    public static <T> T b(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    public static <T> T c(T t10, String str, Object obj) {
        String valueOf;
        if (t10 == null) {
            if (str.contains("%s")) {
                if (str.indexOf("%s") == str.lastIndexOf("%s")) {
                    if (obj instanceof Class) {
                        valueOf = ((Class) obj).getCanonicalName();
                    } else {
                        valueOf = String.valueOf(obj);
                    }
                    throw new NullPointerException(str.replace("%s", valueOf));
                }
                throw new IllegalArgumentException("errorMessageTemplate has more than one format specifier");
            }
            throw new IllegalArgumentException("errorMessageTemplate has no format specifiers");
        }
        return t10;
    }
}
