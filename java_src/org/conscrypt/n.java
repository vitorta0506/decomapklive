package org.conscrypt;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.io.File;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes7.dex */
class n {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f56366a = Logger.getLogger(n.class.getName());

    /* renamed from: b  reason: collision with root package name */
    static final c f56367b = b(System.getProperty("os.name", ""));

    /* renamed from: c  reason: collision with root package name */
    static final b f56368c = a(System.getProperty("os.arch", ""));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes7.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f56369a;

        /* renamed from: b  reason: collision with root package name */
        public static final b f56370b;

        /* renamed from: c  reason: collision with root package name */
        public static final b f56371c;

        /* renamed from: d  reason: collision with root package name */
        public static final b f56372d;

        /* renamed from: e  reason: collision with root package name */
        public static final b f56373e;

        /* renamed from: f  reason: collision with root package name */
        public static final b f56374f;

        /* renamed from: g  reason: collision with root package name */
        public static final b f56375g;

        /* renamed from: h  reason: collision with root package name */
        public static final b f56376h;

        /* renamed from: i  reason: collision with root package name */
        public static final b f56377i;

        /* renamed from: j  reason: collision with root package name */
        public static final b f56378j;

        /* renamed from: k  reason: collision with root package name */
        public static final b f56379k;

        /* renamed from: l  reason: collision with root package name */
        public static final b f56380l;

        /* renamed from: m  reason: collision with root package name */
        public static final b f56381m;

        /* renamed from: n  reason: collision with root package name */
        private static final /* synthetic */ b[] f56382n;

        /* loaded from: classes7.dex */
        enum a extends b {
            a(String str, int i9) {
                super(str, i9);
            }

            @Override // org.conscrypt.n.b
            public String a() {
                return "x86";
            }
        }

        static {
            b bVar = new b("X86_64", 0);
            f56369a = bVar;
            a aVar = new a("X86_32", 1);
            f56370b = aVar;
            b bVar2 = new b("ITANIUM_64", 2);
            f56371c = bVar2;
            b bVar3 = new b("SPARC_32", 3);
            f56372d = bVar3;
            b bVar4 = new b("SPARC_64", 4);
            f56373e = bVar4;
            b bVar5 = new b("ARM_32", 5);
            f56374f = bVar5;
            b bVar6 = new b("AARCH_64", 6);
            f56375g = bVar6;
            b bVar7 = new b("PPC_32", 7);
            f56376h = bVar7;
            b bVar8 = new b("PPC_64", 8);
            f56377i = bVar8;
            b bVar9 = new b("PPCLE_64", 9);
            f56378j = bVar9;
            b bVar10 = new b("S390_32", 10);
            f56379k = bVar10;
            b bVar11 = new b("S390_64", 11);
            f56380l = bVar11;
            b bVar12 = new b(GrsBaseInfo.CountryCodeSource.UNKNOWN, 12);
            f56381m = bVar12;
            f56382n = new b[]{bVar, aVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, bVar9, bVar10, bVar11, bVar12};
        }

        private b(String str, int i9) {
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f56382n.clone();
        }

        public String a() {
            return name().toLowerCase();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public enum c {
        AIX,
        HPUX,
        OS400,
        LINUX,
        OSX,
        FREEBSD,
        OPENBSD,
        NETBSD,
        SUNOS,
        WINDOWS,
        UNKNOWN;

        public String a() {
            return name().toLowerCase();
        }
    }

    private n() {
    }

    private static b a(String str) {
        String f10 = f(str);
        if (f10.matches("^(x8664|amd64|ia32e|em64t|x64)$")) {
            return b.f56369a;
        }
        if (f10.matches("^(x8632|x86|i[3-6]86|ia32|x32)$")) {
            return b.f56370b;
        }
        if (f10.matches("^(ia64|itanium64)$")) {
            return b.f56371c;
        }
        if (f10.matches("^(sparc|sparc32)$")) {
            return b.f56372d;
        }
        if (f10.matches("^(sparcv9|sparc64)$")) {
            return b.f56373e;
        }
        if (f10.matches("^(arm|arm32)$")) {
            return b.f56374f;
        }
        if ("aarch64".equals(f10)) {
            return b.f56375g;
        }
        if (f10.matches("^(ppc|ppc32)$")) {
            return b.f56376h;
        }
        if ("ppc64".equals(f10)) {
            return b.f56377i;
        }
        if ("ppc64le".equals(f10)) {
            return b.f56378j;
        }
        if ("s390".equals(f10)) {
            return b.f56379k;
        }
        if ("s390x".equals(f10)) {
            return b.f56380l;
        }
        return b.f56381m;
    }

    private static c b(String str) {
        String f10 = f(str);
        if (f10.startsWith("aix")) {
            return c.AIX;
        }
        if (f10.startsWith("hpux")) {
            return c.HPUX;
        }
        if (f10.startsWith("os400") && (f10.length() <= 5 || !Character.isDigit(f10.charAt(5)))) {
            return c.OS400;
        }
        if (f10.startsWith("linux")) {
            return c.LINUX;
        }
        if (!f10.startsWith("macosx") && !f10.startsWith("osx")) {
            if (f10.startsWith("freebsd")) {
                return c.FREEBSD;
            }
            if (f10.startsWith("openbsd")) {
                return c.OPENBSD;
            }
            if (f10.startsWith("netbsd")) {
                return c.NETBSD;
            }
            if (!f10.startsWith("solaris") && !f10.startsWith("sunos")) {
                if (f10.startsWith("windows")) {
                    return c.WINDOWS;
                }
                return c.UNKNOWN;
            }
            return c.SUNOS;
        }
        return c.OSX;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File c() {
        File file;
        File g10;
        try {
            g10 = g(System.getProperty("org.conscrypt.tmpdir"));
        } catch (Exception unused) {
        }
        if (g10 != null) {
            return g10;
        }
        File g11 = g(System.getProperty("java.io.tmpdir"));
        if (g11 != null) {
            return g11;
        }
        if (e()) {
            File g12 = g(System.getenv("TEMP"));
            if (g12 != null) {
                return g12;
            }
            String str = System.getenv("USERPROFILE");
            if (str != null) {
                File g13 = g(str + "\\AppData\\Local\\Temp");
                if (g13 != null) {
                    return g13;
                }
                File g14 = g(str + "\\Local Settings\\Temp");
                if (g14 != null) {
                    return g14;
                }
            }
        } else {
            File g15 = g(System.getenv("TMPDIR"));
            if (g15 != null) {
                return g15;
            }
        }
        if (e()) {
            file = new File("C:\\Windows\\Temp");
        } else {
            file = new File("/tmp");
        }
        f56366a.log(Level.WARNING, "Failed to get the temporary directory; falling back to: {0}", file);
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d() {
        return f56367b == c.OSX;
    }

    static boolean e() {
        return f56367b == c.WINDOWS;
    }

    private static String f(String str) {
        return str.toLowerCase(Locale.US).replaceAll("[^a-z0-9]+", "");
    }

    private static File g(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str);
        file.mkdirs();
        if (file.isDirectory()) {
            try {
                return file.getAbsoluteFile();
            } catch (Exception unused) {
                return file;
            }
        }
        return null;
    }
}
