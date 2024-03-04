package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutSearchItemBinding implements ViewBinding {
    @NonNull
    public final ImageView deleteEdit;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final EditText searchText;

    private LayoutSearchItemBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull EditText editText) {
        this.rootView = frameLayout;
        this.deleteEdit = imageView;
        this.searchText = editText;
    }

    @NonNull
    public static LayoutSearchItemBinding bind(@NonNull View view) {
        int i9 = R.id.delete_edit;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.delete_edit);
        if (imageView != null) {
            i9 = R.id.search_text;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.search_text);
            if (editText != null) {
                return new LayoutSearchItemBinding((FrameLayout) view, imageView, editText);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutSearchItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutSearchItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_search_item, viewGroup, false);
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
