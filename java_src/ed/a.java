package ed;

import androidx.annotation.NonNull;
import com.rd.animation.type.AnimationType;
import com.rd.draw.data.Orientation;
import ed.b;
import hd.c;
import hd.j;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private b f38559a;

    /* renamed from: b  reason: collision with root package name */
    private b.a f38560b;

    /* renamed from: c  reason: collision with root package name */
    private hd.a f38561c;

    /* renamed from: d  reason: collision with root package name */
    private kd.a f38562d;

    /* renamed from: e  reason: collision with root package name */
    private float f38563e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f38564f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ed.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C0389a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f38565a;

        static {
            int[] iArr = new int[AnimationType.values().length];
            f38565a = iArr;
            try {
                iArr[AnimationType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38565a[AnimationType.COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38565a[AnimationType.SCALE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38565a[AnimationType.WORM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38565a[AnimationType.FILL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38565a[AnimationType.SLIDE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38565a[AnimationType.THIN_WORM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38565a[AnimationType.DROP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38565a[AnimationType.SWAP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38565a[AnimationType.SCALE_DOWN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public a(@NonNull kd.a aVar, @NonNull b.a aVar2) {
        this.f38559a = new b(aVar2);
        this.f38560b = aVar2;
        this.f38562d = aVar;
    }

    private void a() {
        switch (C0389a.f38565a[this.f38562d.b().ordinal()]) {
            case 1:
                this.f38560b.a(null);
                return;
            case 2:
                c();
                return;
            case 3:
                h();
                return;
            case 4:
                m();
                return;
            case 5:
                f();
                return;
            case 6:
                j();
                return;
            case 7:
                l();
                return;
            case 8:
                d();
                return;
            case 9:
                k();
                return;
            case 10:
                i();
                return;
            default:
                return;
        }
    }

    private void c() {
        int p10 = this.f38562d.p();
        int t10 = this.f38562d.t();
        hd.a b10 = this.f38559a.a().l(t10, p10).b(this.f38562d.a());
        if (this.f38564f) {
            b10.d(this.f38563e);
        } else {
            b10.e();
        }
        this.f38561c = b10;
    }

    private void d() {
        int q10 = this.f38562d.z() ? this.f38562d.q() : this.f38562d.f();
        int r10 = this.f38562d.z() ? this.f38562d.r() : this.f38562d.q();
        int a10 = nd.a.a(this.f38562d, q10);
        int a11 = nd.a.a(this.f38562d, r10);
        int l10 = this.f38562d.l();
        int j10 = this.f38562d.j();
        if (this.f38562d.g() != Orientation.HORIZONTAL) {
            l10 = j10;
        }
        int m10 = this.f38562d.m();
        c m11 = this.f38559a.b().i(this.f38562d.a()).m(a10, a11, (m10 * 3) + l10, m10 + l10, m10);
        if (this.f38564f) {
            m11.d(this.f38563e);
        } else {
            m11.e();
        }
        this.f38561c = m11;
    }

    private void f() {
        int p10 = this.f38562d.p();
        int t10 = this.f38562d.t();
        int m10 = this.f38562d.m();
        int s10 = this.f38562d.s();
        hd.a b10 = this.f38559a.c().q(t10, p10, m10, s10).b(this.f38562d.a());
        if (this.f38564f) {
            b10.d(this.f38563e);
        } else {
            b10.e();
        }
        this.f38561c = b10;
    }

    private void h() {
        int p10 = this.f38562d.p();
        int t10 = this.f38562d.t();
        int m10 = this.f38562d.m();
        float o10 = this.f38562d.o();
        hd.a b10 = this.f38559a.d().p(t10, p10, m10, o10).b(this.f38562d.a());
        if (this.f38564f) {
            b10.d(this.f38563e);
        } else {
            b10.e();
        }
        this.f38561c = b10;
    }

    private void i() {
        int p10 = this.f38562d.p();
        int t10 = this.f38562d.t();
        int m10 = this.f38562d.m();
        float o10 = this.f38562d.o();
        hd.a b10 = this.f38559a.e().p(t10, p10, m10, o10).b(this.f38562d.a());
        if (this.f38564f) {
            b10.d(this.f38563e);
        } else {
            b10.e();
        }
        this.f38561c = b10;
    }

    private void j() {
        int q10 = this.f38562d.z() ? this.f38562d.q() : this.f38562d.f();
        int r10 = this.f38562d.z() ? this.f38562d.r() : this.f38562d.q();
        hd.a b10 = this.f38559a.f().l(nd.a.a(this.f38562d, q10), nd.a.a(this.f38562d, r10)).b(this.f38562d.a());
        if (this.f38564f) {
            b10.d(this.f38563e);
        } else {
            b10.e();
        }
        this.f38561c = b10;
    }

    private void k() {
        int q10 = this.f38562d.z() ? this.f38562d.q() : this.f38562d.f();
        int r10 = this.f38562d.z() ? this.f38562d.r() : this.f38562d.q();
        hd.a b10 = this.f38559a.g().l(nd.a.a(this.f38562d, q10), nd.a.a(this.f38562d, r10)).b(this.f38562d.a());
        if (this.f38564f) {
            b10.d(this.f38563e);
        } else {
            b10.e();
        }
        this.f38561c = b10;
    }

    private void l() {
        int q10 = this.f38562d.z() ? this.f38562d.q() : this.f38562d.f();
        int r10 = this.f38562d.z() ? this.f38562d.r() : this.f38562d.q();
        int a10 = nd.a.a(this.f38562d, q10);
        int a11 = nd.a.a(this.f38562d, r10);
        boolean z10 = r10 > q10;
        j j10 = this.f38559a.h().n(a10, a11, this.f38562d.m(), z10).j(this.f38562d.a());
        if (this.f38564f) {
            j10.d(this.f38563e);
        } else {
            j10.e();
        }
        this.f38561c = j10;
    }

    private void m() {
        int q10 = this.f38562d.z() ? this.f38562d.q() : this.f38562d.f();
        int r10 = this.f38562d.z() ? this.f38562d.r() : this.f38562d.q();
        int a10 = nd.a.a(this.f38562d, q10);
        int a11 = nd.a.a(this.f38562d, r10);
        boolean z10 = r10 > q10;
        j j10 = this.f38559a.i().n(a10, a11, this.f38562d.m(), z10).j(this.f38562d.a());
        if (this.f38564f) {
            j10.d(this.f38563e);
        } else {
            j10.e();
        }
        this.f38561c = j10;
    }

    public void b() {
        this.f38564f = false;
        this.f38563e = 0.0f;
        a();
    }

    public void e() {
        hd.a aVar = this.f38561c;
        if (aVar != null) {
            aVar.c();
        }
    }

    public void g(float f10) {
        this.f38564f = true;
        this.f38563e = f10;
        a();
    }
}
