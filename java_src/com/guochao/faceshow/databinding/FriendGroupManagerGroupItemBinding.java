package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FriendGroupManagerGroupItemBinding implements ViewBinding {
    @NonNull
    public final Button deleteBt;
    @NonNull
    public final ImageView deleteImg;
    @NonNull
    public final TextView groupName;
    @NonNull
    public final ImageView menu;
    @NonNull
    private final FrameLayout rootView;

    private FriendGroupManagerGroupItemBinding(@NonNull FrameLayout frameLayout, @NonNull Button button, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.deleteBt = button;
        this.deleteImg = imageView;
        this.groupName = textView;
        this.menu = imageView2;
    }

    @NonNull
    public static FriendGroupManagerGroupItemBinding bind(@NonNull View view) {
        int i9 = R.id.delete_bt;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.delete_bt);
        if (button != null) {
            i9 = R.id.delete_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.delete_img);
            if (imageView != null) {
                i9 = R.id.group_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.group_name);
                if (textView != null) {
                    i9 = R.id.menu;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.menu);
                    if (imageView2 != null) {
                        return new FriendGroupManagerGroupItemBinding((FrameLayout) view, button, imageView, textView, imageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FriendGroupManagerGroupItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FriendGroupManagerGroupItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.friend_group_manager_group_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
