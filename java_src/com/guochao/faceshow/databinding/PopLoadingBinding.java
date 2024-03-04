package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class PopLoadingBinding implements ViewBinding {
    @NonNull
    public final ImageView coverImg;
    @NonNull
    public final TextView loadingProess;
    @NonNull
    private final LinearLayout rootView;

    private PopLoadingBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.coverImg = imageView;
        this.loadingProess = textView;
    }

    @NonNull
    public static PopLoadingBinding bind(@NonNull View view) {
        int i9 = R.id.cover_img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cover_img);
        if (imageView != null) {
            i9 = R.id.loading_proess;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.loading_proess);
            if (textView != null) {
                return new PopLoadingBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.pop_loading, viewGroup, false);
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
