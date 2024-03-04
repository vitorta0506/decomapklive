package com.beloo.widget.chipslayoutmanager;

import androidx.recyclerview.widget.RecyclerView;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
import u.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class g implements f {

    /* renamed from: a  reason: collision with root package name */
    private ChipsLayoutManager f4107a;

    /* renamed from: b  reason: collision with root package name */
    private a f4108b;

    /* renamed from: c  reason: collision with root package name */
    private m f4109c;

    /* renamed from: d  reason: collision with root package name */
    u.g f4110d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        void a(f fVar, RecyclerView.Recycler recycler, RecyclerView.State state);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(ChipsLayoutManager chipsLayoutManager, m mVar, a aVar) {
        this.f4107a = chipsLayoutManager;
        this.f4108b = aVar;
        this.f4109c = mVar;
        this.f4110d = chipsLayoutManager.v();
    }

    private int p(RecyclerView.State state) {
        if (this.f4107a.getChildCount() == 0 || state.getItemCount() == 0) {
            return 0;
        }
        int findFirstVisibleItemPosition = this.f4107a.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = this.f4107a.findLastVisibleItemPosition();
        if (!this.f4107a.isSmoothScrollbarEnabled()) {
            return Math.abs(findLastVisibleItemPosition - findFirstVisibleItemPosition) + 1;
        }
        return Math.min(this.f4109c.i(), s());
    }

    private int q(RecyclerView.State state) {
        if (this.f4107a.getChildCount() == 0 || state.getItemCount() == 0) {
            return 0;
        }
        int findFirstVisibleItemPosition = this.f4107a.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = this.f4107a.findLastVisibleItemPosition();
        int max = Math.max(0, findFirstVisibleItemPosition);
        if (this.f4107a.isSmoothScrollbarEnabled()) {
            return Math.round((max * (s() / (Math.abs(findFirstVisibleItemPosition - findLastVisibleItemPosition) + 1))) + (this.f4109c.l() - this.f4109c.c()));
        }
        return max;
    }

    private int r(RecyclerView.State state) {
        if (this.f4107a.getChildCount() == 0 || state.getItemCount() == 0) {
            return 0;
        }
        if (!this.f4107a.isSmoothScrollbarEnabled()) {
            return state.getItemCount();
        }
        return (int) ((s() / (Math.abs(this.f4107a.findFirstVisibleItemPosition() - this.f4107a.findLastVisibleItemPosition()) + 1)) * state.getItemCount());
    }

    private int s() {
        return this.f4109c.h() - this.f4109c.c();
    }

    private int w(int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int m10 = m(i9);
        t(-m10);
        this.f4108b.a(this, recycler, state);
        return m10;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public final int a(RecyclerView.State state) {
        if (i()) {
            return r(state);
        }
        return 0;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public final int c(RecyclerView.State state) {
        if (k()) {
            return q(state);
        }
        return 0;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public final boolean d(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int o10 = o();
        if (o10 > 0) {
            t(-o10);
            return true;
        }
        int n9 = n();
        if (n9 > 0) {
            w(-n9, recycler, state);
            return true;
        }
        return false;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public final int e(int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (i()) {
            return w(i9, recycler, state);
        }
        return 0;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public final int f(int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (k()) {
            return w(i9, recycler, state);
        }
        return 0;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public final int g(RecyclerView.State state) {
        if (i()) {
            return q(state);
        }
        return 0;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public final int h(RecyclerView.State state) {
        if (i()) {
            return p(state);
        }
        return 0;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public final int j(RecyclerView.State state) {
        if (k()) {
            return p(state);
        }
        return 0;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public final int l(RecyclerView.State state) {
        if (k()) {
            return r(state);
        }
        return 0;
    }

    final int m(int i9) {
        if (this.f4107a.getChildCount() == 0) {
            return 0;
        }
        if (i9 < 0) {
            return u(i9);
        }
        if (i9 > 0) {
            return v(i9);
        }
        return 0;
    }

    final int n() {
        if (this.f4107a.getChildCount() == 0 || this.f4107a.x() == this.f4107a.getItemCount()) {
            return 0;
        }
        int g10 = this.f4109c.g() - this.f4109c.h();
        if (g10 < 0) {
            return 0;
        }
        return g10;
    }

    final int o() {
        int c10;
        if (this.f4107a.getChildCount() != 0 && (c10 = this.f4109c.c() - this.f4109c.l()) >= 0) {
            return c10;
        }
        return 0;
    }

    abstract void t(int i9);

    final int u(int i9) {
        AnchorViewState u10 = this.f4107a.u();
        if (u10.a() == null) {
            return 0;
        }
        if (u10.c().intValue() != 0) {
            return i9;
        }
        int e10 = this.f4109c.e(u10) - this.f4109c.l();
        return e10 >= 0 ? e10 : Math.max(e10, i9);
    }

    final int v(int i9) {
        return this.f4107a.getPosition(this.f4107a.getChildAt(this.f4107a.getChildCount() + (-1))) < this.f4107a.getItemCount() + (-1) ? i9 : Math.min(this.f4109c.h() - this.f4109c.g(), i9);
    }
}
