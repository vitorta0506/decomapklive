package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.HorizontalScrollView;
/* loaded from: classes4.dex */
public class ObservableHorizontalScrollView extends HorizontalScrollView {

    /* renamed from: a  reason: collision with root package name */
    private a f26665a;

    /* loaded from: classes4.dex */
    public interface a {
        void a(ObservableHorizontalScrollView observableHorizontalScrollView, int i9, int i10, int i11, int i12);
    }

    public ObservableHorizontalScrollView(Context context) {
        super(context);
        this.f26665a = null;
        a();
    }

    private void a() {
        setFocusable(false);
        setFocusableInTouchMode(false);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i9, int i10, int i11, int i12) {
        super.onScrollChanged(i9, i10, i11, i12);
        a aVar = this.f26665a;
        if (aVar != null) {
            aVar.a(this, i9, i10, i11, i12);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public void setScrollViewListener(a aVar) {
        this.f26665a = aVar;
    }

    public ObservableHorizontalScrollView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26665a = null;
        a();
    }

    public ObservableHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26665a = null;
        a();
    }
}
