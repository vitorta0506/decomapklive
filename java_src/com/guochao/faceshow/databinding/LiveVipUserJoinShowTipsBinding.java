package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class LiveVipUserJoinShowTipsBinding implements ViewBinding {
    @NonNull
    public final SVGAImageView entranceCar;
    @NonNull
    public final HeadPortraitView head;
    @NonNull
    public final LinearLayout llJoinUser;
    @NonNull
    public final LinearLayout llUser;
    @NonNull
    public final ImageView mvpIV;
    @NonNull
    public final RecyclerView rcvJoinName;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvJoin;
    @NonNull
    public final VipIndicatorView vipIndicatorView;

    private LiveVipUserJoinShowTipsBinding(@NonNull FrameLayout frameLayout, @NonNull SVGAImageView sVGAImageView, @NonNull HeadPortraitView headPortraitView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = frameLayout;
        this.entranceCar = sVGAImageView;
        this.head = headPortraitView;
        this.llJoinUser = linearLayout;
        this.llUser = linearLayout2;
        this.mvpIV = imageView;
        this.rcvJoinName = recyclerView;
        this.tvJoin = textView;
        this.vipIndicatorView = vipIndicatorView;
    }

    @NonNull
    public static LiveVipUserJoinShowTipsBinding bind(@NonNull View view) {
        int i9 = R.id.entrance_car;
        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.entrance_car);
        if (sVGAImageView != null) {
            i9 = R.id.head;
            HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head);
            if (headPortraitView != null) {
                i9 = R.id.ll_join_user;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_join_user);
                if (linearLayout != null) {
                    i9 = R.id.ll_user;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_user);
                    if (linearLayout2 != null) {
                        i9 = R.id.mvpIV;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.mvpIV);
                        if (imageView != null) {
                            i9 = R.id.rcv_join_name;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcv_join_name);
                            if (recyclerView != null) {
                                i9 = R.id.tv_join;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_join);
                                if (textView != null) {
                                    i9 = R.id.vip_indicator_view;
                                    VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator_view);
                                    if (vipIndicatorView != null) {
                                        return new LiveVipUserJoinShowTipsBinding((FrameLayout) view, sVGAImageView, headPortraitView, linearLayout, linearLayout2, imageView, recyclerView, textView, vipIndicatorView);
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
    public static LiveVipUserJoinShowTipsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveVipUserJoinShowTipsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_vip_user_join_show_tips, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
