package ug;
/* loaded from: classes5.dex */
final class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f58492a;

    private o(Runnable runnable) {
        this.f58492a = (Runnable) io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "runnable");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable b(Runnable runnable) {
        return runnable instanceof o ? runnable : new o(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f58492a.run();
        } finally {
            n.j();
        }
    }
}
