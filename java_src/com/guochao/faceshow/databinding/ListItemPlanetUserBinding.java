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
public final class ListItemPlanetUserBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView gender;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView userName;

    private ListItemPlanetUserBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.avatarView = headPortraitView;
        this.gender = imageView;
        this.userName = textView;
    }

    @NonNull
    public static ListItemPlanetUserBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.gender;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gender);
            if (imageView != null) {
                i9 = R.id.user_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                if (textView != null) {
                    return new ListItemPlanetUserBinding((LinearLayout) view, headPortraitView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemPlanetUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemPlanetUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_planet_user, viewGroup, false);
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
