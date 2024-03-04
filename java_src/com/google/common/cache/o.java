package com.google.common.cache;

import com.google.common.base.w;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final w<n> f12594a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements w<n> {
        a() {
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public n get() {
            return new p();
        }
    }

    /* loaded from: classes2.dex */
    class b implements w<n> {
        b() {
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public n get() {
            return new c(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c extends AtomicLong implements n {
        private c() {
        }

        @Override // com.google.common.cache.n
        public void add(long j10) {
            getAndAdd(j10);
        }

        @Override // com.google.common.cache.n
        public void increment() {
            getAndIncrement();
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    static {
        w<n> bVar;
        try {
            new p();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        f12594a = bVar;
    }

    public static n a() {
        return f12594a.get();
    }
}
