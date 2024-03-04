package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.k;
import io.grpc.netty.shaded.io.netty.channel.n;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class l implements k {

    /* renamed from: a  reason: collision with root package name */
    boolean f43714a;

    @Override // io.grpc.netty.shaded.io.netty.channel.k
    public void A(m mVar) throws Exception {
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.k
    public void E(m mVar) throws Exception {
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.k, io.grpc.netty.shaded.io.netty.channel.o
    @n.c
    @Deprecated
    public void a(m mVar, Throwable th2) throws Exception {
        mVar.v(th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p() {
        if (q()) {
            throw new IllegalStateException("ChannelHandler " + getClass().getName() + " is not allowed to be shared");
        }
    }

    public boolean q() {
        Class<?> cls = getClass();
        Map<Class<?>, Boolean> g10 = io.grpc.netty.shaded.io.netty.util.internal.k.e().g();
        Boolean bool = g10.get(cls);
        if (bool == null) {
            bool = Boolean.valueOf(cls.isAnnotationPresent(k.a.class));
            g10.put(cls, bool);
        }
        return bool.booleanValue();
    }
}
