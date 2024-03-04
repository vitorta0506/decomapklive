package com.guochao.faceshow.aaspring.modulars.vip;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.android.billingclient.api.SkuDetails;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.SubSkuDetailsBean;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class BuyVipPeriodHolder {

    /* renamed from: a  reason: collision with root package name */
    private View f23299a;
    @BindView
    LinearLayout freeLay;
    @BindView
    TextView freePeriod;
    @BindView
    TextView freePeriodInfo;
    @BindView
    View lineView;
    @BindView
    SVGAImageView mSVGAImageView;
    @BindView
    LinearLayout noFreeLay;
    @BindView
    TextView period;
    @BindView
    TextView periodInfo;
    @BindView
    TextView price;
    @BindView
    TextView subTitle;
    @BindView
    TextView subscriptionPeriodView;

    /* loaded from: classes3.dex */
    class a implements SVGAParser.ParseCompletion {
        a() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            BuyVipPeriodHolder.this.mSVGAImageView.setVideoItem(sVGAVideoEntity);
            BuyVipPeriodHolder.this.mSVGAImageView.startAnimation();
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, BuyVipPeriodHolder.this.mSVGAImageView);
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    public BuyVipPeriodHolder(View view) {
        this.f23299a = view;
        ButterKnife.c(this, view);
        SvgaImageViewUtils.getParser().decodeFromInputStream(BaseApplication.getInstance().getResources().openRawResource(R.raw.buy_vip_fire), "buy_vip_fire", new a(), true);
    }

    public void a(SubSkuDetailsBean subSkuDetailsBean, int i9, int i10, int i11) {
        String string;
        c(i9, i10, i11);
        SkuDetails skuDetails = subSkuDetailsBean.getSkuDetails();
        String str = skuDetails.f().split("[\\d]")[0];
        skuDetails.a();
        skuDetails.h();
        String d10 = skuDetails.d();
        skuDetails.g();
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 == 2) {
                    string = this.price.getContext().getResources().getString(R.string.vip_mall_every_year);
                    this.price.setText(d10);
                }
                string = null;
            } else {
                string = this.price.getContext().getResources().getString(R.string.vip_mall_every_months, String.valueOf(3));
                this.price.setText(d10);
            }
        } else if (i11 == 1) {
            string = this.price.getContext().getResources().getString(R.string.vip_mall_than);
            TextView textView = this.price;
            textView.setText(textView.getContext().getResources().getString(R.string.vip_mall_weeks_per, d10));
        } else {
            if (i11 == 2) {
                string = this.price.getContext().getResources().getString(R.string.vip_mall_every_month);
                this.price.setText(d10);
            }
            string = null;
        }
        if (!TextUtils.isEmpty(string)) {
            this.subscriptionPeriodView.setText(string);
        }
        skuDetails.b();
    }

    public void b(int i9, int i10, int i11) {
        c(i9, i10, i11);
        if (i9 == 0) {
            this.subTitle.setText(R.string.ugc_hot);
            if (i11 == 1) {
                TextView textView = this.freePeriodInfo;
                textView.setText(textView.getContext().getResources().getString(R.string.vip_mall_free_days, String.valueOf(7)).trim());
                this.freeLay.setVisibility(0);
                this.noFreeLay.setVisibility(8);
            } else if (i11 == 2) {
                this.freeLay.setVisibility(8);
                this.noFreeLay.setVisibility(0);
                this.period.setText(String.valueOf(1));
                TextView textView2 = this.periodInfo;
                textView2.setText(textView2.getContext().getResources().getString(R.string.vip_mall_month));
            }
        } else if (i9 == 1) {
            this.subTitle.setText(R.string.vip_mall_most_valued);
            this.freeLay.setVisibility(8);
            this.noFreeLay.setVisibility(0);
            this.period.setText(String.valueOf(3));
            TextView textView3 = this.periodInfo;
            textView3.setText(String.format(textView3.getContext().getResources().getString(R.string.vip_mall_months), "").trim());
        } else if (i9 != 2) {
        } else {
            this.subTitle.setText(R.string.vip_mall_save);
            this.freeLay.setVisibility(8);
            this.noFreeLay.setVisibility(0);
            this.period.setText(String.valueOf(1));
            this.periodInfo.setText(R.string.vip_mall_year);
        }
    }

    public void c(int i9, int i10, int i11) {
        if (i9 == i10) {
            TextView textView = this.period;
            Context context = this.f23299a.getContext();
            int i12 = R.color.color_ugc_app_primary;
            textView.setTextColor(ContextCompat.getColor(context, i11 == 1 ? R.color.color_ugc_app_primary : R.color.vvip_primary_color));
            TextView textView2 = this.freePeriod;
            Context context2 = this.f23299a.getContext();
            if (i11 != 1) {
                i12 = R.color.vvip_primary_color;
            }
            textView2.setTextColor(ContextCompat.getColor(context2, i12));
            this.lineView.setBackgroundResource(i11 == 1 ? R.drawable.bg_line_dash_blue : R.drawable.bg_line_dash_gold);
        } else {
            this.period.setTextColor(ContextCompat.getColor(this.f23299a.getContext(), R.color.color_ugc_text_level_1));
            this.freePeriod.setTextColor(ContextCompat.getColor(this.f23299a.getContext(), R.color.color_ugc_text_level_1));
            this.lineView.setBackgroundResource(R.drawable.bg_line_dash);
        }
        this.f23299a.setSelected(i9 == i10);
        if (i9 == 0 && i10 == 0) {
            this.mSVGAImageView.setVisibility(8);
        } else {
            this.mSVGAImageView.setVisibility(8);
        }
    }
}
