package ob;

import android.app.Application;
import android.content.res.Resources;
/* loaded from: classes4.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private static Application f55600a;

    /* renamed from: b  reason: collision with root package name */
    private static pb.d f55601b;

    /* renamed from: c  reason: collision with root package name */
    private static pb.f<?> f55602c;

    /* renamed from: d  reason: collision with root package name */
    private static pb.c f55603d;

    /* renamed from: e  reason: collision with root package name */
    private static Boolean f55604e;

    private m() {
    }

    public static void a(Application application) {
        c(application, f55602c);
    }

    public static void b(Application application, pb.d dVar, pb.f<?> fVar) {
        f55600a = application;
        if (dVar == null) {
            dVar = new l();
        }
        h(dVar);
        if (fVar == null) {
            fVar = new qb.a();
        }
        i(fVar);
    }

    public static void c(Application application, pb.f<?> fVar) {
        b(application, null, fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d() {
        if (f55604e == null) {
            f55604e = Boolean.valueOf((f55600a.getApplicationInfo().flags & 2) != 0);
        }
        return f55604e.booleanValue();
    }

    public static void e(int i9) {
        f(i9, 0, 0);
    }

    public static void f(int i9, int i10, int i11) {
        g(i9, i10, i11, 0.0f, 0.0f);
    }

    public static void g(int i9, int i10, int i11, float f10, float f11) {
        f55601b.b(new qb.b(f55602c, i9, i10, i11, f10, f11));
    }

    public static void h(pb.d dVar) {
        f55601b = dVar;
        dVar.a(f55600a);
    }

    public static void i(pb.f<?> fVar) {
        f55602c = fVar;
        f55601b.b(fVar);
    }

    public static void j(int i9) {
        k(i9, 0L);
    }

    private static void k(int i9, long j10) {
        try {
            l(f55600a.getResources().getText(i9));
        } catch (Resources.NotFoundException unused) {
            l(String.valueOf(i9));
        }
    }

    public static void l(CharSequence charSequence) {
        m(charSequence, 0L);
    }

    private static void m(CharSequence charSequence, long j10) {
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        if (f55603d == null) {
            f55603d = new k();
        }
        if (f55603d.a(charSequence)) {
            return;
        }
        f55601b.c(charSequence, j10);
    }
}
