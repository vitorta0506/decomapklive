package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.j0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public final class Loader {

    /* renamed from: d  reason: collision with root package name */
    public static final c f6882d = g(false, -9223372036854775807L);

    /* renamed from: e  reason: collision with root package name */
    public static final c f6883e = g(true, -9223372036854775807L);

    /* renamed from: f  reason: collision with root package name */
    public static final c f6884f = new c(2, -9223372036854775807L);

    /* renamed from: g  reason: collision with root package name */
    public static final c f6885g = new c(3, -9223372036854775807L);

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f6886a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private d<? extends e> f6887b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private IOException f6888c;

    /* loaded from: classes2.dex */
    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th2) {
            super("Unexpected " + th2.getClass().getSimpleName() + ": " + th2.getMessage(), th2);
        }
    }

    /* loaded from: classes2.dex */
    public interface b<T extends e> {
        void a(T t10, long j10, long j11, boolean z10);

        void d(T t10, long j10, long j11);

        c i(T t10, long j10, long j11, IOException iOException, int i9);
    }

    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f6889a;

        /* renamed from: b  reason: collision with root package name */
        private final long f6890b;

        public boolean c() {
            int i9 = this.f6889a;
            return i9 == 0 || i9 == 1;
        }

        private c(int i9, long j10) {
            this.f6889a = i9;
            this.f6890b = j10;
        }
    }

    /* loaded from: classes2.dex */
    private final class d<T extends e> extends Handler implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f6891a;

        /* renamed from: b  reason: collision with root package name */
        private final T f6892b;

        /* renamed from: c  reason: collision with root package name */
        private final long f6893c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private b<T> f6894d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private IOException f6895e;

        /* renamed from: f  reason: collision with root package name */
        private int f6896f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Thread f6897g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f6898h;

        /* renamed from: i  reason: collision with root package name */
        private volatile boolean f6899i;

        public d(Looper looper, T t10, b<T> bVar, int i9, long j10) {
            super(looper);
            this.f6892b = t10;
            this.f6894d = bVar;
            this.f6891a = i9;
            this.f6893c = j10;
        }

        private void c() {
            this.f6895e = null;
            Loader.this.f6886a.execute((Runnable) com.google.android.exoplayer2.util.a.e(Loader.this.f6887b));
        }

        private void d() {
            Loader.this.f6887b = null;
        }

        private long f() {
            return Math.min((this.f6896f - 1) * 1000, 5000);
        }

        public void b(boolean z10) {
            this.f6899i = z10;
            this.f6895e = null;
            if (hasMessages(0)) {
                this.f6898h = true;
                removeMessages(0);
                if (!z10) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.f6898h = true;
                    this.f6892b.c();
                    Thread thread = this.f6897g;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z10) {
                d();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ((b) com.google.android.exoplayer2.util.a.e(this.f6894d)).a(this.f6892b, elapsedRealtime, elapsedRealtime - this.f6893c, true);
                this.f6894d = null;
            }
        }

        public void g(int i9) throws IOException {
            IOException iOException = this.f6895e;
            if (iOException != null && this.f6896f > i9) {
                throw iOException;
            }
        }

        public void h(long j10) {
            com.google.android.exoplayer2.util.a.f(Loader.this.f6887b == null);
            Loader.this.f6887b = this;
            if (j10 > 0) {
                sendEmptyMessageDelayed(0, j10);
            } else {
                c();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long f10;
            if (this.f6899i) {
                return;
            }
            int i9 = message.what;
            if (i9 == 0) {
                c();
            } else if (i9 != 3) {
                d();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j10 = elapsedRealtime - this.f6893c;
                b bVar = (b) com.google.android.exoplayer2.util.a.e(this.f6894d);
                if (this.f6898h) {
                    bVar.a(this.f6892b, elapsedRealtime, j10, false);
                    return;
                }
                int i10 = message.what;
                if (i10 == 1) {
                    try {
                        bVar.d(this.f6892b, elapsedRealtime, j10);
                    } catch (RuntimeException e10) {
                        r.d("LoadTask", "Unexpected exception handling load completed", e10);
                        Loader.this.f6888c = new UnexpectedLoaderException(e10);
                    }
                } else if (i10 != 2) {
                } else {
                    IOException iOException = (IOException) message.obj;
                    this.f6895e = iOException;
                    int i11 = this.f6896f + 1;
                    this.f6896f = i11;
                    c i12 = bVar.i(this.f6892b, elapsedRealtime, j10, iOException, i11);
                    if (i12.f6889a == 3) {
                        Loader.this.f6888c = this.f6895e;
                    } else if (i12.f6889a != 2) {
                        if (i12.f6889a == 1) {
                            this.f6896f = 1;
                        }
                        if (i12.f6890b != -9223372036854775807L) {
                            f10 = i12.f6890b;
                        } else {
                            f10 = f();
                        }
                        h(f10);
                    }
                }
            } else {
                throw ((Error) message.obj);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            try {
                synchronized (this) {
                    z10 = !this.f6898h;
                    this.f6897g = Thread.currentThread();
                }
                if (z10) {
                    j0.a("load:" + this.f6892b.getClass().getSimpleName());
                    try {
                        this.f6892b.a();
                        j0.c();
                    } catch (Throwable th2) {
                        j0.c();
                        throw th2;
                    }
                }
                synchronized (this) {
                    this.f6897g = null;
                    Thread.interrupted();
                }
                if (this.f6899i) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e10) {
                if (this.f6899i) {
                    return;
                }
                obtainMessage(2, e10).sendToTarget();
            } catch (Error e11) {
                if (!this.f6899i) {
                    r.d("LoadTask", "Unexpected error loading stream", e11);
                    obtainMessage(3, e11).sendToTarget();
                }
                throw e11;
            } catch (Exception e12) {
                if (this.f6899i) {
                    return;
                }
                r.d("LoadTask", "Unexpected exception loading stream", e12);
                obtainMessage(2, new UnexpectedLoaderException(e12)).sendToTarget();
            } catch (OutOfMemoryError e13) {
                if (this.f6899i) {
                    return;
                }
                r.d("LoadTask", "OutOfMemory error loading stream", e13);
                obtainMessage(2, new UnexpectedLoaderException(e13)).sendToTarget();
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a() throws IOException;

        void c();
    }

    /* loaded from: classes2.dex */
    public interface f {
        void j();
    }

    /* loaded from: classes2.dex */
    private static final class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final f f6901a;

        public g(f fVar) {
            this.f6901a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6901a.j();
        }
    }

    public Loader(String str) {
        this.f6886a = l0.x0("ExoPlayer:Loader:" + str);
    }

    public static c g(boolean z10, long j10) {
        return new c(z10 ? 1 : 0, j10);
    }

    public void e() {
        ((d) com.google.android.exoplayer2.util.a.h(this.f6887b)).b(false);
    }

    public void f() {
        this.f6888c = null;
    }

    public boolean h() {
        return this.f6888c != null;
    }

    public boolean i() {
        return this.f6887b != null;
    }

    public void j(int i9) throws IOException {
        IOException iOException = this.f6888c;
        if (iOException == null) {
            d<? extends e> dVar = this.f6887b;
            if (dVar != null) {
                if (i9 == Integer.MIN_VALUE) {
                    i9 = dVar.f6891a;
                }
                dVar.g(i9);
                return;
            }
            return;
        }
        throw iOException;
    }

    public void k(@Nullable f fVar) {
        d<? extends e> dVar = this.f6887b;
        if (dVar != null) {
            dVar.b(true);
        }
        if (fVar != null) {
            this.f6886a.execute(new g(fVar));
        }
        this.f6886a.shutdown();
    }

    public <T extends e> long l(T t10, b<T> bVar, int i9) {
        this.f6888c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new d((Looper) com.google.android.exoplayer2.util.a.h(Looper.myLooper()), t10, bVar, i9, elapsedRealtime).h(0L);
        return elapsedRealtime;
    }
}
