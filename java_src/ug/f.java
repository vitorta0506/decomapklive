package ug;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import ug.k;
/* loaded from: classes5.dex */
public final class f implements k {

    /* renamed from: a  reason: collision with root package name */
    public static final f f58438a = new f();

    /* loaded from: classes5.dex */
    private static final class a implements k.a {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicLong f58439a = new AtomicLong();

        /* renamed from: b  reason: collision with root package name */
        private final j[] f58440b;

        a(j[] jVarArr) {
            this.f58440b = jVarArr;
        }

        @Override // ug.k.a
        public j next() {
            return this.f58440b[(int) Math.abs(this.f58439a.getAndIncrement() % this.f58440b.length)];
        }
    }

    /* loaded from: classes5.dex */
    private static final class b implements k.a {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f58441a = new AtomicInteger();

        /* renamed from: b  reason: collision with root package name */
        private final j[] f58442b;

        b(j[] jVarArr) {
            this.f58442b = jVarArr;
        }

        @Override // ug.k.a
        public j next() {
            return this.f58442b[this.f58441a.getAndIncrement() & (this.f58442b.length - 1)];
        }
    }

    private f() {
    }

    private static boolean b(int i9) {
        return ((-i9) & i9) == i9;
    }

    @Override // ug.k
    public k.a a(j[] jVarArr) {
        if (b(jVarArr.length)) {
            return new b(jVarArr);
        }
        return new a(jVarArr);
    }
}
