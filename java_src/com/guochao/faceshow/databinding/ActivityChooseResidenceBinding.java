package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityChooseResidenceBinding implements ViewBinding {
    @NonNull
    public final ImageView deleteEdit;
    @NonNull
    public final LayoutPeopleNearbyEmptyViewBinding emptyView;
    @NonNull
    public final RelativeLayout rlSearch;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final EditText searchContent;

    private ActivityChooseResidenceBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LayoutPeopleNearbyEmptyViewBinding layoutPeopleNearbyEmptyViewBinding, @NonNull RelativeLayout relativeLayout, @NonNull EditText editText) {
        this.rootView = linearLayout;
        this.deleteEdit = imageView;
        this.emptyView = layoutPeopleNearbyEmptyViewBinding;
        this.rlSearch = relativeLayout;
        this.searchContent = editText;
    }

    @NonNull
    public static ActivityChooseResidenceBinding bind(@NonNull View view) {
        int i9 = R.id.delete_edit;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.delete_edit);
        if (imageView != null) {
            i9 = R.id.empty_view;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty_view);
            if (findChildViewById != null) {
                LayoutPeopleNearbyEmptyViewBinding bind = LayoutPeopleNearbyEmptyViewBinding.bind(findChildViewById);
                i9 = R.id.rl_search;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_search);
                if (relativeLayout != null) {
                    i9 = R.id.search_content;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.search_content);
                    if (editText != null) {
                        return new ActivityChooseResidenceBinding((LinearLayout) view, imageView, bind, relativeLayout, editText);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityChooseResidenceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityChooseResidenceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_choose_residence, viewGroup, false);
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
