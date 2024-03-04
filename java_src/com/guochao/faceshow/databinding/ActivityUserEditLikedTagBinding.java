package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityUserEditLikedTagBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvTagCount;
    @NonNull
    public final RecyclerView userTagSelected;
    @NonNull
    public final RecyclerView userTagTotal;

    private ActivityUserEditLikedTagBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2) {
        this.rootView = linearLayout;
        this.tvTagCount = textView;
        this.userTagSelected = recyclerView;
        this.userTagTotal = recyclerView2;
    }

    @NonNull
    public static ActivityUserEditLikedTagBinding bind(@NonNull View view) {
        int i9 = R.id.tv_tag_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tag_count);
        if (textView != null) {
            i9 = R.id.user_tag_selected;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.user_tag_selected);
            if (recyclerView != null) {
                i9 = R.id.user_tag_total;
                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.user_tag_total);
                if (recyclerView2 != null) {
                    return new ActivityUserEditLikedTagBinding((LinearLayout) view, textView, recyclerView, recyclerView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityUserEditLikedTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUserEditLikedTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_user_edit_liked_tag, viewGroup, false);
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
