package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.e;
import java.lang.reflect.Constructor;
/* loaded from: classes5.dex */
public class w0<T extends e> implements h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Constructor<? extends T> f43840a;

    public w0(Class<? extends T> cls) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(cls, "clazz");
        try {
            this.f43840a = cls.getConstructor(new Class[0]);
        } catch (NoSuchMethodException e10) {
            throw new IllegalArgumentException("Class " + io.grpc.netty.shaded.io.netty.util.internal.b0.l(cls) + " does not have a public non-arg constructor", e10);
        }
    }

    @Override // jg.e
    public T a() {
        try {
            return this.f43840a.newInstance(new Object[0]);
        } catch (Throwable th2) {
            throw new ChannelException("Unable to create Channel from class " + this.f43840a.getDeclaringClass(), th2);
        }
    }

    public String toString() {
        return io.grpc.netty.shaded.io.netty.util.internal.b0.l(w0.class) + '(' + io.grpc.netty.shaded.io.netty.util.internal.b0.l(this.f43840a.getDeclaringClass()) + ".class)";
    }
}
