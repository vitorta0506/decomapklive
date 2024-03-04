package com.google.common.hash;

import com.google.common.base.w;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final w<m> f13534a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements w<m> {
        a() {
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public m get() {
            return new o();
        }
    }

    /* loaded from: classes2.dex */
    class b implements w<m> {
        b() {
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public m get() {
            return new c(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c extends AtomicLong implements m {
        private c() {
        }

        @Override // com.google.common.hash.m
        public long a() {
            return get();
        }

        @Override // com.google.common.hash.m
        public void add(long j10) {
            getAndAdd(j10);
        }

        @Override // com.google.common.hash.m
        public void increment() {
            getAndIncrement();
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    static {
        w<m> bVar;
        try {
            new o();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        f13534a = bVar;
    }

    public static m a() {
        return f13534a.get();
    }
}
