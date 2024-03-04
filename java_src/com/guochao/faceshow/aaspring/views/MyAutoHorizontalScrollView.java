package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;
/* loaded from: classes3.dex */
public class MyAutoHorizontalScrollView extends HorizontalScrollView {

    /* renamed from: a  reason: collision with root package name */
    private a f23904a;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i9, int i10);
    }

    public MyAutoHorizontalScrollView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i9, int i10, int i11, int i12) {
        super.onScrollChanged(i9, i10, i11, i12);
        a aVar = this.f23904a;
        if (aVar != null) {
            aVar.a(i9, i11);
        }
    }

    public void setOnMyScrollListener(a aVar) {
        this.f23904a = aVar;
    }

    public MyAutoHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MyAutoHorizontalScrollView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
