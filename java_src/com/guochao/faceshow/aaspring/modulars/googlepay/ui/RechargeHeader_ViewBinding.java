package com.guochao.faceshow.aaspring.modulars.googlepay.ui;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class RechargeHeader_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private RechargeHeader f18044b;

    /* renamed from: c  reason: collision with root package name */
    private View f18045c;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RechargeHeader f18046a;

        a(RechargeHeader rechargeHeader) {
            this.f18046a = rechargeHeader;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18046a.onViewClicked();
        }
    }

    @UiThread
    public RechargeHeader_ViewBinding(RechargeHeader rechargeHeader, View view) {
        this.f18044b = rechargeHeader;
        rechargeHeader.tvDiamondCount = (TextView) c.d(view, R.id.tv_diamond_count, "field 'tvDiamondCount'", TextView.class);
        View c10 = c.c(view, R.id.cz_help, "field 'czHelp' and method 'onViewClicked'");
        rechargeHeader.czHelp = c10;
        this.f18045c = c10;
        c10.setOnClickListener(new a(rechargeHeader));
        rechargeHeader.gameCoinNumber = (TextView) c.d(view, R.id.game_coin_number, "field 'gameCoinNumber'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RechargeHeader rechargeHeader = this.f18044b;
        if (rechargeHeader != null) {
            this.f18044b = null;
            rechargeHeader.tvDiamondCount = null;
            rechargeHeader.czHelp = null;
            rechargeHeader.gameCoinNumber = null;
            this.f18045c.setOnClickListener(null);
            this.f18045c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
