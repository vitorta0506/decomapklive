package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
import com.rd.PageIndicatorView;
/* loaded from: classes2.dex */
public final class LayoutBuyVipTopBinding implements ViewBinding {
    @NonNull
    public final FrameLayout btnLay;
    @NonNull
    public final LinearLayout disableHint;
    @NonNull
    public final ItemVipBuyPeroidBinding firstItemLay;
    @NonNull
    public final PageIndicatorView indicator;
    @NonNull
    public final TextView levelUpToVvip;
    @NonNull
    public final LinearLayout menus;
    @NonNull
    public final FrameLayout next;
    @NonNull
    public final TextView nextBtn;
    @NonNull
    public final SVGAImageView nextSvga;
    @NonNull
    public final TextView nextTitle1;
    @NonNull
    public final TextView nextTitle2;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ItemVipBuyPeroidBinding secondItemLay;
    @NonNull
    public final ItemVipBuyPeroidBinding thirdItemLay;
    @NonNull
    public final ViewPager2 viewpager;
    @NonNull
    public final FrameLayout vipBj;

    private LayoutBuyVipTopBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull ItemVipBuyPeroidBinding itemVipBuyPeroidBinding, @NonNull PageIndicatorView pageIndicatorView, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull FrameLayout frameLayout2, @NonNull TextView textView2, @NonNull SVGAImageView sVGAImageView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ItemVipBuyPeroidBinding itemVipBuyPeroidBinding2, @NonNull ItemVipBuyPeroidBinding itemVipBuyPeroidBinding3, @NonNull ViewPager2 viewPager2, @NonNull FrameLayout frameLayout3) {
        this.rootView = linearLayout;
        this.btnLay = frameLayout;
        this.disableHint = linearLayout2;
        this.firstItemLay = itemVipBuyPeroidBinding;
        this.indicator = pageIndicatorView;
        this.levelUpToVvip = textView;
        this.menus = linearLayout3;
        this.next = frameLayout2;
        this.nextBtn = textView2;
        this.nextSvga = sVGAImageView;
        this.nextTitle1 = textView3;
        this.nextTitle2 = textView4;
        this.secondItemLay = itemVipBuyPeroidBinding2;
        this.thirdItemLay = itemVipBuyPeroidBinding3;
        this.viewpager = viewPager2;
        this.vipBj = frameLayout3;
    }

    @NonNull
    public static LayoutBuyVipTopBinding bind(@NonNull View view) {
        int i9 = R.id.btn_lay;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.btn_lay);
        if (frameLayout != null) {
            i9 = R.id.disable_hint;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.disable_hint);
            if (linearLayout != null) {
                i9 = R.id.first_item_lay;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.first_item_lay);
                if (findChildViewById != null) {
                    ItemVipBuyPeroidBinding bind = ItemVipBuyPeroidBinding.bind(findChildViewById);
                    i9 = R.id.indicator;
                    PageIndicatorView pageIndicatorView = (PageIndicatorView) ViewBindings.findChildViewById(view, R.id.indicator);
                    if (pageIndicatorView != null) {
                        i9 = R.id.level_up_to_vvip;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.level_up_to_vvip);
                        if (textView != null) {
                            i9 = R.id.menus;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.menus);
                            if (linearLayout2 != null) {
                                i9 = R.id.next;
                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.next);
                                if (frameLayout2 != null) {
                                    i9 = R.id.next_btn;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.next_btn);
                                    if (textView2 != null) {
                                        i9 = R.id.next_svga;
                                        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.next_svga);
                                        if (sVGAImageView != null) {
                                            i9 = R.id.next_title1;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.next_title1);
                                            if (textView3 != null) {
                                                i9 = R.id.next_title2;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.next_title2);
                                                if (textView4 != null) {
                                                    i9 = R.id.second_item_lay;
                                                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.second_item_lay);
                                                    if (findChildViewById2 != null) {
                                                        ItemVipBuyPeroidBinding bind2 = ItemVipBuyPeroidBinding.bind(findChildViewById2);
                                                        i9 = R.id.third_item_lay;
                                                        View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.third_item_lay);
                                                        if (findChildViewById3 != null) {
                                                            ItemVipBuyPeroidBinding bind3 = ItemVipBuyPeroidBinding.bind(findChildViewById3);
                                                            i9 = R.id.viewpager;
                                                            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.viewpager);
                                                            if (viewPager2 != null) {
                                                                i9 = R.id.vip_bj;
                                                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.vip_bj);
                                                                if (frameLayout3 != null) {
                                                                    return new LayoutBuyVipTopBinding((LinearLayout) view, frameLayout, linearLayout, bind, pageIndicatorView, textView, linearLayout2, frameLayout2, textView2, sVGAImageView, textView3, textView4, bind2, bind3, viewPager2, frameLayout3);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBuyVipTopBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBuyVipTopBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_buy_vip_top, viewGroup, false);
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
