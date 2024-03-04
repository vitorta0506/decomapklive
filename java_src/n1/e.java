package n1;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.concurrent.Executor;
import n1.u;
import w1.m0;
import w1.n0;
import w1.u0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e extends u {

    /* renamed from: a  reason: collision with root package name */
    private fi.a<Executor> f55253a;

    /* renamed from: b  reason: collision with root package name */
    private fi.a<Context> f55254b;

    /* renamed from: c  reason: collision with root package name */
    private fi.a f55255c;

    /* renamed from: d  reason: collision with root package name */
    private fi.a f55256d;

    /* renamed from: e  reason: collision with root package name */
    private fi.a f55257e;

    /* renamed from: f  reason: collision with root package name */
    private fi.a<String> f55258f;

    /* renamed from: g  reason: collision with root package name */
    private fi.a<m0> f55259g;

    /* renamed from: h  reason: collision with root package name */
    private fi.a<SchedulerConfig> f55260h;

    /* renamed from: i  reason: collision with root package name */
    private fi.a<v1.u> f55261i;

    /* renamed from: j  reason: collision with root package name */
    private fi.a<u1.c> f55262j;

    /* renamed from: k  reason: collision with root package name */
    private fi.a<v1.o> f55263k;

    /* renamed from: l  reason: collision with root package name */
    private fi.a<v1.s> f55264l;

    /* renamed from: m  reason: collision with root package name */
    private fi.a<t> f55265m;

    /* loaded from: classes.dex */
    private static final class b implements u.a {

        /* renamed from: a  reason: collision with root package name */
        private Context f55266a;

        private b() {
        }

        @Override // n1.u.a
        /* renamed from: b */
        public b a(Context context) {
            this.f55266a = (Context) q1.d.b(context);
            return this;
        }

        @Override // n1.u.a
        public u build() {
            q1.d.a(this.f55266a, Context.class);
            return new e(this.f55266a);
        }
    }

    public static u.a e() {
        return new b();
    }

    private void h(Context context) {
        this.f55253a = q1.a.b(k.a());
        q1.b a10 = q1.c.a(context);
        this.f55254b = a10;
        o1.h a11 = o1.h.a(a10, y1.c.a(), y1.d.a());
        this.f55255c = a11;
        this.f55256d = q1.a.b(o1.j.a(this.f55254b, a11));
        this.f55257e = u0.a(this.f55254b, w1.g.a(), w1.i.a());
        this.f55258f = w1.h.a(this.f55254b);
        this.f55259g = q1.a.b(n0.a(y1.c.a(), y1.d.a(), w1.j.a(), this.f55257e, this.f55258f));
        u1.g b10 = u1.g.b(y1.c.a());
        this.f55260h = b10;
        u1.i a12 = u1.i.a(this.f55254b, this.f55259g, b10, y1.d.a());
        this.f55261i = a12;
        fi.a<Executor> aVar = this.f55253a;
        fi.a aVar2 = this.f55256d;
        fi.a<m0> aVar3 = this.f55259g;
        this.f55262j = u1.d.a(aVar, aVar2, a12, aVar3, aVar3);
        fi.a<Context> aVar4 = this.f55254b;
        fi.a aVar5 = this.f55256d;
        fi.a<m0> aVar6 = this.f55259g;
        this.f55263k = v1.p.a(aVar4, aVar5, aVar6, this.f55261i, this.f55253a, aVar6, y1.c.a(), y1.d.a(), this.f55259g);
        fi.a<Executor> aVar7 = this.f55253a;
        fi.a<m0> aVar8 = this.f55259g;
        this.f55264l = v1.t.a(aVar7, aVar8, this.f55261i, aVar8);
        this.f55265m = q1.a.b(v.a(y1.c.a(), y1.d.a(), this.f55262j, this.f55263k, this.f55264l));
    }

    @Override // n1.u
    w1.d a() {
        return this.f55259g.get();
    }

    @Override // n1.u
    t c() {
        return this.f55265m.get();
    }

    private e(Context context) {
        h(context);
    }
}
