package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutSimpleImageBinding implements ViewBinding {
    @NonNull
    private final ImageView rootView;

    private LayoutSimpleImageBinding(@NonNull ImageView imageView) {
        this.rootView = imageView;
    }

    @NonNull
    public static LayoutSimpleImageBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new LayoutSimpleImageBinding((ImageView) view);
    }

    @NonNull
    public static LayoutSimpleImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutSimpleImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_simple_image, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ImageView getRoot() {
        return this.rootView;
    }
}
