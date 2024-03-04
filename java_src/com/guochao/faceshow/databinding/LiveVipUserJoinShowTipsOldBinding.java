package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class LiveVipUserJoinShowTipsOldBinding implements ViewBinding {
    @NonNull
    public final SVGAImageView entranceCar;
    @NonNull
    public final LinearLayout llJoinUser;
    @NonNull
    public final RecyclerView rcvJoinName;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvJoin;
    @NonNull
    public final VipIndicatorView vipIndicatorView;

    private LiveVipUserJoinShowTipsOldBinding(@NonNull FrameLayout frameLayout, @NonNull SVGAImageView sVGAImageView, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = frameLayout;
        this.entranceCar = sVGAImageView;
        this.llJoinUser = linearLayout;
        this.rcvJoinName = recyclerView;
        this.tvJoin = textView;
        this.vipIndicatorView = vipIndicatorView;
    }

    @NonNull
    public static LiveVipUserJoinShowTipsOldBinding bind(@NonNull View view) {
        int i9 = R.id.entrance_car;
        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.entrance_car);
        if (sVGAImageView != null) {
            i9 = R.id.ll_join_user;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_join_user);
            if (linearLayout != null) {
                i9 = R.id.rcv_join_name;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcv_join_name);
                if (recyclerView != null) {
                    i9 = R.id.tv_join;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_join);
                    if (textView != null) {
                        i9 = R.id.vip_indicator_view;
                        VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator_view);
                        if (vipIndicatorView != null) {
                            return new LiveVipUserJoinShowTipsOldBinding((FrameLayout) view, sVGAImageView, linearLayout, recyclerView, textView, vipIndicatorView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveVipUserJoinShowTipsOldBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveVipUserJoinShowTipsOldBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_vip_user_join_show_tips_old, viewGroup, false);
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
