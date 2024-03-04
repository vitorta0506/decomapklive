package com.guochao.faceshow.guild.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;
/* loaded from: classes4.dex */
public class ObservableScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    private a f25413a;

    /* loaded from: classes4.dex */
    public interface a {
        void a(ObservableScrollView observableScrollView, int i9, int i10, int i11, int i12);
    }

    public ObservableScrollView(Context context) {
        super(context);
        this.f25413a = null;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i9, int i10, int i11, int i12) {
        super.onScrollChanged(i9, i10, i11, i12);
        a aVar = this.f25413a;
        if (aVar != null) {
            aVar.a(this, i9, i10, i11, i12);
        }
    }

    public void setScrollViewListener(a aVar) {
        this.f25413a = aVar;
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f25413a = null;
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f25413a = null;
    }
}
