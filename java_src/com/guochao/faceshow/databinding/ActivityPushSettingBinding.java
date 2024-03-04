package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityPushSettingBinding implements ViewBinding {
    @NonNull
    public final ImageView friendCirclePraise;
    @NonNull
    public final FrameLayout liveOpenPushSetting;
    @NonNull
    public final LinearLayout llPushVideo;
    @NonNull
    public final ImageView newChatMsgStatues;
    @NonNull
    public final ImageView requestPraise;
    @NonNull
    public final LinearLayout rootLay;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView swCommentsAbout;
    @NonNull
    public final ImageView swFocusLive;
    @NonNull
    public final ImageView swFocusVideo;
    @NonNull
    public final ImageView swQAndA;
    @NonNull
    public final ImageView swUseYourMusic;
    @NonNull
    public final ImageView swVideoAbout;
    @NonNull
    public final ImageView swWhoSendGift;
    @NonNull
    public final ImageView swWhoSendGiftForChat;
    @NonNull
    public final ImageView swWhoSendGiftFromVideo;
    @NonNull
    public final ImageView systemInteraction;

    private ActivityPushSettingBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull ImageView imageView8, @NonNull ImageView imageView9, @NonNull ImageView imageView10, @NonNull ImageView imageView11, @NonNull ImageView imageView12, @NonNull ImageView imageView13) {
        this.rootView = linearLayout;
        this.friendCirclePraise = imageView;
        this.liveOpenPushSetting = frameLayout;
        this.llPushVideo = linearLayout2;
        this.newChatMsgStatues = imageView2;
        this.requestPraise = imageView3;
        this.rootLay = linearLayout3;
        this.swCommentsAbout = imageView4;
        this.swFocusLive = imageView5;
        this.swFocusVideo = imageView6;
        this.swQAndA = imageView7;
        this.swUseYourMusic = imageView8;
        this.swVideoAbout = imageView9;
        this.swWhoSendGift = imageView10;
        this.swWhoSendGiftForChat = imageView11;
        this.swWhoSendGiftFromVideo = imageView12;
        this.systemInteraction = imageView13;
    }

    @NonNull
    public static ActivityPushSettingBinding bind(@NonNull View view) {
        int i9 = R.id.friend_circle_praise;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.friend_circle_praise);
        if (imageView != null) {
            i9 = R.id.live_open_push_setting;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_open_push_setting);
            if (frameLayout != null) {
                i9 = R.id.ll_push_video;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_push_video);
                if (linearLayout != null) {
                    i9 = R.id.newChatMsgStatues;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.newChatMsgStatues);
                    if (imageView2 != null) {
                        i9 = R.id.requestPraise;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.requestPraise);
                        if (imageView3 != null) {
                            i9 = R.id.root_lay;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.root_lay);
                            if (linearLayout2 != null) {
                                i9 = R.id.swCommentsAbout;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.swCommentsAbout);
                                if (imageView4 != null) {
                                    i9 = R.id.swFocusLive;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.swFocusLive);
                                    if (imageView5 != null) {
                                        i9 = R.id.swFocusVideo;
                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.swFocusVideo);
                                        if (imageView6 != null) {
                                            i9 = R.id.swQAndA;
                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.swQAndA);
                                            if (imageView7 != null) {
                                                i9 = R.id.swUseYourMusic;
                                                ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.swUseYourMusic);
                                                if (imageView8 != null) {
                                                    i9 = R.id.swVideoAbout;
                                                    ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, R.id.swVideoAbout);
                                                    if (imageView9 != null) {
                                                        i9 = R.id.swWhoSendGift;
                                                        ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(view, R.id.swWhoSendGift);
                                                        if (imageView10 != null) {
                                                            i9 = R.id.swWhoSendGiftForChat;
                                                            ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(view, R.id.swWhoSendGiftForChat);
                                                            if (imageView11 != null) {
                                                                i9 = R.id.swWhoSendGiftFromVideo;
                                                                ImageView imageView12 = (ImageView) ViewBindings.findChildViewById(view, R.id.swWhoSendGiftFromVideo);
                                                                if (imageView12 != null) {
                                                                    i9 = R.id.system_interaction;
                                                                    ImageView imageView13 = (ImageView) ViewBindings.findChildViewById(view, R.id.system_interaction);
                                                                    if (imageView13 != null) {
                                                                        return new ActivityPushSettingBinding((LinearLayout) view, imageView, frameLayout, linearLayout, imageView2, imageView3, linearLayout2, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11, imageView12, imageView13);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPushSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPushSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_push_setting, viewGroup, false);
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
