package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.epoll.a;
import io.grpc.netty.shaded.io.netty.channel.epoll.c;
import io.grpc.netty.shaded.io.netty.channel.s;
import io.grpc.netty.shaded.io.netty.channel.unix.DomainSocketAddress;
import io.grpc.netty.shaded.io.netty.channel.unix.DomainSocketReadMode;
import io.grpc.netty.shaded.io.netty.channel.unix.FileDescriptor;
import io.grpc.netty.shaded.io.netty.channel.w;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public final class e extends c {
    private final f L;
    private volatile DomainSocketAddress M;
    private volatile DomainSocketAddress N;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f43666a;

        static {
            int[] iArr = new int[DomainSocketReadMode.values().length];
            f43666a = iArr;
            try {
                iArr[DomainSocketReadMode.BYTES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43666a[DomainSocketReadMode.FILE_DESCRIPTORS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b extends c.C0482c {
        private b() {
            super();
        }

        private void b0() {
            if (e.this.f43634s.A()) {
                A();
                return;
            }
            f b02 = e.this.b0();
            j R = R();
            R.m(e.this.Y0(Native.f43623e));
            w J = e.this.J();
            R.c(b02);
            D();
            do {
                try {
                    R.h(e.this.f43634s.J());
                    int k10 = R.k();
                    if (k10 == -1) {
                        L(N());
                        return;
                    } else if (k10 == 0) {
                        break;
                    } else {
                        R.e(1);
                        this.f43645f = false;
                        J.p(new FileDescriptor(R.k()));
                    }
                } finally {
                    try {
                    } finally {
                    }
                }
            } while (R.g());
            R.d();
            J.k();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.grpc.netty.shaded.io.netty.channel.epoll.c.C0482c, io.grpc.netty.shaded.io.netty.channel.epoll.a.c
        public void F() {
            int i9 = a.f43666a[e.this.b0().W().ordinal()];
            if (i9 == 1) {
                super.F();
            } else if (i9 == 2) {
                b0();
            } else {
                throw new Error();
            }
        }

        /* synthetic */ b(e eVar, a aVar) {
            this();
        }
    }

    public e() {
        super(LinuxSocket.l0(), false);
        this.L = new f(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a
    public boolean R0(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception {
        if (super.R0(socketAddress, socketAddress2)) {
            this.M = (DomainSocketAddress) socketAddress2;
            this.N = (DomainSocketAddress) socketAddress;
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.c, io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.a
    /* renamed from: d1 */
    public a.c A0() {
        return new b(this, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.c
    public int l1(s sVar) throws Exception {
        Object g10 = sVar.g();
        if ((g10 instanceof FileDescriptor) && this.f43634s.L(((FileDescriptor) g10).d()) > 0) {
            sVar.x();
            return 1;
        }
        return super.l1(sVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.c, io.grpc.netty.shaded.io.netty.channel.a
    public Object r0(Object obj) {
        return obj instanceof FileDescriptor ? obj : super.r0(obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: s1 */
    public f b0() {
        return this.L;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: t1 */
    public DomainSocketAddress K() {
        return (DomainSocketAddress) super.K();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.a
    /* renamed from: u1 */
    public DomainSocketAddress v0() {
        return this.M;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: v1 */
    public DomainSocketAddress H() {
        return (DomainSocketAddress) super.H();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.a
    /* renamed from: w1 */
    public DomainSocketAddress B0() {
        return this.N;
    }
}
