package com.google.common.io;

import com.google.common.base.o;
import com.google.common.base.y;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public final class g implements Closeable {

    /* renamed from: d  reason: collision with root package name */
    private static final c f13576d;

    /* renamed from: a  reason: collision with root package name */
    final c f13577a;

    /* renamed from: b  reason: collision with root package name */
    private final Deque<Closeable> f13578b = new ArrayDeque(4);

    /* renamed from: c  reason: collision with root package name */
    private Throwable f13579c;

    /* loaded from: classes2.dex */
    static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        static final a f13580a = new a();

        a() {
        }

        @Override // com.google.common.io.g.c
        public void a(Closeable closeable, Throwable th2, Throwable th3) {
            Logger logger = f.f13575a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(closeable);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 42);
            sb2.append("Suppressing exception thrown when closing ");
            sb2.append(valueOf);
            logger.log(level, sb2.toString(), th3);
        }
    }

    /* loaded from: classes2.dex */
    static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final Method f13581a;

        private b(Method method) {
            this.f13581a = method;
        }

        static b b() {
            try {
                return new b(Throwable.class.getMethod("addSuppressed", Throwable.class));
            } catch (Throwable unused) {
                return null;
            }
        }

        @Override // com.google.common.io.g.c
        public void a(Closeable closeable, Throwable th2, Throwable th3) {
            if (th2 == th3) {
                return;
            }
            try {
                this.f13581a.invoke(th2, th3);
            } catch (Throwable unused) {
                a.f13580a.a(closeable, th2, th3);
            }
        }
    }

    /* loaded from: classes2.dex */
    interface c {
        void a(Closeable closeable, Throwable th2, Throwable th3);
    }

    static {
        c b10 = b.b();
        if (b10 == null) {
            b10 = a.f13580a;
        }
        f13576d = b10;
    }

    g(c cVar) {
        this.f13577a = (c) o.s(cVar);
    }

    public static g a() {
        return new g(f13576d);
    }

    public <C extends Closeable> C b(C c10) {
        if (c10 != null) {
            this.f13578b.addFirst(c10);
        }
        return c10;
    }

    public RuntimeException c(Throwable th2) throws IOException {
        o.s(th2);
        this.f13579c = th2;
        y.i(th2, IOException.class);
        throw new RuntimeException(th2);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th2 = this.f13579c;
        while (!this.f13578b.isEmpty()) {
            Closeable removeFirst = this.f13578b.removeFirst();
            try {
                removeFirst.close();
            } catch (Throwable th3) {
                if (th2 == null) {
                    th2 = th3;
                } else {
                    this.f13577a.a(removeFirst, th2, th3);
                }
            }
        }
        if (this.f13579c != null || th2 == null) {
            return;
        }
        y.i(th2, IOException.class);
        throw new AssertionError(th2);
    }
}
