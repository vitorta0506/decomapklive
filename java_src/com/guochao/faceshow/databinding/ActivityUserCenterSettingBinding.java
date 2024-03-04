package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityUserCenterSettingBinding implements ViewBinding {
    @NonNull
    public final TextView groupName;
    @NonNull
    public final RelativeLayout rlDoNotLiveNoticeLayout;
    @NonNull
    public final RelativeLayout rlDoNotLookLayout;
    @NonNull
    public final RelativeLayout rlMeetLayout;
    @NonNull
    public final RelativeLayout rlShieldingLayout;
    @NonNull
    public final RelativeLayout rlStealthLayout;
    @NonNull
    public final RelativeLayout rlToReportLayout;
    @NonNull
    public final RelativeLayout rlUnFollow;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final RelativeLayout setGroup;
    @NonNull
    public final TextView setGroupTitle;
    @NonNull
    public final CheckBox swDoNotLiveNotice;
    @NonNull
    public final CheckBox swDoNotLook;
    @NonNull
    public final CheckBox swMeet;
    @NonNull
    public final CheckBox swStealth;
    @NonNull
    public final TextView tvDoNotLiveNotice;
    @NonNull
    public final TextView tvDoNotLook;
    @NonNull
    public final TextView tvMeet;
    @NonNull
    public final TextView tvShielding;
    @NonNull
    public final TextView tvStealth;
    @NonNull
    public final TextView tvToReport;
    @NonNull
    public final TextView tvUnFollow;

    private ActivityUserCenterSettingBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull RelativeLayout relativeLayout5, @NonNull RelativeLayout relativeLayout6, @NonNull RelativeLayout relativeLayout7, @NonNull RelativeLayout relativeLayout8, @NonNull TextView textView2, @NonNull CheckBox checkBox, @NonNull CheckBox checkBox2, @NonNull CheckBox checkBox3, @NonNull CheckBox checkBox4, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9) {
        this.rootView = linearLayout;
        this.groupName = textView;
        this.rlDoNotLiveNoticeLayout = relativeLayout;
        this.rlDoNotLookLayout = relativeLayout2;
        this.rlMeetLayout = relativeLayout3;
        this.rlShieldingLayout = relativeLayout4;
        this.rlStealthLayout = relativeLayout5;
        this.rlToReportLayout = relativeLayout6;
        this.rlUnFollow = relativeLayout7;
        this.setGroup = relativeLayout8;
        this.setGroupTitle = textView2;
        this.swDoNotLiveNotice = checkBox;
        this.swDoNotLook = checkBox2;
        this.swMeet = checkBox3;
        this.swStealth = checkBox4;
        this.tvDoNotLiveNotice = textView3;
        this.tvDoNotLook = textView4;
        this.tvMeet = textView5;
        this.tvShielding = textView6;
        this.tvStealth = textView7;
        this.tvToReport = textView8;
        this.tvUnFollow = textView9;
    }

    @NonNull
    public static ActivityUserCenterSettingBinding bind(@NonNull View view) {
        int i9 = R.id.group_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.group_name);
        if (textView != null) {
            i9 = R.id.rlDoNotLiveNoticeLayout;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlDoNotLiveNoticeLayout);
            if (relativeLayout != null) {
                i9 = R.id.rlDoNotLookLayout;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlDoNotLookLayout);
                if (relativeLayout2 != null) {
                    i9 = R.id.rlMeetLayout;
                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlMeetLayout);
                    if (relativeLayout3 != null) {
                        i9 = R.id.rlShieldingLayout;
                        RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlShieldingLayout);
                        if (relativeLayout4 != null) {
                            i9 = R.id.rlStealthLayout;
                            RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlStealthLayout);
                            if (relativeLayout5 != null) {
                                i9 = R.id.rlToReportLayout;
                                RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlToReportLayout);
                                if (relativeLayout6 != null) {
                                    i9 = R.id.rl_un_follow;
                                    RelativeLayout relativeLayout7 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_un_follow);
                                    if (relativeLayout7 != null) {
                                        i9 = R.id.set_group;
                                        RelativeLayout relativeLayout8 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.set_group);
                                        if (relativeLayout8 != null) {
                                            i9 = R.id.set_group_title;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.set_group_title);
                                            if (textView2 != null) {
                                                i9 = R.id.swDoNotLiveNotice;
                                                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.swDoNotLiveNotice);
                                                if (checkBox != null) {
                                                    i9 = R.id.swDoNotLook;
                                                    CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(view, R.id.swDoNotLook);
                                                    if (checkBox2 != null) {
                                                        i9 = R.id.swMeet;
                                                        CheckBox checkBox3 = (CheckBox) ViewBindings.findChildViewById(view, R.id.swMeet);
                                                        if (checkBox3 != null) {
                                                            i9 = R.id.swStealth;
                                                            CheckBox checkBox4 = (CheckBox) ViewBindings.findChildViewById(view, R.id.swStealth);
                                                            if (checkBox4 != null) {
                                                                i9 = R.id.tvDoNotLiveNotice;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDoNotLiveNotice);
                                                                if (textView3 != null) {
                                                                    i9 = R.id.tvDoNotLook;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDoNotLook);
                                                                    if (textView4 != null) {
                                                                        i9 = R.id.tvMeet;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvMeet);
                                                                        if (textView5 != null) {
                                                                            i9 = R.id.tvShielding;
                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tvShielding);
                                                                            if (textView6 != null) {
                                                                                i9 = R.id.tvStealth;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tvStealth);
                                                                                if (textView7 != null) {
                                                                                    i9 = R.id.tvToReport;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tvToReport);
                                                                                    if (textView8 != null) {
                                                                                        i9 = R.id.tv_un_follow;
                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_un_follow);
                                                                                        if (textView9 != null) {
                                                                                            return new ActivityUserCenterSettingBinding((LinearLayout) view, textView, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, textView2, checkBox, checkBox2, checkBox3, checkBox4, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityUserCenterSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUserCenterSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_user_center_setting, viewGroup, false);
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
