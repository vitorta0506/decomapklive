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
public final class ItemComprehensiveHeadBinding implements ViewBinding {
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final HeadPortraitView userAvatar;

    private ItemComprehensiveHeadBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull HeadPortraitView headPortraitView) {
        this.rootView = relativeLayout;
        this.tvNickName = textView;
        this.userAvatar = headPortraitView;
    }

    @NonNull
    public static ItemComprehensiveHeadBinding bind(@NonNull View view) {
        int i9 = R.id.tv_nick_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nick_name);
        if (textView != null) {
            i9 = R.id.user_avatar;
            HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
            if (headPortraitView != null) {
                return new ItemComprehensiveHeadBinding((RelativeLayout) view, textView, headPortraitView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemComprehensiveHeadBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemComprehensiveHeadBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_comprehensive_head, viewGroup, false);
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
