package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemCategoryMenuBinding implements ViewBinding {
    @NonNull
    public final CheckedTextView itemCategoryMenuTv;
    @NonNull
    private final LinearLayout rootView;

    private ItemCategoryMenuBinding(@NonNull LinearLayout linearLayout, @NonNull CheckedTextView checkedTextView) {
        this.rootView = linearLayout;
        this.itemCategoryMenuTv = checkedTextView;
    }

    @NonNull
    public static ItemCategoryMenuBinding bind(@NonNull View view) {
        CheckedTextView checkedTextView = (CheckedTextView) ViewBindings.findChildViewById(view, R.id.item_category_menu_tv);
        if (checkedTextView != null) {
            return new ItemCategoryMenuBinding((LinearLayout) view, checkedTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.item_category_menu_tv)));
    }

    @NonNull
    public static ItemCategoryMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemCategoryMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_category_menu, viewGroup, false);
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
