package com.youth.banner;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;
/* loaded from: classes5.dex */
public class BannerScroller extends Scroller {
    private int mDuration;

    public BannerScroller(Context context) {
        super(context);
        this.mDuration = 800;
    }

    public void setDuration(int i9) {
        this.mDuration = i9;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i9, int i10, int i11, int i12, int i13) {
        super.startScroll(i9, i10, i11, i12, this.mDuration);
    }

    @Override // android.widget.Scroller
    public void startScroll(int i9, int i10, int i11, int i12) {
        super.startScroll(i9, i10, i11, i12, this.mDuration);
    }

    public BannerScroller(Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.mDuration = 800;
    }

    public BannerScroller(Context context, Interpolator interpolator, boolean z10) {
        super(context, interpolator, z10);
        this.mDuration = 800;
    }
}
