package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityPrivacySettingBinding implements ViewBinding {
    @NonNull
    public final LinearLayout adsLayout;
    @NonNull
    public final CheckBox adsSwitch;
    @NonNull
    public final CheckBox checkHideOnline;
    @NonNull
    public final CheckBox checkHidePeopleNearby;
    @NonNull
    public final CheckBox checkHideVoiceRoom;
    @NonNull
    public final CheckBox distanceCheck;
    @NonNull
    public final LinearLayout onlineLayout;
    @NonNull
    public final LinearLayout peopleNearbyLayout;
    @NonNull
    public final LinearLayout privateLiveInviteLayout;
    @NonNull
    public final CheckBox privateLiveInviteToggle;
    @NonNull
    public final LinearLayout rlDistancePrivacyLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout tvBlackList;
    @NonNull
    public final LinearLayout tvChatList;
    @NonNull
    public final TextView tvDistancePrivacy;
    @NonNull
    public final TextView tvOnline;
    @NonNull
    public final TextView tvPeopleNearby;
    @NonNull
    public final LinearLayout tvTrtcSetting;
    @NonNull
    public final View viewLine;
    @NonNull
    public final LinearLayout voiceRoomLayout;

    private ActivityPrivacySettingBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull CheckBox checkBox, @NonNull CheckBox checkBox2, @NonNull CheckBox checkBox3, @NonNull CheckBox checkBox4, @NonNull CheckBox checkBox5, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull CheckBox checkBox6, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull LinearLayout linearLayout8, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout9, @NonNull View view, @NonNull LinearLayout linearLayout10) {
        this.rootView = linearLayout;
        this.adsLayout = linearLayout2;
        this.adsSwitch = checkBox;
        this.checkHideOnline = checkBox2;
        this.checkHidePeopleNearby = checkBox3;
        this.checkHideVoiceRoom = checkBox4;
        this.distanceCheck = checkBox5;
        this.onlineLayout = linearLayout3;
        this.peopleNearbyLayout = linearLayout4;
        this.privateLiveInviteLayout = linearLayout5;
        this.privateLiveInviteToggle = checkBox6;
        this.rlDistancePrivacyLayout = linearLayout6;
        this.tvBlackList = linearLayout7;
        this.tvChatList = linearLayout8;
        this.tvDistancePrivacy = textView;
        this.tvOnline = textView2;
        this.tvPeopleNearby = textView3;
        this.tvTrtcSetting = linearLayout9;
        this.viewLine = view;
        this.voiceRoomLayout = linearLayout10;
    }

    @NonNull
    public static ActivityPrivacySettingBinding bind(@NonNull View view) {
        int i9 = R.id.ads_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ads_layout);
        if (linearLayout != null) {
            i9 = R.id.ads_switch;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.ads_switch);
            if (checkBox != null) {
                i9 = R.id.check_hide_online;
                CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(view, R.id.check_hide_online);
                if (checkBox2 != null) {
                    i9 = R.id.check_hide_people_nearby;
                    CheckBox checkBox3 = (CheckBox) ViewBindings.findChildViewById(view, R.id.check_hide_people_nearby);
                    if (checkBox3 != null) {
                        i9 = R.id.check_hide_voice_room;
                        CheckBox checkBox4 = (CheckBox) ViewBindings.findChildViewById(view, R.id.check_hide_voice_room);
                        if (checkBox4 != null) {
                            i9 = R.id.distance_check;
                            CheckBox checkBox5 = (CheckBox) ViewBindings.findChildViewById(view, R.id.distance_check);
                            if (checkBox5 != null) {
                                i9 = R.id.online_layout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.online_layout);
                                if (linearLayout2 != null) {
                                    i9 = R.id.people_nearby_layout;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.people_nearby_layout);
                                    if (linearLayout3 != null) {
                                        i9 = R.id.private_live_invite_layout;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.private_live_invite_layout);
                                        if (linearLayout4 != null) {
                                            i9 = R.id.private_live_invite_toggle;
                                            CheckBox checkBox6 = (CheckBox) ViewBindings.findChildViewById(view, R.id.private_live_invite_toggle);
                                            if (checkBox6 != null) {
                                                i9 = R.id.rlDistancePrivacyLayout;
                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rlDistancePrivacyLayout);
                                                if (linearLayout5 != null) {
                                                    i9 = R.id.tvBlackList;
                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tvBlackList);
                                                    if (linearLayout6 != null) {
                                                        i9 = R.id.tvChatList;
                                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tvChatList);
                                                        if (linearLayout7 != null) {
                                                            i9 = R.id.tvDistancePrivacy;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvDistancePrivacy);
                                                            if (textView != null) {
                                                                i9 = R.id.tv_online;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_online);
                                                                if (textView2 != null) {
                                                                    i9 = R.id.tv_people_nearby;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_people_nearby);
                                                                    if (textView3 != null) {
                                                                        i9 = R.id.tv_trtc_setting;
                                                                        LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tv_trtc_setting);
                                                                        if (linearLayout8 != null) {
                                                                            i9 = R.id.view_line;
                                                                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_line);
                                                                            if (findChildViewById != null) {
                                                                                i9 = R.id.voice_room_layout;
                                                                                LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.voice_room_layout);
                                                                                if (linearLayout9 != null) {
                                                                                    return new ActivityPrivacySettingBinding((LinearLayout) view, linearLayout, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, linearLayout2, linearLayout3, linearLayout4, checkBox6, linearLayout5, linearLayout6, linearLayout7, textView, textView2, textView3, linearLayout8, findChildViewById, linearLayout9);
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
    public static ActivityPrivacySettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPrivacySettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_privacy_setting, viewGroup, false);
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
