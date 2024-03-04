package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class InnerRecyclerView extends RecyclerView {

    /* renamed from: a  reason: collision with root package name */
    private a f23772a;

    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    public InnerRecyclerView(@NonNull Context context) {
        super(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
        if (r0 != 3) goto L8;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            int r0 = r4.getAction()
            r1 = 1
            if (r0 == 0) goto L21
            if (r0 == r1) goto L18
            r2 = 2
            if (r0 == r2) goto L10
            r1 = 3
            if (r0 == r1) goto L18
            goto L28
        L10:
            android.view.ViewParent r0 = r3.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
            goto L28
        L18:
            android.view.ViewParent r0 = r3.getParent()
            r1 = 0
            r0.requestDisallowInterceptTouchEvent(r1)
            goto L28
        L21:
            android.view.ViewParent r0 = r3.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
        L28:
            boolean r4 = super.dispatchTouchEvent(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.InnerRecyclerView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        return 0.0f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        a aVar = this.f23772a;
        if (aVar != null) {
            aVar.a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setOnTouchListener(a aVar) {
        this.f23772a = aVar;
    }

    public InnerRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public InnerRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
