package fh;

import com.google.common.base.o;
import com.google.re2j.Pattern;
/* loaded from: classes5.dex */
public abstract class j {
    private static j b(String str, String str2, String str3, Pattern pattern, String str4, boolean z10) {
        return new e(str, str2, str3, pattern, str4, z10);
    }

    public static j d(String str) {
        o.t(str, "contains");
        return b(null, null, null, null, str, false);
    }

    public static j e(String str, boolean z10) {
        o.t(str, "exact");
        return b(str, null, null, null, null, z10);
    }

    public static j f(String str, boolean z10) {
        o.t(str, "prefix");
        return b(null, str, null, null, null, z10);
    }

    public static j g(Pattern pattern) {
        o.t(pattern, "regEx");
        return b(null, null, null, pattern, null, false);
    }

    public static j h(String str, boolean z10) {
        o.t(str, "suffix");
        return b(null, null, str, null, null, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean i();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String j();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Pattern k();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String l();
}
