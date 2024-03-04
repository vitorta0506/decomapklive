package io.grpc.netty.shaded.io.netty.handler.ssl;

import com.facebook.internal.security.CertificateUtil;
import io.grpc.netty.shaded.io.netty.internal.tcnative.Buffer;
import io.grpc.netty.shaded.io.netty.internal.tcnative.Library;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSL;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSLContext;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
public final class e0 {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44520a;

    /* renamed from: b  reason: collision with root package name */
    private static final Throwable f44521b;

    /* renamed from: c  reason: collision with root package name */
    static final List<String> f44522c;

    /* renamed from: d  reason: collision with root package name */
    static final Set<String> f44523d;

    /* renamed from: e  reason: collision with root package name */
    private static final Set<String> f44524e;

    /* renamed from: f  reason: collision with root package name */
    private static final Set<String> f44525f;

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f44526g;

    /* renamed from: h  reason: collision with root package name */
    private static final boolean f44527h;

    /* renamed from: i  reason: collision with root package name */
    private static final boolean f44528i;

    /* renamed from: j  reason: collision with root package name */
    private static final boolean f44529j;

    /* renamed from: k  reason: collision with root package name */
    private static final boolean f44530k;

    /* renamed from: l  reason: collision with root package name */
    static final Set<String> f44531l;

    /* renamed from: m  reason: collision with root package name */
    static final String[] f44532m;

    /* renamed from: n  reason: collision with root package name */
    static final String f44533n;

    /* renamed from: o  reason: collision with root package name */
    static final String[] f44534o;

    /* renamed from: p  reason: collision with root package name */
    private static final String[] f44535p;

    /* JADX WARN: Can't wrap try/catch for region: R(70:6|(2:9|7)|10|11|(4:13|(1:15)|16|17)(1:287)|18|(4:19|20|21|22)|(67:262|263|(4:266|(3:268|269|270)(1:272)|271|264)|273|274|(1:276)(2:278|279)|277|25|26|27|28|29|(3:31|(2:43|44)|42)|48|49|(1:51)|52|54|55|57|58|60|61|62|63|64|65|66|67|68|(2:70|(2:201|202))(2:(2:228|229)|227)|72|73|74|75|76|77|78|(2:176|177)|80|(1:82)|83|(1:85)|86|(1:88)|137|(5:139|(6:141|142|143|144|(2:146|147)(2:149|150)|148)|154|155|(2:170|171)(3:157|(1:159)(1:169)|160))(1:175)|161|162|163|164|98|(4:101|(3:107|108|109)(3:103|104|105)|106|99)|110|111|(1:113)|114|(1:116)|117|(1:119)|120|(1:122)|123|(1:125)|(1:136)(1:129)|130|(2:132|133)(1:135))|24|25|26|27|28|29|(0)|48|49|(0)|52|54|55|57|58|60|61|62|63|64|65|66|67|68|(0)(0)|72|73|74|75|76|77|78|(0)|80|(0)|83|(0)|86|(0)|137|(0)(0)|161|162|163|164|98|(1:99)|110|111|(0)|114|(0)|117|(0)|120|(0)|123|(0)|(1:127)|136|130|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(73:6|(2:9|7)|10|11|(4:13|(1:15)|16|17)(1:287)|18|19|20|21|22|(67:262|263|(4:266|(3:268|269|270)(1:272)|271|264)|273|274|(1:276)(2:278|279)|277|25|26|27|28|29|(3:31|(2:43|44)|42)|48|49|(1:51)|52|54|55|57|58|60|61|62|63|64|65|66|67|68|(2:70|(2:201|202))(2:(2:228|229)|227)|72|73|74|75|76|77|78|(2:176|177)|80|(1:82)|83|(1:85)|86|(1:88)|137|(5:139|(6:141|142|143|144|(2:146|147)(2:149|150)|148)|154|155|(2:170|171)(3:157|(1:159)(1:169)|160))(1:175)|161|162|163|164|98|(4:101|(3:107|108|109)(3:103|104|105)|106|99)|110|111|(1:113)|114|(1:116)|117|(1:119)|120|(1:122)|123|(1:125)|(1:136)(1:129)|130|(2:132|133)(1:135))|24|25|26|27|28|29|(0)|48|49|(0)|52|54|55|57|58|60|61|62|63|64|65|66|67|68|(0)(0)|72|73|74|75|76|77|78|(0)|80|(0)|83|(0)|86|(0)|137|(0)(0)|161|162|163|164|98|(1:99)|110|111|(0)|114|(0)|117|(0)|120|(0)|123|(0)|(1:127)|136|130|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0270, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0271, code lost:
        r13 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0274, code lost:
        r13 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0277, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0278, code lost:
        r27 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x027c, code lost:
        r1 = false;
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0280, code lost:
        r27 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0285, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0286, code lost:
        r29 = r2;
        r13 = 0;
        r27 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x028d, code lost:
        r13 = 0;
        r27 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0292, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0293, code lost:
        r29 = r2;
        r13 = 0;
        r25 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x029a, code lost:
        r13 = 0;
        r25 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x029f, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02a0, code lost:
        r29 = r2;
        r13 = 0;
        r23 = 0;
        r25 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02a8, code lost:
        r27 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02aa, code lost:
        r1 = false;
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02ae, code lost:
        r13 = 0;
        r23 = 0;
        r25 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x02b4, code lost:
        r27 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02b6, code lost:
        r1 = false;
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x03a1, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x03a2, code lost:
        r2 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0250, code lost:
        r1 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02d6 A[Catch: all -> 0x02cd, TryCatch #25 {all -> 0x02cd, blocks: (B:127:0x02c9, B:132:0x02d6, B:135:0x02dd, B:138:0x02e4), top: B:276:0x02c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02dd A[Catch: all -> 0x02cd, TryCatch #25 {all -> 0x02cd, blocks: (B:127:0x02c9, B:132:0x02d6, B:135:0x02dd, B:138:0x02e4), top: B:276:0x02c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02e4 A[Catch: all -> 0x02cd, TRY_LEAVE, TryCatch #25 {all -> 0x02cd, blocks: (B:127:0x02c9, B:132:0x02d6, B:135:0x02dd, B:138:0x02e4), top: B:276:0x02c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02ef A[Catch: all -> 0x03a5, TryCatch #4 {all -> 0x03a5, blocks: (B:124:0x02c2, B:139:0x02e7, B:141:0x02ef, B:143:0x030a), top: B:247:0x02c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x03cc A[Catch: all -> 0x03e5, TryCatch #3 {all -> 0x03e5, blocks: (B:182:0x03c5, B:184:0x03cc, B:187:0x03d3, B:190:0x03da, B:193:0x03e1, B:194:0x03e4), top: B:245:0x03c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03d3 A[Catch: all -> 0x03e5, TryCatch #3 {all -> 0x03e5, blocks: (B:182:0x03c5, B:184:0x03cc, B:187:0x03d3, B:190:0x03da, B:193:0x03e1, B:194:0x03e4), top: B:245:0x03c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x03da A[Catch: all -> 0x03e5, TryCatch #3 {all -> 0x03e5, blocks: (B:182:0x03c5, B:184:0x03cc, B:187:0x03d3, B:190:0x03da, B:193:0x03e1, B:194:0x03e4), top: B:245:0x03c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03e1 A[Catch: all -> 0x03e5, TryCatch #3 {all -> 0x03e5, blocks: (B:182:0x03c5, B:184:0x03cc, B:187:0x03d3, B:190:0x03da, B:193:0x03e1, B:194:0x03e4), top: B:245:0x03c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x04d7  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0501  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x02c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:320:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01bc A[Catch: all -> 0x03b8, TryCatch #16 {all -> 0x03b8, blocks: (B:56:0x01b4, B:58:0x01bc, B:60:0x01c0, B:62:0x01c6, B:65:0x01ce, B:68:0x01d5, B:69:0x01d8, B:70:0x01db, B:72:0x01df, B:73:0x01f1), top: B:263:0x01b4 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01df A[Catch: all -> 0x03b8, TryCatch #16 {all -> 0x03b8, blocks: (B:56:0x01b4, B:58:0x01bc, B:60:0x01c0, B:62:0x01c6, B:65:0x01ce, B:68:0x01d5, B:69:0x01d8, B:70:0x01db, B:72:0x01df, B:73:0x01f1), top: B:263:0x01b4 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0231 A[Catch: all -> 0x0250, TRY_LEAVE, TryCatch #26 {all -> 0x0250, blocks: (B:80:0x022b, B:82:0x0231), top: B:278:0x022b }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0241  */
    static {
        /*
            Method dump skipped, instructions count: 1344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.e0.<clinit>():void");
    }

    private e0() {
    }

    public static Set<String> a() {
        return f44525f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar, String str) {
        String[] split;
        boolean z10;
        if (f44530k && !str.isEmpty()) {
            String[] strArr = f44532m;
            HashSet hashSet = new HashSet(strArr.length);
            Collections.addAll(hashSet, strArr);
            for (String str2 : str.split(CertificateUtil.DELIMITER)) {
                if (hashSet.isEmpty() || (!hashSet.remove(str2) && !hashSet.remove(h.d(str2, SSLSocketFactory.TLS)))) {
                    z10 = true;
                    break;
                }
            }
            z10 = false;
            if ((!hashSet.isEmpty()) | z10) {
                if (bVar.isInfoEnabled()) {
                    StringBuilder sb2 = new StringBuilder(128);
                    for (String str3 : str.split(CertificateUtil.DELIMITER)) {
                        sb2.append(h.d(str3, SSLSocketFactory.TLS));
                        sb2.append(CertificateUtil.DELIMITER);
                    }
                    sb2.setLength(sb2.length() - 1);
                    bVar.info("BoringSSL doesn't allow to enable or disable TLSv1.3 ciphers explicitly. Provided TLSv1.3 ciphers: '{}', default TLSv1.3 ciphers that will be used: '{}'.", sb2, f44533n);
                }
                return f44533n;
            }
        }
        return str;
    }

    private static boolean c() {
        long j10;
        if (s() >= 268443648) {
            try {
                j10 = SSLContext.make(16, 1);
                try {
                    SSLContext.enableOcsp(j10, false);
                    if (j10 != -1) {
                        SSLContext.free(j10);
                        return true;
                    }
                    return true;
                } catch (Exception unused) {
                    if (j10 != -1) {
                        SSLContext.free(j10);
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    if (j10 != -1) {
                        SSLContext.free(j10);
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                j10 = -1;
            } catch (Throwable th3) {
                th = th3;
                j10 = -1;
            }
        }
        return false;
    }

    private static boolean d(int i9, int i10) {
        if (i10 == 0) {
            return false;
        }
        try {
            long make = SSLContext.make(i9, 2);
            if (make != -1) {
                SSLContext.free(make);
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void e() {
        Throwable th2 = f44521b;
        if (th2 != null) {
            throw ((Error) new UnsatisfiedLinkError("failed to load the required native library").initCause(th2));
        }
    }

    private static boolean f(String str) throws Exception {
        return Library.b("provided", str);
    }

    @Deprecated
    public static boolean g() {
        return ((long) s()) >= 268443648;
    }

    public static boolean h() {
        return f44521b == null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i() {
        return f44530k;
    }

    public static boolean j(String str) {
        String i9 = h.i(str, f44530k);
        if (i9 != null) {
            str = i9;
        }
        return f44524e.contains(str);
    }

    public static boolean k() {
        return f44528i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean l() {
        return f44529j;
    }

    private static void m() throws Exception {
        String B0 = io.grpc.netty.shaded.io.netty.util.internal.t.B0();
        String z02 = io.grpc.netty.shaded.io.netty.util.internal.t.z0();
        LinkedHashSet linkedHashSet = new LinkedHashSet(5);
        if ("linux".equals(B0)) {
            Iterator<String> it = io.grpc.netty.shaded.io.netty.util.internal.t.A0().iterator();
            while (it.hasNext()) {
                linkedHashSet.add("netty_tcnative_" + B0 + '_' + z02 + "_" + it.next());
            }
            linkedHashSet.add("netty_tcnative_" + B0 + '_' + z02);
            linkedHashSet.add("netty_tcnative_" + B0 + '_' + z02 + "_fedora");
        } else {
            linkedHashSet.add("netty_tcnative_" + B0 + '_' + z02);
        }
        linkedHashSet.add("netty_tcnative_" + z02);
        linkedHashSet.add("netty_tcnative");
        io.grpc.netty.shaded.io.netty.util.internal.p.g(io.grpc.netty.shaded.io.netty.util.internal.t.D(SSLContext.class), (String[]) linkedHashSet.toArray(new String[0]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long n(kg.j jVar) {
        return jVar.b1() ? jVar.p1() : Buffer.address(jVar.e1(0, jVar.P1()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void o(io.grpc.netty.shaded.io.netty.util.s sVar) {
        if (sVar.refCnt() > 0) {
            io.grpc.netty.shaded.io.netty.util.r.c(sVar);
        }
    }

    static X509Certificate p() throws CertificateException {
        return (X509Certificate) p1.f44715c.generateCertificate(new ByteArrayInputStream("-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----".getBytes(io.grpc.netty.shaded.io.netty.util.h.f45018f)));
    }

    public static Throwable q() {
        return f44521b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r() {
        return f44527h;
    }

    public static int s() {
        if (h()) {
            return SSL.version();
        }
        return -1;
    }

    public static String t() {
        if (h()) {
            return SSL.versionString();
        }
        return null;
    }
}
