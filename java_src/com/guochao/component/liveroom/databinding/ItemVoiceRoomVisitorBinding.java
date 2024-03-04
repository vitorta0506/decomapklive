package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes3.dex */
public final class ItemVoiceRoomVisitorBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final LevelView levelView;
    @NonNull
    public final TextView nickName;
    @NonNull
    public final ImageView onlineIV;
    @NonNull
    public final ImageView roleIV;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final AgeAndSexView userGenderAge;
    @NonNull
    public final VipIndicatorView vipView;

    private ItemVoiceRoomVisitorBinding(@NonNull RelativeLayout relativeLayout, @NonNull HeadPortraitView headPortraitView, @NonNull LevelView levelView, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull AgeAndSexView ageAndSexView, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = relativeLayout;
        this.avatarView = headPortraitView;
        this.levelView = levelView;
        this.nickName = textView;
        this.onlineIV = imageView;
        this.roleIV = imageView2;
        this.userGenderAge = ageAndSexView;
        this.vipView = vipIndicatorView;
    }

    @NonNull
    public static ItemVoiceRoomVisitorBinding bind(@NonNull View view) {
        int i9 = R$id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, i9);
        if (headPortraitView != null) {
            i9 = R$id.level_view;
            LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, i9);
            if (levelView != null) {
                i9 = R$id.nick_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView != null) {
                    i9 = R$id.onlineIV;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
                    if (imageView != null) {
                        i9 = R$id.roleIV;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                        if (imageView2 != null) {
                            i9 = R$id.user_gender_age;
                            AgeAndSexView ageAndSexView = (AgeAndSexView) ViewBindings.findChildViewById(view, i9);
                            if (ageAndSexView != null) {
                                i9 = R$id.vip_view;
                                VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, i9);
                                if (vipIndicatorView != null) {
                                    return new ItemVoiceRoomVisitorBinding((RelativeLayout) view, headPortraitView, levelView, textView, imageView, imageView2, ageAndSexView, vipIndicatorView);
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
    public static ItemVoiceRoomVisitorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemVoiceRoomVisitorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.item_voice_room_visitor, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
