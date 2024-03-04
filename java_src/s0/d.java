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
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.R$id;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public abstract class d<T extends View, Z> implements k<Z> {
    @IdRes

    /* renamed from: f  reason: collision with root package name */
    private static final int f57613f = R$id.glide_custom_view_target_tag;

    /* renamed from: a  reason: collision with root package name */
    private final a f57614a;

    /* renamed from: b  reason: collision with root package name */
    protected final T f57615b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private View.OnAttachStateChangeListener f57616c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f57617d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f57618e;

    @VisibleForTesting
    /* loaded from: classes.dex */
    static final class a {
        @Nullable
        @VisibleForTesting

        /* renamed from: e  reason: collision with root package name */
        static Integer f57619e;

        /* renamed from: a  reason: collision with root package name */
        private final View f57620a;

        /* renamed from: b  reason: collision with root package name */
        private final List<j> f57621b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        boolean f57622c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private ViewTreeObserver$OnPreDrawListenerC0634a f57623d;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: s0.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class ViewTreeObserver$OnPreDrawListenerC0634a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f57624a;

            ViewTreeObserver$OnPreDrawListenerC0634a(@NonNull a aVar) {
                this.f57624a = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    Log.v("CustomViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                a aVar = this.f57624a.get();
                if (aVar != null) {
                    aVar.a();
                    return true;
                }
                return true;
            }
        }

        a(@NonNull View view) {
            this.f57620a = view;
        }

        private static int c(@NonNull Context context) {
            if (f57619e == null) {
                Display defaultDisplay = ((WindowManager) v0.j.d((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f57619e = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f57619e.intValue();
        }

        private int e(int i9, int i10, int i11) {
            int i12 = i10 - i11;
            if (i12 > 0) {
                return i12;
            }
            if (this.f57622c && this.f57620a.isLayoutRequested()) {
                return 0;
            }
            int i13 = i9 - i11;
            if (i13 > 0) {
                return i13;
            }
            if (this.f57620a.isLayoutRequested() || i10 != -2) {
                return 0;
            }
            if (Log.isLoggable("CustomViewTarget", 4)) {
                Log.i("CustomViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return c(this.f57620a.getContext());
        }

        private int f() {
            int paddingTop = this.f57620a.getPaddingTop() + this.f57620a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f57620a.getLayoutParams();
            return e(this.f57620a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        private int g() {
            int paddingLeft = this.f57620a.getPaddingLeft() + this.f57620a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f57620a.getLayoutParams();
            return e(this.f57620a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        private boolean h(int i9) {
            return i9 > 0 || i9 == Integer.MIN_VALUE;
        }

        private boolean i(int i9, int i10) {
            return h(i9) && h(i10);
        }

        private void j(int i9, int i10) {
            Iterator it = new ArrayList(this.f57621b).iterator();
            while (it.hasNext()) {
                ((j) it.next()).d(i9, i10);
            }
        }

        void a() {
            if (this.f57621b.isEmpty()) {
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
            ViewTreeObserver viewTreeObserver = this.f57620a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f57623d);
            }
            this.f57623d = null;
            this.f57621b.clear();
        }

        void d(@NonNull j jVar) {
            int g10 = g();
            int f10 = f();
            if (i(g10, f10)) {
                jVar.d(g10, f10);
                return;
            }
            if (!this.f57621b.contains(jVar)) {
                this.f57621b.add(jVar);
            }
            if (this.f57623d == null) {
                ViewTreeObserver viewTreeObserver = this.f57620a.getViewTreeObserver();
                ViewTreeObserver$OnPreDrawListenerC0634a viewTreeObserver$OnPreDrawListenerC0634a = new ViewTreeObserver$OnPreDrawListenerC0634a(this);
                this.f57623d = viewTreeObserver$OnPreDrawListenerC0634a;
                viewTreeObserver.addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC0634a);
            }
        }

        void k(@NonNull j jVar) {
            this.f57621b.remove(jVar);
        }
    }

    public d(@NonNull T t10) {
        this.f57615b = (T) v0.j.d(t10);
        this.f57614a = new a(t10);
    }

    @Nullable
    private Object a() {
        return this.f57615b.getTag(f57613f);
    }

    private void b() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f57616c;
        if (onAttachStateChangeListener == null || this.f57618e) {
            return;
        }
        this.f57615b.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f57618e = true;
    }

    private void c() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f57616c;
        if (onAttachStateChangeListener == null || !this.f57618e) {
            return;
        }
        this.f57615b.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f57618e = false;
    }

    private void f(@Nullable Object obj) {
        this.f57615b.setTag(f57613f, obj);
    }

    protected abstract void d(@Nullable Drawable drawable);

    protected void e(@Nullable Drawable drawable) {
    }

    @Override // s0.k
    @Nullable
    public final com.bumptech.glide.request.e getRequest() {
        Object a10 = a();
        if (a10 != null) {
            if (a10 instanceof com.bumptech.glide.request.e) {
                return (com.bumptech.glide.request.e) a10;
            }
            throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
        }
        return null;
    }

    @Override // s0.k
    public final void getSize(@NonNull j jVar) {
        this.f57614a.d(jVar);
    }

    @Override // p0.f
    public void onDestroy() {
    }

    @Override // s0.k
    public final void onLoadCleared(@Nullable Drawable drawable) {
        this.f57614a.b();
        d(drawable);
        if (this.f57617d) {
            return;
        }
        c();
    }

    @Override // s0.k
    public final void onLoadStarted(@Nullable Drawable drawable) {
        b();
        e(drawable);
    }

    @Override // p0.f
    public void onStart() {
    }

    @Override // p0.f
    public void onStop() {
    }

    @Override // s0.k
    public final void removeCallback(@NonNull j jVar) {
        this.f57614a.k(jVar);
    }

    @Override // s0.k
    public final void setRequest(@Nullable com.bumptech.glide.request.e eVar) {
        f(eVar);
    }

    public String toString() {
        return "Target for: " + this.f57615b;
    }
}
