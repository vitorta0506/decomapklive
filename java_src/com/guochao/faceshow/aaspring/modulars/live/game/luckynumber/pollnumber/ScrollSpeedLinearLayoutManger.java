package com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.BaseApplication;
/* loaded from: classes3.dex */
public class ScrollSpeedLinearLayoutManger extends LinearLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    private float f19633a;

    /* loaded from: classes3.dex */
    class a extends LinearSmoothScroller {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDtToFit(int i9, int i10, int i11, int i12, int i13) {
            return (i11 + ((i12 - i11) / 2)) - (i9 + ((i10 - i9) / 2));
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return ScrollSpeedLinearLayoutManger.this.f19633a / displayMetrics.density;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public PointF computeScrollVectorForPosition(int i9) {
            return ScrollSpeedLinearLayoutManger.this.computeScrollVectorForPosition(i9);
        }
    }

    public ScrollSpeedLinearLayoutManger(Context context) {
        super(context);
        this.f19633a = 0.03f;
        c(0.35f);
    }

    public void c(float f10) {
        this.f19633a = BaseApplication.getInstance().getResources().getDisplayMetrics().density * f10;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i9) {
        a aVar = new a(recyclerView.getContext());
        aVar.setTargetPosition(i9);
        startSmoothScroll(aVar);
    }
}
