package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutRelationshipItemBinding implements ViewBinding {
    @NonNull
    public final ImageView inviteIcon;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final NormalCircleImageView userAvatar;
    @NonNull
    public final TextView userName;
    @NonNull
    public final TextView userPhone;

    private LayoutRelationshipItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.inviteIcon = imageView;
        this.userAvatar = normalCircleImageView;
        this.userName = textView;
        this.userPhone = textView2;
    }

    @NonNull
    public static LayoutRelationshipItemBinding bind(@NonNull View view) {
        int i9 = R.id.invite_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.invite_icon);
        if (imageView != null) {
            i9 = R.id.user_avatar;
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.user_avatar);
            if (normalCircleImageView != null) {
                i9 = R.id.user_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                if (textView != null) {
                    i9 = R.id.user_phone;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_phone);
                    if (textView2 != null) {
                        return new LayoutRelationshipItemBinding((RelativeLayout) view, imageView, normalCircleImageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutRelationshipItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRelationshipItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_relationship_item, viewGroup, false);
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
