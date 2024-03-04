package sh;

import android.os.Handler;
import android.os.Message;
import io.reactivex.s;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import th.c;
/* loaded from: classes7.dex */
final class b extends s {

    /* renamed from: c  reason: collision with root package name */
    private final Handler f57913c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f57914d;

    /* loaded from: classes7.dex */
    private static final class a extends s.c {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f57915a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f57916b;

        /* renamed from: c  reason: collision with root package name */
        private volatile boolean f57917c;

        a(Handler handler, boolean z10) {
            this.f57915a = handler;
            this.f57916b = z10;
        }

        @Override // io.reactivex.s.c
        public th.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
            Objects.requireNonNull(runnable, "run == null");
            Objects.requireNonNull(timeUnit, "unit == null");
            if (this.f57917c) {
                return c.a();
            }
            RunnableC0647b runnableC0647b = new RunnableC0647b(this.f57915a, ci.a.u(runnable));
            Message obtain = Message.obtain(this.f57915a, runnableC0647b);
            obtain.obj = this;
            if (this.f57916b) {
                obtain.setAsynchronous(true);
            }
            this.f57915a.sendMessageDelayed(obtain, timeUnit.toMillis(j10));
            if (this.f57917c) {
                this.f57915a.removeCallbacks(runnableC0647b);
                return c.a();
            }
            return runnableC0647b;
        }

        @Override // th.b
        public void dispose() {
            this.f57917c = true;
            this.f57915a.removeCallbacksAndMessages(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f57917c;
        }
    }

    /* renamed from: sh.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    private static final class RunnableC0647b implements Runnable, th.b {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f57918a;

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f57919b;

        /* renamed from: c  reason: collision with root package name */
        private volatile boolean f57920c;

        RunnableC0647b(Handler handler, Runnable runnable) {
            this.f57918a = handler;
            this.f57919b = runnable;
        }

        @Override // th.b
        public void dispose() {
            this.f57918a.removeCallbacks(this);
            this.f57920c = true;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f57920c;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f57919b.run();
            } catch (Throwable th2) {
                ci.a.s(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Handler handler, boolean z10) {
        this.f57913c = handler;
        this.f57914d = z10;
    }

    @Override // io.reactivex.s
    public s.c b() {
        return new a(this.f57913c, this.f57914d);
    }

    @Override // io.reactivex.s
    public th.b e(Runnable runnable, long j10, TimeUnit timeUnit) {
        Objects.requireNonNull(runnable, "run == null");
        Objects.requireNonNull(timeUnit, "unit == null");
        RunnableC0647b runnableC0647b = new RunnableC0647b(this.f57913c, ci.a.u(runnable));
        Message obtain = Message.obtain(this.f57913c, runnableC0647b);
        if (this.f57914d) {
            obtain.setAsynchronous(true);
        }
        this.f57913c.sendMessageDelayed(obtain, timeUnit.toMillis(j10));
        return runnableC0647b;
    }
}
