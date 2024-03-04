package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.game.DishWheelView;
/* loaded from: classes2.dex */
public final class LayoutDishWheelBinding implements ViewBinding {
    @NonNull
    public final ImageView bgOut;
    @NonNull
    public final TextView diamondCount;
    @NonNull
    public final DishWheelView dishWheelView;
    @NonNull
    public final FrameLayout frameLayout;
    @NonNull
    public final ImageView gameClose;
    @NonNull
    public final FrameLayout gameDiamondBg;
    @NonNull
    public final LinearLayout gameLayout;
    @NonNull
    public final FrameLayout layoutLoseResult;
    @NonNull
    public final ImageView loseImg;
    @NonNull
    public final TextView loseName;
    @NonNull
    public final TextView personCount;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView startIcon;
    @NonNull
    public final LinearLayout topInfo;
    @NonNull
    public final FrameLayout wheelId;

    private LayoutDishWheelBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull DishWheelView dishWheelView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout3, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout4, @NonNull ImageView imageView3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout2, @NonNull FrameLayout frameLayout5) {
        this.rootView = frameLayout;
        this.bgOut = imageView;
        this.diamondCount = textView;
        this.dishWheelView = dishWheelView;
        this.frameLayout = frameLayout2;
        this.gameClose = imageView2;
        this.gameDiamondBg = frameLayout3;
        this.gameLayout = linearLayout;
        this.layoutLoseResult = frameLayout4;
        this.loseImg = imageView3;
        this.loseName = textView2;
        this.personCount = textView3;
        this.startIcon = imageView4;
        this.topInfo = linearLayout2;
        this.wheelId = frameLayout5;
    }

    @NonNull
    public static LayoutDishWheelBinding bind(@NonNull View view) {
        int i9 = R.id.bg_out;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_out);
        if (imageView != null) {
            i9 = R.id.diamond_count;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.diamond_count);
            if (textView != null) {
                i9 = R.id.dish_wheel_view;
                DishWheelView dishWheelView = (DishWheelView) ViewBindings.findChildViewById(view, R.id.dish_wheel_view);
                if (dishWheelView != null) {
                    i9 = R.id.frameLayout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.frameLayout);
                    if (frameLayout != null) {
                        i9 = R.id.game_close;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.game_close);
                        if (imageView2 != null) {
                            i9 = R.id.game_diamond_bg;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.game_diamond_bg);
                            if (frameLayout2 != null) {
                                i9 = R.id.game_layout;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.game_layout);
                                if (linearLayout != null) {
                                    i9 = R.id.layout_lose_result;
                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.layout_lose_result);
                                    if (frameLayout3 != null) {
                                        i9 = R.id.lose_img;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.lose_img);
                                        if (imageView3 != null) {
                                            i9 = R.id.lose_name;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.lose_name);
                                            if (textView2 != null) {
                                                i9 = R.id.person_count;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.person_count);
                                                if (textView3 != null) {
                                                    i9 = R.id.start_icon;
                                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.start_icon);
                                                    if (imageView4 != null) {
                                                        i9 = R.id.top_info;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.top_info);
                                                        if (linearLayout2 != null) {
                                                            FrameLayout frameLayout4 = (FrameLayout) view;
                                                            return new LayoutDishWheelBinding(frameLayout4, imageView, textView, dishWheelView, frameLayout, imageView2, frameLayout2, linearLayout, frameLayout3, imageView3, textView2, textView3, imageView4, linearLayout2, frameLayout4);
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
    public static LayoutDishWheelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutDishWheelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_dish_wheel, viewGroup, false);
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
