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
public final class ActivityBaseTitleWithFragmentBinding implements ViewBinding {
    @NonNull
    public final ImageView backButton;
    @NonNull
    public final FrameLayout fragmentContainer;
    @NonNull
    public final ImageView moreButton;
    @NonNull
    private final View rootView;

    private ActivityBaseTitleWithFragmentBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView2) {
        this.rootView = view;
        this.backButton = imageView;
        this.fragmentContainer = frameLayout;
        this.moreButton = imageView2;
    }

    @NonNull
    public static ActivityBaseTitleWithFragmentBinding bind(@NonNull View view) {
        int i9 = R.id.back_button;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_button);
        if (imageView != null) {
            i9 = R.id.fragment_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_container);
            if (frameLayout != null) {
                i9 = R.id.more_button;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.more_button);
                if (imageView2 != null) {
                    return new ActivityBaseTitleWithFragmentBinding(view, imageView, frameLayout, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityBaseTitleWithFragmentBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.activity_base_title_with_fragment, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
