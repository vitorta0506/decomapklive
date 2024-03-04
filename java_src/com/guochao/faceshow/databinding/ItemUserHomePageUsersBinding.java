package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemUserHomePageUsersBinding implements ViewBinding {
    @NonNull
    public final ImageView headerIV;
    @NonNull
    private final LinearLayout rootView;

    private ItemUserHomePageUsersBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.headerIV = imageView;
    }

    @NonNull
    public static ItemUserHomePageUsersBinding bind(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.headerIV);
        if (imageView != null) {
            return new ItemUserHomePageUsersBinding((LinearLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.headerIV)));
    }

    @NonNull
    public static ItemUserHomePageUsersBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemUserHomePageUsersBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_user_home_page_users, viewGroup, false);
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
