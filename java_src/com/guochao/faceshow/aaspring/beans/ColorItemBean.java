package com.guochao.faceshow.aaspring.beans;

import android.graphics.drawable.GradientDrawable;
/* loaded from: classes3.dex */
public class ColorItemBean {
    private GradientDrawable drawable;
    private boolean isSelect;

    public GradientDrawable getDrawable() {
        return this.drawable;
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setDrawable(GradientDrawable gradientDrawable) {
        this.drawable = gradientDrawable;
    }

    public void setSelect(boolean z10) {
        this.isSelect = z10;
    }
}
