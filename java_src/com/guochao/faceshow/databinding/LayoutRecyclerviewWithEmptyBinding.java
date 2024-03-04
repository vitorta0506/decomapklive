package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutRecyclerviewWithEmptyBinding implements ViewBinding {
    @NonNull
    public final ImageView deleteEdit;
    @NonNull
    public final TextView emptyText;
    @NonNull
    public final LinearLayout emptyView;
    @NonNull
    public final EditText etSearch;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LinearLayout searchViewId;

    private LayoutRecyclerviewWithEmptyBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull LinearLayout linearLayout2) {
        this.rootView = frameLayout;
        this.deleteEdit = imageView;
        this.emptyText = textView;
        this.emptyView = linearLayout;
        this.etSearch = editText;
        this.searchViewId = linearLayout2;
    }

    @NonNull
    public static LayoutRecyclerviewWithEmptyBinding bind(@NonNull View view) {
        int i9 = R.id.delete_edit;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.delete_edit);
        if (imageView != null) {
            i9 = R.id.empty_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.empty_text);
            if (textView != null) {
                i9 = R.id.empty_view;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.empty_view);
                if (linearLayout != null) {
                    i9 = R.id.et_search;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_search);
                    if (editText != null) {
                        i9 = R.id.search_view_id;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.search_view_id);
                        if (linearLayout2 != null) {
                            return new LayoutRecyclerviewWithEmptyBinding((FrameLayout) view, imageView, textView, linearLayout, editText, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutRecyclerviewWithEmptyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRecyclerviewWithEmptyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_recyclerview_with_empty, viewGroup, false);
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
