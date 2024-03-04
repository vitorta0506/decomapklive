package com.guochao.faceshow.aaspring.modulars.dressmarket.marquee;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.HorizontalScrollView;
/* loaded from: classes3.dex */
public class DispatchTouchHorizontalScrollView extends HorizontalScrollView {

    /* renamed from: a  reason: collision with root package name */
    private a f17675a;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i9, int i10);
    }

    public DispatchTouchHorizontalScrollView(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(false);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i9, int i10, int i11, int i12) {
        super.onScrollChanged(i9, i10, i11, i12);
        a aVar = this.f17675a;
        if (aVar != null) {
            aVar.a(i9, i11);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public void setOnScrollChangeListener(a aVar) {
        this.f17675a = aVar;
    }

    public DispatchTouchHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DispatchTouchHorizontalScrollView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
