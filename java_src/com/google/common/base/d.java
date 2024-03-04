package com.google.common.base;

import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
public abstract class d implements q<Character> {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a extends g {

        /* renamed from: b  reason: collision with root package name */
        static final a f12343b = new a();

        private a() {
            super("CharMatcher.any()");
        }

        @Override // com.google.common.base.d
        public int f(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // com.google.common.base.d
        public int g(CharSequence charSequence, int i9) {
            int length = charSequence.length();
            o.w(i9, length);
            if (i9 == length) {
                return -1;
            }
            return i9;
        }

        @Override // com.google.common.base.d
        public boolean j(char c10) {
            return true;
        }

        @Override // com.google.common.base.d
        public boolean k(CharSequence charSequence) {
            o.s(charSequence);
            return true;
        }

        @Override // com.google.common.base.d
        public boolean l(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.d.c, com.google.common.base.d, java.util.function.Predicate
        /* renamed from: m */
        public d negate() {
            return d.n();
        }
    }

    /* loaded from: classes2.dex */
    private static final class b extends g {

        /* renamed from: b  reason: collision with root package name */
        static final b f12344b = new b();

        b() {
            super("CharMatcher.ascii()");
        }

        @Override // com.google.common.base.d
        public boolean j(char c10) {
            return c10 <= 127;
        }
    }

    /* loaded from: classes2.dex */
    static abstract class c extends d {
        c() {
        }

        @Override // com.google.common.base.d, com.google.common.base.q
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override // com.google.common.base.d, java.util.function.Predicate
        /* renamed from: m */
        public d negate() {
            return new i(this);
        }
    }

    /* renamed from: com.google.common.base.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0100d extends c {

        /* renamed from: a  reason: collision with root package name */
        private final char f12345a;

        /* renamed from: b  reason: collision with root package name */
        private final char f12346b;

        C0100d(char c10, char c11) {
            o.d(c11 >= c10);
            this.f12345a = c10;
            this.f12346b = c11;
        }

        @Override // com.google.common.base.d
        public boolean j(char c10) {
            return this.f12345a <= c10 && c10 <= this.f12346b;
        }

        @Override // com.google.common.base.d
        public String toString() {
            String o10 = d.o(this.f12345a);
            String o11 = d.o(this.f12346b);
            StringBuilder sb2 = new StringBuilder(String.valueOf(o10).length() + 27 + String.valueOf(o11).length());
            sb2.append("CharMatcher.inRange('");
            sb2.append(o10);
            sb2.append("', '");
            sb2.append(o11);
            sb2.append("')");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class e extends c {

        /* renamed from: a  reason: collision with root package name */
        private final char f12347a;

        e(char c10) {
            this.f12347a = c10;
        }

        @Override // com.google.common.base.d
        public boolean j(char c10) {
            return c10 == this.f12347a;
        }

        @Override // com.google.common.base.d.c, com.google.common.base.d, java.util.function.Predicate
        /* renamed from: m */
        public d negate() {
            return d.i(this.f12347a);
        }

        @Override // com.google.common.base.d
        public String toString() {
            String o10 = d.o(this.f12347a);
            StringBuilder sb2 = new StringBuilder(String.valueOf(o10).length() + 18);
            sb2.append("CharMatcher.is('");
            sb2.append(o10);
            sb2.append("')");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class f extends c {

        /* renamed from: a  reason: collision with root package name */
        private final char f12348a;

        f(char c10) {
            this.f12348a = c10;
        }

        @Override // com.google.common.base.d
        public boolean j(char c10) {
            return c10 != this.f12348a;
        }

        @Override // com.google.common.base.d.c, com.google.common.base.d, java.util.function.Predicate
        /* renamed from: m */
        public d negate() {
            return d.h(this.f12348a);
        }

        @Override // com.google.common.base.d
        public String toString() {
            String o10 = d.o(this.f12348a);
            StringBuilder sb2 = new StringBuilder(String.valueOf(o10).length() + 21);
            sb2.append("CharMatcher.isNot('");
            sb2.append(o10);
            sb2.append("')");
            return sb2.toString();
        }
    }

    /* loaded from: classes2.dex */
    static abstract class g extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f12349a;

        g(String str) {
            this.f12349a = (String) o.s(str);
        }

        @Override // com.google.common.base.d
        public final String toString() {
            return this.f12349a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class h extends d {

        /* renamed from: a  reason: collision with root package name */
        final d f12350a;

        h(d dVar) {
            this.f12350a = (d) o.s(dVar);
        }

        @Override // com.google.common.base.d, com.google.common.base.q
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override // com.google.common.base.d
        public boolean j(char c10) {
            return !this.f12350a.j(c10);
        }

        @Override // com.google.common.base.d
        public boolean k(CharSequence charSequence) {
            return this.f12350a.l(charSequence);
        }

        @Override // com.google.common.base.d
        public boolean l(CharSequence charSequence) {
            return this.f12350a.k(charSequence);
        }

        @Override // com.google.common.base.d, java.util.function.Predicate
        /* renamed from: m */
        public d negate() {
            return this.f12350a;
        }

        @Override // com.google.common.base.d
        public String toString() {
            String valueOf = String.valueOf(this.f12350a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 9);
            sb2.append(valueOf);
            sb2.append(".negate()");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class i extends h {
        i(d dVar) {
            super(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class j extends g {

        /* renamed from: b  reason: collision with root package name */
        static final j f12351b = new j();

        private j() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.d
        public int f(CharSequence charSequence) {
            o.s(charSequence);
            return -1;
        }

        @Override // com.google.common.base.d
        public int g(CharSequence charSequence, int i9) {
            o.w(i9, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.d
        public boolean j(char c10) {
            return false;
        }

        @Override // com.google.common.base.d
        public boolean k(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.d
        public boolean l(CharSequence charSequence) {
            o.s(charSequence);
            return true;
        }

        @Override // com.google.common.base.d.c, com.google.common.base.d, java.util.function.Predicate
        /* renamed from: m */
        public d negate() {
            return d.b();
        }
    }

    /* loaded from: classes2.dex */
    static final class k extends g {

        /* renamed from: b  reason: collision with root package name */
        static final int f12352b = Integer.numberOfLeadingZeros(31);

        /* renamed from: c  reason: collision with root package name */
        static final k f12353c = new k();

        k() {
            super("CharMatcher.whitespace()");
        }

        @Override // com.google.common.base.d
        public boolean j(char c10) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c10) >>> f12352b) == c10;
        }
    }

    protected d() {
    }

    public static d b() {
        return a.f12343b;
    }

    public static d d() {
        return b.f12344b;
    }

    public static d e(char c10, char c11) {
        return new C0100d(c10, c11);
    }

    public static d h(char c10) {
        return new e(c10);
    }

    public static d i(char c10) {
        return new f(c10);
    }

    public static d n() {
        return j.f12351b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String o(char c10) {
        char[] cArr = {IOUtils.DIR_SEPARATOR_WINDOWS, 'u', 0, 0, 0, 0};
        for (int i9 = 0; i9 < 4; i9++) {
            cArr[5 - i9] = "0123456789ABCDEF".charAt(c10 & 15);
            c10 = (char) (c10 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public static d p() {
        return k.f12353c;
    }

    @Override // com.google.common.base.q
    @Deprecated
    /* renamed from: c */
    public boolean apply(Character ch2) {
        return j(ch2.charValue());
    }

    public int f(CharSequence charSequence) {
        return g(charSequence, 0);
    }

    public int g(CharSequence charSequence, int i9) {
        int length = charSequence.length();
        o.w(i9, length);
        while (i9 < length) {
            if (j(charSequence.charAt(i9))) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    public abstract boolean j(char c10);

    public boolean k(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!j(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean l(CharSequence charSequence) {
        return f(charSequence) == -1;
    }

    @Override // java.util.function.Predicate
    /* renamed from: m */
    public d negate() {
        return new h(this);
    }

    @Override // com.google.common.base.q, java.util.function.Predicate
    public /* synthetic */ boolean test(Object obj) {
        return p.a(this, obj);
    }

    public String toString() {
        return super.toString();
    }
}
