package com.squareup.okhttp.internal.framed;

import androidx.webkit.ProxyConfig;
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
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final c[] f29767a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<ByteString, Integer> f29768b;

    /* loaded from: classes4.dex */
    static final class a {

        /* renamed from: b  reason: collision with root package name */
        private final BufferedSource f29770b;

        /* renamed from: c  reason: collision with root package name */
        private int f29771c;

        /* renamed from: d  reason: collision with root package name */
        private int f29772d;

        /* renamed from: e  reason: collision with root package name */
        c[] f29773e;

        /* renamed from: f  reason: collision with root package name */
        int f29774f;

        /* renamed from: a  reason: collision with root package name */
        private final List<c> f29769a = new ArrayList();

        /* renamed from: g  reason: collision with root package name */
        int f29775g = 0;

        /* renamed from: h  reason: collision with root package name */
        int f29776h = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i9, Source source) {
            c[] cVarArr = new c[8];
            this.f29773e = cVarArr;
            this.f29774f = cVarArr.length - 1;
            this.f29771c = i9;
            this.f29772d = i9;
            this.f29770b = Okio.buffer(source);
        }

        private void a() {
            int i9 = this.f29772d;
            int i10 = this.f29776h;
            if (i9 < i10) {
                if (i9 == 0) {
                    b();
                } else {
                    d(i10 - i9);
                }
            }
        }

        private void b() {
            this.f29769a.clear();
            Arrays.fill(this.f29773e, (Object) null);
            this.f29774f = this.f29773e.length - 1;
            this.f29775g = 0;
            this.f29776h = 0;
        }

        private int c(int i9) {
            return this.f29774f + 1 + i9;
        }

        private int d(int i9) {
            int i10;
            int i11 = 0;
            if (i9 > 0) {
                int length = this.f29773e.length;
                while (true) {
                    length--;
                    i10 = this.f29774f;
                    if (length < i10 || i9 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f29773e;
                    i9 -= cVarArr[length].f29766c;
                    this.f29776h -= cVarArr[length].f29766c;
                    this.f29775g--;
                    i11++;
                }
                c[] cVarArr2 = this.f29773e;
                System.arraycopy(cVarArr2, i10 + 1, cVarArr2, i10 + 1 + i11, this.f29775g);
                this.f29774f += i11;
            }
            return i11;
        }

        private ByteString f(int i9) {
            if (i(i9)) {
                return d.f29767a[i9].f29764a;
            }
            return this.f29773e[c(i9 - d.f29767a.length)].f29764a;
        }

        private void h(int i9, c cVar) {
            this.f29769a.add(cVar);
            int i10 = cVar.f29766c;
            if (i9 != -1) {
                i10 -= this.f29773e[c(i9)].f29766c;
            }
            int i11 = this.f29772d;
            if (i10 > i11) {
                b();
                return;
            }
            int d10 = d((this.f29776h + i10) - i11);
            if (i9 == -1) {
                int i12 = this.f29775g + 1;
                c[] cVarArr = this.f29773e;
                if (i12 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f29774f = this.f29773e.length - 1;
                    this.f29773e = cVarArr2;
                }
                int i13 = this.f29774f;
                this.f29774f = i13 - 1;
                this.f29773e[i13] = cVar;
                this.f29775g++;
            } else {
                this.f29773e[i9 + c(i9) + d10] = cVar;
            }
            this.f29776h += i10;
        }

        private boolean i(int i9) {
            return i9 >= 0 && i9 <= d.f29767a.length - 1;
        }

        private int j() throws IOException {
            return this.f29770b.readByte() & UByte.MAX_VALUE;
        }

        private void m(int i9) throws IOException {
            if (i(i9)) {
                this.f29769a.add(d.f29767a[i9]);
                return;
            }
            int c10 = c(i9 - d.f29767a.length);
            if (c10 >= 0) {
                c[] cVarArr = this.f29773e;
                if (c10 <= cVarArr.length - 1) {
                    this.f29769a.add(cVarArr[c10]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i9 + 1));
        }

        private void o(int i9) throws IOException {
            h(-1, new c(f(i9), k()));
        }

        private void p() throws IOException {
            h(-1, new c(d.d(k()), k()));
        }

        private void q(int i9) throws IOException {
            this.f29769a.add(new c(f(i9), k()));
        }

        private void r() throws IOException {
            this.f29769a.add(new c(d.d(k()), k()));
        }

        public List<c> e() {
            ArrayList arrayList = new ArrayList(this.f29769a);
            this.f29769a.clear();
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void g(int i9) {
            this.f29771c = i9;
            this.f29772d = i9;
            a();
        }

        ByteString k() throws IOException {
            int j10 = j();
            boolean z10 = (j10 & 128) == 128;
            int n9 = n(j10, 127);
            if (z10) {
                return ByteString.of(f.d().c(this.f29770b.readByteArray(n9)));
            }
            return this.f29770b.readByteString(n9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void l() throws IOException {
            while (!this.f29770b.exhausted()) {
                int readByte = this.f29770b.readByte() & UByte.MAX_VALUE;
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
                    this.f29772d = n9;
                    if (n9 >= 0 && n9 <= this.f29771c) {
                        a();
                    } else {
                        throw new IOException("Invalid dynamic table size update " + this.f29772d);
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
    }

    /* loaded from: classes4.dex */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Buffer f29777a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Buffer buffer) {
            this.f29777a = buffer;
        }

        void a(ByteString byteString) throws IOException {
            c(byteString.size(), 127, 0);
            this.f29777a.write(byteString);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b(List<c> list) throws IOException {
            int size = list.size();
            for (int i9 = 0; i9 < size; i9++) {
                ByteString asciiLowercase = list.get(i9).f29764a.toAsciiLowercase();
                Integer num = (Integer) d.f29768b.get(asciiLowercase);
                if (num != null) {
                    c(num.intValue() + 1, 15, 0);
                    a(list.get(i9).f29765b);
                } else {
                    this.f29777a.writeByte(0);
                    a(asciiLowercase);
                    a(list.get(i9).f29765b);
                }
            }
        }

        void c(int i9, int i10, int i11) throws IOException {
            if (i9 < i10) {
                this.f29777a.writeByte(i9 | i11);
                return;
            }
            this.f29777a.writeByte(i11 | i10);
            int i12 = i9 - i10;
            while (i12 >= 128) {
                this.f29777a.writeByte(128 | (i12 & 127));
                i12 >>>= 7;
            }
            this.f29777a.writeByte(i12);
        }
    }

    static {
        ByteString byteString = c.f29758e;
        ByteString byteString2 = c.f29759f;
        ByteString byteString3 = c.f29760g;
        ByteString byteString4 = c.f29757d;
        f29767a = new c[]{new c(c.f29761h, ""), new c(byteString, "GET"), new c(byteString, "POST"), new c(byteString2, FileUtils.RES_PREFIX_STORAGE), new c(byteString2, "/index.html"), new c(byteString3, "http"), new c(byteString3, ProxyConfig.MATCH_HTTPS), new c(byteString4, BasicPushStatus.SUCCESS_CODE), new c(byteString4, "204"), new c(byteString4, "206"), new c(byteString4, "304"), new c(byteString4, "400"), new c(byteString4, "404"), new c(byteString4, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
        f29768b = e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteString d(ByteString byteString) throws IOException {
        int size = byteString.size();
        for (int i9 = 0; i9 < size; i9++) {
            byte b10 = byteString.getByte(i9);
            if (b10 >= 65 && b10 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    private static Map<ByteString, Integer> e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f29767a.length);
        int i9 = 0;
        while (true) {
            c[] cVarArr = f29767a;
            if (i9 < cVarArr.length) {
                if (!linkedHashMap.containsKey(cVarArr[i9].f29764a)) {
                    linkedHashMap.put(cVarArr[i9].f29764a, Integer.valueOf(i9));
                }
                i9++;
            } else {
                return Collections.unmodifiableMap(linkedHashMap);
            }
        }
    }
}
