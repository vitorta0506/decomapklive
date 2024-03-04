package j3;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource$HttpDataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.util.l0;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.t3;
import com.google.common.collect.w7;
import j3.i;
import j3.r;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
/* loaded from: classes2.dex */
public class r extends e {

    /* renamed from: e  reason: collision with root package name */
    private final boolean f53104e;

    /* renamed from: f  reason: collision with root package name */
    private final int f53105f;

    /* renamed from: g  reason: collision with root package name */
    private final int f53106g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final String f53107h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final u f53108i;

    /* renamed from: j  reason: collision with root package name */
    private final u f53109j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f53110k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private com.google.common.base.q<String> f53111l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private l f53112m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private HttpURLConnection f53113n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private InputStream f53114o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f53115p;

    /* renamed from: q  reason: collision with root package name */
    private int f53116q;

    /* renamed from: r  reason: collision with root package name */
    private long f53117r;

    /* renamed from: s  reason: collision with root package name */
    private long f53118s;

    /* loaded from: classes2.dex */
    public static final class b implements i.a {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private b0 f53120b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private com.google.common.base.q<String> f53121c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f53122d;

        /* renamed from: g  reason: collision with root package name */
        private boolean f53125g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f53126h;

        /* renamed from: a  reason: collision with root package name */
        private final u f53119a = new u();

        /* renamed from: e  reason: collision with root package name */
        private int f53123e = 8000;

        /* renamed from: f  reason: collision with root package name */
        private int f53124f = 8000;

        @Override // j3.i.a
        /* renamed from: b */
        public r a() {
            r rVar = new r(this.f53122d, this.f53123e, this.f53124f, this.f53125g, this.f53119a, this.f53121c, this.f53126h);
            b0 b0Var = this.f53120b;
            if (b0Var != null) {
                rVar.c(b0Var);
            }
            return rVar;
        }

        public b c(@Nullable String str) {
            this.f53122d = str;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    private static class c extends t3<String, List<String>> {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, List<String>> f53127a;

        public c(Map<String, List<String>> map) {
            this.f53127a = map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean C0(Map.Entry entry) {
            return entry.getKey() != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean E0(String str) {
            return str != null;
        }

        @Override // com.google.common.collect.t3, java.util.Map
        @Nullable
        /* renamed from: A0 */
        public List<String> get(@Nullable Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public boolean containsValue(@Nullable Object obj) {
            return super.standardContainsValue(obj);
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public Set<Map.Entry<String, List<String>>> entrySet() {
            return w7.c(super.entrySet(), new com.google.common.base.q() { // from class: j3.t
                @Override // com.google.common.base.q
                public final boolean apply(Object obj) {
                    boolean C0;
                    C0 = r.c.C0((Map.Entry) obj);
                    return C0;
                }

                @Override // com.google.common.base.q, java.util.function.Predicate
                public /* synthetic */ boolean test(Object obj) {
                    return com.google.common.base.p.a(this, obj);
                }
            });
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public boolean equals(@Nullable Object obj) {
            return obj != null && super.standardEquals(obj);
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public int hashCode() {
            return super.standardHashCode();
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public boolean isEmpty() {
            if (super.isEmpty()) {
                return true;
            }
            return super.size() == 1 && super.containsKey(null);
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public Set<String> keySet() {
            return w7.c(super.keySet(), new com.google.common.base.q() { // from class: j3.s
                @Override // com.google.common.base.q
                public final boolean apply(Object obj) {
                    boolean E0;
                    E0 = r.c.E0((String) obj);
                    return E0;
                }

                @Override // com.google.common.base.q, java.util.function.Predicate
                public /* synthetic */ boolean test(Object obj) {
                    return com.google.common.base.p.a(this, obj);
                }
            });
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.t3, com.google.common.collect.w3
        public Map<String, List<String>> delegate() {
            return this.f53127a;
        }
    }

    private void r() {
        HttpURLConnection httpURLConnection = this.f53113n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e10) {
                com.google.android.exoplayer2.util.r.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e10);
            }
            this.f53113n = null;
        }
    }

    private URL s(URL url, @Nullable String str, l lVar) throws HttpDataSource$HttpDataSourceException {
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if (!ProxyConfig.MATCH_HTTPS.equals(protocol) && !"http".equals(protocol)) {
                    throw new HttpDataSource$HttpDataSourceException("Unsupported protocol redirect: " + protocol, lVar, 2001, 1);
                } else if (this.f53104e || protocol.equals(url.getProtocol())) {
                    return url2;
                } else {
                    throw new HttpDataSource$HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", lVar, 2001, 1);
                }
            } catch (MalformedURLException e10) {
                throw new HttpDataSource$HttpDataSourceException(e10, lVar, 2001, 1);
            }
        }
        throw new HttpDataSource$HttpDataSourceException("Null location redirect", lVar, 2001, 1);
    }

    private static boolean t(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b1, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.HttpURLConnection u(j3.l r27) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j3.r.u(j3.l):java.net.HttpURLConnection");
    }

    private HttpURLConnection v(URL url, int i9, @Nullable byte[] bArr, long j10, long j11, boolean z10, boolean z11, Map<String, String> map) throws IOException {
        HttpURLConnection x10 = x(url);
        x10.setConnectTimeout(this.f53105f);
        x10.setReadTimeout(this.f53106g);
        HashMap hashMap = new HashMap();
        u uVar = this.f53108i;
        if (uVar != null) {
            hashMap.putAll(uVar.a());
        }
        hashMap.putAll(this.f53109j.a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            x10.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String a10 = v.a(j10, j11);
        if (a10 != null) {
            x10.setRequestProperty("Range", a10);
        }
        String str = this.f53107h;
        if (str != null) {
            x10.setRequestProperty("User-Agent", str);
        }
        x10.setRequestProperty("Accept-Encoding", z10 ? "gzip" : "identity");
        x10.setInstanceFollowRedirects(z11);
        x10.setDoOutput(bArr != null);
        x10.setRequestMethod(l.c(i9));
        if (bArr != null) {
            x10.setFixedLengthStreamingMode(bArr.length);
            x10.connect();
            OutputStream outputStream = x10.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            x10.connect();
        }
        return x10;
    }

    private static void w(@Nullable HttpURLConnection httpURLConnection, long j10) {
        int i9;
        if (httpURLConnection != null && (i9 = l0.f6985a) >= 19 && i9 <= 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j10 == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j10 <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if (!"com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) && !"com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    return;
                }
                Method declaredMethod = ((Class) com.google.android.exoplayer2.util.a.e(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            } catch (Exception unused) {
            }
        }
    }

    private int y(byte[] bArr, int i9, int i10) throws IOException {
        if (i10 == 0) {
            return 0;
        }
        long j10 = this.f53117r;
        if (j10 != -1) {
            long j11 = j10 - this.f53118s;
            if (j11 == 0) {
                return -1;
            }
            i10 = (int) Math.min(i10, j11);
        }
        int read = ((InputStream) l0.j(this.f53114o)).read(bArr, i9, i10);
        if (read == -1) {
            return -1;
        }
        this.f53118s += read;
        n(read);
        return read;
    }

    private void z(long j10, l lVar) throws IOException {
        if (j10 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j10 > 0) {
            int read = ((InputStream) l0.j(this.f53114o)).read(bArr, 0, (int) Math.min(j10, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource$HttpDataSourceException(new InterruptedIOException(), lVar, 2000, 1);
            }
            if (read != -1) {
                j10 -= read;
                n(read);
            } else {
                throw new HttpDataSource$HttpDataSourceException(lVar, 2008, 1);
            }
        }
    }

    @Override // j3.i
    public long b(final l lVar) throws HttpDataSource$HttpDataSourceException {
        byte[] bArr;
        this.f53112m = lVar;
        long j10 = 0;
        this.f53118s = 0L;
        this.f53117r = 0L;
        p(lVar);
        try {
            HttpURLConnection u10 = u(lVar);
            this.f53113n = u10;
            this.f53116q = u10.getResponseCode();
            String responseMessage = u10.getResponseMessage();
            int i9 = this.f53116q;
            if (i9 >= 200 && i9 <= 299) {
                final String contentType = u10.getContentType();
                com.google.common.base.q<String> qVar = this.f53111l;
                if (qVar != null && !qVar.apply(contentType)) {
                    r();
                    throw new HttpDataSource$HttpDataSourceException(contentType, lVar) { // from class: com.google.android.exoplayer2.upstream.HttpDataSource$InvalidContentTypeException
                        public final String contentType;

                        {
                            super("Invalid content type: " + contentType, lVar, 2003, 1);
                            this.contentType = contentType;
                        }
                    };
                }
                if (this.f53116q == 200) {
                    long j11 = lVar.f53037g;
                    if (j11 != 0) {
                        j10 = j11;
                    }
                }
                boolean t10 = t(u10);
                if (!t10) {
                    long j12 = lVar.f53038h;
                    if (j12 != -1) {
                        this.f53117r = j12;
                    } else {
                        long b10 = v.b(u10.getHeaderField("Content-Length"), u10.getHeaderField("Content-Range"));
                        this.f53117r = b10 != -1 ? b10 - j10 : -1L;
                    }
                } else {
                    this.f53117r = lVar.f53038h;
                }
                try {
                    this.f53114o = u10.getInputStream();
                    if (t10) {
                        this.f53114o = new GZIPInputStream(this.f53114o);
                    }
                    this.f53115p = true;
                    q(lVar);
                    try {
                        z(j10, lVar);
                        return this.f53117r;
                    } catch (IOException e10) {
                        r();
                        if (e10 instanceof HttpDataSource$HttpDataSourceException) {
                            throw ((HttpDataSource$HttpDataSourceException) e10);
                        }
                        throw new HttpDataSource$HttpDataSourceException(e10, lVar, 2000, 1);
                    }
                } catch (IOException e11) {
                    r();
                    throw new HttpDataSource$HttpDataSourceException(e11, lVar, 2000, 1);
                }
            }
            Map<String, List<String>> headerFields = u10.getHeaderFields();
            if (this.f53116q == 416) {
                if (lVar.f53037g == v.c(u10.getHeaderField("Content-Range"))) {
                    this.f53115p = true;
                    q(lVar);
                    long j13 = lVar.f53038h;
                    if (j13 != -1) {
                        return j13;
                    }
                    return 0L;
                }
            }
            InputStream errorStream = u10.getErrorStream();
            try {
                bArr = errorStream != null ? l0.L0(errorStream) : l0.f6990f;
            } catch (IOException unused) {
                bArr = l0.f6990f;
            }
            byte[] bArr2 = bArr;
            r();
            throw new HttpDataSource$InvalidResponseCodeException(this.f53116q, responseMessage, this.f53116q == 416 ? new DataSourceException(2008) : null, headerFields, lVar, bArr2);
        } catch (IOException e12) {
            r();
            throw HttpDataSource$HttpDataSourceException.createForIOException(e12, lVar, 1);
        }
    }

    @Override // j3.i
    public void close() throws HttpDataSource$HttpDataSourceException {
        try {
            InputStream inputStream = this.f53114o;
            if (inputStream != null) {
                long j10 = this.f53117r;
                long j11 = -1;
                if (j10 != -1) {
                    j11 = j10 - this.f53118s;
                }
                w(this.f53113n, j11);
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    throw new HttpDataSource$HttpDataSourceException(e10, (l) l0.j(this.f53112m), 2000, 3);
                }
            }
        } finally {
            this.f53114o = null;
            r();
            if (this.f53115p) {
                this.f53115p = false;
                o();
            }
        }
    }

    @Override // j3.e, j3.i
    public Map<String, List<String>> e() {
        HttpURLConnection httpURLConnection = this.f53113n;
        if (httpURLConnection == null) {
            return ImmutableMap.of();
        }
        return new c(httpURLConnection.getHeaderFields());
    }

    @Override // j3.i
    @Nullable
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.f53113n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // j3.f
    public int read(byte[] bArr, int i9, int i10) throws HttpDataSource$HttpDataSourceException {
        try {
            return y(bArr, i9, i10);
        } catch (IOException e10) {
            throw HttpDataSource$HttpDataSourceException.createForIOException(e10, (l) l0.j(this.f53112m), 2);
        }
    }

    @VisibleForTesting
    HttpURLConnection x(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    private r(@Nullable String str, int i9, int i10, boolean z10, @Nullable u uVar, @Nullable com.google.common.base.q<String> qVar, boolean z11) {
        super(true);
        this.f53107h = str;
        this.f53105f = i9;
        this.f53106g = i10;
        this.f53104e = z10;
        this.f53108i = uVar;
        this.f53111l = qVar;
        this.f53109j = new u();
        this.f53110k = z11;
    }
}
