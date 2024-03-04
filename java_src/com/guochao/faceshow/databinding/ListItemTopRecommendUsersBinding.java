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
public final class ListItemTopRecommendUsersBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView head;
    @NonNull
    public final TextView nickname;
    @NonNull
    private final LinearLayout rootView;

    private ListItemTopRecommendUsersBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.head = headPortraitView;
        this.nickname = textView;
    }

    @NonNull
    public static ListItemTopRecommendUsersBinding bind(@NonNull View view) {
        int i9 = R.id.head;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head);
        if (headPortraitView != null) {
            i9 = R.id.nickname;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
            if (textView != null) {
                return new ListItemTopRecommendUsersBinding((LinearLayout) view, headPortraitView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemTopRecommendUsersBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemTopRecommendUsersBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_top_recommend_users, viewGroup, false);
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
