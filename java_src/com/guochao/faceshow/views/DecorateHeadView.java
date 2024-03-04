package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.guochao.faceshow.R;
/* loaded from: classes4.dex */
public class DecorateHeadView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f26580a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f26581b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            DecorateHeadView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            DecorateHeadView decorateHeadView = DecorateHeadView.this;
            decorateHeadView.b(decorateHeadView.getMeasuredHeight());
        }
    }

    public DecorateHeadView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i9) {
        int i10 = i9 / 6;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f26580a.getLayoutParams();
        layoutParams.leftMargin = i10;
        layoutParams.rightMargin = i10;
        layoutParams.topMargin = i10;
        layoutParams.bottomMargin = i10;
        this.f26580a.setLayoutParams(layoutParams);
    }

    private void c() {
        LayoutInflater.from(getContext()).inflate(R.layout.decorate_head_view, this);
        this.f26581b = (ImageView) findViewById(R.id.master_head_decorator);
        this.f26580a = (ImageView) findViewById(R.id.master_head);
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    public DecorateHeadView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DecorateHeadView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        c();
    }
}
