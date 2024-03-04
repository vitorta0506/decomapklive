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
public final class LivePeopleCardDialogBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final TextView chatTV;
    @NonNull
    public final FrameLayout focus;
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
    private final FrameLayout rootView;
    @NonNull
    public final Space spaceView;
    @NonNull
    public final LinearLayout userInfo1Layout;
    @NonNull
    public final LinearLayout userInfo3Layout;

    private LivePeopleCardDialogBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout3, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull Space space, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.chatTV = textView;
        this.focus = frameLayout2;
        this.peopleCardAtBtn = imageView;
        this.peopleCardChat = frameLayout3;
        this.peopleCardNickName = textView2;
        this.peopleCardReport = imageView2;
        this.peopleCardUserFans = textView3;
        this.peopleCardUserFcoin = textView4;
        this.peopleCardUserFocus = textView5;
        this.peopleCardUserId = textView6;
        this.peopleCardUserSent = textView7;
        this.spaceView = space;
        this.userInfo1Layout = linearLayout;
        this.userInfo3Layout = linearLayout2;
    }

    @NonNull
    public static LivePeopleCardDialogBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.chatTV;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.chatTV);
            if (textView != null) {
                i9 = R.id.focus;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.focus);
                if (frameLayout != null) {
                    i9 = R.id.people_card_at_btn;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.people_card_at_btn);
                    if (imageView != null) {
                        i9 = R.id.people_card_chat;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.people_card_chat);
                        if (frameLayout2 != null) {
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
                                                        i9 = R.id.spaceView;
                                                        Space space = (Space) ViewBindings.findChildViewById(view, R.id.spaceView);
                                                        if (space != null) {
                                                            i9 = R.id.user_info_1_layout;
                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_1_layout);
                                                            if (linearLayout != null) {
                                                                i9 = R.id.user_info_3_layout;
                                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_3_layout);
                                                                if (linearLayout2 != null) {
                                                                    return new LivePeopleCardDialogBinding((FrameLayout) view, headPortraitView, textView, frameLayout, imageView, frameLayout2, textView2, imageView2, textView3, textView4, textView5, textView6, textView7, space, linearLayout, linearLayout2);
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
    public static LivePeopleCardDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LivePeopleCardDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_people_card_dialog, viewGroup, false);
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
