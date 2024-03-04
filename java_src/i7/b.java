package i7;

import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.callback.d;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import java.io.File;
import okhttp3.ResponseBody;
import vh.g;
import vh.o;
/* loaded from: classes3.dex */
public class b implements o<ResponseBody, FaceCastBaseResponse<File>>, com.guochao.faceshow.aaspring.base.utils.a {

    /* renamed from: a  reason: collision with root package name */
    String f40987a;

    /* renamed from: c  reason: collision with root package name */
    private c<File> f40989c;

    /* renamed from: d  reason: collision with root package name */
    private d<File> f40990d;

    /* renamed from: e  reason: collision with root package name */
    private long f40991e;

    /* renamed from: g  reason: collision with root package name */
    private long f40993g;

    /* renamed from: b  reason: collision with root package name */
    private boolean f40988b = false;

    /* renamed from: f  reason: collision with root package name */
    private g<Throwable> f40992f = new a();

    /* renamed from: h  reason: collision with root package name */
    private g<Long> f40994h = new C0455b();

    /* loaded from: classes3.dex */
    class a implements g<Throwable> {
        a() {
        }

        @Override // vh.g
        /* renamed from: a */
        public void accept(Throwable th2) throws Exception {
        }
    }

    /* renamed from: i7.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0455b implements g<Long> {
        C0455b() {
        }

        @Override // vh.g
        /* renamed from: a */
        public void accept(Long l10) throws Exception {
            double longValue = (l10.longValue() * 1.0d) / b.this.f40991e;
            b.this.f40990d.onProgress(l10.longValue(), b.this.f40991e, (longValue <= 0.0d || longValue >= 1.0d) ? 0.0d : longValue);
        }
    }

    public b(String str, c<File> cVar) {
        this.f40987a = str;
        this.f40989c = cVar;
        if (cVar instanceof d) {
            this.f40990d = (d) cVar;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0077, code lost:
        if (r9.f40988b != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0090, code lost:
        if (r9.f40988b == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0092, code lost:
        r11.setCode(-1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0095, code lost:
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse<java.io.File> d(java.io.InputStream r10, java.lang.String r11, long r12) {
        /*
            r9 = this;
            java.io.File r12 = new java.io.File
            r12.<init>(r11)
            boolean r11 = r12.exists()
            if (r11 == 0) goto Le
            r12.delete()
        Le:
            com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse r11 = new com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse
            r11.<init>()
            r13 = 1
            r11.setCode(r13)
            r13 = 0
            r0 = -1
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r1.<init>(r12)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r13 = 1024(0x400, float:1.435E-42)
            byte[] r13 = new byte[r13]     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r2 = 0
        L24:
            int r4 = r10.read(r13)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            if (r4 == r0) goto L64
            boolean r5 = r9.f40988b     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            if (r5 == 0) goto L2f
            goto L64
        L2f:
            r5 = 0
            r1.write(r13, r5, r4)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            long r2 = r2 + r4
            com.guochao.faceshow.aaspring.base.http.callback.d<java.io.File> r4 = r9.f40990d     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            if (r4 == 0) goto L24
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            long r6 = r9.f40993g     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            long r4 = r4 - r6
            r6 = 10
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 <= 0) goto L24
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r9.f40993g = r4     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            java.lang.Long r4 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            io.reactivex.k r4 = io.reactivex.k.just(r4)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            io.reactivex.s r5 = sh.a.a()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            io.reactivex.k r4 = r4.observeOn(r5)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            vh.g<java.lang.Long> r5 = r9.f40994h     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            vh.g<java.lang.Throwable> r6 = r9.f40992f     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r4.subscribe(r5, r6)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            goto L24
        L64:
            r11.setResult(r12)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r10.close()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r1.close()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r1.close()     // Catch: java.io.IOException -> L71
            goto L75
        L71:
            r10 = move-exception
            r10.printStackTrace()
        L75:
            boolean r10 = r9.f40988b
            if (r10 == 0) goto L95
            goto L92
        L7a:
            r10 = move-exception
            r13 = r1
            goto L96
        L7d:
            r13 = r1
            goto L81
        L7f:
            r10 = move-exception
            goto L96
        L81:
            r11.setCode(r0)     // Catch: java.lang.Throwable -> L7f
            if (r13 == 0) goto L8e
            r13.close()     // Catch: java.io.IOException -> L8a
            goto L8e
        L8a:
            r10 = move-exception
            r10.printStackTrace()
        L8e:
            boolean r10 = r9.f40988b
            if (r10 == 0) goto L95
        L92:
            r11.setCode(r0)
        L95:
            return r11
        L96:
            if (r13 == 0) goto La0
            r13.close()     // Catch: java.io.IOException -> L9c
            goto La0
        L9c:
            r12 = move-exception
            r12.printStackTrace()
        La0:
            boolean r12 = r9.f40988b
            if (r12 == 0) goto La7
            r11.setCode(r0)
        La7:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: i7.b.d(java.io.InputStream, java.lang.String, long):com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse");
    }

    @Override // vh.o
    /* renamed from: c */
    public FaceCastBaseResponse<File> apply(ResponseBody responseBody) throws Exception {
        this.f40991e = responseBody.contentLength();
        return d(responseBody.byteStream(), this.f40987a, this.f40991e);
    }

    @Override // com.guochao.faceshow.aaspring.base.utils.a
    public void cancel() {
        this.f40988b = true;
    }
}
