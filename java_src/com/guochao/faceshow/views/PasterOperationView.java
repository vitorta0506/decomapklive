package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes4.dex */
public class PasterOperationView extends TCLayerOperationView {
    private int D4;
    private String E4;
    private String F4;

    public PasterOperationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public int getChildType() {
        return this.D4;
    }

    public String getPasterName() {
        return this.E4;
    }

    public String getPasterPath() {
        return this.F4;
    }

    public void setChildType(int i9) {
        this.D4 = i9;
    }

    public void setPasterName(String str) {
        this.E4 = str;
    }

    public void setPasterPath(String str) {
        this.F4 = str;
    }

    public PasterOperationView(Context context) {
        super(context, null);
    }

    public PasterOperationView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
