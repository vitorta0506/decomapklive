package com.guochao.faceshow.aaspring.base.http.request;

import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.http.callback.d;
import io.reactivex.k;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;
import vh.g;
/* loaded from: classes3.dex */
public class b extends RequestBody {

    /* renamed from: a  reason: collision with root package name */
    private final RequestBody f16279a;

    /* renamed from: b  reason: collision with root package name */
    private final d<?> f16280b;

    /* renamed from: c  reason: collision with root package name */
    private BufferedSink f16281c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a extends ForwardingSink {

        /* renamed from: a  reason: collision with root package name */
        long f16282a;

        /* renamed from: b  reason: collision with root package name */
        long f16283b;

        /* renamed from: c  reason: collision with root package name */
        private final d<?> f16284c;

        /* renamed from: d  reason: collision with root package name */
        long f16285d;

        /* renamed from: e  reason: collision with root package name */
        g<Long> f16286e;

        /* renamed from: com.guochao.faceshow.aaspring.base.http.request.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0149a implements g<Long> {
            C0149a() {
            }

            @Override // vh.g
            /* renamed from: a */
            public void accept(Long l10) throws Exception {
                if (a.this.f16284c != null) {
                    d dVar = a.this.f16284c;
                    long longValue = l10.longValue();
                    a aVar = a.this;
                    long j10 = aVar.f16283b;
                    dVar.onProgress(longValue, j10, (aVar.f16282a * 1.0d) / j10);
                }
            }
        }

        public a(Sink sink, long j10, d<?> dVar) {
            super(sink);
            this.f16282a = 0L;
            this.f16283b = 0L;
            this.f16286e = new C0149a();
            this.f16283b = j10;
            this.f16284c = dVar;
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer buffer, long j10) throws IOException {
            super.write(buffer, j10);
            this.f16282a += j10;
            if (System.currentTimeMillis() - this.f16285d > 50) {
                if (this.f16284c != null) {
                    k.just(Long.valueOf(this.f16282a)).observeOn(sh.a.a()).subscribe(this.f16286e);
                }
                this.f16285d = System.currentTimeMillis();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> b(RequestBody requestBody, d<T> dVar) {
        this.f16279a = requestBody;
        this.f16280b = dVar;
    }

    private Sink a(Sink sink) throws IOException {
        return new a(sink, contentLength(), this.f16280b);
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        return this.f16279a.contentLength();
    }

    @Override // okhttp3.RequestBody
    @Nullable
    public MediaType contentType() {
        return this.f16279a.contentType();
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        if (this.f16281c == null) {
            this.f16281c = Okio.buffer(a(bufferedSink));
        }
        this.f16279a.writeTo(this.f16281c);
        this.f16281c.flush();
    }
}
