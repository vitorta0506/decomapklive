package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes4.dex */
public final class ItemSigninCenterHeaderBinding implements ViewBinding {
    @NonNull
    public final ImageView ivGiftIcon;
    @NonNull
    public final SvgaImageViewV2 ivGiftIconSvga;
    @NonNull
    private final FrameLayout rootView;

    private ItemSigninCenterHeaderBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull SvgaImageViewV2 svgaImageViewV2) {
        this.rootView = frameLayout;
        this.ivGiftIcon = imageView;
        this.ivGiftIconSvga = svgaImageViewV2;
    }

    @NonNull
    public static ItemSigninCenterHeaderBinding bind(@NonNull View view) {
        int i9 = R$id.iv_gift_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.iv_gift_icon_svga;
            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, i9);
            if (svgaImageViewV2 != null) {
                return new ItemSigninCenterHeaderBinding((FrameLayout) view, imageView, svgaImageViewV2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemSigninCenterHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSigninCenterHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.item_signin_center_header, viewGroup, false);
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
