package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.chrisbanes.photoview.PhotoView;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityChatImagePreviewBinding implements ViewBinding {
    @NonNull
    public final ImageView error;
    @NonNull
    public final PhotoView img;
    @NonNull
    private final FrameLayout rootView;

    private ActivityChatImagePreviewBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull PhotoView photoView) {
        this.rootView = frameLayout;
        this.error = imageView;
        this.img = photoView;
    }

    @NonNull
    public static ActivityChatImagePreviewBinding bind(@NonNull View view) {
        int i9 = R.id.error;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.error);
        if (imageView != null) {
            i9 = R.id.img;
            PhotoView photoView = (PhotoView) ViewBindings.findChildViewById(view, R.id.img);
            if (photoView != null) {
                return new ActivityChatImagePreviewBinding((FrameLayout) view, imageView, photoView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityChatImagePreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityChatImagePreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_chat_image_preview, viewGroup, false);
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
