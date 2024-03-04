package com.beloo.widget.chipslayoutmanager;

import android.content.Context;
import android.graphics.PointF;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
import com.beloo.widget.chipslayoutmanager.g;
import u.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c extends g {

    /* renamed from: e  reason: collision with root package name */
    private ChipsLayoutManager f4096e;

    /* loaded from: classes.dex */
    class a extends LinearSmoothScroller {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnchorViewState f4097a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f4098b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f4099c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, AnchorViewState anchorViewState, int i9, int i10) {
            super(context);
            this.f4097a = anchorViewState;
            this.f4098b = i9;
            this.f4099c = i10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public PointF computeScrollVectorForPosition(int i9) {
            return new PointF(this.f4098b > this.f4097a.c().intValue() ? 1.0f : -1.0f, 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
            super.onTargetFound(view, state, action);
            action.update(c.this.f4096e.getDecoratedLeft(view) - c.this.f4096e.getPaddingLeft(), 0, this.f4099c, new LinearInterpolator());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(ChipsLayoutManager chipsLayoutManager, m mVar, g.a aVar) {
        super(chipsLayoutManager, mVar, aVar);
        this.f4096e = chipsLayoutManager;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public RecyclerView.SmoothScroller b(@NonNull Context context, int i9, int i10, AnchorViewState anchorViewState) {
        return new a(context, anchorViewState, i9, i10);
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public boolean i() {
        return false;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public boolean k() {
        this.f4110d.i();
        if (this.f4096e.getChildCount() > 0) {
            int decoratedLeft = this.f4096e.getDecoratedLeft(this.f4110d.b());
            int decoratedRight = this.f4096e.getDecoratedRight(this.f4110d.e());
            if (this.f4110d.d().intValue() != 0 || this.f4110d.r().intValue() != this.f4096e.getItemCount() - 1 || decoratedLeft < this.f4096e.getPaddingLeft() || decoratedRight > this.f4096e.getWidth() - this.f4096e.getPaddingRight()) {
                return this.f4096e.D();
            }
            return false;
        }
        return false;
    }

    @Override // com.beloo.widget.chipslayoutmanager.g
    void t(int i9) {
        this.f4096e.offsetChildrenHorizontal(i9);
    }
}
