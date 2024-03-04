package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.c0;
import io.grpc.netty.shaded.io.netty.channel.f1;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.channel.r0;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.io.IOException;
/* loaded from: classes5.dex */
public class d extends c0 {

    /* renamed from: o  reason: collision with root package name */
    private volatile long f43664o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f43665a;

        static {
            int[] iArr = new int[EpollMode.values().length];
            f43665a = iArr;
            try {
                iArr[EpollMode.EDGE_TRIGGERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43665a[EpollMode.LEVEL_TRIGGERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(io.grpc.netty.shaded.io.netty.channel.epoll.a aVar) {
        super(aVar);
        this.f43664o = io.grpc.netty.shaded.io.netty.channel.unix.b.f43831c;
    }

    private void H() {
        if (this.f43557a.O()) {
            throw new IllegalStateException("EpollMode can only be changed before channel is registered");
        }
    }

    public EpollMode I() {
        return ((io.grpc.netty.shaded.io.netty.channel.epoll.a) this.f43557a).Y0(Native.f43623e) ? EpollMode.EDGE_TRIGGERED : EpollMode.LEVEL_TRIGGERED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long J() {
        return this.f43664o;
    }

    public d K(kg.k kVar) {
        super.s(kVar);
        return this;
    }

    public d L(boolean z10) {
        super.u(z10);
        return this;
    }

    public d M(int i9) {
        super.v(i9);
        return this;
    }

    public d N(EpollMode epollMode) {
        s.h(epollMode, "mode");
        try {
            int i9 = a.f43665a[epollMode.ordinal()];
            if (i9 == 1) {
                H();
                ((io.grpc.netty.shaded.io.netty.channel.epoll.a) this.f43557a).e1(Native.f43623e);
            } else if (i9 == 2) {
                H();
                ((io.grpc.netty.shaded.io.netty.channel.epoll.a) this.f43557a).P0(Native.f43623e);
            } else {
                throw new Error();
            }
            return this;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void O(long j10) {
        this.f43664o = j10;
    }

    @Deprecated
    public d P(int i9) {
        super.w(i9);
        return this;
    }

    public d Q(r0 r0Var) {
        super.y(r0Var);
        return this;
    }

    public d R(v0 v0Var) {
        if (v0Var.a() instanceof v0.b) {
            super.A(v0Var);
            return this;
        }
        throw new IllegalArgumentException("allocator.newHandle() must return an object of type: " + v0.b.class);
    }

    @Deprecated
    public d S(int i9) {
        super.C(i9);
        return this;
    }

    @Deprecated
    public d T(int i9) {
        super.D(i9);
        return this;
    }

    public d U(f1 f1Var) {
        super.E(f1Var);
        return this;
    }

    public d V(int i9) {
        super.F(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> T b(r<T> rVar) {
        if (rVar == lg.b.E4) {
            return (T) I();
        }
        return (T) super.b(rVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
    public <T> boolean k(r<T> rVar, T t10) {
        G(rVar, t10);
        if (rVar == lg.b.E4) {
            N((EpollMode) t10);
            return true;
        }
        return super.k(rVar, t10);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c0
    protected final void n() {
        ((io.grpc.netty.shaded.io.netty.channel.epoll.a) this.f43557a).N0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(io.grpc.netty.shaded.io.netty.channel.epoll.a aVar, v0 v0Var) {
        super(aVar, v0Var);
        this.f43664o = io.grpc.netty.shaded.io.netty.channel.unix.b.f43831c;
    }
}
