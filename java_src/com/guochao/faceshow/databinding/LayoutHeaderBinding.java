package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutHeaderBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView search;
    @NonNull
    public final EditText searchEt;

    private LayoutHeaderBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull EditText editText) {
        this.rootView = linearLayout;
        this.search = imageView;
        this.searchEt = editText;
    }

    @NonNull
    public static LayoutHeaderBinding bind(@NonNull View view) {
        int i9 = R.id.search;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.search);
        if (imageView != null) {
            i9 = R.id.search_et;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.search_et);
            if (editText != null) {
                return new LayoutHeaderBinding((LinearLayout) view, imageView, editText);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_header, viewGroup, false);
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
