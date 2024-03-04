package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class ItemLiveOpenPushSettingBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView headView;
    @NonNull
    public final ImageView ivSwitch;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvUserName;

    private ItemLiveOpenPushSettingBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.headView = headPortraitView;
        this.ivSwitch = imageView;
        this.tvUserName = textView;
    }

    @NonNull
    public static ItemLiveOpenPushSettingBinding bind(@NonNull View view) {
        int i9 = R.id.head_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head_view);
        if (headPortraitView != null) {
            i9 = R.id.iv_switch;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_switch);
            if (imageView != null) {
                i9 = R.id.tv_user_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_name);
                if (textView != null) {
                    return new ItemLiveOpenPushSettingBinding((FrameLayout) view, headPortraitView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemLiveOpenPushSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemLiveOpenPushSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_live_open_push_setting, viewGroup, false);
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
