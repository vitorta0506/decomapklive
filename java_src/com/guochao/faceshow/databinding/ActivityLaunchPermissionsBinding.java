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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityLaunchPermissionsBinding implements ViewBinding {
    @NonNull
    public final FrameLayout flAnyone;
    @NonNull
    public final FrameLayout flClose;
    @NonNull
    public final FrameLayout flFans;
    @NonNull
    public final FrameLayout flFriends;
    @NonNull
    public final ImageView ivAnyone;
    @NonNull
    public final ImageView ivClose;
    @NonNull
    public final ImageView ivFans;
    @NonNull
    public final ImageView ivFriends;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvAnyone;
    @NonNull
    public final TextView tvClose;
    @NonNull
    public final TextView tvFans;
    @NonNull
    public final TextView tvFriends;

    private ActivityLaunchPermissionsBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.flAnyone = frameLayout;
        this.flClose = frameLayout2;
        this.flFans = frameLayout3;
        this.flFriends = frameLayout4;
        this.ivAnyone = imageView;
        this.ivClose = imageView2;
        this.ivFans = imageView3;
        this.ivFriends = imageView4;
        this.tvAnyone = textView;
        this.tvClose = textView2;
        this.tvFans = textView3;
        this.tvFriends = textView4;
    }

    @NonNull
    public static ActivityLaunchPermissionsBinding bind(@NonNull View view) {
        int i9 = R.id.fl_anyone;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_anyone);
        if (frameLayout != null) {
            i9 = R.id.fl_close;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_close);
            if (frameLayout2 != null) {
                i9 = R.id.fl_fans;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_fans);
                if (frameLayout3 != null) {
                    i9 = R.id.fl_friends;
                    FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_friends);
                    if (frameLayout4 != null) {
                        i9 = R.id.iv_anyone;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_anyone);
                        if (imageView != null) {
                            i9 = R.id.iv_close;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                            if (imageView2 != null) {
                                i9 = R.id.iv_fans;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_fans);
                                if (imageView3 != null) {
                                    i9 = R.id.iv_friends;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_friends);
                                    if (imageView4 != null) {
                                        i9 = R.id.tv_anyone;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_anyone);
                                        if (textView != null) {
                                            i9 = R.id.tv_close;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_close);
                                            if (textView2 != null) {
                                                i9 = R.id.tv_fans;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fans);
                                                if (textView3 != null) {
                                                    i9 = R.id.tv_friends;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_friends);
                                                    if (textView4 != null) {
                                                        return new ActivityLaunchPermissionsBinding((LinearLayout) view, frameLayout, frameLayout2, frameLayout3, frameLayout4, imageView, imageView2, imageView3, imageView4, textView, textView2, textView3, textView4);
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
    public static ActivityLaunchPermissionsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityLaunchPermissionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_launch_permissions, viewGroup, false);
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
