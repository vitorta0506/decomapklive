package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
/* loaded from: classes2.dex */
public final class SelectFriendItemBinding implements ViewBinding {
    @NonNull
    public final NewCircleImageView avatarView;
    @NonNull
    public final ImageView checkStatus;
    @NonNull
    public final NewCircleImageView flag;
    @NonNull
    public final ImageView onlineState;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView userName;

    private SelectFriendItemBinding(@NonNull FrameLayout frameLayout, @NonNull NewCircleImageView newCircleImageView, @NonNull ImageView imageView, @NonNull NewCircleImageView newCircleImageView2, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.avatarView = newCircleImageView;
        this.checkStatus = imageView;
        this.flag = newCircleImageView2;
        this.onlineState = imageView2;
        this.userName = textView;
    }

    @NonNull
    public static SelectFriendItemBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        NewCircleImageView newCircleImageView = (NewCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (newCircleImageView != null) {
            i9 = R.id.check_status;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.check_status);
            if (imageView != null) {
                i9 = R.id.flag;
                NewCircleImageView newCircleImageView2 = (NewCircleImageView) ViewBindings.findChildViewById(view, R.id.flag);
                if (newCircleImageView2 != null) {
                    i9 = R.id.online_state;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.online_state);
                    if (imageView2 != null) {
                        i9 = R.id.user_name;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                        if (textView != null) {
                            return new SelectFriendItemBinding((FrameLayout) view, newCircleImageView, imageView, newCircleImageView2, imageView2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static SelectFriendItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static SelectFriendItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.select_friend_item, viewGroup, false);
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
