package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DragIndicatorView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.SingleLineTextView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class ListItemConvesationsBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView draft;
    @NonNull
    public final ImageView iconAlwaysTop;
    @NonNull
    public final SingleLineTextView msg;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView time;
    @NonNull
    public final DragIndicatorView unreadNum;
    @NonNull
    public final TextView userName;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private ListItemConvesationsBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SingleLineTextView singleLineTextView, @NonNull TextView textView, @NonNull DragIndicatorView dragIndicatorView, @NonNull TextView textView2, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.draft = imageView;
        this.iconAlwaysTop = imageView2;
        this.msg = singleLineTextView;
        this.time = textView;
        this.unreadNum = dragIndicatorView;
        this.userName = textView2;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static ListItemConvesationsBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.draft;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.draft);
            if (imageView != null) {
                i9 = R.id.icon_always_top;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_always_top);
                if (imageView2 != null) {
                    i9 = R.id.msg;
                    SingleLineTextView singleLineTextView = (SingleLineTextView) ViewBindings.findChildViewById(view, R.id.msg);
                    if (singleLineTextView != null) {
                        i9 = R.id.time;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                        if (textView != null) {
                            i9 = R.id.unread_num;
                            DragIndicatorView dragIndicatorView = (DragIndicatorView) ViewBindings.findChildViewById(view, R.id.unread_num);
                            if (dragIndicatorView != null) {
                                i9 = R.id.user_name;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                if (textView2 != null) {
                                    i9 = R.id.vip_indicator;
                                    VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                                    if (vipIndicatorView != null) {
                                        return new ListItemConvesationsBinding((FrameLayout) view, headPortraitView, imageView, imageView2, singleLineTextView, textView, dragIndicatorView, textView2, vipIndicatorView);
                                    }
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
    public static ListItemConvesationsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemConvesationsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_convesations, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
