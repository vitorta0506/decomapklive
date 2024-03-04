package com.guochao.faceshow.views.flowlayout;

import android.content.Context;
import android.view.View;
import android.widget.Checkable;
import android.widget.FrameLayout;
/* loaded from: classes4.dex */
public class TagView extends FrameLayout implements Checkable {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f27004b = {16842912};

    /* renamed from: a  reason: collision with root package name */
    private boolean f27005a;

    public TagView(Context context) {
        super(context);
    }

    public View getTagView() {
        return getChildAt(0);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f27005a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i9) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i9 + 1);
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f27004b);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (this.f27005a != z10) {
            this.f27005a = z10;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f27005a);
    }
}
