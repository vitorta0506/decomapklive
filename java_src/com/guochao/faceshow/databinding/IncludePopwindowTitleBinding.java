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
public final class IncludePopwindowTitleBinding implements ViewBinding {
    @NonNull
    public final ImageView close;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tvTitle;

    private IncludePopwindowTitleBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.close = imageView;
        this.tvTitle = textView;
    }

    @NonNull
    public static IncludePopwindowTitleBinding bind(@NonNull View view) {
        int i9 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i9 = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                return new IncludePopwindowTitleBinding((RelativeLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static IncludePopwindowTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static IncludePopwindowTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.include_popwindow_title, viewGroup, false);
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
