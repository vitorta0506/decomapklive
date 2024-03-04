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
public final class ItemRequestFriendBinding implements ViewBinding {
    @NonNull
    public final ImageView iconRequest;
    @NonNull
    public final LinearLayout rootView;
    @NonNull
    private final RelativeLayout rootView_;
    @NonNull
    public final TextView timeHistory;
    @NonNull
    public final HeadPortraitView userAvatar;
    @NonNull
    public final TextView userName;
    @NonNull
    public final LinearLayout userNameLay;

    private ItemRequestFriendBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2) {
        this.rootView_ = relativeLayout;
        this.iconRequest = imageView;
        this.rootView = linearLayout;
        this.timeHistory = textView;
        this.userAvatar = headPortraitView;
        this.userName = textView2;
        this.userNameLay = linearLayout2;
    }

    @NonNull
    public static ItemRequestFriendBinding bind(@NonNull View view) {
        int i9 = R.id.icon_request;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_request);
        if (imageView != null) {
            i9 = R.id.root_view;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.root_view);
            if (linearLayout != null) {
                i9 = R.id.time_history;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.time_history);
                if (textView != null) {
                    i9 = R.id.user_avatar;
                    HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                    if (headPortraitView != null) {
                        i9 = R.id.user_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                        if (textView2 != null) {
                            i9 = R.id.user_name_lay;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_name_lay);
                            if (linearLayout2 != null) {
                                return new ItemRequestFriendBinding((RelativeLayout) view, imageView, linearLayout, textView, headPortraitView, textView2, linearLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemRequestFriendBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemRequestFriendBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_request_friend, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView_;
    }
}
