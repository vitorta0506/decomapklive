package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DrawableView;
import com.guochao.faceshow.aaspring.views.VipBackgroundView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class LayoutLiveDanmuItemBinding implements ViewBinding {
    @NonNull
    public final DrawableView avatar;
    @NonNull
    public final VipBackgroundView background;
    @NonNull
    public final TextView content;
    @NonNull
    public final DrawableView mvp;
    @NonNull
    public final TextView nickname;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final VipIndicatorView vipIndicatorView;

    private LayoutLiveDanmuItemBinding(@NonNull FrameLayout frameLayout, @NonNull DrawableView drawableView, @NonNull VipBackgroundView vipBackgroundView, @NonNull TextView textView, @NonNull DrawableView drawableView2, @NonNull TextView textView2, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = frameLayout;
        this.avatar = drawableView;
        this.background = vipBackgroundView;
        this.content = textView;
        this.mvp = drawableView2;
        this.nickname = textView2;
        this.vipIndicatorView = vipIndicatorView;
    }

    @NonNull
    public static LayoutLiveDanmuItemBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        DrawableView drawableView = (DrawableView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (drawableView != null) {
            i9 = R.id.background;
            VipBackgroundView vipBackgroundView = (VipBackgroundView) ViewBindings.findChildViewById(view, R.id.background);
            if (vipBackgroundView != null) {
                i9 = R.id.content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                if (textView != null) {
                    i9 = R.id.mvp;
                    DrawableView drawableView2 = (DrawableView) ViewBindings.findChildViewById(view, R.id.mvp);
                    if (drawableView2 != null) {
                        i9 = R.id.nickname;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
                        if (textView2 != null) {
                            i9 = R.id.vip_indicator_view;
                            VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator_view);
                            if (vipIndicatorView != null) {
                                return new LayoutLiveDanmuItemBinding((FrameLayout) view, drawableView, vipBackgroundView, textView, drawableView2, textView2, vipIndicatorView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLiveDanmuItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLiveDanmuItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_live_danmu_item, viewGroup, false);
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
