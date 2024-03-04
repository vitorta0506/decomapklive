package xg;

import com.facebook.share.internal.ShareConstants;
import io.grpc.internal.d2;
import java.io.IOException;
import java.net.Socket;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;
import xg.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class a implements Sink {

    /* renamed from: c  reason: collision with root package name */
    private final d2 f59733c;

    /* renamed from: d  reason: collision with root package name */
    private final b.a f59734d;

    /* renamed from: h  reason: collision with root package name */
    private Sink f59738h;

    /* renamed from: i  reason: collision with root package name */
    private Socket f59739i;

    /* renamed from: a  reason: collision with root package name */
    private final Object f59731a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Buffer f59732b = new Buffer();

    /* renamed from: e  reason: collision with root package name */
    private boolean f59735e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f59736f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f59737g = false;

    /* renamed from: xg.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0691a extends d {

        /* renamed from: b  reason: collision with root package name */
        final qh.b f59740b;

        C0691a() {
            super(a.this, null);
            this.f59740b = qh.c.f();
        }

        @Override // xg.a.d
        public void b() throws IOException {
            qh.c.g("WriteRunnable.runWrite");
            qh.c.e(this.f59740b);
            Buffer buffer = new Buffer();
            try {
                synchronized (a.this.f59731a) {
                    buffer.write(a.this.f59732b, a.this.f59732b.completeSegmentByteCount());
                    a.this.f59735e = false;
                }
                a.this.f59738h.write(buffer, buffer.size());
            } finally {
                qh.c.i("WriteRunnable.runWrite");
            }
        }
    }

    /* loaded from: classes5.dex */
    class b extends d {

        /* renamed from: b  reason: collision with root package name */
        final qh.b f59742b;

        b() {
            super(a.this, null);
            this.f59742b = qh.c.f();
        }

        @Override // xg.a.d
        public void b() throws IOException {
            qh.c.g("WriteRunnable.runFlush");
            qh.c.e(this.f59742b);
            Buffer buffer = new Buffer();
            try {
                synchronized (a.this.f59731a) {
                    buffer.write(a.this.f59732b, a.this.f59732b.size());
                    a.this.f59736f = false;
                }
                a.this.f59738h.write(buffer, buffer.size());
                a.this.f59738h.flush();
            } finally {
                qh.c.i("WriteRunnable.runFlush");
            }
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f59732b.close();
            try {
                if (a.this.f59738h != null) {
                    a.this.f59738h.close();
                }
            } catch (IOException e10) {
                a.this.f59734d.a(e10);
            }
            try {
                if (a.this.f59739i != null) {
                    a.this.f59739i.close();
                }
            } catch (IOException e11) {
                a.this.f59734d.a(e11);
            }
        }
    }

    /* loaded from: classes5.dex */
    private abstract class d implements Runnable {
        private d() {
        }

        public abstract void b() throws IOException;

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (a.this.f59738h != null) {
                    b();
                    return;
                }
                throw new IOException("Unable to perform write due to unavailable sink.");
            } catch (Exception e10) {
                a.this.f59734d.a(e10);
            }
        }

        /* synthetic */ d(a aVar, C0691a c0691a) {
            this();
        }
    }

    private a(d2 d2Var, b.a aVar) {
        this.f59733c = (d2) com.google.common.base.o.t(d2Var, "executor");
        this.f59734d = (b.a) com.google.common.base.o.t(aVar, "exceptionHandler");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a k(d2 d2Var, b.a aVar) {
        return new a(d2Var, aVar);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f59737g) {
            return;
        }
        this.f59737g = true;
        this.f59733c.execute(new c());
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        if (!this.f59737g) {
            qh.c.g("AsyncSink.flush");
            try {
                synchronized (this.f59731a) {
                    if (this.f59736f) {
                        return;
                    }
                    this.f59736f = true;
                    this.f59733c.execute(new b());
                    return;
                }
            } finally {
                qh.c.i("AsyncSink.flush");
            }
        }
        throw new IOException("closed");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(Sink sink, Socket socket) {
        com.google.common.base.o.A(this.f59738h == null, "AsyncSink's becomeConnected should only be called once.");
        this.f59738h = (Sink) com.google.common.base.o.t(sink, "sink");
        this.f59739i = (Socket) com.google.common.base.o.t(socket, "socket");
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j10) throws IOException {
        com.google.common.base.o.t(buffer, ShareConstants.FEED_SOURCE_PARAM);
        if (!this.f59737g) {
            qh.c.g("AsyncSink.write");
            try {
                synchronized (this.f59731a) {
                    this.f59732b.write(buffer, j10);
                    if (!this.f59735e && !this.f59736f && this.f59732b.completeSegmentByteCount() > 0) {
                        this.f59735e = true;
                        this.f59733c.execute(new C0691a());
                        return;
                    }
                    return;
                }
            } finally {
                qh.c.i("AsyncSink.write");
            }
        }
        throw new IOException("closed");
    }
}
