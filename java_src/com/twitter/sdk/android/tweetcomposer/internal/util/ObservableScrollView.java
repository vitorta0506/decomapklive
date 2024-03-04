package com.twitter.sdk.android.tweetcomposer.internal.util;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;
/* loaded from: classes4.dex */
public class ObservableScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    a f35376a;

    /* loaded from: classes4.dex */
    public interface a {
        void a(int i9);
    }

    public ObservableScrollView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i9, int i10, int i11, int i12) {
        super.onScrollChanged(i9, i10, i11, i12);
        a aVar = this.f35376a;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setScrollViewListener(a aVar) {
        this.f35376a = aVar;
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
