package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.StatusBarPlaceHolderView;
/* loaded from: classes2.dex */
public final class ActivityNewChatBinding implements ViewBinding {
    @NonNull
    public final FrameLayout animViewLay;
    @NonNull
    public final ImageView cancel;
    @NonNull
    public final FrameLayout chatContent;
    @NonNull
    public final FrameLayout chatController;
    @NonNull
    public final CardView chatPrompt;
    @NonNull
    public final FrameLayout content;
    @NonNull
    public final FrameLayout floating;
    @NonNull
    public final ImageView follow;
    @NonNull
    public final Space keyboardSpace;
    @NonNull
    public final LinearLayout mainContent;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final StatusBarPlaceHolderView stbpView;

    private ActivityNewChatBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull CardView cardView, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6, @NonNull ImageView imageView2, @NonNull Space space, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull StatusBarPlaceHolderView statusBarPlaceHolderView) {
        this.rootView = frameLayout;
        this.animViewLay = frameLayout2;
        this.cancel = imageView;
        this.chatContent = frameLayout3;
        this.chatController = frameLayout4;
        this.chatPrompt = cardView;
        this.content = frameLayout5;
        this.floating = frameLayout6;
        this.follow = imageView2;
        this.keyboardSpace = space;
        this.mainContent = linearLayout;
        this.recyclerView = recyclerView;
        this.stbpView = statusBarPlaceHolderView;
    }

    @NonNull
    public static ActivityNewChatBinding bind(@NonNull View view) {
        int i9 = R.id.anim_view_lay;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.anim_view_lay);
        if (frameLayout != null) {
            i9 = R.id.cancel;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel);
            if (imageView != null) {
                i9 = R.id.chat_content;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.chat_content);
                if (frameLayout2 != null) {
                    i9 = R.id.chat_controller;
                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.chat_controller);
                    if (frameLayout3 != null) {
                        i9 = R.id.chat_prompt;
                        CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.chat_prompt);
                        if (cardView != null) {
                            FrameLayout frameLayout4 = (FrameLayout) view;
                            i9 = R.id.floating;
                            FrameLayout frameLayout5 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.floating);
                            if (frameLayout5 != null) {
                                i9 = R.id.follow;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.follow);
                                if (imageView2 != null) {
                                    i9 = R.id.keyboard_space;
                                    Space space = (Space) ViewBindings.findChildViewById(view, R.id.keyboard_space);
                                    if (space != null) {
                                        i9 = R.id.main_content;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main_content);
                                        if (linearLayout != null) {
                                            i9 = R.id.recycler_view;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                                            if (recyclerView != null) {
                                                i9 = R.id.stbp_view;
                                                StatusBarPlaceHolderView statusBarPlaceHolderView = (StatusBarPlaceHolderView) ViewBindings.findChildViewById(view, R.id.stbp_view);
                                                if (statusBarPlaceHolderView != null) {
                                                    return new ActivityNewChatBinding(frameLayout4, frameLayout, imageView, frameLayout2, frameLayout3, cardView, frameLayout4, frameLayout5, imageView2, space, linearLayout, recyclerView, statusBarPlaceHolderView);
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
    public static ActivityNewChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityNewChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_new_chat, viewGroup, false);
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
