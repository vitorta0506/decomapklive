package io.grpc.netty.shaded.io.netty.util;

import io.grpc.netty.shaded.io.netty.util.internal.c0;
import io.grpc.netty.shaded.io.netty.util.o;
import io.jsonwebtoken.JwtParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.security.AccessController;
import java.security.PrivilegedAction;
import kotlin.UByte;
/* loaded from: classes5.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final Inet4Address f45222a;

    /* renamed from: b  reason: collision with root package name */
    public static final Inet6Address f45223b;

    /* renamed from: c  reason: collision with root package name */
    public static final InetAddress f45224c;

    /* renamed from: d  reason: collision with root package name */
    public static final NetworkInterface f45225d;

    /* renamed from: e  reason: collision with root package name */
    public static final int f45226e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f45227f;

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f45228g;

    /* renamed from: h  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45229h;

    /* loaded from: classes5.dex */
    static class a implements PrivilegedAction<Integer> {
        a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x00b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Integer run() {
            /*
                r9 = this;
                java.lang.String r0 = "Failed to get SOMAXCONN from sysctl and file {}. Default: {}"
                boolean r1 = io.grpc.netty.shaded.io.netty.util.internal.t.j0()
                if (r1 == 0) goto Lb
                r1 = 200(0xc8, float:2.8E-43)
                goto Ld
            Lb:
                r1 = 128(0x80, float:1.8E-43)
            Ld:
                java.io.File r2 = new java.io.File
                java.lang.String r3 = "/proc/sys/net/core/somaxconn"
                r2.<init>(r3)
                r3 = 0
                r4 = 0
                boolean r5 = r2.exists()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                if (r5 == 0) goto L49
                java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                java.io.FileReader r6 = new java.io.FileReader     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                r6.<init>(r2)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                r5.<init>(r6)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                java.lang.String r4 = r5.readLine()     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> Laf
                int r1 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> Laf
                io.grpc.netty.shaded.io.netty.util.internal.logging.b r4 = io.grpc.netty.shaded.io.netty.util.n.a()     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> Laf
                boolean r4 = r4.isDebugEnabled()     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> Laf
                if (r4 == 0) goto L45
                io.grpc.netty.shaded.io.netty.util.internal.logging.b r4 = io.grpc.netty.shaded.io.netty.util.n.a()     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> Laf
                java.lang.String r6 = "{}: {}"
                java.lang.Integer r7 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> Laf
                r4.debug(r6, r2, r7)     // Catch: java.lang.Exception -> L47 java.lang.Throwable -> Laf
            L45:
                r4 = r5
                goto L79
            L47:
                r4 = move-exception
                goto L85
            L49:
                java.lang.String r5 = "io.grpc.netty.shaded.io.netty.net.somaxconn.trySysctl"
                boolean r5 = io.grpc.netty.shaded.io.netty.util.internal.c0.d(r5, r3)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                if (r5 == 0) goto L6b
                java.lang.String r5 = "kern.ipc.somaxconn"
                java.lang.Integer r5 = io.grpc.netty.shaded.io.netty.util.n.b(r5)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                if (r5 != 0) goto L66
                java.lang.String r5 = "kern.ipc.soacceptqueue"
                java.lang.Integer r5 = io.grpc.netty.shaded.io.netty.util.n.b(r5)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                if (r5 == 0) goto L6c
                int r1 = r5.intValue()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                goto L6c
            L66:
                int r1 = r5.intValue()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                goto L6c
            L6b:
                r5 = r4
            L6c:
                if (r5 != 0) goto L79
                io.grpc.netty.shaded.io.netty.util.internal.logging.b r5 = io.grpc.netty.shaded.io.netty.util.n.a()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                java.lang.Integer r6 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
                r5.debug(r0, r2, r6)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            L79:
                if (r4 == 0) goto Laa
                r4.close()     // Catch: java.lang.Exception -> Laa
                goto Laa
            L7f:
                r0 = move-exception
                goto Lb1
            L81:
                r5 = move-exception
                r8 = r5
                r5 = r4
                r4 = r8
            L85:
                io.grpc.netty.shaded.io.netty.util.internal.logging.b r6 = io.grpc.netty.shaded.io.netty.util.n.a()     // Catch: java.lang.Throwable -> Laf
                boolean r6 = r6.isDebugEnabled()     // Catch: java.lang.Throwable -> Laf
                if (r6 == 0) goto La5
                io.grpc.netty.shaded.io.netty.util.internal.logging.b r6 = io.grpc.netty.shaded.io.netty.util.n.a()     // Catch: java.lang.Throwable -> Laf
                r7 = 3
                java.lang.Object[] r7 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> Laf
                r7[r3] = r2     // Catch: java.lang.Throwable -> Laf
                r2 = 1
                java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> Laf
                r7[r2] = r3     // Catch: java.lang.Throwable -> Laf
                r2 = 2
                r7[r2] = r4     // Catch: java.lang.Throwable -> Laf
                r6.debug(r0, r7)     // Catch: java.lang.Throwable -> Laf
            La5:
                if (r5 == 0) goto Laa
                r5.close()     // Catch: java.lang.Exception -> Laa
            Laa:
                java.lang.Integer r0 = java.lang.Integer.valueOf(r1)
                return r0
            Laf:
                r0 = move-exception
                r4 = r5
            Lb1:
                if (r4 == 0) goto Lb6
                r4.close()     // Catch: java.lang.Exception -> Lb6
            Lb6:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.util.n.a.run():java.lang.Integer");
        }
    }

    static {
        boolean d10 = c0.d("java.net.preferIPv4Stack", false);
        f45227f = d10;
        boolean d11 = c0.d("java.net.preferIPv6Addresses", false);
        f45228g = d11;
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(n.class);
        f45229h = b10;
        b10.debug("-Djava.net.preferIPv4Stack: {}", Boolean.valueOf(d10));
        b10.debug("-Djava.net.preferIPv6Addresses: {}", Boolean.valueOf(d11));
        Inet4Address a10 = o.a();
        f45222a = a10;
        Inet6Address b11 = o.b();
        f45223b = b11;
        o.a c10 = o.c(a10, b11);
        f45225d = c10.b();
        f45224c = c10.a();
        f45226e = ((Integer) AccessController.doPrivileged(new a())).intValue();
    }

    private n() {
    }

    public static String c(InetSocketAddress inetSocketAddress) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 7 ? inetSocketAddress.getHostString() : inetSocketAddress.getHostName();
    }

    private static boolean d(int i9, int i10, int i11) {
        return i9 >= i10 && i9 < i11;
    }

    public static boolean e() {
        return f45227f;
    }

    private static boolean f(char c10) {
        return (c10 >= '0' && c10 <= '9') || (c10 >= 'A' && c10 <= 'F') || (c10 >= 'a' && c10 <= 'f');
    }

    private static boolean g(char c10) {
        return c10 == 'f' || c10 == 'F';
    }

    private static boolean h(c cVar, int i9, int i10) {
        int t10;
        int i11;
        int t11;
        int i12;
        int t12;
        int i13 = i10 - i9;
        return i13 <= 15 && i13 >= 7 && (t10 = cVar.t(JwtParser.SEPARATOR_CHAR, i9 + 1)) > 0 && m(cVar, i9, t10) && (t11 = cVar.t(JwtParser.SEPARATOR_CHAR, (i11 = t10 + 2))) > 0 && m(cVar, i11 - 1, t11) && (t12 = cVar.t(JwtParser.SEPARATOR_CHAR, (i12 = t11 + 2))) > 0 && m(cVar, i12 - 1, t12) && m(cVar, t12 + 1, i10);
    }

    private static boolean i(CharSequence charSequence, int i9, int i10) {
        if (charSequence instanceof String) {
            return k((String) charSequence, i9, i10);
        }
        if (charSequence instanceof c) {
            return h((c) charSequence, i9, i10);
        }
        return l(charSequence, i9, i10);
    }

    public static boolean j(String str) {
        return k(str, 0, str.length());
    }

    private static boolean k(String str, int i9, int i10) {
        int indexOf;
        int i11;
        int indexOf2;
        int i12;
        int indexOf3;
        int i13 = i10 - i9;
        return i13 <= 15 && i13 >= 7 && (indexOf = str.indexOf(46, i9 + 1)) > 0 && m(str, i9, indexOf) && (indexOf2 = str.indexOf(46, (i11 = indexOf + 2))) > 0 && m(str, i11 - 1, indexOf2) && (indexOf3 = str.indexOf(46, (i12 = indexOf2 + 2))) > 0 && m(str, i12 - 1, indexOf3) && m(str, indexOf3 + 1, i10);
    }

    private static boolean l(CharSequence charSequence, int i9, int i10) {
        int u10;
        int i11;
        int u11;
        int i12;
        int u12;
        int i13 = i10 - i9;
        return i13 <= 15 && i13 >= 7 && (u10 = c.u(charSequence, JwtParser.SEPARATOR_CHAR, i9 + 1)) > 0 && m(charSequence, i9, u10) && (u11 = c.u(charSequence, JwtParser.SEPARATOR_CHAR, (i11 = u10 + 2))) > 0 && m(charSequence, i11 - 1, u11) && (u12 = c.u(charSequence, JwtParser.SEPARATOR_CHAR, (i12 = u11 + 2))) > 0 && m(charSequence, i12 - 1, u12) && m(charSequence, u12 + 1, i10);
    }

    private static boolean m(CharSequence charSequence, int i9, int i10) {
        char charAt;
        char charAt2;
        int i11 = i10 - i9;
        if (i11 < 1 || i11 > 3 || (charAt = charSequence.charAt(i9)) < '0') {
            return false;
        }
        if (i11 != 3) {
            if (charAt <= '9') {
                return i11 == 1 || p(charSequence.charAt(i9 + 1));
            }
            return false;
        }
        char charAt3 = charSequence.charAt(i9 + 1);
        if (charAt3 < '0' || (charAt2 = charSequence.charAt(i9 + 2)) < '0') {
            return false;
        }
        if (charAt > '1' || charAt3 > '9' || charAt2 > '9') {
            if (charAt != '2' || charAt3 > '5') {
                return false;
            }
            if (charAt2 > '5' && (charAt3 >= '5' || charAt2 > '9')) {
                return false;
            }
        }
        return true;
    }

    public static boolean n(CharSequence charSequence) {
        int i9;
        int i10;
        int length = charSequence.length();
        int i11 = 2;
        if (length < 2) {
            return false;
        }
        char charAt = charSequence.charAt(0);
        if (charAt == '[') {
            length--;
            if (charSequence.charAt(length) != ']') {
                return false;
            }
            charAt = charSequence.charAt(1);
            i9 = 1;
        } else {
            i9 = 0;
        }
        if (charAt != ':') {
            i11 = 0;
            i10 = -1;
        } else if (charSequence.charAt(i9 + 1) != ':') {
            return false;
        } else {
            int i12 = i9;
            i9 += 2;
            i10 = i12;
        }
        int i13 = i9;
        int i14 = 0;
        while (true) {
            if (i13 >= length) {
                break;
            }
            char charAt2 = charSequence.charAt(i13);
            if (!f(charAt2)) {
                if (charAt2 == '%') {
                    length = i13;
                    break;
                } else if (charAt2 == '.') {
                    if ((i10 >= 0 || i11 == 6) && ((i11 != 7 || i10 < i9) && i11 <= 7)) {
                        int i15 = i13 - i14;
                        int i16 = i15 - 2;
                        if (g(charSequence.charAt(i16))) {
                            if (!g(charSequence.charAt(i16 - 1)) || !g(charSequence.charAt(i16 - 2)) || !g(charSequence.charAt(i16 - 3))) {
                                return false;
                            }
                            i16 -= 5;
                        }
                        while (i16 >= i9) {
                            char charAt3 = charSequence.charAt(i16);
                            if (charAt3 != '0' && charAt3 != ':') {
                                return false;
                            }
                            i16--;
                        }
                        int u10 = c.u(charSequence, '%', i15 + 7);
                        if (u10 >= 0) {
                            length = u10;
                        }
                        return i(charSequence, i15, length);
                    }
                    return false;
                } else if (charAt2 != ':' || i11 > 7) {
                    return false;
                } else {
                    int i17 = i13 - 1;
                    if (charSequence.charAt(i17) != ':') {
                        i14 = 0;
                    } else if (i10 >= 0) {
                        return false;
                    } else {
                        i10 = i17;
                    }
                    i11++;
                }
            } else if (i14 >= 4) {
                return false;
            } else {
                i14++;
            }
            i13++;
        }
        if (i10 < 0) {
            return i11 == 7 && i14 > 0;
        }
        if (i10 + 2 != length) {
            if (i14 <= 0) {
                return false;
            }
            if (i11 >= 8 && i10 > i9) {
                return false;
            }
        }
        return true;
    }

    public static boolean o(String str) {
        return n(str);
    }

    private static boolean p(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Integer q(String str) throws IOException {
        Process start = new ProcessBuilder("sysctl", str).start();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(start.getInputStream()));
            String readLine = bufferedReader.readLine();
            if (readLine != null && readLine.startsWith(str)) {
                for (int length = readLine.length() - 1; length > str.length(); length--) {
                    if (!Character.isDigit(readLine.charAt(length))) {
                        Integer valueOf = Integer.valueOf(readLine.substring(length + 1));
                        bufferedReader.close();
                        start.destroy();
                        return valueOf;
                    }
                }
            }
            bufferedReader.close();
            start.destroy();
            return null;
        } catch (Throwable th2) {
            if (start != null) {
                start.destroy();
            }
            throw th2;
        }
    }

    public static String r(InetAddress inetAddress) {
        return s(inetAddress, false);
    }

    public static String s(InetAddress inetAddress, boolean z10) {
        if (inetAddress instanceof Inet4Address) {
            return inetAddress.getHostAddress();
        }
        if (inetAddress instanceof Inet6Address) {
            return t(inetAddress.getAddress(), 0, z10);
        }
        throw new IllegalArgumentException("Unhandled type: " + inetAddress);
    }

    private static String t(byte[] bArr, int i9, boolean z10) {
        int i10;
        int i11;
        int[] iArr = new int[8];
        int i12 = i9 + 8;
        while (true) {
            i10 = 1;
            if (i9 >= i12) {
                break;
            }
            int i13 = i9 << 1;
            iArr[i9] = (bArr[i13 + 1] & UByte.MAX_VALUE) | ((bArr[i13] & UByte.MAX_VALUE) << 8);
            i9++;
        }
        int i14 = -1;
        boolean z11 = false;
        int i15 = 0;
        int i16 = -1;
        int i17 = 0;
        int i18 = -1;
        while (i15 < 8) {
            if (iArr[i15] == 0) {
                if (i16 < 0) {
                    i16 = i15;
                }
            } else if (i16 >= 0) {
                int i19 = i15 - i16;
                if (i19 > i17) {
                    i17 = i19;
                } else {
                    i16 = i18;
                }
                i18 = i16;
                i16 = -1;
            }
            i15++;
        }
        if (i16 < 0 || (i11 = i15 - i16) <= i17) {
            i16 = i18;
        } else {
            i17 = i11;
        }
        if (i17 == 1) {
            i17 = 0;
        } else {
            i14 = i16;
        }
        int i20 = i17 + i14;
        StringBuilder sb2 = new StringBuilder(39);
        if (i20 < 0) {
            sb2.append(Integer.toHexString(iArr[0]));
            while (i10 < 8) {
                sb2.append(':');
                sb2.append(Integer.toHexString(iArr[i10]));
                i10++;
            }
        } else {
            if (d(0, i14, i20)) {
                sb2.append("::");
                if (z10 && i20 == 5 && iArr[5] == 65535) {
                    z11 = true;
                }
            } else {
                sb2.append(Integer.toHexString(iArr[0]));
            }
            while (i10 < 8) {
                if (!d(i10, i14, i20)) {
                    if (!d(i10 - 1, i14, i20)) {
                        if (z11 && i10 != 6) {
                            sb2.append(JwtParser.SEPARATOR_CHAR);
                        } else {
                            sb2.append(':');
                        }
                    }
                    if (z11 && i10 > 5) {
                        sb2.append(iArr[i10] >> 8);
                        sb2.append(JwtParser.SEPARATOR_CHAR);
                        sb2.append(iArr[i10] & 255);
                    } else {
                        sb2.append(Integer.toHexString(iArr[i10]));
                    }
                } else if (!d(i10 - 1, i14, i20)) {
                    sb2.append("::");
                }
                i10++;
            }
        }
        return sb2.toString();
    }
}
