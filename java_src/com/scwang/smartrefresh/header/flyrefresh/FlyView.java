package com.scwang.smartrefresh.header.flyrefresh;

import ae.b;
import android.content.Context;
import android.util.AttributeSet;
import com.scwang.smartrefresh.header.internal.pathview.PathsView;
/* loaded from: classes4.dex */
public class FlyView extends PathsView {
    public FlyView(Context context) {
        this(context, null);
    }

    public FlyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.a(-1);
        if (!this.f29240a.g("M2.01,21L23,12 2.01,3 2,10l15,2 -15,2z")) {
            this.f29240a.c(2, 3, 20, 18);
        }
        int b10 = b.b(25.0f);
        this.f29240a.setBounds(0, 0, b10, b10);
    }
}
