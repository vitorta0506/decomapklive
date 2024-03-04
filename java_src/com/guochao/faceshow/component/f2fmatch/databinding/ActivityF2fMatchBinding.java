package com.guochao.faceshow.component.f2fmatch.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.component.f2fmatch.R$id;
import com.guochao.faceshow.component.f2fmatch.R$layout;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityF2fMatchBinding implements ViewBinding {
    @NonNull
    public final TextView countDownTime;
    @NonNull
    public final FrameLayout giftPlayer;
    @NonNull
    public final FrameLayout matching;
    @NonNull
    public final FrameLayout player;
    @NonNull
    public final FrameLayout prepare;
    @NonNull
    public final FrameLayout preview;
    @NonNull
    private final View rootView;
    @NonNull
    public final FrameLayout smallGift;
    @NonNull
    public final CardView smallVideoArea;
    @NonNull
    public final CardView smallVideoContainer;
    @NonNull
    public final FrameLayout videoMessageChat;

    private ActivityF2fMatchBinding(@NonNull View view, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6, @NonNull CardView cardView, @NonNull CardView cardView2, @NonNull FrameLayout frameLayout7) {
        this.rootView = view;
        this.countDownTime = textView;
        this.giftPlayer = frameLayout;
        this.matching = frameLayout2;
        this.player = frameLayout3;
        this.prepare = frameLayout4;
        this.preview = frameLayout5;
        this.smallGift = frameLayout6;
        this.smallVideoArea = cardView;
        this.smallVideoContainer = cardView2;
        this.videoMessageChat = frameLayout7;
    }

    @NonNull
    public static ActivityF2fMatchBinding bind(@NonNull View view) {
        int i9 = R$id.count_down_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.gift_player;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
            if (frameLayout != null) {
                i9 = R$id.matching;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                if (frameLayout2 != null) {
                    i9 = R$id.player;
                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                    if (frameLayout3 != null) {
                        i9 = R$id.prepare;
                        FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                        if (frameLayout4 != null) {
                            i9 = R$id.preview;
                            FrameLayout frameLayout5 = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                            if (frameLayout5 != null) {
                                i9 = R$id.small_gift;
                                FrameLayout frameLayout6 = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                                if (frameLayout6 != null) {
                                    i9 = R$id.small_video_area;
                                    CardView cardView = (CardView) ViewBindings.findChildViewById(view, i9);
                                    if (cardView != null) {
                                        i9 = R$id.small_video_container;
                                        CardView cardView2 = (CardView) ViewBindings.findChildViewById(view, i9);
                                        if (cardView2 != null) {
                                            i9 = R$id.video_message_chat;
                                            FrameLayout frameLayout7 = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                                            if (frameLayout7 != null) {
                                                return new ActivityF2fMatchBinding(view, textView, frameLayout, frameLayout2, frameLayout3, frameLayout4, frameLayout5, frameLayout6, cardView, cardView2, frameLayout7);
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
    public static ActivityF2fMatchBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R$layout.activity_f2f_match, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
