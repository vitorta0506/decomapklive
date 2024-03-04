package fh;

import com.google.common.base.o;
import com.google.re2j.Pattern;
/* loaded from: classes5.dex */
public abstract class i {

    /* loaded from: classes5.dex */
    public static abstract class a {
        public static a a(long j10, long j11) {
            return new d(j10, j11);
        }

        public abstract long b();

        public abstract long c();
    }

    private static i a(String str, String str2, Pattern pattern, a aVar, Boolean bool, String str3, String str4, boolean z10) {
        o.t(str, "name");
        return new c(str, str2, pattern, aVar, bool, str3, str4, z10);
    }

    public static i c(String str, String str2, boolean z10) {
        o.t(str, "name");
        o.t(str2, "exactValue");
        return a(str, str2, null, null, null, null, null, z10);
    }

    public static i d(String str, String str2, boolean z10) {
        o.t(str, "name");
        o.t(str2, "prefix");
        return a(str, null, null, null, null, str2, null, z10);
    }

    public static i e(String str, boolean z10, boolean z11) {
        o.t(str, "name");
        return a(str, null, null, null, Boolean.valueOf(z10), null, null, z11);
    }

    public static i f(String str, a aVar, boolean z10) {
        o.t(str, "name");
        o.t(aVar, "range");
        return a(str, null, null, aVar, null, null, null, z10);
    }

    public static i g(String str, Pattern pattern, boolean z10) {
        o.t(str, "name");
        o.t(pattern, "safeRegEx");
        return a(str, null, pattern, null, null, null, null, z10);
    }

    public static i h(String str, String str2, boolean z10) {
        o.t(str, "name");
        o.t(str2, "suffix");
        return a(str, null, null, null, null, null, str2, z10);
    }

    public abstract String b();

    public abstract boolean i();

    public boolean j(String str) {
        boolean z10;
        if (str == null) {
            return m() != null && m().booleanValue() == i();
        }
        if (b() != null) {
            z10 = b().equals(str);
        } else if (o() != null) {
            z10 = o().matches(str);
        } else if (n() != null) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong >= n().c()) {
                    if (parseLong <= n().b()) {
                        z10 = true;
                    }
                }
            } catch (NumberFormatException unused) {
            }
            z10 = false;
        } else if (l() != null) {
            z10 = str.startsWith(l());
        } else if (m() != null) {
            z10 = m().booleanValue();
        } else {
            z10 = str.endsWith(p());
        }
        return z10 != i();
    }

    public abstract String k();

    public abstract String l();

    public abstract Boolean m();

    public abstract a n();

    public abstract Pattern o();

    public abstract String p();
}
