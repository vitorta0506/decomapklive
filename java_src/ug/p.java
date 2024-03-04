package ug;
/* loaded from: classes5.dex */
public class p extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f58493a;

    /* renamed from: b  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.util.internal.k f58494b;

    public p() {
        this.f58493a = false;
    }

    public final void b(io.grpc.netty.shaded.io.netty.util.internal.k kVar) {
        this.f58494b = kVar;
    }

    public final io.grpc.netty.shaded.io.netty.util.internal.k c() {
        return this.f58494b;
    }

    public p(ThreadGroup threadGroup, Runnable runnable, String str) {
        super(threadGroup, o.b(runnable), str);
        this.f58493a = true;
    }
}
