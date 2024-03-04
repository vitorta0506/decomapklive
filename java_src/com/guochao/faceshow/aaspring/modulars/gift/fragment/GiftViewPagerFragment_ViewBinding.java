package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.GCIndicatorView;
/* loaded from: classes3.dex */
public class GiftViewPagerFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private GiftViewPagerFragment f17881b;

    @UiThread
    public GiftViewPagerFragment_ViewBinding(GiftViewPagerFragment giftViewPagerFragment, View view) {
        this.f17881b = giftViewPagerFragment;
        giftViewPagerFragment.mPageIndicatorView = (GCIndicatorView) butterknife.internal.c.d(view, R.id.indicator, "field 'mPageIndicatorView'", GCIndicatorView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GiftViewPagerFragment giftViewPagerFragment = this.f17881b;
        if (giftViewPagerFragment != null) {
            this.f17881b = null;
            giftViewPagerFragment.mPageIndicatorView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
