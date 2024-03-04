package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.SquareFrameLayout;
/* loaded from: classes2.dex */
public final class LayoutEmojiBinding implements ViewBinding {
    @NonNull
    public final ImageView icon;
    @NonNull
    private final SquareFrameLayout rootView;

    private LayoutEmojiBinding(@NonNull SquareFrameLayout squareFrameLayout, @NonNull ImageView imageView) {
        this.rootView = squareFrameLayout;
        this.icon = imageView;
    }

    @NonNull
    public static LayoutEmojiBinding bind(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
        if (imageView != null) {
            return new LayoutEmojiBinding((SquareFrameLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.icon)));
    }

    @NonNull
    public static LayoutEmojiBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutEmojiBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_emoji, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public SquareFrameLayout getRoot() {
        return this.rootView;
    }
}
