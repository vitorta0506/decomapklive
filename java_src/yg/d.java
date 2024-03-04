package yg;

import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.UByte;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import org.light.utils.FileUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final ByteString f60216a = ByteString.encodeUtf8(CertificateUtil.DELIMITER);

    /* renamed from: b  reason: collision with root package name */
    private static final c[] f60217b;

    /* renamed from: c  reason: collision with root package name */
    private static final Map<ByteString, Integer> f60218c;

    /* loaded from: classes5.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<c> f60219a;

        /* renamed from: b  reason: collision with root package name */
        private final BufferedSource f60220b;

        /* renamed from: c  reason: collision with root package name */
        private int f60221c;

        /* renamed from: d  reason: collision with root package name */
        private int f60222d;

        /* renamed from: e  reason: collision with root package name */
        c[] f60223e;

        /* renamed from: f  reason: collision with root package name */
        int f60224f;

        /* renamed from: g  reason: collision with root package name */
        int f60225g;

        /* renamed from: h  reason: collision with root package name */
        int f60226h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i9, Source source) {
            this(i9, i9, source);
        }

        private void a() {
            int i9 = this.f60222d;
            int i10 = this.f60226h;
            if (i9 < i10) {
                if (i9 == 0) {
                    b();
                } else {
                    d(i10 - i9);
                }
            }
        }

        private void b() {
            Arrays.fill(this.f60223e, (Object) null);
            this.f60224f = this.f60223e.length - 1;
            this.f60225g = 0;
            this.f60226h = 0;
        }

        private int c(int i9) {
            return this.f60224f + 1 + i9;
        }

        private int d(int i9) {
            int i10;
            int i11 = 0;
            if (i9 > 0) {
                int length = this.f60223e.length;
                while (true) {
                    length--;
                    i10 = this.f60224f;
                    if (length < i10 || i9 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f60223e;
                    i9 -= cVarArr[length].f60215c;
                    this.f60226h -= cVarArr[length].f60215c;
                    this.f60225g--;
                    i11++;
                }
                c[] cVarArr2 = this.f60223e;
                System.arraycopy(cVarArr2, i10 + 1, cVarArr2, i10 + 1 + i11, this.f60225g);
                this.f60224f += i11;
            }
            return i11;
        }

        private ByteString f(int i9) throws IOException {
            if (i(i9)) {
                return d.f60217b[i9].f60213a;
            }
            int c10 = c(i9 - d.f60217b.length);
            if (c10 >= 0) {
                c[] cVarArr = this.f60223e;
                if (c10 < cVarArr.length) {
                    return cVarArr[c10].f60213a;
                }
            }
            throw new IOException("Header index too large " + (i9 + 1));
        }

        private void h(int i9, c cVar) {
            this.f60219a.add(cVar);
            int i10 = cVar.f60215c;
            if (i9 != -1) {
                i10 -= this.f60223e[c(i9)].f60215c;
            }
            int i11 = this.f60222d;
            if (i10 > i11) {
                b();
                return;
            }
            int d10 = d((this.f60226h + i10) - i11);
            if (i9 == -1) {
                int i12 = this.f60225g + 1;
                c[] cVarArr = this.f60223e;
                if (i12 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f60224f = this.f60223e.length - 1;
                    this.f60223e = cVarArr2;
                }
                int i13 = this.f60224f;
                this.f60224f = i13 - 1;
                this.f60223e[i13] = cVar;
                this.f60225g++;
            } else {
                this.f60223e[i9 + c(i9) + d10] = cVar;
            }
            this.f60226h += i10;
        }

        private boolean i(int i9) {
            return i9 >= 0 && i9 <= d.f60217b.length - 1;
        }

        private int j() throws IOException {
            return this.f60220b.readByte() & UByte.MAX_VALUE;
        }

        private void m(int i9) throws IOException {
            if (i(i9)) {
                this.f60219a.add(d.f60217b[i9]);
                return;
            }
            int c10 = c(i9 - d.f60217b.length);
            if (c10 >= 0) {
                c[] cVarArr = this.f60223e;
                if (c10 <= cVarArr.length - 1) {
                    this.f60219a.add(cVarArr[c10]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i9 + 1));
        }

        private void o(int i9) throws IOException {
            h(-1, new c(f(i9), k()));
        }

        private void p() throws IOException {
            h(-1, new c(d.e(k()), k()));
        }

        private void q(int i9) throws IOException {
            this.f60219a.add(new c(f(i9), k()));
        }

        private void r() throws IOException {
            this.f60219a.add(new c(d.e(k()), k()));
        }

        public List<c> e() {
            ArrayList arrayList = new ArrayList(this.f60219a);
            this.f60219a.clear();
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void g(int i9) {
            this.f60221c = i9;
            this.f60222d = i9;
            a();
        }

        ByteString k() throws IOException {
            int j10 = j();
            boolean z10 = (j10 & 128) == 128;
            int n9 = n(j10, 127);
            if (z10) {
                return ByteString.of(f.f().c(this.f60220b.readByteArray(n9)));
            }
            return this.f60220b.readByteString(n9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void l() throws IOException {
            while (!this.f60220b.exhausted()) {
                int readByte = this.f60220b.readByte() & UByte.MAX_VALUE;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                }
                if ((readByte & 128) == 128) {
                    m(n(readByte, 127) - 1);
                } else if (readByte == 64) {
                    p();
                } else if ((readByte & 64) == 64) {
                    o(n(readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int n9 = n(readByte, 31);
                    this.f60222d = n9;
                    if (n9 >= 0 && n9 <= this.f60221c) {
                        a();
                    } else {
                        throw new IOException("Invalid dynamic table size update " + this.f60222d);
                    }
                } else if (readByte != 16 && readByte != 0) {
                    q(n(readByte, 15) - 1);
                } else {
                    r();
                }
            }
        }

        int n(int i9, int i10) throws IOException {
            int i11 = i9 & i10;
            if (i11 < i10) {
                return i11;
            }
            int i12 = 0;
            while (true) {
                int j10 = j();
                if ((j10 & 128) == 0) {
                    return i10 + (j10 << i12);
                }
                i10 += (j10 & 127) << i12;
                i12 += 7;
            }
        }

        a(int i9, int i10, Source source) {
            this.f60219a = new ArrayList();
            c[] cVarArr = new c[8];
            this.f60223e = cVarArr;
            this.f60224f = cVarArr.length - 1;
            this.f60225g = 0;
            this.f60226h = 0;
            this.f60221c = i9;
            this.f60222d = i10;
            this.f60220b = Okio.buffer(source);
        }
    }

    /* loaded from: classes5.dex */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Buffer f60227a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f60228b;

        /* renamed from: c  reason: collision with root package name */
        int f60229c;

        /* renamed from: d  reason: collision with root package name */
        private int f60230d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f60231e;

        /* renamed from: f  reason: collision with root package name */
        private int f60232f;

        /* renamed from: g  reason: collision with root package name */
        c[] f60233g;

        /* renamed from: h  reason: collision with root package name */
        int f60234h;

        /* renamed from: i  reason: collision with root package name */
        private int f60235i;

        /* renamed from: j  reason: collision with root package name */
        private int f60236j;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Buffer buffer) {
            this(4096, false, buffer);
        }

        private void a() {
            Arrays.fill(this.f60233g, (Object) null);
            this.f60235i = this.f60233g.length - 1;
            this.f60234h = 0;
            this.f60236j = 0;
        }

        private int b(int i9) {
            int i10;
            int i11 = 0;
            if (i9 > 0) {
                int length = this.f60233g.length;
                while (true) {
                    length--;
                    i10 = this.f60235i;
                    if (length < i10 || i9 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f60233g;
                    i9 -= cVarArr[length].f60215c;
                    this.f60236j -= cVarArr[length].f60215c;
                    this.f60234h--;
                    i11++;
                }
                c[] cVarArr2 = this.f60233g;
                System.arraycopy(cVarArr2, i10 + 1, cVarArr2, i10 + 1 + i11, this.f60234h);
                this.f60235i += i11;
            }
            return i11;
        }

        private void c(c cVar) {
            int i9 = cVar.f60215c;
            int i10 = this.f60232f;
            if (i9 > i10) {
                a();
                return;
            }
            b((this.f60236j + i9) - i10);
            int i11 = this.f60234h + 1;
            c[] cVarArr = this.f60233g;
            if (i11 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f60235i = this.f60233g.length - 1;
                this.f60233g = cVarArr2;
            }
            int i12 = this.f60235i;
            this.f60235i = i12 - 1;
            this.f60233g[i12] = cVar;
            this.f60234h++;
            this.f60236j += i9;
        }

        void d(ByteString byteString) throws IOException {
            if (this.f60228b && f.f().e(byteString.toByteArray()) < byteString.size()) {
                Buffer buffer = new Buffer();
                f.f().d(byteString.toByteArray(), buffer.outputStream());
                ByteString readByteString = buffer.readByteString();
                f(readByteString.size(), 127, 128);
                this.f60227a.write(readByteString);
                return;
            }
            f(byteString.size(), 127, 0);
            this.f60227a.write(byteString);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void e(List<c> list) throws IOException {
            int i9;
            int i10;
            if (this.f60231e) {
                int i11 = this.f60230d;
                if (i11 < this.f60232f) {
                    f(i11, 31, 32);
                }
                this.f60231e = false;
                this.f60230d = Integer.MAX_VALUE;
                f(this.f60232f, 31, 32);
            }
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                c cVar = list.get(i12);
                ByteString asciiLowercase = cVar.f60213a.toAsciiLowercase();
                ByteString byteString = cVar.f60214b;
                Integer num = (Integer) d.f60218c.get(asciiLowercase);
                if (num != null) {
                    i9 = num.intValue() + 1;
                    if (i9 >= 2 && i9 <= 7) {
                        if (d.f60217b[i9 - 1].f60214b.equals(byteString)) {
                            i10 = i9;
                        } else if (d.f60217b[i9].f60214b.equals(byteString)) {
                            i10 = i9;
                            i9++;
                        }
                    }
                    i10 = i9;
                    i9 = -1;
                } else {
                    i9 = -1;
                    i10 = -1;
                }
                if (i9 == -1) {
                    int i13 = this.f60235i;
                    while (true) {
                        i13++;
                        c[] cVarArr = this.f60233g;
                        if (i13 >= cVarArr.length) {
                            break;
                        } else if (cVarArr[i13].f60213a.equals(asciiLowercase)) {
                            if (this.f60233g[i13].f60214b.equals(byteString)) {
                                i9 = d.f60217b.length + (i13 - this.f60235i);
                                break;
                            } else if (i10 == -1) {
                                i10 = (i13 - this.f60235i) + d.f60217b.length;
                            }
                        }
                    }
                }
                if (i9 != -1) {
                    f(i9, 127, 128);
                } else if (i10 == -1) {
                    this.f60227a.writeByte(64);
                    d(asciiLowercase);
                    d(byteString);
                    c(cVar);
                } else if (asciiLowercase.startsWith(d.f60216a) && !c.f60210h.equals(asciiLowercase)) {
                    f(i10, 15, 0);
                    d(byteString);
                } else {
                    f(i10, 63, 64);
                    d(byteString);
                    c(cVar);
                }
            }
        }

        void f(int i9, int i10, int i11) throws IOException {
            if (i9 < i10) {
                this.f60227a.writeByte(i9 | i11);
                return;
            }
            this.f60227a.writeByte(i11 | i10);
            int i12 = i9 - i10;
            while (i12 >= 128) {
                this.f60227a.writeByte(128 | (i12 & 127));
                i12 >>>= 7;
            }
            this.f60227a.writeByte(i12);
        }

        b(int i9, boolean z10, Buffer buffer) {
            this.f60230d = Integer.MAX_VALUE;
            c[] cVarArr = new c[8];
            this.f60233g = cVarArr;
            this.f60235i = cVarArr.length - 1;
            this.f60229c = i9;
            this.f60232f = i9;
            this.f60228b = z10;
            this.f60227a = buffer;
        }
    }

    static {
        ByteString byteString = c.f60207e;
        ByteString byteString2 = c.f60208f;
        ByteString byteString3 = c.f60209g;
        ByteString byteString4 = c.f60206d;
        f60217b = new c[]{new c(c.f60210h, ""), new c(byteString, "GET"), new c(byteString, "POST"), new c(byteString2, FileUtils.RES_PREFIX_STORAGE), new c(byteString2, "/index.html"), new c(byteString3, "http"), new c(byteString3, ProxyConfig.MATCH_HTTPS), new c(byteString4, BasicPushStatus.SUCCESS_CODE), new c(byteString4, "204"), new c(byteString4, "206"), new c(byteString4, "304"), new c(byteString4, "400"), new c(byteString4, "404"), new c(byteString4, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
        f60218c = f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteString e(ByteString byteString) throws IOException {
        int size = byteString.size();
        for (int i9 = 0; i9 < size; i9++) {
            byte b10 = byteString.getByte(i9);
            if (b10 >= 65 && b10 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    private static Map<ByteString, Integer> f() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f60217b.length);
        int i9 = 0;
        while (true) {
            c[] cVarArr = f60217b;
            if (i9 < cVarArr.length) {
                if (!linkedHashMap.containsKey(cVarArr[i9].f60213a)) {
                    linkedHashMap.put(cVarArr[i9].f60213a, Integer.valueOf(i9));
                }
                i9++;
            } else {
                return Collections.unmodifiableMap(linkedHashMap);
            }
        }
    }
}
