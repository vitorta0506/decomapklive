package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes3.dex */
public final class ListItemVoiceMembersBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final LevelView levelView;
    @NonNull
    public final CardView myCard;
    @NonNull
    public final TextView nickName;
    @NonNull
    public final TextView region;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView selected;
    @NonNull
    public final AgeAndSexView userGenderAge;
    @NonNull
    public final VipIndicatorView vipView;

    private ListItemVoiceMembersBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull LevelView levelView, @NonNull CardView cardView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull AgeAndSexView ageAndSexView, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.levelView = levelView;
        this.myCard = cardView;
        this.nickName = textView;
        this.region = textView2;
        this.selected = imageView;
        this.userGenderAge = ageAndSexView;
        this.vipView = vipIndicatorView;
    }

    @NonNull
    public static ListItemVoiceMembersBinding bind(@NonNull View view) {
        int i9 = R$id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, i9);
        if (headPortraitView != null) {
            i9 = R$id.level_view;
            LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, i9);
            if (levelView != null) {
                i9 = R$id.my_card;
                CardView cardView = (CardView) ViewBindings.findChildViewById(view, i9);
                if (cardView != null) {
                    i9 = R$id.nick_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView != null) {
                        i9 = R$id.region;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView2 != null) {
                            i9 = R$id.selected;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
                            if (imageView != null) {
                                i9 = R$id.user_gender_age;
                                AgeAndSexView ageAndSexView = (AgeAndSexView) ViewBindings.findChildViewById(view, i9);
                                if (ageAndSexView != null) {
                                    i9 = R$id.vip_view;
                                    VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, i9);
                                    if (vipIndicatorView != null) {
                                        return new ListItemVoiceMembersBinding((FrameLayout) view, headPortraitView, levelView, cardView, textView, textView2, imageView, ageAndSexView, vipIndicatorView);
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
    public static ListItemVoiceMembersBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemVoiceMembersBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.list_item_voice_members, viewGroup, false);
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
