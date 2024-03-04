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
public final class ListItemRecommendUserBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView check;
    @NonNull
    public final ImageView gender;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView userName;

    private ListItemRecommendUserBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.avatarView = headPortraitView;
        this.check = imageView;
        this.gender = imageView2;
        this.userName = textView;
    }

    @NonNull
    public static ListItemRecommendUserBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.check;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.check);
            if (imageView != null) {
                i9 = R.id.gender;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.gender);
                if (imageView2 != null) {
                    i9 = R.id.user_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                    if (textView != null) {
                        return new ListItemRecommendUserBinding((LinearLayout) view, headPortraitView, imageView, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemRecommendUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemRecommendUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_recommend_user, viewGroup, false);
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
