package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.l;
import com.bumptech.glide.load.resource.bitmap.o;
import com.bumptech.glide.load.resource.bitmap.q;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.a;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class a<T extends a<T>> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private int f4660a;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Drawable f4664e;

    /* renamed from: f  reason: collision with root package name */
    private int f4665f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Drawable f4666g;

    /* renamed from: h  reason: collision with root package name */
    private int f4667h;

    /* renamed from: m  reason: collision with root package name */
    private boolean f4672m;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Drawable f4674o;

    /* renamed from: p  reason: collision with root package name */
    private int f4675p;

    /* renamed from: t  reason: collision with root package name */
    private boolean f4679t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private Resources.Theme f4680u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f4681v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f4682w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f4683x;

    /* renamed from: z  reason: collision with root package name */
    private boolean f4685z;

    /* renamed from: b  reason: collision with root package name */
    private float f4661b = 1.0f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private com.bumptech.glide.load.engine.j f4662c = com.bumptech.glide.load.engine.j.f4351e;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private Priority f4663d = Priority.NORMAL;

    /* renamed from: i  reason: collision with root package name */
    private boolean f4668i = true;

    /* renamed from: j  reason: collision with root package name */
    private int f4669j = -1;

    /* renamed from: k  reason: collision with root package name */
    private int f4670k = -1;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private e0.b f4671l = u0.c.a();

    /* renamed from: n  reason: collision with root package name */
    private boolean f4673n = true;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private e0.e f4676q = new e0.e();
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    private Map<Class<?>, e0.h<?>> f4677r = new CachedHashCodeArrayMap();
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    private Class<?> f4678s = Object.class;

    /* renamed from: y  reason: collision with root package name */
    private boolean f4684y = true;

    private boolean N(int i9) {
        return O(this.f4660a, i9);
    }

    private static boolean O(int i9, int i10) {
        return (i9 & i10) != 0;
    }

    @NonNull
    private T X(@NonNull DownsampleStrategy downsampleStrategy, @NonNull e0.h<Bitmap> hVar) {
        return h0(downsampleStrategy, hVar, false);
    }

    @NonNull
    private T g0(@NonNull DownsampleStrategy downsampleStrategy, @NonNull e0.h<Bitmap> hVar) {
        return h0(downsampleStrategy, hVar, true);
    }

    @NonNull
    private T h0(@NonNull DownsampleStrategy downsampleStrategy, @NonNull e0.h<Bitmap> hVar, boolean z10) {
        T Y;
        if (z10) {
            Y = o0(downsampleStrategy, hVar);
        } else {
            Y = Y(downsampleStrategy, hVar);
        }
        Y.f4684y = true;
        return Y;
    }

    private T i0() {
        return this;
    }

    @NonNull
    public final e0.b A() {
        return this.f4671l;
    }

    public final float B() {
        return this.f4661b;
    }

    @Nullable
    public final Resources.Theme C() {
        return this.f4680u;
    }

    @NonNull
    public final Map<Class<?>, e0.h<?>> D() {
        return this.f4677r;
    }

    public final boolean E() {
        return this.f4685z;
    }

    public final boolean G() {
        return this.f4682w;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean H() {
        return this.f4681v;
    }

    public final boolean J() {
        return this.f4668i;
    }

    public final boolean K() {
        return N(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean M() {
        return this.f4684y;
    }

    public final boolean P() {
        return this.f4673n;
    }

    public final boolean Q() {
        return this.f4672m;
    }

    public final boolean R() {
        return N(2048);
    }

    public final boolean S() {
        return v0.k.u(this.f4670k, this.f4669j);
    }

    @NonNull
    public T T() {
        this.f4679t = true;
        return i0();
    }

    @NonNull
    @CheckResult
    public T U() {
        return Y(DownsampleStrategy.f4486e, new com.bumptech.glide.load.resource.bitmap.j());
    }

    @NonNull
    @CheckResult
    public T V() {
        return X(DownsampleStrategy.f4485d, new com.bumptech.glide.load.resource.bitmap.k());
    }

    @NonNull
    @CheckResult
    public T W() {
        return X(DownsampleStrategy.f4484c, new q());
    }

    @NonNull
    final T Y(@NonNull DownsampleStrategy downsampleStrategy, @NonNull e0.h<Bitmap> hVar) {
        if (this.f4681v) {
            return (T) clone().Y(downsampleStrategy, hVar);
        }
        k(downsampleStrategy);
        return r0(hVar, false);
    }

    @NonNull
    @CheckResult
    public T Z(int i9) {
        return a0(i9, i9);
    }

    @NonNull
    @CheckResult
    public T a(@NonNull a<?> aVar) {
        if (this.f4681v) {
            return (T) clone().a(aVar);
        }
        if (O(aVar.f4660a, 2)) {
            this.f4661b = aVar.f4661b;
        }
        if (O(aVar.f4660a, 262144)) {
            this.f4682w = aVar.f4682w;
        }
        if (O(aVar.f4660a, 1048576)) {
            this.f4685z = aVar.f4685z;
        }
        if (O(aVar.f4660a, 4)) {
            this.f4662c = aVar.f4662c;
        }
        if (O(aVar.f4660a, 8)) {
            this.f4663d = aVar.f4663d;
        }
        if (O(aVar.f4660a, 16)) {
            this.f4664e = aVar.f4664e;
            this.f4665f = 0;
            this.f4660a &= -33;
        }
        if (O(aVar.f4660a, 32)) {
            this.f4665f = aVar.f4665f;
            this.f4664e = null;
            this.f4660a &= -17;
        }
        if (O(aVar.f4660a, 64)) {
            this.f4666g = aVar.f4666g;
            this.f4667h = 0;
            this.f4660a &= -129;
        }
        if (O(aVar.f4660a, 128)) {
            this.f4667h = aVar.f4667h;
            this.f4666g = null;
            this.f4660a &= -65;
        }
        if (O(aVar.f4660a, 256)) {
            this.f4668i = aVar.f4668i;
        }
        if (O(aVar.f4660a, 512)) {
            this.f4670k = aVar.f4670k;
            this.f4669j = aVar.f4669j;
        }
        if (O(aVar.f4660a, 1024)) {
            this.f4671l = aVar.f4671l;
        }
        if (O(aVar.f4660a, 4096)) {
            this.f4678s = aVar.f4678s;
        }
        if (O(aVar.f4660a, 8192)) {
            this.f4674o = aVar.f4674o;
            this.f4675p = 0;
            this.f4660a &= -16385;
        }
        if (O(aVar.f4660a, 16384)) {
            this.f4675p = aVar.f4675p;
            this.f4674o = null;
            this.f4660a &= -8193;
        }
        if (O(aVar.f4660a, 32768)) {
            this.f4680u = aVar.f4680u;
        }
        if (O(aVar.f4660a, 65536)) {
            this.f4673n = aVar.f4673n;
        }
        if (O(aVar.f4660a, 131072)) {
            this.f4672m = aVar.f4672m;
        }
        if (O(aVar.f4660a, 2048)) {
            this.f4677r.putAll(aVar.f4677r);
            this.f4684y = aVar.f4684y;
        }
        if (O(aVar.f4660a, 524288)) {
            this.f4683x = aVar.f4683x;
        }
        if (!this.f4673n) {
            this.f4677r.clear();
            this.f4672m = false;
            this.f4660a = this.f4660a & (-2049) & (-131073);
            this.f4684y = true;
        }
        this.f4660a |= aVar.f4660a;
        this.f4676q.b(aVar.f4676q);
        return j0();
    }

    @NonNull
    @CheckResult
    public T a0(int i9, int i10) {
        if (this.f4681v) {
            return (T) clone().a0(i9, i10);
        }
        this.f4670k = i9;
        this.f4669j = i10;
        this.f4660a |= 512;
        return j0();
    }

    @NonNull
    public T b() {
        if (this.f4679t && !this.f4681v) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f4681v = true;
        return T();
    }

    @NonNull
    @CheckResult
    public T b0(@DrawableRes int i9) {
        if (this.f4681v) {
            return (T) clone().b0(i9);
        }
        this.f4667h = i9;
        this.f4666g = null;
        this.f4660a = (this.f4660a | 128) & (-65);
        return j0();
    }

    @NonNull
    @CheckResult
    public T d() {
        return o0(DownsampleStrategy.f4486e, new com.bumptech.glide.load.resource.bitmap.j());
    }

    @NonNull
    @CheckResult
    public T d0(@Nullable Drawable drawable) {
        if (this.f4681v) {
            return (T) clone().d0(drawable);
        }
        this.f4666g = drawable;
        this.f4667h = 0;
        this.f4660a = (this.f4660a | 64) & (-129);
        return j0();
    }

    @NonNull
    @CheckResult
    public T e() {
        return o0(DownsampleStrategy.f4485d, new l());
    }

    @NonNull
    @CheckResult
    public T e0(@NonNull Priority priority) {
        if (this.f4681v) {
            return (T) clone().e0(priority);
        }
        this.f4663d = (Priority) v0.j.d(priority);
        this.f4660a |= 8;
        return j0();
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            return Float.compare(aVar.f4661b, this.f4661b) == 0 && this.f4665f == aVar.f4665f && v0.k.d(this.f4664e, aVar.f4664e) && this.f4667h == aVar.f4667h && v0.k.d(this.f4666g, aVar.f4666g) && this.f4675p == aVar.f4675p && v0.k.d(this.f4674o, aVar.f4674o) && this.f4668i == aVar.f4668i && this.f4669j == aVar.f4669j && this.f4670k == aVar.f4670k && this.f4672m == aVar.f4672m && this.f4673n == aVar.f4673n && this.f4682w == aVar.f4682w && this.f4683x == aVar.f4683x && this.f4662c.equals(aVar.f4662c) && this.f4663d == aVar.f4663d && this.f4676q.equals(aVar.f4676q) && this.f4677r.equals(aVar.f4677r) && this.f4678s.equals(aVar.f4678s) && v0.k.d(this.f4671l, aVar.f4671l) && v0.k.d(this.f4680u, aVar.f4680u);
        }
        return false;
    }

    @Override // 
    @CheckResult
    /* renamed from: f */
    public T clone() {
        try {
            T t10 = (T) super.clone();
            e0.e eVar = new e0.e();
            t10.f4676q = eVar;
            eVar.b(this.f4676q);
            CachedHashCodeArrayMap cachedHashCodeArrayMap = new CachedHashCodeArrayMap();
            t10.f4677r = cachedHashCodeArrayMap;
            cachedHashCodeArrayMap.putAll(this.f4677r);
            t10.f4679t = false;
            t10.f4681v = false;
            return t10;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    @CheckResult
    public T g(@NonNull Class<?> cls) {
        if (this.f4681v) {
            return (T) clone().g(cls);
        }
        this.f4678s = (Class) v0.j.d(cls);
        this.f4660a |= 4096;
        return j0();
    }

    @NonNull
    @CheckResult
    public T h(@NonNull com.bumptech.glide.load.engine.j jVar) {
        if (this.f4681v) {
            return (T) clone().h(jVar);
        }
        this.f4662c = (com.bumptech.glide.load.engine.j) v0.j.d(jVar);
        this.f4660a |= 4;
        return j0();
    }

    public int hashCode() {
        return v0.k.p(this.f4680u, v0.k.p(this.f4671l, v0.k.p(this.f4678s, v0.k.p(this.f4677r, v0.k.p(this.f4676q, v0.k.p(this.f4663d, v0.k.p(this.f4662c, v0.k.q(this.f4683x, v0.k.q(this.f4682w, v0.k.q(this.f4673n, v0.k.q(this.f4672m, v0.k.o(this.f4670k, v0.k.o(this.f4669j, v0.k.q(this.f4668i, v0.k.p(this.f4674o, v0.k.o(this.f4675p, v0.k.p(this.f4666g, v0.k.o(this.f4667h, v0.k.p(this.f4664e, v0.k.o(this.f4665f, v0.k.l(this.f4661b)))))))))))))))))))));
    }

    @NonNull
    @CheckResult
    public T i() {
        return k0(com.bumptech.glide.load.resource.gif.h.f4629b, Boolean.TRUE);
    }

    @NonNull
    @CheckResult
    public T j() {
        if (this.f4681v) {
            return (T) clone().j();
        }
        this.f4677r.clear();
        this.f4672m = false;
        this.f4673n = false;
        this.f4660a = (this.f4660a & (-2049) & (-131073)) | 65536;
        this.f4684y = true;
        return j0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public final T j0() {
        if (!this.f4679t) {
            return i0();
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }

    @NonNull
    @CheckResult
    public T k(@NonNull DownsampleStrategy downsampleStrategy) {
        return k0(DownsampleStrategy.f4489h, v0.j.d(downsampleStrategy));
    }

    @NonNull
    @CheckResult
    public <Y> T k0(@NonNull e0.d<Y> dVar, @NonNull Y y10) {
        if (this.f4681v) {
            return (T) clone().k0(dVar, y10);
        }
        v0.j.d(dVar);
        v0.j.d(y10);
        this.f4676q.c(dVar, y10);
        return j0();
    }

    @NonNull
    @CheckResult
    public T l(@DrawableRes int i9) {
        if (this.f4681v) {
            return (T) clone().l(i9);
        }
        this.f4665f = i9;
        this.f4664e = null;
        this.f4660a = (this.f4660a | 32) & (-17);
        return j0();
    }

    @NonNull
    @CheckResult
    public T l0(@NonNull e0.b bVar) {
        if (this.f4681v) {
            return (T) clone().l0(bVar);
        }
        this.f4671l = (e0.b) v0.j.d(bVar);
        this.f4660a |= 1024;
        return j0();
    }

    @NonNull
    @CheckResult
    public T m() {
        return g0(DownsampleStrategy.f4484c, new q());
    }

    @NonNull
    @CheckResult
    public T m0(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (this.f4681v) {
            return (T) clone().m0(f10);
        }
        if (f10 >= 0.0f && f10 <= 1.0f) {
            this.f4661b = f10;
            this.f4660a |= 2;
            return j0();
        }
        throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
    }

    @NonNull
    public final com.bumptech.glide.load.engine.j n() {
        return this.f4662c;
    }

    @NonNull
    @CheckResult
    public T n0(boolean z10) {
        if (this.f4681v) {
            return (T) clone().n0(true);
        }
        this.f4668i = !z10;
        this.f4660a |= 256;
        return j0();
    }

    public final int o() {
        return this.f4665f;
    }

    @NonNull
    @CheckResult
    final T o0(@NonNull DownsampleStrategy downsampleStrategy, @NonNull e0.h<Bitmap> hVar) {
        if (this.f4681v) {
            return (T) clone().o0(downsampleStrategy, hVar);
        }
        k(downsampleStrategy);
        return q0(hVar);
    }

    @Nullable
    public final Drawable p() {
        return this.f4664e;
    }

    @Nullable
    public final Drawable q() {
        return this.f4674o;
    }

    @NonNull
    @CheckResult
    public T q0(@NonNull e0.h<Bitmap> hVar) {
        return r0(hVar, true);
    }

    public final int r() {
        return this.f4675p;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    T r0(@NonNull e0.h<Bitmap> hVar, boolean z10) {
        if (this.f4681v) {
            return (T) clone().r0(hVar, z10);
        }
        o oVar = new o(hVar, z10);
        s0(Bitmap.class, hVar, z10);
        s0(Drawable.class, oVar, z10);
        s0(BitmapDrawable.class, oVar.a(), z10);
        s0(GifDrawable.class, new com.bumptech.glide.load.resource.gif.e(hVar), z10);
        return j0();
    }

    public final boolean s() {
        return this.f4683x;
    }

    @NonNull
    <Y> T s0(@NonNull Class<Y> cls, @NonNull e0.h<Y> hVar, boolean z10) {
        if (this.f4681v) {
            return (T) clone().s0(cls, hVar, z10);
        }
        v0.j.d(cls);
        v0.j.d(hVar);
        this.f4677r.put(cls, hVar);
        this.f4673n = true;
        int i9 = this.f4660a | 2048 | 65536;
        this.f4660a = i9;
        this.f4684y = false;
        if (z10) {
            this.f4660a = i9 | 131072;
            this.f4672m = true;
        }
        return j0();
    }

    @NonNull
    public final e0.e t() {
        return this.f4676q;
    }

    @NonNull
    @CheckResult
    public T t0(@NonNull e0.h<Bitmap>... hVarArr) {
        if (hVarArr.length > 1) {
            return r0(new e0.c(hVarArr), true);
        }
        if (hVarArr.length == 1) {
            return q0(hVarArr[0]);
        }
        return j0();
    }

    public final int u() {
        return this.f4669j;
    }

    @NonNull
    @CheckResult
    @Deprecated
    public T u0(@NonNull e0.h<Bitmap>... hVarArr) {
        return r0(new e0.c(hVarArr), true);
    }

    public final int v() {
        return this.f4670k;
    }

    @NonNull
    @CheckResult
    public T v0(boolean z10) {
        if (this.f4681v) {
            return (T) clone().v0(z10);
        }
        this.f4685z = z10;
        this.f4660a |= 1048576;
        return j0();
    }

    @Nullable
    public final Drawable w() {
        return this.f4666g;
    }

    public final int x() {
        return this.f4667h;
    }

    @NonNull
    public final Priority y() {
        return this.f4663d;
    }

    @NonNull
    public final Class<?> z() {
        return this.f4678s;
    }
}
