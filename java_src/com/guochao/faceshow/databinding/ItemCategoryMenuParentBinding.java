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
public final class ItemCategoryMenuParentBinding implements ViewBinding {
    @NonNull
    public final LinearLayout item;
    @NonNull
    public final CheckedTextView itemCategoryMenuTv;
    @NonNull
    private final LinearLayout rootView;

    private ItemCategoryMenuParentBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull CheckedTextView checkedTextView) {
        this.rootView = linearLayout;
        this.item = linearLayout2;
        this.itemCategoryMenuTv = checkedTextView;
    }

    @NonNull
    public static ItemCategoryMenuParentBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        CheckedTextView checkedTextView = (CheckedTextView) ViewBindings.findChildViewById(view, R.id.item_category_menu_tv);
        if (checkedTextView != null) {
            return new ItemCategoryMenuParentBinding(linearLayout, linearLayout, checkedTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.item_category_menu_tv)));
    }

    @NonNull
    public static ItemCategoryMenuParentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemCategoryMenuParentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_category_menu_parent, viewGroup, false);
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
