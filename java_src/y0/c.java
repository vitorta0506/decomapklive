package y0;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.LayoutRes;
import androidx.core.content.ContextCompat;
import com.ethanhua.skeleton.R$color;
import com.ethanhua.skeleton.R$layout;
import io.supercharge.shimmerlayout.ShimmerLayout;
/* loaded from: classes.dex */
public class c {

    /* renamed from: h  reason: collision with root package name */
    private static final String f60002h = "y0.c";

    /* renamed from: a  reason: collision with root package name */
    private final y0.b f60003a;

    /* renamed from: b  reason: collision with root package name */
    private final View f60004b;

    /* renamed from: c  reason: collision with root package name */
    private final int f60005c;

    /* renamed from: d  reason: collision with root package name */
    private final int f60006d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f60007e;

    /* renamed from: f  reason: collision with root package name */
    private final int f60008f;

    /* renamed from: g  reason: collision with root package name */
    private final int f60009g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShimmerLayout f60010a;

        a(ShimmerLayout shimmerLayout) {
            this.f60010a = shimmerLayout;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f60010a.n();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.f60010a.o();
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final View f60012a;

        /* renamed from: b  reason: collision with root package name */
        private int f60013b;

        /* renamed from: d  reason: collision with root package name */
        private int f60015d;

        /* renamed from: c  reason: collision with root package name */
        private boolean f60014c = true;

        /* renamed from: e  reason: collision with root package name */
        private int f60016e = 1000;

        /* renamed from: f  reason: collision with root package name */
        private int f60017f = 20;

        public b(View view) {
            this.f60012a = view;
            this.f60015d = ContextCompat.getColor(view.getContext(), R$color.shimmer_color);
        }

        public b g(@LayoutRes int i9) {
            this.f60013b = i9;
            return this;
        }

        public b h(boolean z10) {
            this.f60014c = z10;
            return this;
        }

        public c i() {
            c cVar = new c(this, null);
            cVar.d();
            return cVar;
        }
    }

    /* synthetic */ c(b bVar, a aVar) {
        this(bVar);
    }

    private ShimmerLayout a(ViewGroup viewGroup) {
        ShimmerLayout shimmerLayout = (ShimmerLayout) LayoutInflater.from(this.f60004b.getContext()).inflate(R$layout.layout_shimmer, viewGroup, false);
        shimmerLayout.setShimmerColor(this.f60006d);
        shimmerLayout.setShimmerAngle(this.f60009g);
        shimmerLayout.setShimmerAnimationDuration(this.f60008f);
        View inflate = LayoutInflater.from(this.f60004b.getContext()).inflate(this.f60005c, (ViewGroup) shimmerLayout, false);
        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
        if (layoutParams != null) {
            shimmerLayout.setLayoutParams(layoutParams);
        }
        shimmerLayout.addView(inflate);
        shimmerLayout.addOnAttachStateChangeListener(new a(shimmerLayout));
        shimmerLayout.n();
        return shimmerLayout;
    }

    private View b() {
        ViewParent parent = this.f60004b.getParent();
        if (parent == null) {
            Log.e(f60002h, "the source view have not attach to any view");
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        if (this.f60007e) {
            return a(viewGroup);
        }
        return LayoutInflater.from(this.f60004b.getContext()).inflate(this.f60005c, viewGroup, false);
    }

    public void c() {
        if (this.f60003a.a() instanceof ShimmerLayout) {
            ((ShimmerLayout) this.f60003a.a()).o();
        }
        this.f60003a.d();
    }

    public void d() {
        View b10 = b();
        if (b10 != null) {
            this.f60003a.c(b10);
        }
    }

    private c(b bVar) {
        this.f60004b = bVar.f60012a;
        this.f60005c = bVar.f60013b;
        this.f60007e = bVar.f60014c;
        this.f60008f = bVar.f60016e;
        this.f60009g = bVar.f60017f;
        this.f60006d = bVar.f60015d;
        this.f60003a = new y0.b(bVar.f60012a);
    }
}
