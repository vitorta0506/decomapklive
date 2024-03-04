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
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutBroadcasterInfoBinding implements ViewBinding {
    @NonNull
    public final AvatarGroupView avatarGroupView;
    @NonNull
    public final NormalCircleImageView countryFlag;
    @NonNull
    public final ImageView iconBroadcaster;
    @NonNull
    public final TextView index;
    @NonNull
    public final FrameLayout infoMask;
    @NonNull
    public final ImageView ivNothing;
    @NonNull
    public final TextView liveFbCount;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView userName;

    private LayoutBroadcasterInfoBinding(@NonNull FrameLayout frameLayout, @NonNull AvatarGroupView avatarGroupView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.avatarGroupView = avatarGroupView;
        this.countryFlag = normalCircleImageView;
        this.iconBroadcaster = imageView;
        this.index = textView;
        this.infoMask = frameLayout2;
        this.ivNothing = imageView2;
        this.liveFbCount = textView2;
        this.userName = textView3;
    }

    @NonNull
    public static LayoutBroadcasterInfoBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_group_view;
        AvatarGroupView avatarGroupView = (AvatarGroupView) ViewBindings.findChildViewById(view, R.id.avatar_group_view);
        if (avatarGroupView != null) {
            i9 = R.id.country_flag;
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.country_flag);
            if (normalCircleImageView != null) {
                i9 = R.id.icon_broadcaster;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_broadcaster);
                if (imageView != null) {
                    i9 = R.id.index;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.index);
                    if (textView != null) {
                        FrameLayout frameLayout = (FrameLayout) view;
                        i9 = R.id.iv_nothing;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_nothing);
                        if (imageView2 != null) {
                            i9 = R.id.live_fb_count;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.live_fb_count);
                            if (textView2 != null) {
                                i9 = R.id.user_name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                if (textView3 != null) {
                                    return new LayoutBroadcasterInfoBinding(frameLayout, avatarGroupView, normalCircleImageView, imageView, textView, frameLayout, imageView2, textView2, textView3);
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
    public static LayoutBroadcasterInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBroadcasterInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_broadcaster_info, viewGroup, false);
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
