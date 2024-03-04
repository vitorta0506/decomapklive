package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class NoBottomEdgeRecyclerView extends RecyclerView {

    /* renamed from: a  reason: collision with root package name */
    private a f23907a;

    /* renamed from: b  reason: collision with root package name */
    float f23908b;

    /* renamed from: c  reason: collision with root package name */
    float f23909c;

    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    public NoBottomEdgeRecyclerView(@NonNull Context context) {
        super(context);
        setNestedScrollingEnabled(false);
    }

    public boolean a() {
        return computeVerticalScrollExtent() + computeVerticalScrollOffset() >= computeVerticalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 2 && Math.abs(motionEvent.getRawY() - this.f23908b) > Math.abs(motionEvent.getRawX() - this.f23909c)) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else {
            this.f23908b = motionEvent.getRawY();
            this.f23909c = motionEvent.getRawX();
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        return 0.0f;
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        return super.getTopFadingEdgeStrength() * 0.8f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrolled(int i9, int i10) {
        if (this.f23907a != null && a()) {
            this.f23907a.a();
        }
    }

    public void setOnBottomCallback(a aVar) {
        this.f23907a = aVar;
    }

    public NoBottomEdgeRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setNestedScrollingEnabled(false);
    }

    public NoBottomEdgeRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        setNestedScrollingEnabled(false);
    }
}
