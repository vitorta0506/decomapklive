package com.guochao.faceshow.aaspring.modulars.googlepay.ui;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.web.WebViewActivity;
import p9.a;
/* loaded from: classes3.dex */
public class RechargeHeader {

    /* renamed from: a  reason: collision with root package name */
    private View f18042a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f18043b;
    @BindView
    View czHelp;
    @BindView
    TextView gameCoinNumber;
    @BindView
    TextView tvDiamondCount;

    public RechargeHeader(View view, boolean z10) {
        this.f18043b = z10;
        this.f18042a = view;
        ButterKnife.c(this, view);
        FontUtils.setFont(this.tvDiamondCount, 3);
        FontUtils.setFont(this.gameCoinNumber, 3);
        if (i.u().s().getPayH5PayFlag() == 0) {
            this.czHelp.setVisibility(4);
            this.czHelp.setClickable(false);
        } else {
            this.czHelp.setVisibility(0);
            this.czHelp.setClickable(true);
        }
        this.tvDiamondCount.setText(String.valueOf(a.g().f()));
    }

    public View a() {
        return this.f18042a;
    }

    public void b(int i9) {
        TextView textView = this.tvDiamondCount;
        if (textView != null) {
            textView.setText(String.valueOf(i9));
        }
        TextView textView2 = this.gameCoinNumber;
        if (textView2 != null) {
            textView2.setText(String.valueOf(a.g().e().getTokenNum()));
        }
    }

    public void c() {
        this.tvDiamondCount.setText(String.valueOf(a.g().f()));
        this.gameCoinNumber.setText(String.valueOf(a.g().e().getTokenNum()));
    }

    @OnClick
    public void onViewClicked() {
        if (this.f18043b) {
            return;
        }
        WebViewActivity.createBuilder().e(11).a(a().getContext());
    }
}
