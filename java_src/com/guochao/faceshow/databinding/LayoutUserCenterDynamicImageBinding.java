package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RoundImageView;
/* loaded from: classes2.dex */
public final class LayoutUserCenterDynamicImageBinding implements ViewBinding {
    @NonNull
    public final RoundImageView firstImage;
    @NonNull
    public final ImageView firstImageBg;
    @NonNull
    public final FrameLayout firstLay;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final RoundImageView secondImage;
    @NonNull
    public final ImageView secondImageBg;
    @NonNull
    public final FrameLayout secondLay;
    @NonNull
    public final RoundImageView thirdImage;
    @NonNull
    public final ImageView thirdImageBg;
    @NonNull
    public final FrameLayout thirdLay;
    @NonNull
    public final LinearLayout userDynamicImageLay;

    private LayoutUserCenterDynamicImageBinding(@NonNull LinearLayout linearLayout, @NonNull RoundImageView roundImageView, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull RoundImageView roundImageView2, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout2, @NonNull RoundImageView roundImageView3, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout3, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.firstImage = roundImageView;
        this.firstImageBg = imageView;
        this.firstLay = frameLayout;
        this.secondImage = roundImageView2;
        this.secondImageBg = imageView2;
        this.secondLay = frameLayout2;
        this.thirdImage = roundImageView3;
        this.thirdImageBg = imageView3;
        this.thirdLay = frameLayout3;
        this.userDynamicImageLay = linearLayout2;
    }

    @NonNull
    public static LayoutUserCenterDynamicImageBinding bind(@NonNull View view) {
        int i9 = R.id.first_image;
        RoundImageView roundImageView = (RoundImageView) ViewBindings.findChildViewById(view, R.id.first_image);
        if (roundImageView != null) {
            i9 = R.id.first_image_bg;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.first_image_bg);
            if (imageView != null) {
                i9 = R.id.first_lay;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.first_lay);
                if (frameLayout != null) {
                    i9 = R.id.second_image;
                    RoundImageView roundImageView2 = (RoundImageView) ViewBindings.findChildViewById(view, R.id.second_image);
                    if (roundImageView2 != null) {
                        i9 = R.id.second_image_bg;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.second_image_bg);
                        if (imageView2 != null) {
                            i9 = R.id.second_lay;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.second_lay);
                            if (frameLayout2 != null) {
                                i9 = R.id.third_image;
                                RoundImageView roundImageView3 = (RoundImageView) ViewBindings.findChildViewById(view, R.id.third_image);
                                if (roundImageView3 != null) {
                                    i9 = R.id.third_image_bg;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.third_image_bg);
                                    if (imageView3 != null) {
                                        i9 = R.id.third_lay;
                                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.third_lay);
                                        if (frameLayout3 != null) {
                                            LinearLayout linearLayout = (LinearLayout) view;
                                            return new LayoutUserCenterDynamicImageBinding(linearLayout, roundImageView, imageView, frameLayout, roundImageView2, imageView2, frameLayout2, roundImageView3, imageView3, frameLayout3, linearLayout);
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
    public static LayoutUserCenterDynamicImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutUserCenterDynamicImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_user_center_dynamic_image, viewGroup, false);
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
