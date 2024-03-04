package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.lib_core.databinding.GcBaseTitleBarBinding;
/* loaded from: classes2.dex */
public final class ActivitySelectFriendBinding implements ViewBinding {
    @NonNull
    public final ExpandableListView friendList;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final LinearLayout searchLayout;
    @NonNull
    public final GcBaseTitleBarBinding titleLayout;
    @NonNull
    public final EditText tvSearch;

    private ActivitySelectFriendBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ExpandableListView expandableListView, @NonNull LinearLayout linearLayout, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding, @NonNull EditText editText) {
        this.rootView = constraintLayout;
        this.friendList = expandableListView;
        this.searchLayout = linearLayout;
        this.titleLayout = gcBaseTitleBarBinding;
        this.tvSearch = editText;
    }

    @NonNull
    public static ActivitySelectFriendBinding bind(@NonNull View view) {
        int i9 = R.id.friend_list;
        ExpandableListView expandableListView = (ExpandableListView) ViewBindings.findChildViewById(view, R.id.friend_list);
        if (expandableListView != null) {
            i9 = R.id.search_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.search_layout);
            if (linearLayout != null) {
                i9 = R.id.title_layout;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_layout);
                if (findChildViewById != null) {
                    GcBaseTitleBarBinding bind = GcBaseTitleBarBinding.bind(findChildViewById);
                    i9 = R.id.tv_search;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.tv_search);
                    if (editText != null) {
                        return new ActivitySelectFriendBinding((ConstraintLayout) view, expandableListView, linearLayout, bind, editText);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivitySelectFriendBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySelectFriendBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_select_friend, viewGroup, false);
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
