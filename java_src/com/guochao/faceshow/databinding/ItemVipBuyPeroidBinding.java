package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class ItemVipBuyPeroidBinding implements ViewBinding {
    @NonNull
    public final LinearLayout freeLay;
    @NonNull
    public final TextView freePeriod;
    @NonNull
    public final TextView freePeriodInfo;
    @NonNull
    public final View lineView;
    @NonNull
    public final LinearLayout noFreeLay;
    @NonNull
    public final TextView period;
    @NonNull
    public final TextView periodInfo;
    @NonNull
    public final TextView price;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final SVGAImageView sVGAImageView;
    @NonNull
    public final TextView subTitle;
    @NonNull
    public final TextView subscriptionPeriodView;

    private ItemVipBuyPeroidBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull SVGAImageView sVGAImageView, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.rootView = linearLayout;
        this.freeLay = linearLayout2;
        this.freePeriod = textView;
        this.freePeriodInfo = textView2;
        this.lineView = view;
        this.noFreeLay = linearLayout3;
        this.period = textView3;
        this.periodInfo = textView4;
        this.price = textView5;
        this.sVGAImageView = sVGAImageView;
        this.subTitle = textView6;
        this.subscriptionPeriodView = textView7;
    }

    @NonNull
    public static ItemVipBuyPeroidBinding bind(@NonNull View view) {
        int i9 = R.id.free_lay;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.free_lay);
        if (linearLayout != null) {
            i9 = R.id.free_period;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.free_period);
            if (textView != null) {
                i9 = R.id.free_period_info;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.free_period_info);
                if (textView2 != null) {
                    i9 = R.id.lineView;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.lineView);
                    if (findChildViewById != null) {
                        i9 = R.id.no_free_lay;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.no_free_lay);
                        if (linearLayout2 != null) {
                            i9 = R.id.period;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.period);
                            if (textView3 != null) {
                                i9 = R.id.period_info;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.period_info);
                                if (textView4 != null) {
                                    i9 = R.id.price;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.price);
                                    if (textView5 != null) {
                                        i9 = R.id.sVGAImageView;
                                        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.sVGAImageView);
                                        if (sVGAImageView != null) {
                                            i9 = R.id.sub_title;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.sub_title);
                                            if (textView6 != null) {
                                                i9 = R.id.subscriptionPeriodView;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.subscriptionPeriodView);
                                                if (textView7 != null) {
                                                    return new ItemVipBuyPeroidBinding((LinearLayout) view, linearLayout, textView, textView2, findChildViewById, linearLayout2, textView3, textView4, textView5, sVGAImageView, textView6, textView7);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemVipBuyPeroidBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemVipBuyPeroidBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_vip_buy_peroid, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
