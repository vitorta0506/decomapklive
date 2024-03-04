package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class ItemHelloGiftNewUserBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvInvite;
    @NonNull
    public final TextView tvUserName;
    @NonNull
    public final HeadPortraitView userAvatar;

    private ItemHelloGiftNewUserBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull HeadPortraitView headPortraitView) {
        this.rootView = linearLayout;
        this.tvInvite = textView;
        this.tvUserName = textView2;
        this.userAvatar = headPortraitView;
    }

    @NonNull
    public static ItemHelloGiftNewUserBinding bind(@NonNull View view) {
        int i9 = R.id.tv_invite;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_invite);
        if (textView != null) {
            i9 = R.id.tv_user_name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_name);
            if (textView2 != null) {
                i9 = R.id.user_avatar;
                HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                if (headPortraitView != null) {
                    return new ItemHelloGiftNewUserBinding((LinearLayout) view, textView, textView2, headPortraitView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemHelloGiftNewUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemHelloGiftNewUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_hello_gift_new_user, viewGroup, false);
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
