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
public final class MyFriendItemBinding implements ViewBinding {
    @NonNull
    public final NewCircleImageView avatarView;
    @NonNull
    public final NewCircleImageView flag;
    @NonNull
    public final ImageView onlineState;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView status;
    @NonNull
    public final TextView userName;
    @NonNull
    public final TextView userSign;

    private MyFriendItemBinding(@NonNull FrameLayout frameLayout, @NonNull NewCircleImageView newCircleImageView, @NonNull NewCircleImageView newCircleImageView2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.avatarView = newCircleImageView;
        this.flag = newCircleImageView2;
        this.onlineState = imageView;
        this.status = textView;
        this.userName = textView2;
        this.userSign = textView3;
    }

    @NonNull
    public static MyFriendItemBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        NewCircleImageView newCircleImageView = (NewCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (newCircleImageView != null) {
            i9 = R.id.flag;
            NewCircleImageView newCircleImageView2 = (NewCircleImageView) ViewBindings.findChildViewById(view, R.id.flag);
            if (newCircleImageView2 != null) {
                i9 = R.id.online_state;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.online_state);
                if (imageView != null) {
                    i9 = R.id.status;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.status);
                    if (textView != null) {
                        i9 = R.id.user_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                        if (textView2 != null) {
                            i9 = R.id.user_sign;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_sign);
                            if (textView3 != null) {
                                return new MyFriendItemBinding((FrameLayout) view, newCircleImageView, newCircleImageView2, imageView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static MyFriendItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static MyFriendItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.my_friend_item, viewGroup, false);
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
