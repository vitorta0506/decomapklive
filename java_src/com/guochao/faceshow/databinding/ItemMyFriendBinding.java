package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class ItemMyFriendBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView iconRequest;
    @NonNull
    public final LinearLayout llContent;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final View userDivider;
    @NonNull
    public final TextView userId;
    @NonNull
    public final TextView userName;
    @NonNull
    public final TextView userSign;

    private ItemMyFriendBinding(@NonNull RelativeLayout relativeLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = relativeLayout;
        this.avatarView = headPortraitView;
        this.iconRequest = imageView;
        this.llContent = linearLayout;
        this.userDivider = view;
        this.userId = textView;
        this.userName = textView2;
        this.userSign = textView3;
    }

    @NonNull
    public static ItemMyFriendBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.icon_request;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_request);
            if (imageView != null) {
                i9 = R.id.ll_content;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_content);
                if (linearLayout != null) {
                    i9 = R.id.user_divider;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.user_divider);
                    if (findChildViewById != null) {
                        i9 = R.id.user_id;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_id);
                        if (textView != null) {
                            i9 = R.id.user_name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                            if (textView2 != null) {
                                i9 = R.id.user_sign;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_sign);
                                if (textView3 != null) {
                                    return new ItemMyFriendBinding((RelativeLayout) view, headPortraitView, imageView, linearLayout, findChildViewById, textView, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemMyFriendBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemMyFriendBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_my_friend, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
