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
/* loaded from: classes2.dex */
public final class ListItemLiveGiftUserInfoBinding implements ViewBinding {
    @NonNull
    public final ImageView ivBg;
    @NonNull
    public final ImageView ivHollowCircle;
    @NonNull
    public final ImageView ivNumber;
    @NonNull
    public final ImageView ivNumberBg;
    @NonNull
    public final FrameLayout ivNumberLayout;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvNumber;
    @NonNull
    public final ImageView userHead;

    private ListItemLiveGiftUserInfoBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull ImageView imageView5) {
        this.rootView = frameLayout;
        this.ivBg = imageView;
        this.ivHollowCircle = imageView2;
        this.ivNumber = imageView3;
        this.ivNumberBg = imageView4;
        this.ivNumberLayout = frameLayout2;
        this.tvNumber = textView;
        this.userHead = imageView5;
    }

    @NonNull
    public static ListItemLiveGiftUserInfoBinding bind(@NonNull View view) {
        int i9 = R.id.iv_bg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bg);
        if (imageView != null) {
            i9 = R.id.iv_hollow_circle;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_hollow_circle);
            if (imageView2 != null) {
                i9 = R.id.iv_number;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_number);
                if (imageView3 != null) {
                    i9 = R.id.iv_number_bg;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_number_bg);
                    if (imageView4 != null) {
                        i9 = R.id.iv_number_layout;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.iv_number_layout);
                        if (frameLayout != null) {
                            i9 = R.id.tv_number;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_number);
                            if (textView != null) {
                                i9 = R.id.user_head;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.user_head);
                                if (imageView5 != null) {
                                    return new ListItemLiveGiftUserInfoBinding((FrameLayout) view, imageView, imageView2, imageView3, imageView4, frameLayout, textView, imageView5);
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
    public static ListItemLiveGiftUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemLiveGiftUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_live_gift_user_info, viewGroup, false);
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
