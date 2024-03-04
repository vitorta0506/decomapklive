package com.beloo.widget.chipslayoutmanager;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.recyclerview.widget.RecyclerView;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
import com.beloo.widget.chipslayoutmanager.b;
import com.beloo.widget.chipslayoutmanager.g;
import com.beloo.widget.chipslayoutmanager.layouter.MeasureSupporter;
import java.util.Iterator;
import java.util.Locale;
import t.n;
import u.b0;
import u.k;
import u.m;
import u.t;
import v.i;
import w.p;
/* loaded from: classes.dex */
public class ChipsLayoutManager extends RecyclerView.LayoutManager implements g.a {
    private static final String B = "ChipsLayoutManager";
    private boolean A;

    /* renamed from: a  reason: collision with root package name */
    private u.g f4051a;

    /* renamed from: b  reason: collision with root package name */
    private e f4052b;

    /* renamed from: e  reason: collision with root package name */
    private n f4055e;

    /* renamed from: k  reason: collision with root package name */
    private boolean f4061k;

    /* renamed from: s  reason: collision with root package name */
    private int f4069s;

    /* renamed from: t  reason: collision with root package name */
    private AnchorViewState f4070t;

    /* renamed from: u  reason: collision with root package name */
    private m f4071u;

    /* renamed from: w  reason: collision with root package name */
    private r.a f4073w;

    /* renamed from: x  reason: collision with root package name */
    private f f4074x;

    /* renamed from: c  reason: collision with root package name */
    private com.beloo.widget.chipslayoutmanager.a f4053c = new com.beloo.widget.chipslayoutmanager.a(this);

    /* renamed from: d  reason: collision with root package name */
    private SparseArray<View> f4054d = new SparseArray<>();

    /* renamed from: f  reason: collision with root package name */
    private boolean f4056f = true;

    /* renamed from: g  reason: collision with root package name */
    private Integer f4057g = null;

    /* renamed from: h  reason: collision with root package name */
    private i f4058h = new v.e();
    @Orientation

    /* renamed from: i  reason: collision with root package name */
    private int f4059i = 1;

    /* renamed from: j  reason: collision with root package name */
    private int f4060j = 1;

    /* renamed from: l  reason: collision with root package name */
    private boolean f4062l = false;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Integer f4064n = null;

    /* renamed from: o  reason: collision with root package name */
    private SparseArray<View> f4065o = new SparseArray<>();

    /* renamed from: p  reason: collision with root package name */
    private ParcelableContainer f4066p = new ParcelableContainer();

    /* renamed from: r  reason: collision with root package name */
    private boolean f4068r = false;

    /* renamed from: y  reason: collision with root package name */
    private x.g f4075y = new x.g(this);

    /* renamed from: z  reason: collision with root package name */
    private a0.b f4076z = new a0.a();

    /* renamed from: q  reason: collision with root package name */
    private z.b f4067q = new z.e().a(this.f4065o);

    /* renamed from: m  reason: collision with root package name */
    private s.a f4063m = new com.beloo.widget.chipslayoutmanager.cache.a(this).a();

    /* renamed from: v  reason: collision with root package name */
    private k f4072v = new MeasureSupporter(this);

    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private Integer f4077a;

        public ChipsLayoutManager a() {
            if (ChipsLayoutManager.this.f4055e == null) {
                Integer num = this.f4077a;
                if (num != null) {
                    ChipsLayoutManager.this.f4055e = new t.k(num.intValue());
                } else {
                    ChipsLayoutManager.this.f4055e = new t.b();
                }
            }
            ChipsLayoutManager chipsLayoutManager = ChipsLayoutManager.this;
            chipsLayoutManager.f4071u = chipsLayoutManager.f4059i == 1 ? new b0(ChipsLayoutManager.this) : new u.e(ChipsLayoutManager.this);
            ChipsLayoutManager chipsLayoutManager2 = ChipsLayoutManager.this;
            chipsLayoutManager2.f4051a = chipsLayoutManager2.f4071u.m();
            ChipsLayoutManager chipsLayoutManager3 = ChipsLayoutManager.this;
            chipsLayoutManager3.f4073w = chipsLayoutManager3.f4071u.a();
            ChipsLayoutManager chipsLayoutManager4 = ChipsLayoutManager.this;
            chipsLayoutManager4.f4074x = chipsLayoutManager4.f4071u.j();
            ChipsLayoutManager chipsLayoutManager5 = ChipsLayoutManager.this;
            chipsLayoutManager5.f4070t = chipsLayoutManager5.f4073w.a();
            ChipsLayoutManager chipsLayoutManager6 = ChipsLayoutManager.this;
            chipsLayoutManager6.f4052b = new com.beloo.widget.chipslayoutmanager.b(chipsLayoutManager6.f4051a, ChipsLayoutManager.this.f4053c, ChipsLayoutManager.this.f4071u);
            return ChipsLayoutManager.this;
        }

        public b b(@Orientation int i9) {
            if (i9 == 1 || i9 == 2) {
                ChipsLayoutManager.this.f4059i = i9;
                return this;
            }
            return this;
        }

        private b() {
        }
    }

    /* loaded from: classes.dex */
    public class c extends b {
        public c() {
            super();
        }
    }

    @VisibleForTesting
    ChipsLayoutManager(Context context) {
        this.f4069s = context.getResources().getConfiguration().orientation;
        setAutoMeasureEnabled(true);
    }

    private void F(RecyclerView.Recycler recycler, @NonNull u.h hVar, u.h hVar2) {
        t f10 = this.f4071u.f(new p(), this.f4075y.a());
        b.a c10 = this.f4052b.c(recycler);
        if (c10.e() > 0) {
            z.c.a("disappearing views", "count = " + c10.e());
            z.c.a("fill disappearing views", "");
            u.h b10 = f10.b(hVar2);
            for (int i9 = 0; i9 < c10.d().size(); i9++) {
                b10.o(recycler.getViewForPosition(c10.d().keyAt(i9)));
            }
            b10.k();
            u.h a10 = f10.a(hVar);
            for (int i10 = 0; i10 < c10.c().size(); i10++) {
                a10.o(recycler.getViewForPosition(c10.c().keyAt(i10)));
            }
            a10.k();
        }
    }

    public static b G(Context context) {
        if (context != null) {
            return new c();
        }
        throw new IllegalArgumentException("you have passed null context to builder");
    }

    private void H(int i9) {
        String str = B;
        z.c.a(str, "cache purged from position " + i9);
        this.f4063m.c(i9);
        int b10 = this.f4063m.b(i9);
        Integer num = this.f4064n;
        if (num != null) {
            b10 = Math.min(num.intValue(), b10);
        }
        this.f4064n = Integer.valueOf(b10);
    }

    private void I() {
        if (this.f4064n == null || getChildCount() <= 0) {
            return;
        }
        int position = getPosition(getChildAt(0));
        if (position < this.f4064n.intValue() || (this.f4064n.intValue() == 0 && this.f4064n.intValue() == position)) {
            z.c.a("normalization", "position = " + this.f4064n + " top view position = " + position);
            String str = B;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("cache purged from position ");
            sb2.append(position);
            z.c.a(str, sb2.toString());
            this.f4063m.c(position);
            this.f4064n = null;
            J();
        }
    }

    private void J() {
        y.b.a(this);
    }

    private void p() {
        this.f4054d.clear();
        Iterator<View> it = this.f4053c.iterator();
        while (it.hasNext()) {
            View next = it.next();
            this.f4054d.put(getPosition(next), next);
        }
    }

    private void q(RecyclerView.Recycler recycler) {
        Integer num = this.f4057g;
        recycler.setViewCacheSize((int) ((num == null ? 10 : num.intValue()) * 2.0f));
    }

    private void r(RecyclerView.Recycler recycler, u.h hVar, u.h hVar2) {
        int intValue = this.f4070t.c().intValue();
        s();
        for (int i9 = 0; i9 < this.f4065o.size(); i9++) {
            detachView(this.f4065o.valueAt(i9));
        }
        int i10 = intValue - 1;
        this.f4067q.g(i10);
        if (this.f4070t.a() != null) {
            t(recycler, hVar, i10);
        }
        this.f4067q.g(intValue);
        t(recycler, hVar2, intValue);
        this.f4067q.b();
        for (int i11 = 0; i11 < this.f4065o.size(); i11++) {
            removeAndRecycleView(this.f4065o.valueAt(i11), recycler);
            this.f4067q.a(i11);
        }
        this.f4051a.i();
        p();
        this.f4065o.clear();
        this.f4067q.d();
    }

    private void s() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            this.f4065o.put(getPosition(childAt), childAt);
        }
    }

    private void t(RecyclerView.Recycler recycler, u.h hVar, int i9) {
        if (i9 < 0) {
            return;
        }
        u.b m10 = hVar.m();
        m10.a(i9);
        while (true) {
            if (!m10.hasNext()) {
                break;
            }
            int intValue = m10.next().intValue();
            View view = this.f4065o.get(intValue);
            if (view == null) {
                try {
                    View viewForPosition = recycler.getViewForPosition(intValue);
                    this.f4067q.f();
                    if (!hVar.o(viewForPosition)) {
                        recycler.recycleView(viewForPosition);
                        this.f4067q.h();
                        break;
                    }
                } catch (IndexOutOfBoundsException unused) {
                }
            } else if (!hVar.p(view)) {
                break;
            } else {
                this.f4065o.remove(intValue);
            }
        }
        this.f4067q.c();
        hVar.k();
    }

    public int A() {
        return this.f4060j;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public s.a B() {
        return this.f4063m;
    }

    public com.beloo.widget.chipslayoutmanager.c C() {
        return new com.beloo.widget.chipslayoutmanager.c(this, this.f4071u, this);
    }

    public boolean D() {
        return this.f4056f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean E() {
        return this.f4061k;
    }

    public h K() {
        return new h(this, this.f4071u, this);
    }

    @Override // com.beloo.widget.chipslayoutmanager.g.a
    public void a(f fVar, RecyclerView.Recycler recycler, RecyclerView.State state) {
        I();
        this.f4070t = this.f4073w.b();
        w.a n9 = this.f4071u.n();
        n9.d(1);
        t f10 = this.f4071u.f(n9, this.f4075y.b());
        r(recycler, f10.i(this.f4070t), f10.j(this.f4070t));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.f4074x.k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.f4074x.i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return this.f4074x.j(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return this.f4074x.c(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return this.f4074x.l(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return this.f4074x.h(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return this.f4074x.g(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return this.f4074x.a(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void detachAndScrapAttachedViews(RecyclerView.Recycler recycler) {
        super.detachAndScrapAttachedViews(recycler);
        this.f4054d.clear();
    }

    public int findFirstVisibleItemPosition() {
        if (getChildCount() == 0) {
            return -1;
        }
        return this.f4051a.d().intValue();
    }

    public int findLastVisibleItemPosition() {
        if (getChildCount() == 0) {
            return -1;
        }
        return this.f4051a.r().intValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getItemCount() {
        return super.getItemCount() + this.f4052b.b();
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.f4062l;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        if (adapter != null && this.f4072v.O()) {
            try {
                this.f4072v.d(false);
                adapter.unregisterAdapterDataObserver((RecyclerView.AdapterDataObserver) this.f4072v);
            } catch (IllegalStateException unused) {
            }
        }
        if (adapter2 != null) {
            this.f4072v.d(true);
            adapter2.registerAdapterDataObserver((RecyclerView.AdapterDataObserver) this.f4072v);
        }
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i9, int i10) {
        z.c.b("onItemsAdded", "starts from = " + i9 + ", item count = " + i10, 1);
        super.onItemsAdded(recyclerView, i9, i10);
        H(i9);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        z.c.b("onItemsChanged", "", 1);
        super.onItemsChanged(recyclerView);
        this.f4063m.f();
        H(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i9, int i10, int i11) {
        z.c.b("onItemsMoved", String.format(Locale.US, "from = %d, to = %d, itemCount = %d", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11)), 1);
        super.onItemsMoved(recyclerView, i9, i10, i11);
        H(Math.min(i9, i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i9, int i10) {
        z.c.b("onItemsRemoved", "starts from = " + i9 + ", item count = " + i10, 1);
        super.onItemsRemoved(recyclerView, i9, i10);
        H(i9);
        this.f4072v.c(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i9, int i10) {
        z.c.b("onItemsUpdated", "starts from = " + i9 + ", item count = " + i10, 1);
        super.onItemsUpdated(recyclerView, i9, i10);
        H(i9);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.f4076z.a(recycler, state);
        String str = B;
        z.c.a(str, "onLayoutChildren. State =" + state);
        if (getItemCount() == 0) {
            detachAndScrapAttachedViews(recycler);
            return;
        }
        z.c.e("onLayoutChildren", "isPreLayout = " + state.isPreLayout(), 4);
        if (isLayoutRTL() != this.f4068r) {
            this.f4068r = isLayoutRTL();
            detachAndScrapAttachedViews(recycler);
        }
        q(recycler);
        if (state.isPreLayout()) {
            int a10 = this.f4052b.a(recycler);
            z.c.b("LayoutManager", "height =" + getHeight(), 4);
            z.c.b("onDeletingHeightCalc", "additional height  = " + a10, 4);
            AnchorViewState b10 = this.f4073w.b();
            this.f4070t = b10;
            this.f4073w.c(b10);
            z.c.f(str, "anchor state in pre-layout = " + this.f4070t);
            detachAndScrapAttachedViews(recycler);
            w.a n9 = this.f4071u.n();
            n9.d(5);
            n9.c(a10);
            t f10 = this.f4071u.f(n9, this.f4075y.b());
            this.f4067q.e(this.f4070t);
            r(recycler, f10.i(this.f4070t), f10.j(this.f4070t));
            this.A = true;
        } else {
            detachAndScrapAttachedViews(recycler);
            this.f4063m.c(this.f4070t.c().intValue());
            if (this.f4064n != null && this.f4070t.c().intValue() <= this.f4064n.intValue()) {
                this.f4064n = null;
            }
            w.a n10 = this.f4071u.n();
            n10.d(5);
            t f11 = this.f4071u.f(n10, this.f4075y.b());
            u.h i9 = f11.i(this.f4070t);
            u.h j10 = f11.j(this.f4070t);
            r(recycler, i9, j10);
            if (this.f4074x.d(recycler, null)) {
                z.c.a(str, "normalize gaps");
                this.f4070t = this.f4073w.b();
                J();
            }
            if (this.A) {
                F(recycler, i9, j10);
            }
            this.A = false;
        }
        this.f4052b.reset();
        if (state.isMeasuring()) {
            return;
        }
        this.f4072v.b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        ParcelableContainer parcelableContainer = (ParcelableContainer) parcelable;
        this.f4066p = parcelableContainer;
        this.f4070t = parcelableContainer.a();
        if (this.f4069s != this.f4066p.c()) {
            int intValue = this.f4070t.c().intValue();
            AnchorViewState a10 = this.f4073w.a();
            this.f4070t = a10;
            a10.f(Integer.valueOf(intValue));
        }
        this.f4063m.onRestoreInstanceState(this.f4066p.d(this.f4069s));
        this.f4064n = this.f4066p.b(this.f4069s);
        String str = B;
        z.c.a(str, "RESTORE. last cache position before cleanup = " + this.f4063m.d());
        Integer num = this.f4064n;
        if (num != null) {
            this.f4063m.c(num.intValue());
        }
        this.f4063m.c(this.f4070t.c().intValue());
        z.c.a(str, "RESTORE. anchor position =" + this.f4070t.c());
        z.c.a(str, "RESTORE. layoutOrientation = " + this.f4069s + " normalizationPos = " + this.f4064n);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("RESTORE. last cache position = ");
        sb2.append(this.f4063m.d());
        z.c.a(str, sb2.toString());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        this.f4066p.e(this.f4070t);
        this.f4066p.h(this.f4069s, this.f4063m.onSaveInstanceState());
        this.f4066p.g(this.f4069s);
        String str = B;
        z.c.a(str, "STORE. last cache position =" + this.f4063m.d());
        Integer num = this.f4064n;
        if (num == null) {
            num = this.f4063m.d();
        }
        z.c.a(str, "STORE. layoutOrientation = " + this.f4069s + " normalizationPos = " + num);
        this.f4066p.f(this.f4069s, num);
        return this.f4066p;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int scrollHorizontallyBy(int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.f4074x.f(i9, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i9) {
        if (i9 < getItemCount() && i9 >= 0) {
            Integer d10 = this.f4063m.d();
            Integer num = this.f4064n;
            if (num == null) {
                num = d10;
            }
            this.f4064n = num;
            if (d10 != null && i9 < d10.intValue()) {
                i9 = this.f4063m.b(i9);
            }
            AnchorViewState a10 = this.f4073w.a();
            this.f4070t = a10;
            a10.f(Integer.valueOf(i9));
            super.requestLayout();
            return;
        }
        z.c.c("span layout manager", "Cannot scroll to " + i9 + ", item count " + getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int scrollVerticallyBy(int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.f4074x.e(i9, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(int i9, int i10) {
        this.f4072v.f(i9, i10);
        String str = B;
        z.c.d(str, "measured dimension = " + i10);
        super.setMeasuredDimension(this.f4072v.e(), this.f4072v.a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i9) {
        if (i9 < getItemCount() && i9 >= 0) {
            RecyclerView.SmoothScroller b10 = this.f4074x.b(recyclerView.getContext(), i9, 150, this.f4070t);
            b10.setTargetPosition(i9);
            startSmoothScroll(b10);
            return;
        }
        z.c.c("span layout manager", "Cannot scroll to " + i9 + ", item count " + getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AnchorViewState u() {
        return this.f4070t;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public u.g v() {
        return this.f4051a;
    }

    public n w() {
        return this.f4055e;
    }

    public int x() {
        Iterator<View> it = this.f4053c.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            if (this.f4051a.j(it.next())) {
                i9++;
            }
        }
        return i9;
    }

    public Integer y() {
        return this.f4057g;
    }

    public i z() {
        return this.f4058h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i9, int i10, Object obj) {
        onItemsUpdated(recyclerView, i9, i10);
    }
}
