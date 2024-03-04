package com.airbnb.lottie;

import android.animation.Animator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public class LottieAnimationView extends AppCompatImageView {

    /* renamed from: t  reason: collision with root package name */
    private static final String f3572t = LottieAnimationView.class.getSimpleName();

    /* renamed from: u  reason: collision with root package name */
    private static final h<Throwable> f3573u = new a();

    /* renamed from: a  reason: collision with root package name */
    private final h<com.airbnb.lottie.d> f3574a;

    /* renamed from: b  reason: collision with root package name */
    private final h<Throwable> f3575b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private h<Throwable> f3576c;
    @DrawableRes

    /* renamed from: d  reason: collision with root package name */
    private int f3577d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.f f3578e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f3579f;

    /* renamed from: g  reason: collision with root package name */
    private String f3580g;
    @RawRes

    /* renamed from: h  reason: collision with root package name */
    private int f3581h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f3582i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f3583j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f3584k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f3585l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f3586m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f3587n;

    /* renamed from: o  reason: collision with root package name */
    private RenderMode f3588o;

    /* renamed from: p  reason: collision with root package name */
    private final Set<j> f3589p;

    /* renamed from: q  reason: collision with root package name */
    private int f3590q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private m<com.airbnb.lottie.d> f3591r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private com.airbnb.lottie.d f3592s;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        String f3593a;

        /* renamed from: b  reason: collision with root package name */
        int f3594b;

        /* renamed from: c  reason: collision with root package name */
        float f3595c;

        /* renamed from: d  reason: collision with root package name */
        boolean f3596d;

        /* renamed from: e  reason: collision with root package name */
        String f3597e;

        /* renamed from: f  reason: collision with root package name */
        int f3598f;

        /* renamed from: g  reason: collision with root package name */
        int f3599g;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i9) {
                return new SavedState[i9];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            super.writeToParcel(parcel, i9);
            parcel.writeString(this.f3593a);
            parcel.writeFloat(this.f3595c);
            parcel.writeInt(this.f3596d ? 1 : 0);
            parcel.writeString(this.f3597e);
            parcel.writeInt(this.f3598f);
            parcel.writeInt(this.f3599g);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f3593a = parcel.readString();
            this.f3595c = parcel.readFloat();
            this.f3596d = parcel.readInt() == 1;
            this.f3597e = parcel.readString();
            this.f3598f = parcel.readInt();
            this.f3599g = parcel.readInt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements h<Throwable> {
        a() {
        }

        @Override // com.airbnb.lottie.h
        /* renamed from: a */
        public void onResult(Throwable th2) {
            if (m.h.k(th2)) {
                m.d.d("Unable to load composition.", th2);
                return;
            }
            throw new IllegalStateException("Unable to parse composition", th2);
        }
    }

    /* loaded from: classes.dex */
    class b implements h<com.airbnb.lottie.d> {
        b() {
        }

        @Override // com.airbnb.lottie.h
        /* renamed from: a */
        public void onResult(com.airbnb.lottie.d dVar) {
            LottieAnimationView.this.setComposition(dVar);
        }
    }

    /* loaded from: classes.dex */
    class c implements h<Throwable> {
        c() {
        }

        @Override // com.airbnb.lottie.h
        /* renamed from: a */
        public void onResult(Throwable th2) {
            if (LottieAnimationView.this.f3577d != 0) {
                LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                lottieAnimationView.setImageResource(lottieAnimationView.f3577d);
            }
            (LottieAnimationView.this.f3576c == null ? LottieAnimationView.f3573u : LottieAnimationView.this.f3576c).onResult(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements Callable<l<com.airbnb.lottie.d>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f3602a;

        d(int i9) {
            this.f3602a = i9;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public l<com.airbnb.lottie.d> call() {
            return LottieAnimationView.this.f3587n ? com.airbnb.lottie.e.o(LottieAnimationView.this.getContext(), this.f3602a) : com.airbnb.lottie.e.p(LottieAnimationView.this.getContext(), this.f3602a, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements Callable<l<com.airbnb.lottie.d>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f3604a;

        e(String str) {
            this.f3604a = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public l<com.airbnb.lottie.d> call() {
            return LottieAnimationView.this.f3587n ? com.airbnb.lottie.e.f(LottieAnimationView.this.getContext(), this.f3604a) : com.airbnb.lottie.e.g(LottieAnimationView.this.getContext(), this.f3604a, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3606a;

        static {
            int[] iArr = new int[RenderMode.values().length];
            f3606a = iArr;
            try {
                iArr[RenderMode.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3606a[RenderMode.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3606a[RenderMode.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.f3574a = new b();
        this.f3575b = new c();
        this.f3577d = 0;
        this.f3578e = new com.airbnb.lottie.f();
        this.f3582i = false;
        this.f3583j = false;
        this.f3584k = false;
        this.f3585l = false;
        this.f3586m = false;
        this.f3587n = true;
        this.f3588o = RenderMode.AUTOMATIC;
        this.f3589p = new HashSet();
        this.f3590q = 0;
        n(null, R$attr.lottieAnimationViewStyle);
    }

    private void h() {
        m<com.airbnb.lottie.d> mVar = this.f3591r;
        if (mVar != null) {
            mVar.k(this.f3574a);
            this.f3591r.j(this.f3575b);
        }
    }

    private void i() {
        this.f3592s = null;
        this.f3578e.j();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003f, code lost:
        if (r3 != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void k() {
        /*
            r5 = this;
            int[] r0 = com.airbnb.lottie.LottieAnimationView.f.f3606a
            com.airbnb.lottie.RenderMode r1 = r5.f3588o
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 2
            r2 = 1
            if (r0 == r2) goto L41
            if (r0 == r1) goto L13
            r3 = 3
            if (r0 == r3) goto L15
        L13:
            r1 = 1
            goto L41
        L15:
            com.airbnb.lottie.d r0 = r5.f3592s
            r3 = 0
            if (r0 == 0) goto L27
            boolean r0 = r0.q()
            if (r0 == 0) goto L27
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 28
            if (r0 >= r4) goto L27
            goto L3f
        L27:
            com.airbnb.lottie.d r0 = r5.f3592s
            if (r0 == 0) goto L33
            int r0 = r0.m()
            r4 = 4
            if (r0 <= r4) goto L33
            goto L3f
        L33:
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 24
            if (r0 == r4) goto L3f
            r4 = 25
            if (r0 != r4) goto L3e
            goto L3f
        L3e:
            r3 = 1
        L3f:
            if (r3 == 0) goto L13
        L41:
            int r0 = r5.getLayerType()
            if (r1 == r0) goto L4b
            r0 = 0
            r5.setLayerType(r1, r0)
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.LottieAnimationView.k():void");
    }

    private m<com.airbnb.lottie.d> l(String str) {
        if (isInEditMode()) {
            return new m<>(new e(str), true);
        }
        return this.f3587n ? com.airbnb.lottie.e.d(getContext(), str) : com.airbnb.lottie.e.e(getContext(), str, null);
    }

    private m<com.airbnb.lottie.d> m(@RawRes int i9) {
        if (isInEditMode()) {
            return new m<>(new d(i9), true);
        }
        return this.f3587n ? com.airbnb.lottie.e.m(getContext(), i9) : com.airbnb.lottie.e.n(getContext(), i9, null);
    }

    private void n(@Nullable AttributeSet attributeSet, @AttrRes int i9) {
        String string;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.LottieAnimationView, i9, 0);
        this.f3587n = obtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_cacheComposition, true);
        int i10 = R$styleable.LottieAnimationView_lottie_rawRes;
        boolean hasValue = obtainStyledAttributes.hasValue(i10);
        int i11 = R$styleable.LottieAnimationView_lottie_fileName;
        boolean hasValue2 = obtainStyledAttributes.hasValue(i11);
        int i12 = R$styleable.LottieAnimationView_lottie_url;
        boolean hasValue3 = obtainStyledAttributes.hasValue(i12);
        if (hasValue && hasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (hasValue) {
            int resourceId = obtainStyledAttributes.getResourceId(i10, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (hasValue2) {
            String string2 = obtainStyledAttributes.getString(i11);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (hasValue3 && (string = obtainStyledAttributes.getString(i12)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(obtainStyledAttributes.getResourceId(R$styleable.LottieAnimationView_lottie_fallbackRes, 0));
        if (obtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.f3584k = true;
            this.f3586m = true;
        }
        if (obtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_loop, false)) {
            this.f3578e.g0(-1);
        }
        int i13 = R$styleable.LottieAnimationView_lottie_repeatMode;
        if (obtainStyledAttributes.hasValue(i13)) {
            setRepeatMode(obtainStyledAttributes.getInt(i13, 1));
        }
        int i14 = R$styleable.LottieAnimationView_lottie_repeatCount;
        if (obtainStyledAttributes.hasValue(i14)) {
            setRepeatCount(obtainStyledAttributes.getInt(i14, -1));
        }
        int i15 = R$styleable.LottieAnimationView_lottie_speed;
        if (obtainStyledAttributes.hasValue(i15)) {
            setSpeed(obtainStyledAttributes.getFloat(i15, 1.0f));
        }
        setImageAssetsFolder(obtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_imageAssetsFolder));
        setProgress(obtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_progress, 0.0f));
        j(obtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        int i16 = R$styleable.LottieAnimationView_lottie_colorFilter;
        if (obtainStyledAttributes.hasValue(i16)) {
            f(new h.d("**"), k.K, new n.c(new o(AppCompatResources.getColorStateList(getContext(), obtainStyledAttributes.getResourceId(i16, -1)).getDefaultColor())));
        }
        int i17 = R$styleable.LottieAnimationView_lottie_scale;
        if (obtainStyledAttributes.hasValue(i17)) {
            this.f3578e.j0(obtainStyledAttributes.getFloat(i17, 1.0f));
        }
        int i18 = R$styleable.LottieAnimationView_lottie_renderMode;
        if (obtainStyledAttributes.hasValue(i18)) {
            RenderMode renderMode = RenderMode.AUTOMATIC;
            int i19 = obtainStyledAttributes.getInt(i18, renderMode.ordinal());
            if (i19 >= RenderMode.values().length) {
                i19 = renderMode.ordinal();
            }
            setRenderMode(RenderMode.values()[i19]);
        }
        setIgnoreDisabledSystemAnimations(obtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_ignoreDisabledSystemAnimations, false));
        obtainStyledAttributes.recycle();
        this.f3578e.l0(Boolean.valueOf(m.h.f(getContext()) != 0.0f));
        k();
        this.f3579f = true;
    }

    private void setCompositionTask(m<com.airbnb.lottie.d> mVar) {
        i();
        h();
        this.f3591r = mVar.f(this.f3574a).e(this.f3575b);
    }

    private void u() {
        boolean o10 = o();
        setImageDrawable(null);
        setImageDrawable(this.f3578e);
        if (o10) {
            this.f3578e.N();
        }
    }

    @Override // android.view.View
    public void buildDrawingCache(boolean z10) {
        com.airbnb.lottie.c.a("buildDrawingCache");
        this.f3590q++;
        super.buildDrawingCache(z10);
        if (this.f3590q == 1 && getWidth() > 0 && getHeight() > 0 && getLayerType() == 1 && getDrawingCache(z10) == null) {
            setRenderMode(RenderMode.HARDWARE);
        }
        this.f3590q--;
        com.airbnb.lottie.c.b("buildDrawingCache");
    }

    public void e(Animator.AnimatorListener animatorListener) {
        this.f3578e.c(animatorListener);
    }

    public <T> void f(h.d dVar, T t10, n.c<T> cVar) {
        this.f3578e.d(dVar, t10, cVar);
    }

    @MainThread
    public void g() {
        this.f3584k = false;
        this.f3583j = false;
        this.f3582i = false;
        this.f3578e.i();
        k();
    }

    @Nullable
    public com.airbnb.lottie.d getComposition() {
        return this.f3592s;
    }

    public long getDuration() {
        com.airbnb.lottie.d dVar = this.f3592s;
        if (dVar != null) {
            return dVar.d();
        }
        return 0L;
    }

    public int getFrame() {
        return this.f3578e.t();
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.f3578e.w();
    }

    public float getMaxFrame() {
        return this.f3578e.x();
    }

    public float getMinFrame() {
        return this.f3578e.z();
    }

    @Nullable
    public n getPerformanceTracker() {
        return this.f3578e.A();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.f3578e.B();
    }

    public int getRepeatCount() {
        return this.f3578e.C();
    }

    public int getRepeatMode() {
        return this.f3578e.D();
    }

    public float getScale() {
        return this.f3578e.E();
    }

    public float getSpeed() {
        return this.f3578e.F();
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        com.airbnb.lottie.f fVar = this.f3578e;
        if (drawable2 == fVar) {
            super.invalidateDrawable(fVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public void j(boolean z10) {
        this.f3578e.n(z10);
    }

    public boolean o() {
        return this.f3578e.I();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && (this.f3586m || this.f3584k)) {
            q();
            this.f3586m = false;
            this.f3584k = false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            onVisibilityChanged(this, getVisibility());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (o()) {
            g();
            this.f3584k = true;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        String str = savedState.f3593a;
        this.f3580g = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.f3580g);
        }
        int i9 = savedState.f3594b;
        this.f3581h = i9;
        if (i9 != 0) {
            setAnimation(i9);
        }
        setProgress(savedState.f3595c);
        if (savedState.f3596d) {
            q();
        }
        this.f3578e.U(savedState.f3597e);
        setRepeatMode(savedState.f3598f);
        setRepeatCount(savedState.f3599g);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3593a = this.f3580g;
        savedState.f3594b = this.f3581h;
        savedState.f3595c = this.f3578e.B();
        savedState.f3596d = this.f3578e.I() || (!ViewCompat.isAttachedToWindow(this) && this.f3584k);
        savedState.f3597e = this.f3578e.w();
        savedState.f3598f = this.f3578e.D();
        savedState.f3599g = this.f3578e.C();
        return savedState;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i9) {
        if (this.f3579f) {
            if (isShown()) {
                if (this.f3583j) {
                    r();
                } else if (this.f3582i) {
                    q();
                }
                this.f3583j = false;
                this.f3582i = false;
            } else if (o()) {
                p();
                this.f3583j = true;
            }
        }
    }

    @MainThread
    public void p() {
        this.f3586m = false;
        this.f3584k = false;
        this.f3583j = false;
        this.f3582i = false;
        this.f3578e.K();
        k();
    }

    @MainThread
    public void q() {
        if (isShown()) {
            this.f3578e.L();
            k();
            return;
        }
        this.f3582i = true;
    }

    @MainThread
    public void r() {
        if (isShown()) {
            this.f3578e.N();
            k();
            return;
        }
        this.f3582i = false;
        this.f3583j = true;
    }

    public void s(InputStream inputStream, @Nullable String str) {
        setCompositionTask(com.airbnb.lottie.e.h(inputStream, str));
    }

    public void setAnimation(@RawRes int i9) {
        this.f3581h = i9;
        this.f3580g = null;
        setCompositionTask(m(i9));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        t(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f3587n ? com.airbnb.lottie.e.q(getContext(), str) : com.airbnb.lottie.e.r(getContext(), str, null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.f3578e.O(z10);
    }

    public void setCacheComposition(boolean z10) {
        this.f3587n = z10;
    }

    public void setComposition(@NonNull com.airbnb.lottie.d dVar) {
        if (com.airbnb.lottie.c.f3607a) {
            String str = f3572t;
            Log.v(str, "Set Composition \n" + dVar);
        }
        this.f3578e.setCallback(this);
        this.f3592s = dVar;
        this.f3585l = true;
        boolean P = this.f3578e.P(dVar);
        this.f3585l = false;
        k();
        if (getDrawable() != this.f3578e || P) {
            if (!P) {
                u();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            for (j jVar : this.f3589p) {
                jVar.a(dVar);
            }
        }
    }

    public void setFailureListener(@Nullable h<Throwable> hVar) {
        this.f3576c = hVar;
    }

    public void setFallbackResource(@DrawableRes int i9) {
        this.f3577d = i9;
    }

    public void setFontAssetDelegate(com.airbnb.lottie.a aVar) {
        this.f3578e.Q(aVar);
    }

    public void setFrame(int i9) {
        this.f3578e.R(i9);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.f3578e.S(z10);
    }

    public void setImageAssetDelegate(com.airbnb.lottie.b bVar) {
        this.f3578e.T(bVar);
    }

    public void setImageAssetsFolder(String str) {
        this.f3578e.U(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        h();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        h();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i9) {
        h();
        super.setImageResource(i9);
    }

    public void setMaxFrame(int i9) {
        this.f3578e.V(i9);
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f3578e.X(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.f3578e.Z(str);
    }

    public void setMinFrame(int i9) {
        this.f3578e.a0(i9);
    }

    public void setMinProgress(float f10) {
        this.f3578e.c0(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.f3578e.d0(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.f3578e.e0(z10);
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f3578e.f0(f10);
    }

    public void setRenderMode(RenderMode renderMode) {
        this.f3588o = renderMode;
        k();
    }

    public void setRepeatCount(int i9) {
        this.f3578e.g0(i9);
    }

    public void setRepeatMode(int i9) {
        this.f3578e.h0(i9);
    }

    public void setSafeMode(boolean z10) {
        this.f3578e.i0(z10);
    }

    public void setScale(float f10) {
        this.f3578e.j0(f10);
        if (getDrawable() == this.f3578e) {
            u();
        }
    }

    public void setSpeed(float f10) {
        this.f3578e.k0(f10);
    }

    public void setTextDelegate(p pVar) {
        this.f3578e.m0(pVar);
    }

    public void t(String str, @Nullable String str2) {
        s(new ByteArrayInputStream(str.getBytes()), str2);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        com.airbnb.lottie.f fVar;
        if (!this.f3585l && drawable == (fVar = this.f3578e) && fVar.I()) {
            p();
        } else if (!this.f3585l && (drawable instanceof com.airbnb.lottie.f)) {
            com.airbnb.lottie.f fVar2 = (com.airbnb.lottie.f) drawable;
            if (fVar2.I()) {
                fVar2.K();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    public void setMaxFrame(String str) {
        this.f3578e.W(str);
    }

    public void setMinFrame(String str) {
        this.f3578e.b0(str);
    }

    public void setAnimation(String str) {
        this.f3580g = str;
        this.f3581h = 0;
        setCompositionTask(l(str));
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3574a = new b();
        this.f3575b = new c();
        this.f3577d = 0;
        this.f3578e = new com.airbnb.lottie.f();
        this.f3582i = false;
        this.f3583j = false;
        this.f3584k = false;
        this.f3585l = false;
        this.f3586m = false;
        this.f3587n = true;
        this.f3588o = RenderMode.AUTOMATIC;
        this.f3589p = new HashSet();
        this.f3590q = 0;
        n(attributeSet, R$attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f3574a = new b();
        this.f3575b = new c();
        this.f3577d = 0;
        this.f3578e = new com.airbnb.lottie.f();
        this.f3582i = false;
        this.f3583j = false;
        this.f3584k = false;
        this.f3585l = false;
        this.f3586m = false;
        this.f3587n = true;
        this.f3588o = RenderMode.AUTOMATIC;
        this.f3589p = new HashSet();
        this.f3590q = 0;
        n(attributeSet, i9);
    }
}
