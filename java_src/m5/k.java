package m5;

import java.time.Duration;
import m5.a;
/* loaded from: classes2.dex */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    static final Duration f54830a = Duration.ofMinutes(1);

    /* loaded from: classes2.dex */
    public static abstract class a {
        abstract k a();

        public k b() {
            k a10 = a();
            com.google.common.base.o.A(a10.f() <= a10.d(), "rpcsPerChannel range is invalid");
            com.google.common.base.o.A(a10.e() > 0, "Minimum channel count must be at least 1");
            com.google.common.base.o.A(a10.e() <= a10.d(), "absolute channel range is invalid");
            com.google.common.base.o.A(a10.e() <= a10.b(), "initial channel count be at least minChannelCount");
            com.google.common.base.o.A(a10.b() <= a10.c(), "initial channel count must be less than maxChannelCount");
            com.google.common.base.o.A(a10.b() > 0, "Initial channel count must be greater than 0");
            return a10;
        }

        public abstract a c(int i9);

        public abstract a d(int i9);

        public abstract a e(int i9);

        public abstract a f(int i9);

        public abstract a g(int i9);

        public abstract a h(boolean z10);
    }

    public static a a() {
        return new a.b().c(1).f(1).d(200).g(0).e(Integer.MAX_VALUE).h(false);
    }

    public static k i(int i9) {
        return a().c(i9).g(0).e(Integer.MAX_VALUE).f(i9).d(i9).b();
    }

    public abstract int b();

    public abstract int c();

    public abstract int d();

    public abstract int e();

    public abstract int f();

    public abstract boolean g();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        if (e() == c()) {
            return true;
        }
        return f() == 0 && d() == Integer.MAX_VALUE;
    }
}
