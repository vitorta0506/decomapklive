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
public final class PlayRotateOpenSetingBinding implements ViewBinding {
    @NonNull
    public final TextView gameName;
    @NonNull
    public final ImageView ivClose;
    @NonNull
    public final ImageView ivSelectState;
    @NonNull
    public final LinearLayout laySelectState;
    @NonNull
    public final TextView minigameStartTip;
    @NonNull
    public final TextView participantsNumber;
    @NonNull
    public final ImageView participantsNumberArrow;
    @NonNull
    public final LinearLayout participantsNumberLay;
    @NonNull
    public final TextView participantsPrice;
    @NonNull
    public final ImageView participantsPriceArrow;
    @NonNull
    public final LinearLayout participantsPriceLay;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView startGame;

    private PlayRotateOpenSetingBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout3, @NonNull TextView textView5) {
        this.rootView = frameLayout;
        this.gameName = textView;
        this.ivClose = imageView;
        this.ivSelectState = imageView2;
        this.laySelectState = linearLayout;
        this.minigameStartTip = textView2;
        this.participantsNumber = textView3;
        this.participantsNumberArrow = imageView3;
        this.participantsNumberLay = linearLayout2;
        this.participantsPrice = textView4;
        this.participantsPriceArrow = imageView4;
        this.participantsPriceLay = linearLayout3;
        this.startGame = textView5;
    }

    @NonNull
    public static PlayRotateOpenSetingBinding bind(@NonNull View view) {
        int i9 = R.id.game_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.game_name);
        if (textView != null) {
            i9 = R.id.iv_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
            if (imageView != null) {
                i9 = R.id.iv_select_state;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_select_state);
                if (imageView2 != null) {
                    i9 = R.id.lay_select_state;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_select_state);
                    if (linearLayout != null) {
                        i9 = R.id.minigame_start_tip;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.minigame_start_tip);
                        if (textView2 != null) {
                            i9 = R.id.participants_number;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.participants_number);
                            if (textView3 != null) {
                                i9 = R.id.participants_number_arrow;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.participants_number_arrow);
                                if (imageView3 != null) {
                                    i9 = R.id.participants_number_lay;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.participants_number_lay);
                                    if (linearLayout2 != null) {
                                        i9 = R.id.participants_price;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.participants_price);
                                        if (textView4 != null) {
                                            i9 = R.id.participants_price_arrow;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.participants_price_arrow);
                                            if (imageView4 != null) {
                                                i9 = R.id.participants_price_lay;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.participants_price_lay);
                                                if (linearLayout3 != null) {
                                                    i9 = R.id.start_game;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.start_game);
                                                    if (textView5 != null) {
                                                        return new PlayRotateOpenSetingBinding((FrameLayout) view, textView, imageView, imageView2, linearLayout, textView2, textView3, imageView3, linearLayout2, textView4, imageView4, linearLayout3, textView5);
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
    public static PlayRotateOpenSetingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PlayRotateOpenSetingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.play_rotate_open_seting, viewGroup, false);
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
