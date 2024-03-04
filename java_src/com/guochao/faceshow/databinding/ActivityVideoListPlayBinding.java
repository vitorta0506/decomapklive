package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityVideoListPlayBinding implements ViewBinding {
    @NonNull
    public final ImageView backButton;
    @NonNull
    public final FrameLayout mainLayout;
    @NonNull
    private final View rootView;

    private ActivityVideoListPlayBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout) {
        this.rootView = view;
        this.backButton = imageView;
        this.mainLayout = frameLayout;
    }

    @NonNull
    public static ActivityVideoListPlayBinding bind(@NonNull View view) {
        int i9 = R.id.back_button;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_button);
        if (imageView != null) {
            i9 = R.id.main_layout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.main_layout);
            if (frameLayout != null) {
                return new ActivityVideoListPlayBinding(view, imageView, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityVideoListPlayBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.activity_video_list_play, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
