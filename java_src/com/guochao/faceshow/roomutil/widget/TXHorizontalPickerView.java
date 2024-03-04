package com.guochao.faceshow.roomutil.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.HorizontalScrollView;
/* loaded from: classes4.dex */
public class TXHorizontalPickerView extends HorizontalScrollView {

    /* renamed from: a  reason: collision with root package name */
    private DataSetObserver f26222a;

    /* renamed from: b  reason: collision with root package name */
    private Adapter f26223b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            TXHorizontalPickerView.this.c();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ((ViewGroup) TXHorizontalPickerView.this.getChildAt(0)).removeAllViews();
        }
    }

    public TXHorizontalPickerView(Context context) {
        super(context);
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        ViewGroup viewGroup = (ViewGroup) getChildAt(0);
        viewGroup.removeAllViews();
        for (int i9 = 0; i9 < this.f26223b.getCount(); i9++) {
            viewGroup.addView(this.f26223b.getView(i9, null, viewGroup));
        }
    }

    void b() {
        this.f26222a = new a();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
    }

    public void setAdapter(Adapter adapter) {
        Adapter adapter2 = this.f26223b;
        if (adapter2 != null) {
            adapter2.unregisterDataSetObserver(this.f26222a);
        }
        this.f26223b = adapter;
        adapter.registerDataSetObserver(this.f26222a);
        c();
    }

    public void setClicked(int i9) {
        ((ViewGroup) getChildAt(0)).getChildAt(i9).performClick();
    }

    public TXHorizontalPickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public TXHorizontalPickerView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        b();
    }
}
