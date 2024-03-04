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
import com.guochao.faceshow.aaspring.views.FlowLayout.NestedRecyclerView;
/* loaded from: classes2.dex */
public final class ListItemInterestsHobbiesBinding implements ViewBinding {
    @NonNull
    public final NestedRecyclerView des;
    @NonNull
    public final ImageView ivAddTag;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvTitleName;
    @NonNull
    public final View viewLine;

    private ListItemInterestsHobbiesBinding(@NonNull LinearLayout linearLayout, @NonNull NestedRecyclerView nestedRecyclerView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull View view) {
        this.rootView = linearLayout;
        this.des = nestedRecyclerView;
        this.ivAddTag = imageView;
        this.tvTitleName = textView;
        this.viewLine = view;
    }

    @NonNull
    public static ListItemInterestsHobbiesBinding bind(@NonNull View view) {
        int i9 = R.id.des;
        NestedRecyclerView nestedRecyclerView = (NestedRecyclerView) ViewBindings.findChildViewById(view, R.id.des);
        if (nestedRecyclerView != null) {
            i9 = R.id.ivAddTag;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivAddTag);
            if (imageView != null) {
                i9 = R.id.tv_title_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_name);
                if (textView != null) {
                    i9 = R.id.view_line;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_line);
                    if (findChildViewById != null) {
                        return new ListItemInterestsHobbiesBinding((LinearLayout) view, nestedRecyclerView, imageView, textView, findChildViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemInterestsHobbiesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemInterestsHobbiesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_interests_hobbies, viewGroup, false);
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
