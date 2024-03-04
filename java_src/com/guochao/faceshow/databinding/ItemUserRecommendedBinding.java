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
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class ItemUserRecommendedBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final LinearLayout llPeopleNearby;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvDistance;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final TextView tvSignature;
    @NonNull
    public final TextView tvTime;
    @NonNull
    public final TextView tvUserid;
    @NonNull
    public final View viewBg;
    @NonNull
    public final View viewLine;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private ItemUserRecommendedBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull View view, @NonNull View view2, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = linearLayout;
        this.avatarView = headPortraitView;
        this.llPeopleNearby = linearLayout2;
        this.tvDistance = textView;
        this.tvNickName = textView2;
        this.tvSignature = textView3;
        this.tvTime = textView4;
        this.tvUserid = textView5;
        this.viewBg = view;
        this.viewLine = view2;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static ItemUserRecommendedBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i9 = R.id.tv_distance;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_distance);
            if (textView != null) {
                i9 = R.id.tv_nick_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nick_name);
                if (textView2 != null) {
                    i9 = R.id.tv_signature;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_signature);
                    if (textView3 != null) {
                        i9 = R.id.tv_time;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                        if (textView4 != null) {
                            i9 = R.id.tv_userid;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_userid);
                            if (textView5 != null) {
                                i9 = R.id.view_bg;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_bg);
                                if (findChildViewById != null) {
                                    i9 = R.id.view_line;
                                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_line);
                                    if (findChildViewById2 != null) {
                                        i9 = R.id.vip_indicator;
                                        VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                                        if (vipIndicatorView != null) {
                                            return new ItemUserRecommendedBinding(linearLayout, headPortraitView, linearLayout, textView, textView2, textView3, textView4, textView5, findChildViewById, findChildViewById2, vipIndicatorView);
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
    public static ItemUserRecommendedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemUserRecommendedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_user_recommended, viewGroup, false);
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
