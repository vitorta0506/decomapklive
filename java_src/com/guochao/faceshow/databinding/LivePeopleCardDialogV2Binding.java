package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class LivePeopleCardDialogV2Binding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final LinearLayout bottomButtonArea;
    @NonNull
    public final TextView chatTV;
    @NonNull
    public final FrameLayout focus;
    @NonNull
    public final FrameLayout micStatus;
    @NonNull
    public final ImageView peopleCardAtBtn;
    @NonNull
    public final FrameLayout peopleCardChat;
    @NonNull
    public final TextView peopleCardNickName;
    @NonNull
    public final ImageView peopleCardReport;
    @NonNull
    public final TextView peopleCardUserFans;
    @NonNull
    public final TextView peopleCardUserFcoin;
    @NonNull
    public final TextView peopleCardUserFocus;
    @NonNull
    public final TextView peopleCardUserId;
    @NonNull
    public final TextView peopleCardUserSent;
    @NonNull
    public final TextView role;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final FrameLayout sendGift;
    @NonNull
    public final Space spaceView;
    @NonNull
    public final LinearLayout userInfo1Layout;
    @NonNull
    public final LinearLayout userInfo3Layout;

    private LivePeopleCardDialogV2Binding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout4, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull FrameLayout frameLayout5, @NonNull Space space, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.bottomButtonArea = linearLayout;
        this.chatTV = textView;
        this.focus = frameLayout2;
        this.micStatus = frameLayout3;
        this.peopleCardAtBtn = imageView;
        this.peopleCardChat = frameLayout4;
        this.peopleCardNickName = textView2;
        this.peopleCardReport = imageView2;
        this.peopleCardUserFans = textView3;
        this.peopleCardUserFcoin = textView4;
        this.peopleCardUserFocus = textView5;
        this.peopleCardUserId = textView6;
        this.peopleCardUserSent = textView7;
        this.role = textView8;
        this.sendGift = frameLayout5;
        this.spaceView = space;
        this.userInfo1Layout = linearLayout2;
        this.userInfo3Layout = linearLayout3;
    }

    @NonNull
    public static LivePeopleCardDialogV2Binding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.bottom_button_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_button_area);
            if (linearLayout != null) {
                i9 = R.id.chatTV;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.chatTV);
                if (textView != null) {
                    i9 = R.id.focus;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.focus);
                    if (frameLayout != null) {
                        i9 = R.id.mic_status;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.mic_status);
                        if (frameLayout2 != null) {
                            i9 = R.id.people_card_at_btn;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.people_card_at_btn);
                            if (imageView != null) {
                                i9 = R.id.people_card_chat;
                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.people_card_chat);
                                if (frameLayout3 != null) {
                                    i9 = R.id.people_card_nick_name;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.people_card_nick_name);
                                    if (textView2 != null) {
                                        i9 = R.id.people_card_report;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.people_card_report);
                                        if (imageView2 != null) {
                                            i9 = R.id.people_card_user_fans;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.people_card_user_fans);
                                            if (textView3 != null) {
                                                i9 = R.id.people_card_user_fcoin;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.people_card_user_fcoin);
                                                if (textView4 != null) {
                                                    i9 = R.id.people_card_user_focus;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.people_card_user_focus);
                                                    if (textView5 != null) {
                                                        i9 = R.id.people_card_user_id;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.people_card_user_id);
                                                        if (textView6 != null) {
                                                            i9 = R.id.people_card_user_sent;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.people_card_user_sent);
                                                            if (textView7 != null) {
                                                                i9 = R.id.role;
                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.role);
                                                                if (textView8 != null) {
                                                                    i9 = R.id.send_gift;
                                                                    FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.send_gift);
                                                                    if (frameLayout4 != null) {
                                                                        i9 = R.id.spaceView;
                                                                        Space space = (Space) ViewBindings.findChildViewById(view, R.id.spaceView);
                                                                        if (space != null) {
                                                                            i9 = R.id.user_info_1_layout;
                                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_1_layout);
                                                                            if (linearLayout2 != null) {
                                                                                i9 = R.id.user_info_3_layout;
                                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_3_layout);
                                                                                if (linearLayout3 != null) {
                                                                                    return new LivePeopleCardDialogV2Binding((FrameLayout) view, headPortraitView, linearLayout, textView, frameLayout, frameLayout2, imageView, frameLayout3, textView2, imageView2, textView3, textView4, textView5, textView6, textView7, textView8, frameLayout4, space, linearLayout2, linearLayout3);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LivePeopleCardDialogV2Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LivePeopleCardDialogV2Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_people_card_dialog_v2, viewGroup, false);
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
