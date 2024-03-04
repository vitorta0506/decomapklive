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
/* loaded from: classes2.dex */
public final class DialogDishWheelWinBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final TextView continueGame;
    @NonNull
    public final TextView diamondCount;
    @NonNull
    public final ImageView primaryIcon;
    @NonNull
    public final LinearLayout rewardWinLay;
    @NonNull
    public final TextView rewordCount;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView secondaryIcon;
    @NonNull
    public final ImageView winImg;
    @NonNull
    public final TextView winName;
    @NonNull
    public final TextView winReward;

    private DialogDishWheelWinBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.continueGame = textView;
        this.diamondCount = textView2;
        this.primaryIcon = imageView;
        this.rewardWinLay = linearLayout;
        this.rewordCount = textView3;
        this.secondaryIcon = imageView2;
        this.winImg = imageView3;
        this.winName = textView4;
        this.winReward = textView5;
    }

    @NonNull
    public static DialogDishWheelWinBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
        if (findChildViewById != null) {
            i9 = R.id.continue_game;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.continue_game);
            if (textView != null) {
                i9 = R.id.diamond_count;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.diamond_count);
                if (textView2 != null) {
                    i9 = R.id.primary_icon;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.primary_icon);
                    if (imageView != null) {
                        i9 = R.id.reward_win_lay;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.reward_win_lay);
                        if (linearLayout != null) {
                            i9 = R.id.reword_count;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.reword_count);
                            if (textView3 != null) {
                                i9 = R.id.secondary_icon;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.secondary_icon);
                                if (imageView2 != null) {
                                    i9 = R.id.win_img;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.win_img);
                                    if (imageView3 != null) {
                                        i9 = R.id.win_name;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.win_name);
                                        if (textView4 != null) {
                                            i9 = R.id.win_reward;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.win_reward);
                                            if (textView5 != null) {
                                                return new DialogDishWheelWinBinding((FrameLayout) view, findChildViewById, textView, textView2, imageView, linearLayout, textView3, imageView2, imageView3, textView4, textView5);
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
    public static DialogDishWheelWinBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogDishWheelWinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_dish_wheel_win, viewGroup, false);
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
