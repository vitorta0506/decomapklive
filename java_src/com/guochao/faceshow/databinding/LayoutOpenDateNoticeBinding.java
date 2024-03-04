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
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class LayoutOpenDateNoticeBinding implements ViewBinding {
    @NonNull
    public final ImageView check;
    @NonNull
    public final HeadPortraitView head;
    @NonNull
    public final TextView nickname;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private LayoutOpenDateNoticeBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = linearLayout;
        this.check = imageView;
        this.head = headPortraitView;
        this.nickname = textView;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static LayoutOpenDateNoticeBinding bind(@NonNull View view) {
        int i9 = R.id.check;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.check);
        if (imageView != null) {
            i9 = R.id.head;
            HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head);
            if (headPortraitView != null) {
                i9 = R.id.nickname;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
                if (textView != null) {
                    i9 = R.id.vip_indicator;
                    VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                    if (vipIndicatorView != null) {
                        return new LayoutOpenDateNoticeBinding((LinearLayout) view, imageView, headPortraitView, textView, vipIndicatorView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutOpenDateNoticeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutOpenDateNoticeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_open_date_notice, viewGroup, false);
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
