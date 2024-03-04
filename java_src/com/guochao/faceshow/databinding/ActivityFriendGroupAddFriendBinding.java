package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.lib_core.databinding.GcBaseTitleBarBinding;
/* loaded from: classes2.dex */
public final class ActivityFriendGroupAddFriendBinding implements ViewBinding {
    @NonNull
    public final TextView addFriend;
    @NonNull
    public final ImageView addImg;
    @NonNull
    public final ImageView clearEdit;
    @NonNull
    public final EditText name;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final GcBaseTitleBarBinding titleLayout;

    private ActivityFriendGroupAddFriendBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull EditText editText, @NonNull RecyclerView recyclerView, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding) {
        this.rootView = linearLayout;
        this.addFriend = textView;
        this.addImg = imageView;
        this.clearEdit = imageView2;
        this.name = editText;
        this.recyclerView = recyclerView;
        this.titleLayout = gcBaseTitleBarBinding;
    }

    @NonNull
    public static ActivityFriendGroupAddFriendBinding bind(@NonNull View view) {
        int i9 = R.id.add_friend;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.add_friend);
        if (textView != null) {
            i9 = R.id.add_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.add_img);
            if (imageView != null) {
                i9 = R.id.clear_edit;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.clear_edit);
                if (imageView2 != null) {
                    i9 = R.id.name;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.name);
                    if (editText != null) {
                        i9 = R.id.recycler_view;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                        if (recyclerView != null) {
                            i9 = R.id.title_layout;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_layout);
                            if (findChildViewById != null) {
                                return new ActivityFriendGroupAddFriendBinding((LinearLayout) view, textView, imageView, imageView2, editText, recyclerView, GcBaseTitleBarBinding.bind(findChildViewById));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityFriendGroupAddFriendBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityFriendGroupAddFriendBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_friend_group_add_friend, viewGroup, false);
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
