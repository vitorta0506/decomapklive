package com.bumptech.glide;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.load.engine.j;
import com.bumptech.glide.request.RequestCoordinator;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import s0.k;
import s0.l;
/* loaded from: classes.dex */
public class g<TranscodeType> extends com.bumptech.glide.request.a<g<TranscodeType>> {
    protected static final com.bumptech.glide.request.h O = new com.bumptech.glide.request.h().h(j.f4349c).e0(Priority.LOW).n0(true);
    private final Context A;
    private final h B;
    private final Class<TranscodeType> C;
    private final c D;
    private final e E;
    @NonNull
    private i<?, ? super TranscodeType> F;
    @Nullable
    private Object G;
    @Nullable
    private List<com.bumptech.glide.request.g<TranscodeType>> H;
    @Nullable
    private g<TranscodeType> I;
    @Nullable
    private g<TranscodeType> J;
    @Nullable
    private Float K;
    private boolean L;
    private boolean M;
    private boolean N;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4183a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f4184b;

        static {
            int[] iArr = new int[Priority.values().length];
            f4184b = iArr;
            try {
                iArr[Priority.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4184b[Priority.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4184b[Priority.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4184b[Priority.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f4183a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4183a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4183a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4183a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4183a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f4183a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f4183a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f4183a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g(@NonNull c cVar, h hVar, Class<TranscodeType> cls, Context context) {
        this.L = true;
        this.D = cVar;
        this.B = hVar;
        this.C = cls;
        this.A = context;
        this.F = hVar.l(cls);
        this.E = cVar.i();
        L0(hVar.j());
        a(hVar.k());
    }

    private com.bumptech.glide.request.e B0(Object obj, k<TranscodeType> kVar, @Nullable com.bumptech.glide.request.g<TranscodeType> gVar, @Nullable RequestCoordinator requestCoordinator, i<?, ? super TranscodeType> iVar, Priority priority, int i9, int i10, com.bumptech.glide.request.a<?> aVar, Executor executor) {
        com.bumptech.glide.request.b bVar;
        com.bumptech.glide.request.b bVar2;
        if (this.J != null) {
            bVar2 = new com.bumptech.glide.request.b(obj, requestCoordinator);
            bVar = bVar2;
        } else {
            bVar = null;
            bVar2 = requestCoordinator;
        }
        com.bumptech.glide.request.e D0 = D0(obj, kVar, gVar, bVar2, iVar, priority, i9, i10, aVar, executor);
        if (bVar == null) {
            return D0;
        }
        int v10 = this.J.v();
        int u10 = this.J.u();
        if (v0.k.u(i9, i10) && !this.J.S()) {
            v10 = aVar.v();
            u10 = aVar.u();
        }
        g<TranscodeType> gVar2 = this.J;
        com.bumptech.glide.request.b bVar3 = bVar;
        bVar3.o(D0, gVar2.B0(obj, kVar, gVar, bVar3, gVar2.F, gVar2.y(), v10, u10, this.J, executor));
        return bVar3;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.bumptech.glide.request.a] */
    private com.bumptech.glide.request.e D0(Object obj, k<TranscodeType> kVar, com.bumptech.glide.request.g<TranscodeType> gVar, @Nullable RequestCoordinator requestCoordinator, i<?, ? super TranscodeType> iVar, Priority priority, int i9, int i10, com.bumptech.glide.request.a<?> aVar, Executor executor) {
        Priority K0;
        g<TranscodeType> gVar2 = this.I;
        if (gVar2 != null) {
            if (!this.N) {
                i<?, ? super TranscodeType> iVar2 = gVar2.L ? iVar : gVar2.F;
                if (gVar2.K()) {
                    K0 = this.I.y();
                } else {
                    K0 = K0(priority);
                }
                Priority priority2 = K0;
                int v10 = this.I.v();
                int u10 = this.I.u();
                if (v0.k.u(i9, i10) && !this.I.S()) {
                    v10 = aVar.v();
                    u10 = aVar.u();
                }
                com.bumptech.glide.request.k kVar2 = new com.bumptech.glide.request.k(obj, requestCoordinator);
                com.bumptech.glide.request.e b12 = b1(obj, kVar, gVar, aVar, kVar2, iVar, priority, i9, i10, executor);
                this.N = true;
                g<TranscodeType> gVar3 = this.I;
                com.bumptech.glide.request.e B0 = gVar3.B0(obj, kVar, gVar, kVar2, iVar2, priority2, v10, u10, gVar3, executor);
                this.N = false;
                kVar2.n(b12, B0);
                return kVar2;
            }
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        } else if (this.K != null) {
            com.bumptech.glide.request.k kVar3 = new com.bumptech.glide.request.k(obj, requestCoordinator);
            kVar3.n(b1(obj, kVar, gVar, aVar, kVar3, iVar, priority, i9, i10, executor), b1(obj, kVar, gVar, aVar.clone().m0(this.K.floatValue()), kVar3, iVar, K0(priority), i9, i10, executor));
            return kVar3;
        } else {
            return b1(obj, kVar, gVar, aVar, requestCoordinator, iVar, priority, i9, i10, executor);
        }
    }

    @NonNull
    private Priority K0(@NonNull Priority priority) {
        int i9 = a.f4184b[priority.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3 && i9 != 4) {
                    throw new IllegalArgumentException("unknown priority: " + y());
                }
                return Priority.IMMEDIATE;
            }
            return Priority.HIGH;
        }
        return Priority.NORMAL;
    }

    private void L0(List<com.bumptech.glide.request.g<Object>> list) {
        for (com.bumptech.glide.request.g<Object> gVar : list) {
            x0(gVar);
        }
    }

    private <Y extends k<TranscodeType>> Y N0(@NonNull Y y10, @Nullable com.bumptech.glide.request.g<TranscodeType> gVar, com.bumptech.glide.request.a<?> aVar, Executor executor) {
        v0.j.d(y10);
        if (this.M) {
            com.bumptech.glide.request.e z02 = z0(y10, gVar, aVar, executor);
            com.bumptech.glide.request.e request = y10.getRequest();
            if (z02.h(request) && !S0(aVar, request)) {
                if (!((com.bumptech.glide.request.e) v0.j.d(request)).isRunning()) {
                    request.i();
                }
                return y10;
            }
            this.B.g(y10);
            y10.setRequest(z02);
            this.B.x(y10, z02);
            return y10;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    private boolean S0(com.bumptech.glide.request.a<?> aVar, com.bumptech.glide.request.e eVar) {
        return !aVar.J() && eVar.g();
    }

    @NonNull
    private g<TranscodeType> a1(@Nullable Object obj) {
        if (H()) {
            return f().a1(obj);
        }
        this.G = obj;
        this.M = true;
        return j0();
    }

    private com.bumptech.glide.request.e b1(Object obj, k<TranscodeType> kVar, com.bumptech.glide.request.g<TranscodeType> gVar, com.bumptech.glide.request.a<?> aVar, RequestCoordinator requestCoordinator, i<?, ? super TranscodeType> iVar, Priority priority, int i9, int i10, Executor executor) {
        Context context = this.A;
        e eVar = this.E;
        return com.bumptech.glide.request.j.y(context, eVar, obj, this.G, this.C, aVar, i9, i10, priority, kVar, gVar, this.H, requestCoordinator, eVar.f(), iVar.b(), executor);
    }

    private com.bumptech.glide.request.e z0(k<TranscodeType> kVar, @Nullable com.bumptech.glide.request.g<TranscodeType> gVar, com.bumptech.glide.request.a<?> aVar, Executor executor) {
        return B0(new Object(), kVar, gVar, null, this.F, aVar.y(), aVar.v(), aVar.u(), aVar, executor);
    }

    @Override // com.bumptech.glide.request.a
    @CheckResult
    /* renamed from: H0 */
    public g<TranscodeType> f() {
        g<TranscodeType> gVar = (g) super.clone();
        gVar.F = (i<?, ? super TranscodeType>) gVar.F.clone();
        if (gVar.H != null) {
            gVar.H = new ArrayList(gVar.H);
        }
        g<TranscodeType> gVar2 = gVar.I;
        if (gVar2 != null) {
            gVar.I = gVar2.f();
        }
        g<TranscodeType> gVar3 = gVar.J;
        if (gVar3 != null) {
            gVar.J = gVar3.f();
        }
        return gVar;
    }

    @CheckResult
    @Deprecated
    public com.bumptech.glide.request.d<File> I0(int i9, int i10) {
        return J0().e1(i9, i10);
    }

    @NonNull
    @CheckResult
    protected g<File> J0() {
        return new g(File.class, this).a(O);
    }

    @NonNull
    public <Y extends k<TranscodeType>> Y M0(@NonNull Y y10) {
        return (Y) O0(y10, null, v0.d.b());
    }

    @NonNull
    <Y extends k<TranscodeType>> Y O0(@NonNull Y y10, @Nullable com.bumptech.glide.request.g<TranscodeType> gVar, Executor executor) {
        return (Y) N0(y10, gVar, this, executor);
    }

    @NonNull
    public l<ImageView, TranscodeType> Q0(@NonNull ImageView imageView) {
        g<TranscodeType> gVar;
        v0.k.b();
        v0.j.d(imageView);
        if (!R() && P() && imageView.getScaleType() != null) {
            switch (a.f4183a[imageView.getScaleType().ordinal()]) {
                case 1:
                    gVar = clone().U();
                    break;
                case 2:
                    gVar = clone().V();
                    break;
                case 3:
                case 4:
                case 5:
                    gVar = clone().W();
                    break;
                case 6:
                    gVar = clone().V();
                    break;
            }
            return (l) N0(this.E.a(imageView, this.C), null, gVar, v0.d.b());
        }
        gVar = this;
        return (l) N0(this.E.a(imageView, this.C), null, gVar, v0.d.b());
    }

    @NonNull
    @CheckResult
    public g<TranscodeType> T0(@Nullable com.bumptech.glide.request.g<TranscodeType> gVar) {
        if (H()) {
            return f().T0(gVar);
        }
        this.H = null;
        return x0(gVar);
    }

    @NonNull
    @CheckResult
    public g<TranscodeType> U0(@Nullable Drawable drawable) {
        return a1(drawable).a(com.bumptech.glide.request.h.B0(j.f4348b));
    }

    @NonNull
    @CheckResult
    public g<TranscodeType> V0(@Nullable Uri uri) {
        return a1(uri);
    }

    @NonNull
    @CheckResult
    public g<TranscodeType> W0(@Nullable File file) {
        return a1(file);
    }

    @NonNull
    @CheckResult
    public g<TranscodeType> X0(@Nullable @DrawableRes @RawRes Integer num) {
        return a1(num).a(com.bumptech.glide.request.h.D0(u0.a.a(this.A)));
    }

    @NonNull
    @CheckResult
    public g<TranscodeType> Y0(@Nullable Object obj) {
        return a1(obj);
    }

    @NonNull
    @CheckResult
    public g<TranscodeType> Z0(@Nullable String str) {
        return a1(str);
    }

    @NonNull
    public k<TranscodeType> c1() {
        return d1(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @NonNull
    public k<TranscodeType> d1(int i9, int i10) {
        return M0(s0.h.b(this.B, i9, i10));
    }

    @NonNull
    public com.bumptech.glide.request.d<TranscodeType> e1(int i9, int i10) {
        com.bumptech.glide.request.f fVar = new com.bumptech.glide.request.f(i9, i10);
        return (com.bumptech.glide.request.d) O0(fVar, fVar, v0.d.a());
    }

    @NonNull
    @CheckResult
    public g<TranscodeType> g1(@Nullable g<TranscodeType> gVar) {
        if (H()) {
            return f().g1(gVar);
        }
        this.I = gVar;
        return j0();
    }

    @NonNull
    @CheckResult
    public g<TranscodeType> h1(@NonNull i<?, ? super TranscodeType> iVar) {
        if (H()) {
            return f().h1(iVar);
        }
        this.F = (i) v0.j.d(iVar);
        this.L = false;
        return j0();
    }

    @NonNull
    @CheckResult
    public g<TranscodeType> x0(@Nullable com.bumptech.glide.request.g<TranscodeType> gVar) {
        if (H()) {
            return f().x0(gVar);
        }
        if (gVar != null) {
            if (this.H == null) {
                this.H = new ArrayList();
            }
            this.H.add(gVar);
        }
        return j0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: y0 */
    public g<TranscodeType> a(@NonNull com.bumptech.glide.request.a<?> aVar) {
        v0.j.d(aVar);
        return (g) super.a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g(Class<TranscodeType> cls, g<?> gVar) {
        this(gVar.D, gVar.B, cls, gVar.A);
        this.G = gVar.G;
        this.M = gVar.M;
        a(gVar);
    }
}
