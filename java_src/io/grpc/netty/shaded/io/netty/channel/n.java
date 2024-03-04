package io.grpc.netty.shaded.io.netty.channel;

import androidx.core.app.FrameMetricsAggregator;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.SocketAddress;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.Map;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43716a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(n.class);

    /* renamed from: b  reason: collision with root package name */
    private static final ug.n<Map<Class<? extends k>, Integer>> f43717b = new a();

    /* loaded from: classes5.dex */
    static class a extends ug.n<Map<Class<? extends k>, Integer>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: o */
        public Map<Class<? extends k>, Integer> e() {
            return new WeakHashMap(32);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b implements PrivilegedExceptionAction<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f43718a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f43719b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Class[] f43720c;

        b(Class cls, String str, Class[] clsArr) {
            this.f43718a = cls;
            this.f43719b = str;
            this.f43720c = clsArr;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Boolean run() throws Exception {
            try {
                return Boolean.valueOf(this.f43718a.getMethod(this.f43719b, this.f43720c).isAnnotationPresent(c.class));
            } catch (NoSuchMethodException e10) {
                if (n.f43716a.isDebugEnabled()) {
                    n.f43716a.debug("Class {} missing method {}, assume we can not skip execution", this.f43718a, this.f43719b, e10);
                }
                return Boolean.FALSE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    public @interface c {
    }

    private n() {
    }

    private static boolean b(Class<?> cls, String str, Class<?>... clsArr) throws Exception {
        return ((Boolean) AccessController.doPrivileged(new b(cls, str, clsArr))).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(Class<? extends k> cls) {
        Map<Class<? extends k>, Integer> b10 = f43717b.b();
        Integer num = b10.get(cls);
        if (num == null) {
            num = Integer.valueOf(d(cls));
            b10.put(cls, num);
        }
        return num.intValue();
    }

    private static int d(Class<? extends k> cls) {
        int i9;
        int i10 = 1;
        try {
            if (o.class.isAssignableFrom(cls)) {
                i9 = FrameMetricsAggregator.EVERY_DURATION;
                try {
                    if (b(cls, "channelRegistered", m.class)) {
                        i9 = 509;
                    }
                    try {
                        if (b(cls, "channelUnregistered", m.class)) {
                            i9 &= -5;
                        }
                        if (b(cls, "channelActive", m.class)) {
                            i9 &= -9;
                        }
                        if (b(cls, "channelInactive", m.class)) {
                            i9 &= -17;
                        }
                        if (b(cls, "channelRead", m.class, Object.class)) {
                            i9 &= -33;
                        }
                        if (b(cls, "channelReadComplete", m.class)) {
                            i9 &= -65;
                        }
                        if (b(cls, "channelWritabilityChanged", m.class)) {
                            i9 &= -257;
                        }
                        if (b(cls, "userEventTriggered", m.class, Object.class)) {
                            i9 &= -129;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        i10 = i9;
                        io.grpc.netty.shaded.io.netty.util.internal.t.R0(e);
                        return i10;
                    }
                } catch (Exception e11) {
                    e = e11;
                    i10 = FrameMetricsAggregator.EVERY_DURATION;
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(e);
                    return i10;
                }
            } else {
                i9 = 1;
            }
            if (t.class.isAssignableFrom(cls)) {
                i9 |= 130561;
                if (b(cls, "bind", m.class, SocketAddress.class, y.class)) {
                    i9 &= -513;
                }
                if (b(cls, "connect", m.class, SocketAddress.class, SocketAddress.class, y.class)) {
                    i9 &= -1025;
                }
                if (b(cls, "disconnect", m.class, y.class)) {
                    i9 &= -2049;
                }
                if (b(cls, "close", m.class, y.class)) {
                    i9 &= -4097;
                }
                if (b(cls, "deregister", m.class, y.class)) {
                    i9 &= -8193;
                }
                if (b(cls, "read", m.class)) {
                    i9 &= -16385;
                }
                if (b(cls, "write", m.class, Object.class, y.class)) {
                    i9 = (-32769) & i9;
                }
                if (b(cls, "flush", m.class)) {
                    i9 &= -65537;
                }
            }
            return b(cls, "exceptionCaught", m.class, Throwable.class) ? i9 & (-2) : i9;
        } catch (Exception e12) {
            e = e12;
        }
    }
}
