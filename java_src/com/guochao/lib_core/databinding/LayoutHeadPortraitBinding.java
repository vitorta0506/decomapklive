package com.guochao.lib_core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
import com.guochao.lib_core.R$id;
import com.guochao.lib_core.R$layout;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class LayoutHeadPortraitBinding implements ViewBinding {
    @NonNull
    public final NewCircleImageView avatar;
    @NonNull
    public final ImageView avatarBg;
    @NonNull
    public final ImageView avatarPedant;
    @NonNull
    public final ImageView avatarVipPedant;
    @NonNull
    public final FrameLayout flAnim;
    @NonNull
    public final NewCircleImageView flag;
    @NonNull
    public final ImageView ivAnim;
    @NonNull
    public final ImageView onlineState;
    @NonNull
    private final View rootView;

    private LayoutHeadPortraitBinding(@NonNull View view, @NonNull NewCircleImageView newCircleImageView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout, @NonNull NewCircleImageView newCircleImageView2, @NonNull ImageView imageView4, @NonNull ImageView imageView5) {
        this.rootView = view;
        this.avatar = newCircleImageView;
        this.avatarBg = imageView;
        this.avatarPedant = imageView2;
        this.avatarVipPedant = imageView3;
        this.flAnim = frameLayout;
        this.flag = newCircleImageView2;
        this.ivAnim = imageView4;
        this.onlineState = imageView5;
    }

    @NonNull
    public static LayoutHeadPortraitBinding bind(@NonNull View view) {
        int i9 = R$id.avatar;
        NewCircleImageView newCircleImageView = (NewCircleImageView) ViewBindings.findChildViewById(view, i9);
        if (newCircleImageView != null) {
            i9 = R$id.avatar_bg;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.avatar_pedant;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView2 != null) {
                    i9 = R$id.avatar_vip_pedant;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                    if (imageView3 != null) {
                        i9 = R$id.fl_anim;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                        if (frameLayout != null) {
                            i9 = R$id.flag;
                            NewCircleImageView newCircleImageView2 = (NewCircleImageView) ViewBindings.findChildViewById(view, i9);
                            if (newCircleImageView2 != null) {
                                i9 = R$id.iv_anim;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                if (imageView4 != null) {
                                    i9 = R$id.online_state;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                    if (imageView5 != null) {
                                        return new LayoutHeadPortraitBinding(view, newCircleImageView, imageView, imageView2, imageView3, frameLayout, newCircleImageView2, imageView4, imageView5);
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
    public static LayoutHeadPortraitBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R$layout.layout_head_portrait, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
