package di;

import io.reactivex.internal.schedulers.i;
import io.reactivex.internal.schedulers.j;
import io.reactivex.s;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final s f38125a = ci.a.h(new h());

    /* renamed from: b  reason: collision with root package name */
    static final s f38126b = ci.a.e(new b());

    /* renamed from: c  reason: collision with root package name */
    static final s f38127c = ci.a.f(new c());

    /* renamed from: d  reason: collision with root package name */
    static final s f38128d = j.g();

    /* renamed from: e  reason: collision with root package name */
    static final s f38129e = ci.a.g(new f());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: di.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0380a {

        /* renamed from: a  reason: collision with root package name */
        static final s f38130a = new io.reactivex.internal.schedulers.b();
    }

    /* loaded from: classes7.dex */
    static final class b implements Callable<s> {
        b() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public s call() throws Exception {
            return C0380a.f38130a;
        }
    }

    /* loaded from: classes7.dex */
    static final class c implements Callable<s> {
        c() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public s call() throws Exception {
            return d.f38131a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final s f38131a = new io.reactivex.internal.schedulers.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        static final s f38132a = new io.reactivex.internal.schedulers.e();
    }

    /* loaded from: classes7.dex */
    static final class f implements Callable<s> {
        f() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public s call() throws Exception {
            return e.f38132a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        static final s f38133a = new i();
    }

    /* loaded from: classes7.dex */
    static final class h implements Callable<s> {
        h() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public s call() throws Exception {
            return g.f38133a;
        }
    }

    public static s a() {
        return ci.a.r(f38126b);
    }

    public static s b() {
        return ci.a.t(f38127c);
    }

    public static s c() {
        return f38128d;
    }
}
