package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityImagePreviewBinding implements ViewBinding {
    @NonNull
    public final LinearLayout buttonPanel;
    @NonNull
    public final ImageView image;
    @NonNull
    public final CheckBox isOri;
    @NonNull
    private final RelativeLayout rootView;

    private ActivityImagePreviewBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull CheckBox checkBox) {
        this.rootView = relativeLayout;
        this.buttonPanel = linearLayout;
        this.image = imageView;
        this.isOri = checkBox;
    }

    @NonNull
    public static ActivityImagePreviewBinding bind(@NonNull View view) {
        int i9 = R.id.buttonPanel;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.buttonPanel);
        if (linearLayout != null) {
            i9 = R.id.image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
            if (imageView != null) {
                i9 = R.id.isOri;
                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.isOri);
                if (checkBox != null) {
                    return new ActivityImagePreviewBinding((RelativeLayout) view, linearLayout, imageView, checkBox);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityImagePreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityImagePreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_image_preview, viewGroup, false);
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
