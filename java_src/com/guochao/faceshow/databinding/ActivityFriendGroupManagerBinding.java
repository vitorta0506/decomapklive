package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
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
public final class ActivityFriendGroupManagerBinding implements ViewBinding {
    @NonNull
    public final TextView addGroup;
    @NonNull
    public final LinearLayout addImg;
    @NonNull
    public final View bottomDivider;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final GcBaseTitleBarBinding titleLayout;

    private ActivityFriendGroupManagerBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding) {
        this.rootView = constraintLayout;
        this.addGroup = textView;
        this.addImg = linearLayout;
        this.bottomDivider = view;
        this.recyclerView = recyclerView;
        this.titleLayout = gcBaseTitleBarBinding;
    }

    @NonNull
    public static ActivityFriendGroupManagerBinding bind(@NonNull View view) {
        int i9 = R.id.add_group;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.add_group);
        if (textView != null) {
            i9 = R.id.add_img;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.add_img);
            if (linearLayout != null) {
                i9 = R.id.bottom_divider;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.bottom_divider);
                if (findChildViewById != null) {
                    i9 = R.id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                    if (recyclerView != null) {
                        i9 = R.id.title_layout;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.title_layout);
                        if (findChildViewById2 != null) {
                            return new ActivityFriendGroupManagerBinding((ConstraintLayout) view, textView, linearLayout, findChildViewById, recyclerView, GcBaseTitleBarBinding.bind(findChildViewById2));
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityFriendGroupManagerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityFriendGroupManagerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_friend_group_manager, viewGroup, false);
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
