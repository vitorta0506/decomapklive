package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.lib_core.databinding.GcBaseTitleBarBinding;
/* loaded from: classes2.dex */
public final class ActivityFriendSetGroupBinding implements ViewBinding {
    @NonNull
    public final TextView addGroup;
    @NonNull
    public final ImageView addImg;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final GcBaseTitleBarBinding titleLayout;

    private ActivityFriendSetGroupBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding) {
        this.rootView = constraintLayout;
        this.addGroup = textView;
        this.addImg = imageView;
        this.recyclerView = recyclerView;
        this.titleLayout = gcBaseTitleBarBinding;
    }

    @NonNull
    public static ActivityFriendSetGroupBinding bind(@NonNull View view) {
        int i9 = R.id.add_group;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.add_group);
        if (textView != null) {
            i9 = R.id.add_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.add_img);
            if (imageView != null) {
                i9 = R.id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                if (recyclerView != null) {
                    i9 = R.id.title_layout;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_layout);
                    if (findChildViewById != null) {
                        return new ActivityFriendSetGroupBinding((ConstraintLayout) view, textView, imageView, recyclerView, GcBaseTitleBarBinding.bind(findChildViewById));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityFriendSetGroupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityFriendSetGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_friend_set_group, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
