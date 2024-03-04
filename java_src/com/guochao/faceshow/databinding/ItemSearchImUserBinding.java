package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class ItemSearchImUserBinding implements ViewBinding {
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final HeadPortraitView userAvatar;
    @NonNull
    public final TextView userName;

    private ItemSearchImUserBinding(@NonNull RelativeLayout relativeLayout, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.userAvatar = headPortraitView;
        this.userName = textView;
    }

    @NonNull
    public static ItemSearchImUserBinding bind(@NonNull View view) {
        int i9 = R.id.user_avatar;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
        if (headPortraitView != null) {
            i9 = R.id.user_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
            if (textView != null) {
                return new ItemSearchImUserBinding((RelativeLayout) view, headPortraitView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemSearchImUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSearchImUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_search_im_user, viewGroup, false);
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
