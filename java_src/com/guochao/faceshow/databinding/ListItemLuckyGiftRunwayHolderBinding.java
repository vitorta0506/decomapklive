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
import com.guochao.faceshow.aaspring.views.AutoHorizontalScrollView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class ListItemLuckyGiftRunwayHolderBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView avatar;
    @NonNull
    public final TextView content;
    @NonNull
    public final ImageView giftIcon;
    @NonNull
    public final LevelView levelView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final AutoHorizontalScrollView scrollView;
    @NonNull
    public final SvgaImageViewV2 svga;
    @NonNull
    public final TextView userName;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private ListItemLuckyGiftRunwayHolderBinding(@NonNull FrameLayout frameLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LevelView levelView, @NonNull AutoHorizontalScrollView autoHorizontalScrollView, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull TextView textView2, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = frameLayout;
        this.avatar = normalCircleImageView;
        this.content = textView;
        this.giftIcon = imageView;
        this.levelView = levelView;
        this.scrollView = autoHorizontalScrollView;
        this.svga = svgaImageViewV2;
        this.userName = textView2;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static ListItemLuckyGiftRunwayHolderBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (normalCircleImageView != null) {
            i9 = R.id.content;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
            if (textView != null) {
                i9 = R.id.gift_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_icon);
                if (imageView != null) {
                    i9 = R.id.level_view;
                    LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view);
                    if (levelView != null) {
                        i9 = R.id.scroll_view;
                        AutoHorizontalScrollView autoHorizontalScrollView = (AutoHorizontalScrollView) ViewBindings.findChildViewById(view, R.id.scroll_view);
                        if (autoHorizontalScrollView != null) {
                            i9 = R.id.svga;
                            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.svga);
                            if (svgaImageViewV2 != null) {
                                i9 = R.id.user_name;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                if (textView2 != null) {
                                    i9 = R.id.vip_indicator;
                                    VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                                    if (vipIndicatorView != null) {
                                        return new ListItemLuckyGiftRunwayHolderBinding((FrameLayout) view, normalCircleImageView, textView, imageView, levelView, autoHorizontalScrollView, svgaImageViewV2, textView2, vipIndicatorView);
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
    public static ListItemLuckyGiftRunwayHolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemLuckyGiftRunwayHolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_lucky_gift_runway_holder, viewGroup, false);
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
