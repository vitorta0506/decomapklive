package jd;

import android.graphics.Canvas;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.rd.animation.type.AnimationType;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private fd.a f53211a;

    /* renamed from: b  reason: collision with root package name */
    private ld.a f53212b;

    /* renamed from: c  reason: collision with root package name */
    private kd.a f53213c;

    /* renamed from: d  reason: collision with root package name */
    private InterfaceC0543b f53214d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f53215a;

        static {
            int[] iArr = new int[AnimationType.values().length];
            f53215a = iArr;
            try {
                iArr[AnimationType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f53215a[AnimationType.COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f53215a[AnimationType.SCALE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f53215a[AnimationType.WORM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f53215a[AnimationType.SLIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f53215a[AnimationType.FILL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f53215a[AnimationType.THIN_WORM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f53215a[AnimationType.DROP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f53215a[AnimationType.SWAP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f53215a[AnimationType.SCALE_DOWN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* renamed from: jd.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0543b {
        void a(int i9);
    }

    public b(@NonNull kd.a aVar) {
        this.f53213c = aVar;
        this.f53212b = new ld.a(aVar);
    }

    private void b(@NonNull Canvas canvas, int i9, int i10, int i11) {
        boolean z10 = this.f53213c.z();
        int q10 = this.f53213c.q();
        int r10 = this.f53213c.r();
        boolean z11 = true;
        boolean z12 = !z10 && (i9 == q10 || i9 == this.f53213c.f());
        if (!z10 || (i9 != q10 && i9 != r10)) {
            z11 = false;
        }
        boolean z13 = z12 | z11;
        this.f53212b.k(i9, i10, i11);
        if (this.f53211a != null && z13) {
            c(canvas);
        } else {
            this.f53212b.a(canvas, z13);
        }
    }

    private void c(@NonNull Canvas canvas) {
        switch (a.f53215a[this.f53213c.b().ordinal()]) {
            case 1:
                this.f53212b.a(canvas, true);
                return;
            case 2:
                this.f53212b.b(canvas, this.f53211a);
                return;
            case 3:
                this.f53212b.e(canvas, this.f53211a);
                return;
            case 4:
                this.f53212b.j(canvas, this.f53211a);
                return;
            case 5:
                this.f53212b.g(canvas, this.f53211a);
                return;
            case 6:
                this.f53212b.d(canvas, this.f53211a);
                return;
            case 7:
                this.f53212b.i(canvas, this.f53211a);
                return;
            case 8:
                this.f53212b.c(canvas, this.f53211a);
                return;
            case 9:
                this.f53212b.h(canvas, this.f53211a);
                return;
            case 10:
                this.f53212b.f(canvas, this.f53211a);
                return;
            default:
                return;
        }
    }

    private void d(float f10, float f11) {
        int d10;
        if (this.f53214d == null || (d10 = nd.a.d(this.f53213c, f10, f11)) < 0) {
            return;
        }
        this.f53214d.a(d10);
    }

    public void a(@NonNull Canvas canvas) {
        int c10 = this.f53213c.c();
        for (int i9 = 0; i9 < c10; i9++) {
            b(canvas, i9, nd.a.g(this.f53213c, i9), nd.a.h(this.f53213c, i9));
        }
    }

    public void e(@Nullable InterfaceC0543b interfaceC0543b) {
        this.f53214d = interfaceC0543b;
    }

    public void f(@Nullable MotionEvent motionEvent) {
        if (motionEvent != null && motionEvent.getAction() == 1) {
            d(motionEvent.getX(), motionEvent.getY());
        }
    }

    public void g(@Nullable fd.a aVar) {
        this.f53211a = aVar;
    }
}
