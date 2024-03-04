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
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class LiveMicListItemBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView btnAgree;
    @NonNull
    public final ImageView btnRefused;
    @NonNull
    public final TextView nickname;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final VipIndicatorView vipIndicatorView;

    private LiveMicListItemBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.btnAgree = imageView;
        this.btnRefused = imageView2;
        this.nickname = textView;
        this.vipIndicatorView = vipIndicatorView;
    }

    @NonNull
    public static LiveMicListItemBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.btnAgree;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btnAgree);
            if (imageView != null) {
                i9 = R.id.btnRefused;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btnRefused);
                if (imageView2 != null) {
                    i9 = R.id.nickname;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
                    if (textView != null) {
                        i9 = R.id.vip_indicator_view;
                        VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator_view);
                        if (vipIndicatorView != null) {
                            return new LiveMicListItemBinding((FrameLayout) view, headPortraitView, imageView, imageView2, textView, vipIndicatorView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveMicListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveMicListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_mic_list_item, viewGroup, false);
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
