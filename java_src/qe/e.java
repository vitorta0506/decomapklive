package qe;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.framed.ErrorCode;
import com.squareup.okhttp.internal.http.HttpStream;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
/* loaded from: classes4.dex */
public final class e implements HttpStream {

    /* renamed from: e  reason: collision with root package name */
    private static final ByteString f57227e;

    /* renamed from: f  reason: collision with root package name */
    private static final ByteString f57228f;

    /* renamed from: g  reason: collision with root package name */
    private static final ByteString f57229g;

    /* renamed from: h  reason: collision with root package name */
    private static final ByteString f57230h;

    /* renamed from: i  reason: collision with root package name */
    private static final ByteString f57231i;

    /* renamed from: j  reason: collision with root package name */
    private static final ByteString f57232j;

    /* renamed from: k  reason: collision with root package name */
    private static final ByteString f57233k;

    /* renamed from: l  reason: collision with root package name */
    private static final ByteString f57234l;

    /* renamed from: m  reason: collision with root package name */
    private static final List<ByteString> f57235m;

    /* renamed from: n  reason: collision with root package name */
    private static final List<ByteString> f57236n;

    /* renamed from: o  reason: collision with root package name */
    private static final List<ByteString> f57237o;

    /* renamed from: p  reason: collision with root package name */
    private static final List<ByteString> f57238p;

    /* renamed from: a  reason: collision with root package name */
    private final o f57239a;

    /* renamed from: b  reason: collision with root package name */
    private final com.squareup.okhttp.internal.framed.a f57240b;

    /* renamed from: c  reason: collision with root package name */
    private g f57241c;

    /* renamed from: d  reason: collision with root package name */
    private com.squareup.okhttp.internal.framed.b f57242d;

    /* loaded from: classes4.dex */
    class a extends ForwardingSource {
        public a(Source source) {
            super(source);
        }

        @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            e.this.f57239a.r(e.this);
            super.close();
        }
    }

    static {
        ByteString encodeUtf8 = ByteString.encodeUtf8("connection");
        f57227e = encodeUtf8;
        ByteString encodeUtf82 = ByteString.encodeUtf8("host");
        f57228f = encodeUtf82;
        ByteString encodeUtf83 = ByteString.encodeUtf8("keep-alive");
        f57229g = encodeUtf83;
        ByteString encodeUtf84 = ByteString.encodeUtf8("proxy-connection");
        f57230h = encodeUtf84;
        ByteString encodeUtf85 = ByteString.encodeUtf8("transfer-encoding");
        f57231i = encodeUtf85;
        ByteString encodeUtf86 = ByteString.encodeUtf8("te");
        f57232j = encodeUtf86;
        ByteString encodeUtf87 = ByteString.encodeUtf8("encoding");
        f57233k = encodeUtf87;
        ByteString encodeUtf88 = ByteString.encodeUtf8("upgrade");
        f57234l = encodeUtf88;
        ByteString byteString = com.squareup.okhttp.internal.framed.c.f29758e;
        ByteString byteString2 = com.squareup.okhttp.internal.framed.c.f29759f;
        ByteString byteString3 = com.squareup.okhttp.internal.framed.c.f29760g;
        ByteString byteString4 = com.squareup.okhttp.internal.framed.c.f29761h;
        ByteString byteString5 = com.squareup.okhttp.internal.framed.c.f29762i;
        ByteString byteString6 = com.squareup.okhttp.internal.framed.c.f29763j;
        f57235m = com.squareup.okhttp.internal.i.k(encodeUtf8, encodeUtf82, encodeUtf83, encodeUtf84, encodeUtf85, byteString, byteString2, byteString3, byteString4, byteString5, byteString6);
        f57236n = com.squareup.okhttp.internal.i.k(encodeUtf8, encodeUtf82, encodeUtf83, encodeUtf84, encodeUtf85);
        f57237o = com.squareup.okhttp.internal.i.k(encodeUtf8, encodeUtf82, encodeUtf83, encodeUtf84, encodeUtf86, encodeUtf85, encodeUtf87, encodeUtf88, byteString, byteString2, byteString3, byteString4, byteString5, byteString6);
        f57238p = com.squareup.okhttp.internal.i.k(encodeUtf8, encodeUtf82, encodeUtf83, encodeUtf84, encodeUtf86, encodeUtf85, encodeUtf87, encodeUtf88);
    }

    public e(o oVar, com.squareup.okhttp.internal.framed.a aVar) {
        this.f57239a = oVar;
        this.f57240b = aVar;
    }

    public static List<com.squareup.okhttp.internal.framed.c> b(Request request) {
        Headers headers = request.headers();
        ArrayList arrayList = new ArrayList(headers.size() + 4);
        arrayList.add(new com.squareup.okhttp.internal.framed.c(com.squareup.okhttp.internal.framed.c.f29758e, request.method()));
        arrayList.add(new com.squareup.okhttp.internal.framed.c(com.squareup.okhttp.internal.framed.c.f29759f, k.c(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.c(com.squareup.okhttp.internal.framed.c.f29761h, com.squareup.okhttp.internal.i.i(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.c(com.squareup.okhttp.internal.framed.c.f29760g, request.httpUrl().scheme()));
        int size = headers.size();
        for (int i9 = 0; i9 < size; i9++) {
            ByteString encodeUtf8 = ByteString.encodeUtf8(headers.name(i9).toLowerCase(Locale.US));
            if (!f57237o.contains(encodeUtf8)) {
                arrayList.add(new com.squareup.okhttp.internal.framed.c(encodeUtf8, headers.value(i9)));
            }
        }
        return arrayList;
    }

    private static String c(String str, String str2) {
        return str + (char) 0 + str2;
    }

    public static Response.Builder d(List<com.squareup.okhttp.internal.framed.c> list) throws IOException {
        Headers.Builder builder = new Headers.Builder();
        int size = list.size();
        String str = null;
        for (int i9 = 0; i9 < size; i9++) {
            ByteString byteString = list.get(i9).f29764a;
            String utf8 = list.get(i9).f29765b.utf8();
            if (byteString.equals(com.squareup.okhttp.internal.framed.c.f29757d)) {
                str = utf8;
            } else if (!f57238p.contains(byteString)) {
                builder.add(byteString.utf8(), utf8);
            }
        }
        if (str != null) {
            n a10 = n.a("HTTP/1.1 " + str);
            return new Response.Builder().protocol(Protocol.HTTP_2).code(a10.f57296b).message(a10.f57297c).headers(builder.build());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    public static Response.Builder e(List<com.squareup.okhttp.internal.framed.c> list) throws IOException {
        Headers.Builder builder = new Headers.Builder();
        int size = list.size();
        String str = null;
        String str2 = "HTTP/1.1";
        for (int i9 = 0; i9 < size; i9++) {
            ByteString byteString = list.get(i9).f29764a;
            String utf8 = list.get(i9).f29765b.utf8();
            int i10 = 0;
            while (i10 < utf8.length()) {
                int indexOf = utf8.indexOf(0, i10);
                if (indexOf == -1) {
                    indexOf = utf8.length();
                }
                String substring = utf8.substring(i10, indexOf);
                if (byteString.equals(com.squareup.okhttp.internal.framed.c.f29757d)) {
                    str = substring;
                } else if (byteString.equals(com.squareup.okhttp.internal.framed.c.f29763j)) {
                    str2 = substring;
                } else if (!f57236n.contains(byteString)) {
                    builder.add(byteString.utf8(), substring);
                }
                i10 = indexOf + 1;
            }
        }
        if (str != null) {
            n a10 = n.a(str2 + " " + str);
            return new Response.Builder().protocol(Protocol.SPDY_3).code(a10.f57296b).message(a10.f57297c).headers(builder.build());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    public static List<com.squareup.okhttp.internal.framed.c> f(Request request) {
        Headers headers = request.headers();
        ArrayList arrayList = new ArrayList(headers.size() + 5);
        arrayList.add(new com.squareup.okhttp.internal.framed.c(com.squareup.okhttp.internal.framed.c.f29758e, request.method()));
        arrayList.add(new com.squareup.okhttp.internal.framed.c(com.squareup.okhttp.internal.framed.c.f29759f, k.c(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.c(com.squareup.okhttp.internal.framed.c.f29763j, "HTTP/1.1"));
        arrayList.add(new com.squareup.okhttp.internal.framed.c(com.squareup.okhttp.internal.framed.c.f29762i, com.squareup.okhttp.internal.i.i(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.c(com.squareup.okhttp.internal.framed.c.f29760g, request.httpUrl().scheme()));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = headers.size();
        for (int i9 = 0; i9 < size; i9++) {
            ByteString encodeUtf8 = ByteString.encodeUtf8(headers.name(i9).toLowerCase(Locale.US));
            if (!f57235m.contains(encodeUtf8)) {
                String value = headers.value(i9);
                if (linkedHashSet.add(encodeUtf8)) {
                    arrayList.add(new com.squareup.okhttp.internal.framed.c(encodeUtf8, value));
                } else {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= arrayList.size()) {
                            break;
                        } else if (((com.squareup.okhttp.internal.framed.c) arrayList.get(i10)).f29764a.equals(encodeUtf8)) {
                            arrayList.set(i10, new com.squareup.okhttp.internal.framed.c(encodeUtf8, c(((com.squareup.okhttp.internal.framed.c) arrayList.get(i10)).f29765b.utf8(), value)));
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void cancel() {
        com.squareup.okhttp.internal.framed.b bVar = this.f57242d;
        if (bVar != null) {
            bVar.n(ErrorCode.CANCEL);
        }
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public Sink createRequestBody(Request request, long j10) throws IOException {
        return this.f57242d.q();
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void finishRequest() throws IOException {
        this.f57242d.q().close();
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public ResponseBody openResponseBody(Response response) throws IOException {
        return new j(response.headers(), Okio.buffer(new a(this.f57242d.r())));
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public Response.Builder readResponseHeaders() throws IOException {
        return this.f57240b.M() == Protocol.HTTP_2 ? d(this.f57242d.p()) : e(this.f57242d.p());
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void setHttpEngine(g gVar) {
        this.f57241c = gVar;
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void writeRequestBody(l lVar) throws IOException {
        lVar.b(this.f57242d.q());
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void writeRequestHeaders(Request request) throws IOException {
        if (this.f57242d != null) {
            return;
        }
        this.f57241c.C();
        com.squareup.okhttp.internal.framed.b T = this.f57240b.T(this.f57240b.M() == Protocol.HTTP_2 ? b(request) : f(request), this.f57241c.q(request), true);
        this.f57242d = T;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        T.u().timeout(this.f57241c.f57249a.getReadTimeout(), timeUnit);
        this.f57242d.A().timeout(this.f57241c.f57249a.getWriteTimeout(), timeUnit);
    }
}
