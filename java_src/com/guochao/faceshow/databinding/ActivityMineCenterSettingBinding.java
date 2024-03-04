package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityMineCenterSettingBinding implements ViewBinding {
    @NonNull
    public final CheckBox acceptTrangerConversation;
    @NonNull
    public final CheckBox hideMineBasic;
    @NonNull
    public final CheckBox hideMyEmotionalState;
    @NonNull
    public final CheckBox hideMyFriendsIntentions;
    @NonNull
    public final CheckBox hideMyInterest;
    @NonNull
    public final CheckBox hideMyMasteryLanguage;
    @NonNull
    public final CheckBox hideMyProfession;
    @NonNull
    public final LinearLayout llMultiLanguage;
    @NonNull
    private final LinearLayout rootView;

    private ActivityMineCenterSettingBinding(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull CheckBox checkBox2, @NonNull CheckBox checkBox3, @NonNull CheckBox checkBox4, @NonNull CheckBox checkBox5, @NonNull CheckBox checkBox6, @NonNull CheckBox checkBox7, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.acceptTrangerConversation = checkBox;
        this.hideMineBasic = checkBox2;
        this.hideMyEmotionalState = checkBox3;
        this.hideMyFriendsIntentions = checkBox4;
        this.hideMyInterest = checkBox5;
        this.hideMyMasteryLanguage = checkBox6;
        this.hideMyProfession = checkBox7;
        this.llMultiLanguage = linearLayout2;
    }

    @NonNull
    public static ActivityMineCenterSettingBinding bind(@NonNull View view) {
        int i9 = R.id.accept_tranger_conversation;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.accept_tranger_conversation);
        if (checkBox != null) {
            i9 = R.id.hide_mine_basic;
            CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(view, R.id.hide_mine_basic);
            if (checkBox2 != null) {
                i9 = R.id.hide_my_emotional_state;
                CheckBox checkBox3 = (CheckBox) ViewBindings.findChildViewById(view, R.id.hide_my_emotional_state);
                if (checkBox3 != null) {
                    i9 = R.id.hide_my_friends_intentions;
                    CheckBox checkBox4 = (CheckBox) ViewBindings.findChildViewById(view, R.id.hide_my_friends_intentions);
                    if (checkBox4 != null) {
                        i9 = R.id.hide_my_interest;
                        CheckBox checkBox5 = (CheckBox) ViewBindings.findChildViewById(view, R.id.hide_my_interest);
                        if (checkBox5 != null) {
                            i9 = R.id.hide_my_mastery_language;
                            CheckBox checkBox6 = (CheckBox) ViewBindings.findChildViewById(view, R.id.hide_my_mastery_language);
                            if (checkBox6 != null) {
                                i9 = R.id.hide_my_profession;
                                CheckBox checkBox7 = (CheckBox) ViewBindings.findChildViewById(view, R.id.hide_my_profession);
                                if (checkBox7 != null) {
                                    i9 = R.id.ll_multi_language;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_multi_language);
                                    if (linearLayout != null) {
                                        return new ActivityMineCenterSettingBinding((LinearLayout) view, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, linearLayout);
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
    public static ActivityMineCenterSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityMineCenterSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_mine_center_setting, viewGroup, false);
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
