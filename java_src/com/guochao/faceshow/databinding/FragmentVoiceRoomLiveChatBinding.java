package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.NoBottomEdgeRecyclerView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class FragmentVoiceRoomLiveChatBinding implements ViewBinding {
    @NonNull
    public final ImageView emojis;
    @NonNull
    public final LinearLayout extraViews;
    @NonNull
    public final ImageView iconMultiGame;
    @NonNull
    public final ImageView imDot;
    @NonNull
    public final LinearLayout liveBtns;
    @NonNull
    public final ImageView liveChatBtn;
    @NonNull
    public final SvgaImageViewV2 liveGiftBtn;
    @NonNull
    public final FrameLayout liveImBtn;
    @NonNull
    public final ImageView liveMoreBtn;
    @NonNull
    public final ImageView liveNormalBtn;
    @NonNull
    public final NoBottomEdgeRecyclerView recyclerView;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final Space space;
    @NonNull
    public final ImageView voiceSwitch;

    private FragmentVoiceRoomLiveChatBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView4, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull NoBottomEdgeRecyclerView noBottomEdgeRecyclerView, @NonNull Space space, @NonNull ImageView imageView7) {
        this.rootView = relativeLayout;
        this.emojis = imageView;
        this.extraViews = linearLayout;
        this.iconMultiGame = imageView2;
        this.imDot = imageView3;
        this.liveBtns = linearLayout2;
        this.liveChatBtn = imageView4;
        this.liveGiftBtn = svgaImageViewV2;
        this.liveImBtn = frameLayout;
        this.liveMoreBtn = imageView5;
        this.liveNormalBtn = imageView6;
        this.recyclerView = noBottomEdgeRecyclerView;
        this.space = space;
        this.voiceSwitch = imageView7;
    }

    @NonNull
    public static FragmentVoiceRoomLiveChatBinding bind(@NonNull View view) {
        int i9 = R.id.emojis;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.emojis);
        if (imageView != null) {
            i9 = R.id.extra_views;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.extra_views);
            if (linearLayout != null) {
                i9 = R.id.icon_multi_game;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_multi_game);
                if (imageView2 != null) {
                    i9 = R.id.im_dot;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.im_dot);
                    if (imageView3 != null) {
                        i9 = R.id.live_btns;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.live_btns);
                        if (linearLayout2 != null) {
                            i9 = R.id.live_chat_btn;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.live_chat_btn);
                            if (imageView4 != null) {
                                i9 = R.id.live_gift_btn;
                                SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.live_gift_btn);
                                if (svgaImageViewV2 != null) {
                                    i9 = R.id.live_im_btn;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_im_btn);
                                    if (frameLayout != null) {
                                        i9 = R.id.live_more_btn;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.live_more_btn);
                                        if (imageView5 != null) {
                                            i9 = R.id.live_normal_btn;
                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.live_normal_btn);
                                            if (imageView6 != null) {
                                                i9 = R.id.recycler_view;
                                                NoBottomEdgeRecyclerView noBottomEdgeRecyclerView = (NoBottomEdgeRecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                                                if (noBottomEdgeRecyclerView != null) {
                                                    i9 = R.id.space;
                                                    Space space = (Space) ViewBindings.findChildViewById(view, R.id.space);
                                                    if (space != null) {
                                                        i9 = R.id.voice_switch;
                                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.voice_switch);
                                                        if (imageView7 != null) {
                                                            return new FragmentVoiceRoomLiveChatBinding((RelativeLayout) view, imageView, linearLayout, imageView2, imageView3, linearLayout2, imageView4, svgaImageViewV2, frameLayout, imageView5, imageView6, noBottomEdgeRecyclerView, space, imageView7);
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
    public static FragmentVoiceRoomLiveChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomLiveChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_voice_room_live_chat, viewGroup, false);
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
