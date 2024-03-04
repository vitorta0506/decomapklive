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
public class h extends g {

    /* renamed from: e  reason: collision with root package name */
    private ChipsLayoutManager f4111e;

    /* loaded from: classes.dex */
    class a extends LinearSmoothScroller {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnchorViewState f4112a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f4113b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f4114c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, AnchorViewState anchorViewState, int i9, int i10) {
            super(context);
            this.f4112a = anchorViewState;
            this.f4113b = i9;
            this.f4114c = i10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public PointF computeScrollVectorForPosition(int i9) {
            return new PointF(0.0f, this.f4113b > this.f4112a.c().intValue() ? 1.0f : -1.0f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
            super.onTargetFound(view, state, action);
            action.update(0, h.this.f4111e.getDecoratedTop(view) - h.this.f4111e.getPaddingTop(), this.f4114c, new LinearInterpolator());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(ChipsLayoutManager chipsLayoutManager, m mVar, g.a aVar) {
        super(chipsLayoutManager, mVar, aVar);
        this.f4111e = chipsLayoutManager;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public RecyclerView.SmoothScroller b(@NonNull Context context, int i9, int i10, AnchorViewState anchorViewState) {
        return new a(context, anchorViewState, i9, i10);
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public boolean i() {
        this.f4110d.i();
        if (this.f4111e.getChildCount() > 0) {
            int decoratedTop = this.f4111e.getDecoratedTop(this.f4110d.g());
            int decoratedBottom = this.f4111e.getDecoratedBottom(this.f4110d.f());
            if (this.f4110d.d().intValue() != 0 || this.f4110d.r().intValue() != this.f4111e.getItemCount() - 1 || decoratedTop < this.f4111e.getPaddingTop() || decoratedBottom > this.f4111e.getHeight() - this.f4111e.getPaddingBottom()) {
                return this.f4111e.D();
            }
            return false;
        }
        return false;
    }

    @Override // com.beloo.widget.chipslayoutmanager.f
    public boolean k() {
        return false;
    }

    @Override // com.beloo.widget.chipslayoutmanager.g
    void t(int i9) {
        this.f4111e.offsetChildrenVertical(i9);
    }
}
