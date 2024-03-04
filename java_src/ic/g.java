package ic;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;
/* loaded from: classes4.dex */
public class g extends ResponseBody {

    /* renamed from: a  reason: collision with root package name */
    private BufferedSource f41023a;

    /* renamed from: b  reason: collision with root package name */
    private ResponseBody f41024b;

    /* renamed from: c  reason: collision with root package name */
    private f f41025c;

    /* loaded from: classes4.dex */
    private class a extends ForwardingSource {

        /* renamed from: a  reason: collision with root package name */
        long f41026a;

        /* renamed from: b  reason: collision with root package name */
        int f41027b;

        a(Source source) {
            super(source);
            this.f41026a = 0L;
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer buffer, long j10) throws IOException {
            long read = super.read(buffer, j10);
            long contentLength = g.this.f41024b.contentLength();
            if (read == -1) {
                this.f41026a = contentLength;
            } else {
                this.f41026a += read;
            }
            int i9 = (int) ((((float) this.f41026a) * 100.0f) / ((float) contentLength));
            if (g.this.f41025c != null && i9 != this.f41027b) {
                g.this.f41025c.onProgress(i9);
            }
            if (g.this.f41025c != null && this.f41026a == contentLength) {
                g.this.f41025c = null;
            }
            this.f41027b = i9;
            return read;
        }
    }

    public g(String str, ResponseBody responseBody) {
        this.f41024b = responseBody;
        this.f41025c = e.f41022a.get(str);
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.f41024b.contentLength();
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        return this.f41024b.contentType();
    }

    @Override // okhttp3.ResponseBody
    public BufferedSource source() {
        if (this.f41023a == null) {
            this.f41023a = Okio.buffer(new a(this.f41024b.source()));
        }
        return this.f41023a;
    }
}
