package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LanguageListItemBinding implements ViewBinding {
    @NonNull
    public final ImageView ivRight;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvLanguage;

    private LanguageListItemBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.ivRight = imageView;
        this.tvLanguage = textView;
    }

    @NonNull
    public static LanguageListItemBinding bind(@NonNull View view) {
        int i9 = R.id.ivRight;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivRight);
        if (imageView != null) {
            i9 = R.id.tvLanguage;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvLanguage);
            if (textView != null) {
                return new LanguageListItemBinding((FrameLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LanguageListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LanguageListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.language_list_item, viewGroup, false);
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
