package io.grpc.netty.shaded.io.netty.internal.tcnative;
/* loaded from: classes5.dex */
abstract class f implements Runnable {

    /* renamed from: e  reason: collision with root package name */
    private static final Runnable f44972e = new a();

    /* renamed from: a  reason: collision with root package name */
    private final long f44973a;

    /* renamed from: b  reason: collision with root package name */
    private int f44974b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f44975c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f44976d;

    /* loaded from: classes5.dex */
    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f44977a;

        b(Runnable runnable) {
            this.f44977a = runnable;
        }

        @Override // io.grpc.netty.shaded.io.netty.internal.tcnative.f.c
        public void a(long j10, int i9) {
            f.this.f44974b = i9;
            f.this.f44975c = true;
            this.f44977a.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface c {
        void a(long j10, int i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Runnable runnable) {
        if (!this.f44976d) {
            this.f44976d = true;
            d(this.f44973a, new b(runnable));
            return;
        }
        runnable.run();
    }

    protected abstract void d(long j10, c cVar);

    @Override // java.lang.Runnable
    public final void run() {
        a(f44972e);
    }
}
