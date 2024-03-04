package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FriendSetGroupItemBinding implements ViewBinding {
    @NonNull
    public final TextView groupName;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final ImageView status;

    private FriendSetGroupItemBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.rootView = constraintLayout;
        this.groupName = textView;
        this.status = imageView;
    }

    @NonNull
    public static FriendSetGroupItemBinding bind(@NonNull View view) {
        int i9 = R.id.group_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.group_name);
        if (textView != null) {
            i9 = R.id.status;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.status);
            if (imageView != null) {
                return new FriendSetGroupItemBinding((ConstraintLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FriendSetGroupItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FriendSetGroupItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.friend_set_group_item, viewGroup, false);
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
