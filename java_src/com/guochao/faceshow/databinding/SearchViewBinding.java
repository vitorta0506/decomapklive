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
public final class SearchViewBinding implements ViewBinding {
    @NonNull
    public final ImageView deleteEdit;
    @NonNull
    public final EditText etSearch;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout searchViewId;

    private SearchViewBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.deleteEdit = imageView;
        this.etSearch = editText;
        this.searchViewId = linearLayout2;
    }

    @NonNull
    public static SearchViewBinding bind(@NonNull View view) {
        int i9 = R.id.delete_edit;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.delete_edit);
        if (imageView != null) {
            i9 = R.id.et_search;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_search);
            if (editText != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new SearchViewBinding(linearLayout, imageView, editText, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static SearchViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static SearchViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.search_view, viewGroup, false);
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
