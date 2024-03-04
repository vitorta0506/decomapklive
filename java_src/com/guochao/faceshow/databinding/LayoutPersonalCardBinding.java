package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutPersonalCardBinding implements ViewBinding {
    @NonNull
    public final NewCircleImageView avatar;
    @NonNull
    public final RatioHeightImageView bigAvatar;
    @NonNull
    public final CardView content;
    @NonNull
    public final TextView fansValue;
    @NonNull
    public final ImageView mvpIV;
    @NonNull
    public final TextView name;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView signature;
    @NonNull
    public final Space space;
    @NonNull
    public final NormalCircleImageView userInfoAddress;
    @NonNull
    public final LevelView userLevel;
    @NonNull
    public final LevelView userLevel1;
    @NonNull
    public final VipIndicatorView vipIndicatorView;

    private LayoutPersonalCardBinding(@NonNull LinearLayout linearLayout, @NonNull NewCircleImageView newCircleImageView, @NonNull RatioHeightImageView ratioHeightImageView, @NonNull CardView cardView, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull Space space, @NonNull NormalCircleImageView normalCircleImageView, @NonNull LevelView levelView, @NonNull LevelView levelView2, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = linearLayout;
        this.avatar = newCircleImageView;
        this.bigAvatar = ratioHeightImageView;
        this.content = cardView;
        this.fansValue = textView;
        this.mvpIV = imageView;
        this.name = textView2;
        this.signature = textView3;
        this.space = space;
        this.userInfoAddress = normalCircleImageView;
        this.userLevel = levelView;
        this.userLevel1 = levelView2;
        this.vipIndicatorView = vipIndicatorView;
    }

    @NonNull
    public static LayoutPersonalCardBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NewCircleImageView newCircleImageView = (NewCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (newCircleImageView != null) {
            i9 = R.id.big_avatar;
            RatioHeightImageView ratioHeightImageView = (RatioHeightImageView) ViewBindings.findChildViewById(view, R.id.big_avatar);
            if (ratioHeightImageView != null) {
                i9 = R.id.content;
                CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.content);
                if (cardView != null) {
                    i9 = R.id.fans_value;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.fans_value);
                    if (textView != null) {
                        i9 = R.id.mvpIV;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.mvpIV);
                        if (imageView != null) {
                            i9 = R.id.name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                            if (textView2 != null) {
                                i9 = R.id.signature;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.signature);
                                if (textView3 != null) {
                                    i9 = R.id.space;
                                    Space space = (Space) ViewBindings.findChildViewById(view, R.id.space);
                                    if (space != null) {
                                        i9 = R.id.user_info_address;
                                        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.user_info_address);
                                        if (normalCircleImageView != null) {
                                            i9 = R.id.user_level;
                                            LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.user_level);
                                            if (levelView != null) {
                                                i9 = R.id.user_level1;
                                                LevelView levelView2 = (LevelView) ViewBindings.findChildViewById(view, R.id.user_level1);
                                                if (levelView2 != null) {
                                                    i9 = R.id.vip_indicator_view;
                                                    VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator_view);
                                                    if (vipIndicatorView != null) {
                                                        return new LayoutPersonalCardBinding((LinearLayout) view, newCircleImageView, ratioHeightImageView, cardView, textView, imageView, textView2, textView3, space, normalCircleImageView, levelView, levelView2, vipIndicatorView);
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
    public static LayoutPersonalCardBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPersonalCardBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_personal_card, viewGroup, false);
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
