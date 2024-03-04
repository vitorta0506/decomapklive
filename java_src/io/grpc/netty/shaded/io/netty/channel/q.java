package io.grpc.netty.shaded.io.netty.channel;
/* loaded from: classes5.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f43722a;

    /* renamed from: b  reason: collision with root package name */
    private final int f43723b;

    public q(boolean z10) {
        this(z10, 1);
    }

    public int a() {
        return this.f43723b;
    }

    public boolean b() {
        return this.f43722a;
    }

    public q(boolean z10, int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "defaultMaxMessagesPerRead");
        this.f43722a = z10;
        this.f43723b = i9;
    }
}
