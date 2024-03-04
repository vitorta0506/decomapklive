package com.meizu.cloud.pushsdk.c.c;

import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.UByte;
import kotlin.text.Typography;
import okhttp3.HttpUrl;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f28377a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b  reason: collision with root package name */
    private final String f28378b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28379c;

    /* renamed from: d  reason: collision with root package name */
    private final String f28380d;

    /* renamed from: e  reason: collision with root package name */
    private final String f28381e;

    /* renamed from: f  reason: collision with root package name */
    private final int f28382f;

    /* renamed from: g  reason: collision with root package name */
    private final List<String> f28383g;

    /* renamed from: h  reason: collision with root package name */
    private final List<String> f28384h;

    /* renamed from: i  reason: collision with root package name */
    private final String f28385i;

    /* renamed from: j  reason: collision with root package name */
    private final String f28386j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.meizu.cloud.pushsdk.c.c.f$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f28387a;

        static {
            int[] iArr = new int[a.EnumC0280a.values().length];
            f28387a = iArr;
            try {
                iArr[a.EnumC0280a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28387a[a.EnumC0280a.INVALID_HOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28387a[a.EnumC0280a.UNSUPPORTED_SCHEME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28387a[a.EnumC0280a.MISSING_SCHEME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f28387a[a.EnumC0280a.INVALID_PORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f28388a;

        /* renamed from: d  reason: collision with root package name */
        String f28391d;

        /* renamed from: f  reason: collision with root package name */
        final List<String> f28393f;

        /* renamed from: g  reason: collision with root package name */
        List<String> f28394g;

        /* renamed from: h  reason: collision with root package name */
        String f28395h;

        /* renamed from: b  reason: collision with root package name */
        String f28389b = "";

        /* renamed from: c  reason: collision with root package name */
        String f28390c = "";

        /* renamed from: e  reason: collision with root package name */
        int f28392e = -1;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.meizu.cloud.pushsdk.c.c.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public enum EnumC0280a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f28393f = arrayList;
            arrayList.add("");
        }

        private static String a(byte[] bArr) {
            int i9 = 0;
            int i10 = -1;
            int i11 = 0;
            int i12 = 0;
            while (i11 < bArr.length) {
                int i13 = i11;
                while (i13 < 16 && bArr[i13] == 0 && bArr[i13 + 1] == 0) {
                    i13 += 2;
                }
                int i14 = i13 - i11;
                if (i14 > i12) {
                    i10 = i11;
                    i12 = i14;
                }
                i11 = i13 + 2;
            }
            com.meizu.cloud.pushsdk.c.g.b bVar = new com.meizu.cloud.pushsdk.c.g.b();
            while (i9 < bArr.length) {
                if (i9 == i10) {
                    bVar.b(58);
                    i9 += i12;
                    if (i9 == 16) {
                        bVar.b(58);
                    }
                } else {
                    if (i9 > 0) {
                        bVar.b(58);
                    }
                    bVar.d(((bArr[i9] & UByte.MAX_VALUE) << 8) | (bArr[i9 + 1] & UByte.MAX_VALUE));
                    i9 += 2;
                }
            }
            return bVar.h();
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0044 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0041 -> B:11:0x0029). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(java.lang.String r11, int r12, int r13) {
            /*
                r10 = this;
                if (r12 != r13) goto L3
                return
            L3:
                char r0 = r11.charAt(r12)
                r1 = 47
                java.lang.String r2 = ""
                r3 = 1
                if (r0 == r1) goto L1e
                r1 = 92
                if (r0 != r1) goto L13
                goto L1e
            L13:
                java.util.List<java.lang.String> r0 = r10.f28393f
                int r1 = r0.size()
                int r1 = r1 - r3
                r0.set(r1, r2)
                goto L29
            L1e:
                java.util.List<java.lang.String> r0 = r10.f28393f
                r0.clear()
                java.util.List<java.lang.String> r0 = r10.f28393f
                r0.add(r2)
                goto L41
            L29:
                r6 = r12
                if (r6 >= r13) goto L44
                java.lang.String r12 = "/\\"
                int r12 = com.meizu.cloud.pushsdk.c.c.m.a(r11, r6, r13, r12)
                if (r12 >= r13) goto L36
                r0 = 1
                goto L37
            L36:
                r0 = 0
            L37:
                r9 = 1
                r4 = r10
                r5 = r11
                r7 = r12
                r8 = r0
                r4.a(r5, r6, r7, r8, r9)
                if (r0 == 0) goto L29
            L41:
                int r12 = r12 + 1
                goto L29
            L44:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.meizu.cloud.pushsdk.c.c.f.a.a(java.lang.String, int, int):void");
        }

        private void a(String str, int i9, int i10, boolean z10, boolean z11) {
            String b10 = f.b(str, i9, i10, HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, true);
            if (b(b10)) {
                return;
            }
            if (c(b10)) {
                c();
                return;
            }
            List<String> list = this.f28393f;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f28393f;
                list2.set(list2.size() - 1, b10);
            } else {
                this.f28393f.add(b10);
            }
            if (z10) {
                this.f28393f.add("");
            }
        }

        private static boolean a(String str, int i9, int i10, byte[] bArr, int i11) {
            int i12 = i11;
            while (i9 < i10) {
                if (i12 == bArr.length) {
                    return false;
                }
                if (i12 != i11) {
                    if (str.charAt(i9) != '.') {
                        return false;
                    }
                    i9++;
                }
                int i13 = i9;
                int i14 = 0;
                while (i13 < i10) {
                    char charAt = str.charAt(i13);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    } else if ((i14 == 0 && i9 != i13) || (i14 = ((i14 * 10) + charAt) - 48) > 255) {
                        return false;
                    } else {
                        i13++;
                    }
                }
                if (i13 - i9 == 0) {
                    return false;
                }
                bArr[i12] = (byte) i14;
                i12++;
                i9 = i13;
            }
            return i12 == i11 + 4;
        }

        private static int b(String str, int i9, int i10) {
            if (i10 - i9 < 2) {
                return -1;
            }
            char charAt = str.charAt(i9);
            boolean z10 = false;
            boolean z11 = charAt < 'a' || charAt > 'z';
            z10 = (charAt < 'A' || charAt > 'Z') ? true : true;
            if (z11 && z10) {
                return -1;
            }
            for (int i11 = i9 + 1; i11 < i10; i11++) {
                char charAt2 = str.charAt(i11);
                if ((charAt2 < 'a' || charAt2 > 'z') && ((charAt2 < 'A' || charAt2 > 'Z') && !((charAt2 >= '0' && charAt2 <= '9') || charAt2 == '+' || charAt2 == '-' || charAt2 == '.'))) {
                    if (charAt2 == ':') {
                        return i11;
                    }
                    return -1;
                }
            }
            return -1;
        }

        private boolean b(String str) {
            return ".".equals(str) || "%2e".equalsIgnoreCase(str);
        }

        private static int c(String str, int i9, int i10) {
            int i11 = 0;
            while (i9 < i10) {
                char charAt = str.charAt(i9);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i11++;
                i9++;
            }
            return i11;
        }

        private void c() {
            List<String> list = this.f28393f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f28393f.isEmpty()) {
                this.f28393f.add("");
                return;
            }
            List<String> list2 = this.f28393f;
            list2.set(list2.size() - 1, "");
        }

        private boolean c(String str) {
            return "..".equals(str) || "%2e.".equalsIgnoreCase(str) || ".%2e".equalsIgnoreCase(str) || "%2e%2e".equalsIgnoreCase(str);
        }

        private static int d(String str, int i9, int i10) {
            while (i9 < i10) {
                char charAt = str.charAt(i9);
                if (charAt == ':') {
                    return i9;
                }
                if (charAt == '[') {
                    do {
                        i9++;
                        if (i9 < i10) {
                        }
                    } while (str.charAt(i9) != ']');
                }
                i9++;
            }
            return i10;
        }

        private static String e(String str, int i9, int i10) {
            String b10 = f.b(str, i9, i10, false);
            if (b10.contains(CertificateUtil.DELIMITER)) {
                InetAddress f10 = (b10.startsWith("[") && b10.endsWith("]")) ? f(b10, 1, b10.length() - 1) : f(b10, 0, b10.length());
                if (f10 == null) {
                    return null;
                }
                byte[] address = f10.getAddress();
                if (address.length == 16) {
                    return a(address);
                }
                throw new AssertionError();
            }
            return m.a(b10);
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x0079, code lost:
            return null;
         */
        /* JADX WARN: Removed duplicated region for block: B:31:0x004f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static java.net.InetAddress f(java.lang.String r11, int r12, int r13) {
            /*
                r0 = 16
                byte[] r1 = new byte[r0]
                r2 = -1
                r3 = 0
                r4 = 0
                r5 = -1
                r6 = -1
            L9:
                r7 = 0
                if (r12 >= r13) goto L7a
                if (r4 != r0) goto Lf
                return r7
            Lf:
                int r8 = r12 + 2
                if (r8 > r13) goto L27
                java.lang.String r9 = "::"
                r10 = 2
                boolean r9 = r11.regionMatches(r12, r9, r3, r10)
                if (r9 == 0) goto L27
                if (r5 == r2) goto L1f
                return r7
            L1f:
                int r4 = r4 + 2
                r5 = r4
                if (r8 != r13) goto L25
                goto L7a
            L25:
                r6 = r8
                goto L4b
            L27:
                if (r4 == 0) goto L4a
                java.lang.String r8 = ":"
                r9 = 1
                boolean r8 = r11.regionMatches(r12, r8, r3, r9)
                if (r8 == 0) goto L35
                int r12 = r12 + 1
                goto L4a
            L35:
                java.lang.String r8 = "."
                boolean r12 = r11.regionMatches(r12, r8, r3, r9)
                if (r12 == 0) goto L49
                int r12 = r4 + (-2)
                boolean r11 = a(r11, r6, r13, r1, r12)
                if (r11 != 0) goto L46
                return r7
            L46:
                int r4 = r4 + 2
                goto L7a
            L49:
                return r7
            L4a:
                r6 = r12
            L4b:
                r12 = r6
                r8 = 0
            L4d:
                if (r12 >= r13) goto L60
                char r9 = r11.charAt(r12)
                int r9 = com.meizu.cloud.pushsdk.c.c.f.a(r9)
                if (r9 != r2) goto L5a
                goto L60
            L5a:
                int r8 = r8 << 4
                int r8 = r8 + r9
                int r12 = r12 + 1
                goto L4d
            L60:
                int r9 = r12 - r6
                if (r9 == 0) goto L79
                r10 = 4
                if (r9 <= r10) goto L68
                goto L79
            L68:
                int r7 = r4 + 1
                int r9 = r8 >>> 8
                r9 = r9 & 255(0xff, float:3.57E-43)
                byte r9 = (byte) r9
                r1[r4] = r9
                int r4 = r7 + 1
                r8 = r8 & 255(0xff, float:3.57E-43)
                byte r8 = (byte) r8
                r1[r7] = r8
                goto L9
            L79:
                return r7
            L7a:
                if (r4 == r0) goto L8b
                if (r5 != r2) goto L7f
                return r7
            L7f:
                int r11 = r4 - r5
                int r12 = 16 - r11
                java.lang.System.arraycopy(r1, r5, r1, r12, r11)
                int r0 = r0 - r4
                int r0 = r0 + r5
                java.util.Arrays.fill(r1, r5, r0, r3)
            L8b:
                java.net.InetAddress r11 = java.net.InetAddress.getByAddress(r1)     // Catch: java.net.UnknownHostException -> L90
                return r11
            L90:
                java.lang.AssertionError r11 = new java.lang.AssertionError
                r11.<init>()
                throw r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.meizu.cloud.pushsdk.c.c.f.a.f(java.lang.String, int, int):java.net.InetAddress");
        }

        private static int g(String str, int i9, int i10) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(f.b(str, i9, i10, "", false, false, false, true));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }

        int a() {
            int i9 = this.f28392e;
            return i9 != -1 ? i9 : f.a(this.f28388a);
        }

        EnumC0280a a(f fVar, String str) {
            int a10;
            int i9;
            int a11 = m.a(str, 0, str.length());
            int b10 = m.b(str, a11, str.length());
            if (b(str, a11, b10) != -1) {
                if (str.regionMatches(true, a11, "https:", 0, 6)) {
                    this.f28388a = ProxyConfig.MATCH_HTTPS;
                    a11 += 6;
                } else if (!str.regionMatches(true, a11, "http:", 0, 5)) {
                    return EnumC0280a.UNSUPPORTED_SCHEME;
                } else {
                    this.f28388a = "http";
                    a11 += 5;
                }
            } else if (fVar == null) {
                return EnumC0280a.MISSING_SCHEME;
            } else {
                this.f28388a = fVar.f28378b;
            }
            int c10 = c(str, a11, b10);
            char c11 = '?';
            char c12 = '#';
            if (c10 >= 2 || fVar == null || !fVar.f28378b.equals(this.f28388a)) {
                int i10 = a11 + c10;
                boolean z10 = false;
                boolean z11 = false;
                while (true) {
                    a10 = m.a(str, i10, b10, "@/\\?#");
                    char charAt = a10 != b10 ? str.charAt(a10) : (char) 65535;
                    if (charAt == 65535 || charAt == c12 || charAt == '/' || charAt == '\\' || charAt == c11) {
                        break;
                    }
                    if (charAt == '@') {
                        if (z10) {
                            i9 = a10;
                            this.f28390c += "%40" + f.b(str, i10, i9, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                        } else {
                            int a12 = m.a(str, i10, a10, ':');
                            i9 = a10;
                            String b11 = f.b(str, i10, a12, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                            if (z11) {
                                b11 = this.f28389b + "%40" + b11;
                            }
                            this.f28389b = b11;
                            if (a12 != i9) {
                                this.f28390c = f.b(str, a12 + 1, i9, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                                z10 = true;
                            }
                            z11 = true;
                        }
                        i10 = i9 + 1;
                    }
                    c11 = '?';
                    c12 = '#';
                }
                int d10 = d(str, i10, a10);
                int i11 = d10 + 1;
                this.f28391d = e(str, i10, d10);
                if (i11 < a10) {
                    int g10 = g(str, i11, a10);
                    this.f28392e = g10;
                    if (g10 == -1) {
                        return EnumC0280a.INVALID_PORT;
                    }
                } else {
                    this.f28392e = f.a(this.f28388a);
                }
                if (this.f28391d == null) {
                    return EnumC0280a.INVALID_HOST;
                }
                a11 = a10;
            } else {
                this.f28389b = fVar.a();
                this.f28390c = fVar.b();
                this.f28391d = fVar.f28381e;
                this.f28392e = fVar.f28382f;
                this.f28393f.clear();
                this.f28393f.addAll(fVar.c());
                if (a11 == b10 || str.charAt(a11) == '#') {
                    a(fVar.d());
                }
            }
            int a13 = m.a(str, a11, b10, "?#");
            a(str, a11, a13);
            if (a13 < b10 && str.charAt(a13) == '?') {
                int a14 = m.a(str, a13, b10, '#');
                this.f28394g = f.b(f.b(str, a13 + 1, a14, HttpUrl.QUERY_ENCODE_SET, true, false, true, true));
                a13 = a14;
            }
            if (a13 < b10 && str.charAt(a13) == '#') {
                this.f28395h = f.b(str, 1 + a13, b10, "", true, false, false, false);
            }
            return EnumC0280a.SUCCESS;
        }

        public a a(String str) {
            this.f28394g = str != null ? f.b(f.a(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public a a(String str, String str2) {
            if (str != null) {
                if (this.f28394g == null) {
                    this.f28394g = new ArrayList();
                }
                this.f28394g.add(f.a(str, HttpUrl.QUERY_COMPONENT_REENCODE_SET, false, false, true, true));
                this.f28394g.add(str2 != null ? f.a(str2, HttpUrl.QUERY_COMPONENT_REENCODE_SET, false, false, true, true) : null);
                return this;
            }
            throw new IllegalArgumentException("name == null");
        }

        public f b() {
            if (this.f28388a != null) {
                if (this.f28391d != null) {
                    return new f(this, null);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f28388a);
            sb2.append("://");
            if (!this.f28389b.isEmpty() || !this.f28390c.isEmpty()) {
                sb2.append(this.f28389b);
                if (!this.f28390c.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.f28390c);
                }
                sb2.append('@');
            }
            if (this.f28391d.indexOf(58) != -1) {
                sb2.append('[');
                sb2.append(this.f28391d);
                sb2.append(']');
            } else {
                sb2.append(this.f28391d);
            }
            int a10 = a();
            if (a10 != f.a(this.f28388a)) {
                sb2.append(':');
                sb2.append(a10);
            }
            f.a(sb2, this.f28393f);
            if (this.f28394g != null) {
                sb2.append('?');
                f.b(sb2, this.f28394g);
            }
            if (this.f28395h != null) {
                sb2.append('#');
                sb2.append(this.f28395h);
            }
            return sb2.toString();
        }
    }

    private f(a aVar) {
        this.f28378b = aVar.f28388a;
        this.f28379c = a(aVar.f28389b, false);
        this.f28380d = a(aVar.f28390c, false);
        this.f28381e = aVar.f28391d;
        this.f28382f = aVar.a();
        this.f28383g = a(aVar.f28393f, false);
        List<String> list = aVar.f28394g;
        this.f28384h = list != null ? a(list, true) : null;
        String str = aVar.f28395h;
        this.f28385i = str != null ? a(str, false) : null;
        this.f28386j = aVar.toString();
    }

    /* synthetic */ f(a aVar, AnonymousClass1 anonymousClass1) {
        this(aVar);
    }

    public static int a(String str) {
        if ("http".equals(str)) {
            return 80;
        }
        return ProxyConfig.MATCH_HTTPS.equals(str) ? 443 : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        return b(str, 0, str.length(), str2, z10, z11, z12, z13);
    }

    static String a(String str, boolean z10) {
        return b(str, 0, str.length(), z10);
    }

    private List<String> a(List<String> list, boolean z10) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next != null ? a(next, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static void a(com.meizu.cloud.pushsdk.c.g.b bVar, String str, int i9, int i10, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        com.meizu.cloud.pushsdk.c.g.b bVar2 = null;
        int i11 = i9;
        while (i11 < i10) {
            int codePointAt = str.codePointAt(i11);
            if (codePointAt == 43 && z12) {
                bVar.b(z10 ? "+" : "%2B");
            } else if (a(codePointAt, i11, str, i10, str2, z10, z11, z12, z13)) {
                if (bVar2 == null) {
                    bVar2 = new com.meizu.cloud.pushsdk.c.g.b();
                }
                bVar2.a(codePointAt);
                while (!bVar2.c()) {
                    int f10 = bVar2.f() & UByte.MAX_VALUE;
                    bVar.b(37);
                    char[] cArr = f28377a;
                    bVar.b((int) cArr[(f10 >> 4) & 15]);
                    bVar.b((int) cArr[f10 & 15]);
                }
            } else {
                bVar.a(codePointAt);
            }
            i11 += Character.charCount(codePointAt);
        }
    }

    private static void a(com.meizu.cloud.pushsdk.c.g.b bVar, String str, int i9, int i10, boolean z10) {
        int i11;
        while (i9 < i10) {
            int codePointAt = str.codePointAt(i9);
            if (codePointAt != 37 || (i11 = i9 + 2) >= i10) {
                if (codePointAt == 43 && z10) {
                    bVar.b(32);
                }
                bVar.a(codePointAt);
            } else {
                int b10 = b(str.charAt(i9 + 1));
                int b11 = b(str.charAt(i11));
                if (b10 != -1 && b11 != -1) {
                    bVar.b((b10 << 4) + b11);
                    i9 = i11;
                }
                bVar.a(codePointAt);
            }
            i9 += Character.charCount(codePointAt);
        }
    }

    static void a(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb2.append(list.get(i9));
        }
    }

    private static boolean a(int i9, int i10, String str, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        if (i9 < 32 || i9 == 127) {
            return true;
        }
        if ((i9 < 128 || !z13) && str2.indexOf(i9) == -1) {
            boolean z14 = !z10 || (z11 && !a(str, i10, i11));
            if (i9 == 37 && z14) {
                return true;
            }
            return i9 == 43 && z12;
        }
        return true;
    }

    private static boolean a(String str, int i9, int i10) {
        int i11 = i9 + 2;
        return i11 < i10 && str.charAt(i9) == '%' && b(str.charAt(i9 + 1)) != -1 && b(str.charAt(i11)) != -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(char c10) {
        if (c10 < '0' || c10 > '9') {
            char c11 = 'a';
            if (c10 < 'a' || c10 > 'f') {
                c11 = 'A';
                if (c10 < 'A' || c10 > 'F') {
                    return -1;
                }
            }
            return (c10 - c11) + 10;
        }
        return c10 - '0';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, int i9, int i10, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        int i11 = i9;
        while (i11 < i10) {
            int codePointAt = str.codePointAt(i11);
            if (a(codePointAt, i11, str, i10, str2, z10, z11, z12, z13)) {
                com.meizu.cloud.pushsdk.c.g.b bVar = new com.meizu.cloud.pushsdk.c.g.b();
                bVar.a(str, i9, i11);
                a(bVar, str, i11, i10, str2, z10, z11, z12, z13);
                return bVar.h();
            }
            i11 += Character.charCount(codePointAt);
        }
        return str.substring(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, int i9, int i10, boolean z10) {
        for (int i11 = i9; i11 < i10; i11++) {
            char charAt = str.charAt(i11);
            boolean z11 = false;
            boolean z12 = charAt == '%';
            if (charAt == '+' && z10) {
                z11 = true;
            }
            if (z12 || z11) {
                com.meizu.cloud.pushsdk.c.g.b bVar = new com.meizu.cloud.pushsdk.c.g.b();
                bVar.a(str, i9, i11);
                a(bVar, str, i11, i10, z10);
                return bVar.h();
            }
        }
        return str.substring(i9, i10);
    }

    static List<String> b(String str) {
        String str2;
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        while (i9 <= str.length()) {
            int indexOf = str.indexOf(38, i9);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i9);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i9, indexOf));
                str2 = null;
            } else {
                arrayList.add(str.substring(i9, indexOf2));
                str2 = str.substring(indexOf2 + 1, indexOf);
            }
            arrayList.add(str2);
            i9 = indexOf + 1;
        }
        return arrayList;
    }

    static void b(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9 += 2) {
            String str = list.get(i9);
            String str2 = list.get(i9 + 1);
            if (i9 > 0) {
                sb2.append(Typography.amp);
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    public static f c(String str) {
        a aVar = new a();
        if (aVar.a((f) null, str) == a.EnumC0280a.SUCCESS) {
            return aVar.b();
        }
        return null;
    }

    public String a() {
        if (this.f28379c.isEmpty()) {
            return "";
        }
        int length = this.f28378b.length() + 3;
        String str = this.f28386j;
        return this.f28386j.substring(length, m.a(str, length, str.length(), ":@"));
    }

    public String b() {
        if (this.f28380d.isEmpty()) {
            return "";
        }
        int indexOf = this.f28386j.indexOf(64);
        return this.f28386j.substring(this.f28386j.indexOf(58, this.f28378b.length() + 3) + 1, indexOf);
    }

    public List<String> c() {
        int indexOf = this.f28386j.indexOf(47, this.f28378b.length() + 3);
        String str = this.f28386j;
        int a10 = m.a(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < a10) {
            int i9 = indexOf + 1;
            int a11 = m.a(this.f28386j, i9, a10, (char) IOUtils.DIR_SEPARATOR_UNIX);
            arrayList.add(this.f28386j.substring(i9, a11));
            indexOf = a11;
        }
        return arrayList;
    }

    public String d() {
        if (this.f28384h == null) {
            return null;
        }
        int indexOf = this.f28386j.indexOf(63) + 1;
        String str = this.f28386j;
        return this.f28386j.substring(indexOf, m.a(str, indexOf + 1, str.length(), '#'));
    }

    public String e() {
        if (this.f28385i == null) {
            return null;
        }
        return this.f28386j.substring(this.f28386j.indexOf(35) + 1);
    }

    public boolean equals(Object obj) {
        return (obj instanceof f) && ((f) obj).f28386j.equals(this.f28386j);
    }

    public a f() {
        a aVar = new a();
        aVar.f28388a = this.f28378b;
        aVar.f28389b = a();
        aVar.f28390c = b();
        aVar.f28391d = this.f28381e;
        aVar.f28392e = this.f28382f != a(this.f28378b) ? this.f28382f : -1;
        aVar.f28393f.clear();
        aVar.f28393f.addAll(c());
        aVar.a(d());
        aVar.f28395h = e();
        return aVar;
    }

    public int hashCode() {
        return this.f28386j.hashCode();
    }

    public String toString() {
        return this.f28386j;
    }
}
