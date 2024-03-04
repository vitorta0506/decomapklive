package s0;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.R$id;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@Deprecated
/* loaded from: classes.dex */
public abstract class l<T extends View, Z> extends s0.a<Z> {

    /* renamed from: f  reason: collision with root package name */
    private static boolean f57628f;

    /* renamed from: g  reason: collision with root package name */
    private static int f57629g = R$id.glide_custom_view_target_tag;

    /* renamed from: a  reason: collision with root package name */
    protected final T f57630a;

    /* renamed from: b  reason: collision with root package name */
    private final a f57631b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private View.OnAttachStateChangeListener f57632c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f57633d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f57634e;

    @VisibleForTesting
    /* loaded from: classes.dex */
    static final class a {
        @Nullable
        @VisibleForTesting

        /* renamed from: e  reason: collision with root package name */
        static Integer f57635e;

        /* renamed from: a  reason: collision with root package name */
        private final View f57636a;

        /* renamed from: b  reason: collision with root package name */
        private final List<j> f57637b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        boolean f57638c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private ViewTreeObserver$OnPreDrawListenerC0635a f57639d;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: s0.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class ViewTreeObserver$OnPreDrawListenerC0635a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f57640a;

            ViewTreeObserver$OnPreDrawListenerC0635a(@NonNull a aVar) {
                this.f57640a = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                a aVar = this.f57640a.get();
                if (aVar != null) {
                    aVar.a();
                    return true;
                }
                return true;
            }
        }

        a(@NonNull View view) {
            this.f57636a = view;
        }

        private static int c(@NonNull Context context) {
            if (f57635e == null) {
                Display defaultDisplay = ((WindowManager) v0.j.d((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f57635e = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f57635e.intValue();
        }

        private int e(int i9, int i10, int i11) {
            int i12 = i10 - i11;
            if (i12 > 0) {
                return i12;
            }
            if (this.f57638c && this.f57636a.isLayoutRequested()) {
                return 0;
            }
            int i13 = i9 - i11;
            if (i13 > 0) {
                return i13;
            }
            if (this.f57636a.isLayoutRequested() || i10 != -2) {
                return 0;
            }
            if (Log.isLoggable("ViewTarget", 4)) {
                Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return c(this.f57636a.getContext());
        }

        private int f() {
            int paddingTop = this.f57636a.getPaddingTop() + this.f57636a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f57636a.getLayoutParams();
            return e(this.f57636a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        private int g() {
            int paddingLeft = this.f57636a.getPaddingLeft() + this.f57636a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f57636a.getLayoutParams();
            return e(this.f57636a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        private boolean h(int i9) {
            return i9 > 0 || i9 == Integer.MIN_VALUE;
        }

        private boolean i(int i9, int i10) {
            return h(i9) && h(i10);
        }

        private void j(int i9, int i10) {
            Iterator it = new ArrayList(this.f57637b).iterator();
            while (it.hasNext()) {
                ((j) it.next()).d(i9, i10);
            }
        }

        void a() {
            if (this.f57637b.isEmpty()) {
                return;
            }
            int g10 = g();
            int f10 = f();
            if (i(g10, f10)) {
                j(g10, f10);
                b();
            }
        }

        void b() {
            ViewTreeObserver viewTreeObserver = this.f57636a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f57639d);
            }
            this.f57639d = null;
            this.f57637b.clear();
        }

        void d(@NonNull j jVar) {
            int g10 = g();
            int f10 = f();
            if (i(g10, f10)) {
                jVar.d(g10, f10);
                return;
            }
            if (!this.f57637b.contains(jVar)) {
                this.f57637b.add(jVar);
            }
            if (this.f57639d == null) {
                ViewTreeObserver viewTreeObserver = this.f57636a.getViewTreeObserver();
                ViewTreeObserver$OnPreDrawListenerC0635a viewTreeObserver$OnPreDrawListenerC0635a = new ViewTreeObserver$OnPreDrawListenerC0635a(this);
                this.f57639d = viewTreeObserver$OnPreDrawListenerC0635a;
                viewTreeObserver.addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC0635a);
            }
        }

        void k(@NonNull j jVar) {
            this.f57637b.remove(jVar);
        }
    }

    public l(@NonNull T t10) {
        this.f57630a = (T) v0.j.d(t10);
        this.f57631b = new a(t10);
    }

    @Nullable
    private Object c() {
        return this.f57630a.getTag(f57629g);
    }

    private void d() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f57632c;
        if (onAttachStateChangeListener == null || this.f57634e) {
            return;
        }
        this.f57630a.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f57634e = true;
    }

    private void e() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f57632c;
        if (onAttachStateChangeListener == null || !this.f57634e) {
            return;
        }
        this.f57630a.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f57634e = false;
    }

    private void f(@Nullable Object obj) {
        f57628f = true;
        this.f57630a.setTag(f57629g, obj);
    }

    @Override // s0.a, s0.k
    @Nullable
    public com.bumptech.glide.request.e getRequest() {
        Object c10 = c();
        if (c10 != null) {
            if (c10 instanceof com.bumptech.glide.request.e) {
                return (com.bumptech.glide.request.e) c10;
            }
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        }
        return null;
    }

    @Override // s0.k
    @CallSuper
    public void getSize(@NonNull j jVar) {
        this.f57631b.d(jVar);
    }

    @NonNull
    public T getView() {
        return this.f57630a;
    }

    @Override // s0.a, s0.k
    @CallSuper
    public void onLoadCleared(@Nullable Drawable drawable) {
        super.onLoadCleared(drawable);
        this.f57631b.b();
        if (this.f57633d) {
            return;
        }
        e();
    }

    @Override // s0.a, s0.k
    @CallSuper
    public void onLoadStarted(@Nullable Drawable drawable) {
        super.onLoadStarted(drawable);
        d();
    }

    @Override // s0.k
    @CallSuper
    public void removeCallback(@NonNull j jVar) {
        this.f57631b.k(jVar);
    }

    @Override // s0.a, s0.k
    public void setRequest(@Nullable com.bumptech.glide.request.e eVar) {
        f(eVar);
    }

    public String toString() {
        return "Target for: " + this.f57630a;
    }
}
