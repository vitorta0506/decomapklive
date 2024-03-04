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
public final class ItemFollowBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final View dividerLine;
    @NonNull
    public final LinearLayout living;
    @NonNull
    public final ImageView livingStatus;
    @NonNull
    public final LinearLayout llContent;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView userName;
    @NonNull
    public final TextView userSign;

    private ItemFollowBinding(@NonNull RelativeLayout relativeLayout, @NonNull HeadPortraitView headPortraitView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.avatarView = headPortraitView;
        this.dividerLine = view;
        this.living = linearLayout;
        this.livingStatus = imageView;
        this.llContent = linearLayout2;
        this.userName = textView;
        this.userSign = textView2;
    }

    @NonNull
    public static ItemFollowBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.divider_line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider_line);
            if (findChildViewById != null) {
                i9 = R.id.living;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.living);
                if (linearLayout != null) {
                    i9 = R.id.living_status;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.living_status);
                    if (imageView != null) {
                        i9 = R.id.ll_content;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_content);
                        if (linearLayout2 != null) {
                            i9 = R.id.user_name;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                            if (textView != null) {
                                i9 = R.id.user_sign;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_sign);
                                if (textView2 != null) {
                                    return new ItemFollowBinding((RelativeLayout) view, headPortraitView, findChildViewById, linearLayout, imageView, linearLayout2, textView, textView2);
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
    public static ItemFollowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFollowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_follow, viewGroup, false);
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
