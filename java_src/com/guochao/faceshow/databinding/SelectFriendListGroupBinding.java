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
/* loaded from: classes2.dex */
public final class SelectFriendListGroupBinding implements ViewBinding {
    @NonNull
    public final ImageView expandStatus;
    @NonNull
    public final TextView groupName;
    @NonNull
    public final TextView number;
    @NonNull
    private final LinearLayout rootView;

    private SelectFriendListGroupBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.expandStatus = imageView;
        this.groupName = textView;
        this.number = textView2;
    }

    @NonNull
    public static SelectFriendListGroupBinding bind(@NonNull View view) {
        int i9 = R.id.expand_status;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.expand_status);
        if (imageView != null) {
            i9 = R.id.group_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.group_name);
            if (textView != null) {
                i9 = R.id.number;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.number);
                if (textView2 != null) {
                    return new SelectFriendListGroupBinding((LinearLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static SelectFriendListGroupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static SelectFriendListGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.select_friend_list_group, viewGroup, false);
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
