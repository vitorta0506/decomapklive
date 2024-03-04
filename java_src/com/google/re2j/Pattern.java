package com.google.re2j;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class Pattern implements Serializable {
    public static final int CASE_INSENSITIVE = 1;
    public static final int DISABLE_UNICODE_GROUPS = 8;
    public static final int DOTALL = 2;
    public static final int LONGEST_MATCH = 16;
    public static final int MULTILINE = 4;
    private static final long serialVersionUID = 0;
    private final int flags;
    private final String pattern;
    private final transient k re2;

    Pattern(String str, int i9, k kVar) {
        Objects.requireNonNull(str, "pattern is null");
        Objects.requireNonNull(kVar, "re2 is null");
        this.pattern = str;
        this.flags = i9;
        this.re2 = kVar;
    }

    public static Pattern compile(String str) {
        return compile(str, str, 0);
    }

    public static boolean matches(String str, CharSequence charSequence) {
        return compile(str).matcher(charSequence).m();
    }

    public static String quote(String str) {
        return k.g(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Pattern.class != obj.getClass()) {
            return false;
        }
        Pattern pattern = (Pattern) obj;
        return this.flags == pattern.flags && this.pattern.equals(pattern.pattern);
    }

    public int flags() {
        return this.flags;
    }

    public int groupCount() {
        return this.re2.e();
    }

    public int hashCode() {
        return (this.pattern.hashCode() * 31) + this.flags;
    }

    public h matcher(CharSequence charSequence) {
        return new h(this, charSequence);
    }

    public String pattern() {
        return this.pattern;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k re2() {
        return this.re2;
    }

    Object readResolve() {
        return compile(this.pattern, this.flags);
    }

    public void reset() {
        this.re2.h();
    }

    public String[] split(String str) {
        return split(str, 0);
    }

    public String toString() {
        return this.pattern;
    }

    public static Pattern compile(String str, int i9) {
        String str2;
        if ((i9 & 1) != 0) {
            str2 = "(?i)" + str;
        } else {
            str2 = str;
        }
        if ((i9 & 2) != 0) {
            str2 = "(?s)" + str2;
        }
        if ((i9 & 4) != 0) {
            str2 = "(?m)" + str2;
        }
        if ((i9 & (-32)) == 0) {
            return compile(str2, str, i9);
        }
        throw new IllegalArgumentException("Flags should only be a combination of MULTILINE, DOTALL, CASE_INSENSITIVE, DISABLE_UNICODE_GROUPS, LONGEST_MATCH");
    }

    public boolean matches(String str) {
        return matcher(str).m();
    }

    public String[] split(String str, int i9) {
        return split(new h(this, str), i9);
    }

    private String[] split(h hVar, int i9) {
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (hVar.g()) {
            i12++;
            if (i9 != 0 || i11 < hVar.r()) {
                i13 = i12;
            }
            i11 = hVar.e();
        }
        int i14 = 1;
        if (i11 < hVar.k() || i9 != 0) {
            i13 = i12 + 1;
        }
        if (i9 <= 0 || i13 <= i9) {
            i9 = i13;
            i14 = 0;
        }
        String[] strArr = new String[i9];
        hVar.p();
        int i15 = 0;
        while (hVar.g() && i10 < i9 - i14) {
            strArr[i10] = hVar.t(i15, hVar.r());
            i15 = hVar.e();
            i10++;
        }
        if (i10 < i9) {
            strArr[i10] = hVar.t(i15, hVar.k());
        }
        return strArr;
    }

    private static Pattern compile(String str, String str2, int i9) {
        return new Pattern(str2, i9, k.a(str, (i9 & 8) != 0 ? 84 : 212, (i9 & 16) != 0));
    }
}
