package com.guochao.faceshow.databinding;

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
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityWelcomeBinding implements ViewBinding {
    @NonNull
    public final ImageView appPromotionImg;
    @NonNull
    public final RelativeLayout countDownJumpLy;
    @NonNull
    public final TextView countDownJumpShowText;
    @NonNull
    private final RelativeLayout rootView;

    private ActivityWelcomeBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.appPromotionImg = imageView;
        this.countDownJumpLy = relativeLayout2;
        this.countDownJumpShowText = textView;
    }

    @NonNull
    public static ActivityWelcomeBinding bind(@NonNull View view) {
        int i9 = R.id.app_promotion_img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.app_promotion_img);
        if (imageView != null) {
            i9 = R.id.count_down_jump_ly;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.count_down_jump_ly);
            if (relativeLayout != null) {
                i9 = R.id.count_down_jump_show_text;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_down_jump_show_text);
                if (textView != null) {
                    return new ActivityWelcomeBinding((RelativeLayout) view, imageView, relativeLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityWelcomeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityWelcomeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_welcome, viewGroup, false);
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
