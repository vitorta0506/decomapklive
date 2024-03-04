package com.guochao.faceshow.aaspring.modulars.vip;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class BuyVipPeriodHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BuyVipPeriodHolder f23301b;

    @UiThread
    public BuyVipPeriodHolder_ViewBinding(BuyVipPeriodHolder buyVipPeriodHolder, View view) {
        this.f23301b = buyVipPeriodHolder;
        buyVipPeriodHolder.subTitle = (TextView) c.d(view, R.id.sub_title, "field 'subTitle'", TextView.class);
        buyVipPeriodHolder.freePeriodInfo = (TextView) c.d(view, R.id.free_period_info, "field 'freePeriodInfo'", TextView.class);
        buyVipPeriodHolder.freePeriod = (TextView) c.d(view, R.id.free_period, "field 'freePeriod'", TextView.class);
        buyVipPeriodHolder.freeLay = (LinearLayout) c.d(view, R.id.free_lay, "field 'freeLay'", LinearLayout.class);
        buyVipPeriodHolder.period = (TextView) c.d(view, R.id.period, "field 'period'", TextView.class);
        buyVipPeriodHolder.periodInfo = (TextView) c.d(view, R.id.period_info, "field 'periodInfo'", TextView.class);
        buyVipPeriodHolder.noFreeLay = (LinearLayout) c.d(view, R.id.no_free_lay, "field 'noFreeLay'", LinearLayout.class);
        buyVipPeriodHolder.subscriptionPeriodView = (TextView) c.d(view, R.id.subscriptionPeriodView, "field 'subscriptionPeriodView'", TextView.class);
        buyVipPeriodHolder.lineView = c.c(view, R.id.lineView, "field 'lineView'");
        buyVipPeriodHolder.price = (TextView) c.d(view, R.id.price, "field 'price'", TextView.class);
        buyVipPeriodHolder.mSVGAImageView = (SVGAImageView) c.d(view, R.id.sVGAImageView, "field 'mSVGAImageView'", SVGAImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BuyVipPeriodHolder buyVipPeriodHolder = this.f23301b;
        if (buyVipPeriodHolder != null) {
            this.f23301b = null;
            buyVipPeriodHolder.subTitle = null;
            buyVipPeriodHolder.freePeriodInfo = null;
            buyVipPeriodHolder.freePeriod = null;
            buyVipPeriodHolder.freeLay = null;
            buyVipPeriodHolder.period = null;
            buyVipPeriodHolder.periodInfo = null;
            buyVipPeriodHolder.noFreeLay = null;
            buyVipPeriodHolder.subscriptionPeriodView = null;
            buyVipPeriodHolder.lineView = null;
            buyVipPeriodHolder.price = null;
            buyVipPeriodHolder.mSVGAImageView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
