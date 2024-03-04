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
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class ItemInviteBinding implements ViewBinding {
    @NonNull
    public final ImageView check;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final View topDivider;
    @NonNull
    public final HeadPortraitView userAvatar;
    @NonNull
    public final TextView userName;

    private ItemInviteBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.check = imageView;
        this.topDivider = view;
        this.userAvatar = headPortraitView;
        this.userName = textView;
    }

    @NonNull
    public static ItemInviteBinding bind(@NonNull View view) {
        int i9 = R.id.check;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.check);
        if (imageView != null) {
            i9 = R.id.top_divider;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.top_divider);
            if (findChildViewById != null) {
                i9 = R.id.user_avatar;
                HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                if (headPortraitView != null) {
                    i9 = R.id.user_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                    if (textView != null) {
                        return new ItemInviteBinding((LinearLayout) view, imageView, findChildViewById, headPortraitView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemInviteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemInviteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_invite, viewGroup, false);
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
