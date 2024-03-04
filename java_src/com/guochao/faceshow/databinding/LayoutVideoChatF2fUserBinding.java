package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutVideoChatF2fUserBinding implements ViewBinding {
    @NonNull
    public final AgeAndSexView ageSexView;
    @NonNull
    public final ImageView focus;
    @NonNull
    public final HeadPortraitView head;
    @NonNull
    public final LevelView levelView;
    @NonNull
    public final TextView nickName;
    @NonNull
    private final View rootView;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private LayoutVideoChatF2fUserBinding(@NonNull View view, @NonNull AgeAndSexView ageAndSexView, @NonNull ImageView imageView, @NonNull HeadPortraitView headPortraitView, @NonNull LevelView levelView, @NonNull TextView textView, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = view;
        this.ageSexView = ageAndSexView;
        this.focus = imageView;
        this.head = headPortraitView;
        this.levelView = levelView;
        this.nickName = textView;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static LayoutVideoChatF2fUserBinding bind(@NonNull View view) {
        int i9 = R.id.age_sex_view;
        AgeAndSexView ageAndSexView = (AgeAndSexView) ViewBindings.findChildViewById(view, R.id.age_sex_view);
        if (ageAndSexView != null) {
            i9 = R.id.focus;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.focus);
            if (imageView != null) {
                i9 = R.id.head;
                HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head);
                if (headPortraitView != null) {
                    i9 = R.id.level_view;
                    LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view);
                    if (levelView != null) {
                        i9 = R.id.nickName;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickName);
                        if (textView != null) {
                            i9 = R.id.vip_indicator;
                            VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                            if (vipIndicatorView != null) {
                                return new LayoutVideoChatF2fUserBinding(view, ageAndSexView, imageView, headPortraitView, levelView, textView, vipIndicatorView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutVideoChatF2fUserBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.layout_video_chat_f2f_user, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
