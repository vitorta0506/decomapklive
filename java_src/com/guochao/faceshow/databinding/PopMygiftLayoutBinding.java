package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatioFrameLayout;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView;
/* loaded from: classes2.dex */
public final class PopMygiftLayoutBinding implements ViewBinding {
    @NonNull
    public final LinearLayout adsLl;
    @NonNull
    public final RelativeLayout adsRl;
    @NonNull
    public final TextView adsTv;
    @NonNull
    public final LayoutEmptyViewNoTextBinding emptyAdsLay;
    @NonNull
    public final RadioButton freeDiamonds;
    @NonNull
    public final RatioFrameLayout liveAdvert;
    @NonNull
    public final RadioButton myGift;
    @NonNull
    public final SwipeMenuRecyclerView myRecyclerView;
    @NonNull
    public final RadioButton payTop;
    @NonNull
    public final RadioGroup radioGroup;
    @NonNull
    public final SwipeRefreshLayout refreshLayout;
    @NonNull
    public final RecyclerView rlOwnerSelectGift;
    @NonNull
    private final LinearLayout rootView;

    private PopMygiftLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull LayoutEmptyViewNoTextBinding layoutEmptyViewNoTextBinding, @NonNull RadioButton radioButton, @NonNull RatioFrameLayout ratioFrameLayout, @NonNull RadioButton radioButton2, @NonNull SwipeMenuRecyclerView swipeMenuRecyclerView, @NonNull RadioButton radioButton3, @NonNull RadioGroup radioGroup, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.adsLl = linearLayout2;
        this.adsRl = relativeLayout;
        this.adsTv = textView;
        this.emptyAdsLay = layoutEmptyViewNoTextBinding;
        this.freeDiamonds = radioButton;
        this.liveAdvert = ratioFrameLayout;
        this.myGift = radioButton2;
        this.myRecyclerView = swipeMenuRecyclerView;
        this.payTop = radioButton3;
        this.radioGroup = radioGroup;
        this.refreshLayout = swipeRefreshLayout;
        this.rlOwnerSelectGift = recyclerView;
    }

    @NonNull
    public static PopMygiftLayoutBinding bind(@NonNull View view) {
        int i9 = R.id.ads_ll;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ads_ll);
        if (linearLayout != null) {
            i9 = R.id.ads_rl;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.ads_rl);
            if (relativeLayout != null) {
                i9 = R.id.ads_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ads_tv);
                if (textView != null) {
                    i9 = R.id.empty_ads_lay;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty_ads_lay);
                    if (findChildViewById != null) {
                        LayoutEmptyViewNoTextBinding bind = LayoutEmptyViewNoTextBinding.bind(findChildViewById);
                        i9 = R.id.free_diamonds;
                        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.free_diamonds);
                        if (radioButton != null) {
                            i9 = R.id.live_advert;
                            RatioFrameLayout ratioFrameLayout = (RatioFrameLayout) ViewBindings.findChildViewById(view, R.id.live_advert);
                            if (ratioFrameLayout != null) {
                                i9 = R.id.my_gift;
                                RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.my_gift);
                                if (radioButton2 != null) {
                                    i9 = R.id.myRecyclerView;
                                    SwipeMenuRecyclerView swipeMenuRecyclerView = (SwipeMenuRecyclerView) ViewBindings.findChildViewById(view, R.id.myRecyclerView);
                                    if (swipeMenuRecyclerView != null) {
                                        i9 = R.id.pay_top;
                                        RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(view, R.id.pay_top);
                                        if (radioButton3 != null) {
                                            i9 = R.id.radio_group;
                                            RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, R.id.radio_group);
                                            if (radioGroup != null) {
                                                i9 = R.id.refreshLayout;
                                                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.refreshLayout);
                                                if (swipeRefreshLayout != null) {
                                                    i9 = R.id.rlOwnerSelectGift;
                                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rlOwnerSelectGift);
                                                    if (recyclerView != null) {
                                                        return new PopMygiftLayoutBinding((LinearLayout) view, linearLayout, relativeLayout, textView, bind, radioButton, ratioFrameLayout, radioButton2, swipeMenuRecyclerView, radioButton3, radioGroup, swipeRefreshLayout, recyclerView);
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
    public static PopMygiftLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopMygiftLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.pop_mygift_layout, viewGroup, false);
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
