package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class UserCenterSettingActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private UserCenterSettingActivity f25920c;

    @UiThread
    public UserCenterSettingActivity_ViewBinding(UserCenterSettingActivity userCenterSettingActivity, View view) {
        super(userCenterSettingActivity, view);
        this.f25920c = userCenterSettingActivity;
        userCenterSettingActivity.tvDoNotLook = (TextView) c.d(view, R.id.tvDoNotLook, "field 'tvDoNotLook'", TextView.class);
        userCenterSettingActivity.swDoNotLook = (CheckBox) c.d(view, R.id.swDoNotLook, "field 'swDoNotLook'", CheckBox.class);
        userCenterSettingActivity.rlDoNotLookLayout = (RelativeLayout) c.d(view, R.id.rlDoNotLookLayout, "field 'rlDoNotLookLayout'", RelativeLayout.class);
        userCenterSettingActivity.tvDoNotLiveNotice = (TextView) c.d(view, R.id.tvDoNotLiveNotice, "field 'tvDoNotLiveNotice'", TextView.class);
        userCenterSettingActivity.swDoNotLiveNotice = (CheckBox) c.d(view, R.id.swDoNotLiveNotice, "field 'swDoNotLiveNotice'", CheckBox.class);
        userCenterSettingActivity.rlDoNotLiveNoticeLayout = (RelativeLayout) c.d(view, R.id.rlDoNotLiveNoticeLayout, "field 'rlDoNotLiveNoticeLayout'", RelativeLayout.class);
        userCenterSettingActivity.tvStealth = (TextView) c.d(view, R.id.tvStealth, "field 'tvStealth'", TextView.class);
        userCenterSettingActivity.swStealth = (CheckBox) c.d(view, R.id.swStealth, "field 'swStealth'", CheckBox.class);
        userCenterSettingActivity.rlStealthLayout = (RelativeLayout) c.d(view, R.id.rlStealthLayout, "field 'rlStealthLayout'", RelativeLayout.class);
        userCenterSettingActivity.tvShielding = (TextView) c.d(view, R.id.tvShielding, "field 'tvShielding'", TextView.class);
        userCenterSettingActivity.rlShieldingLayout = (RelativeLayout) c.d(view, R.id.rlShieldingLayout, "field 'rlShieldingLayout'", RelativeLayout.class);
        userCenterSettingActivity.tvToReport = (TextView) c.d(view, R.id.tvToReport, "field 'tvToReport'", TextView.class);
        userCenterSettingActivity.rlToReportLayout = (RelativeLayout) c.d(view, R.id.rlToReportLayout, "field 'rlToReportLayout'", RelativeLayout.class);
        userCenterSettingActivity.tvMeet = (TextView) c.d(view, R.id.tvMeet, "field 'tvMeet'", TextView.class);
        userCenterSettingActivity.setGroup = (RelativeLayout) c.d(view, R.id.set_group, "field 'setGroup'", RelativeLayout.class);
        userCenterSettingActivity.groupName = (TextView) c.d(view, R.id.group_name, "field 'groupName'", TextView.class);
        userCenterSettingActivity.swMeet = (CheckBox) c.d(view, R.id.swMeet, "field 'swMeet'", CheckBox.class);
        userCenterSettingActivity.rlMeetLayout = (RelativeLayout) c.d(view, R.id.rlMeetLayout, "field 'rlMeetLayout'", RelativeLayout.class);
        userCenterSettingActivity.rlUnFollow = (RelativeLayout) c.d(view, R.id.rl_un_follow, "field 'rlUnFollow'", RelativeLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        UserCenterSettingActivity userCenterSettingActivity = this.f25920c;
        if (userCenterSettingActivity != null) {
            this.f25920c = null;
            userCenterSettingActivity.tvDoNotLook = null;
            userCenterSettingActivity.swDoNotLook = null;
            userCenterSettingActivity.rlDoNotLookLayout = null;
            userCenterSettingActivity.tvDoNotLiveNotice = null;
            userCenterSettingActivity.swDoNotLiveNotice = null;
            userCenterSettingActivity.rlDoNotLiveNoticeLayout = null;
            userCenterSettingActivity.tvStealth = null;
            userCenterSettingActivity.swStealth = null;
            userCenterSettingActivity.rlStealthLayout = null;
            userCenterSettingActivity.tvShielding = null;
            userCenterSettingActivity.rlShieldingLayout = null;
            userCenterSettingActivity.tvToReport = null;
            userCenterSettingActivity.rlToReportLayout = null;
            userCenterSettingActivity.tvMeet = null;
            userCenterSettingActivity.setGroup = null;
            userCenterSettingActivity.groupName = null;
            userCenterSettingActivity.swMeet = null;
            userCenterSettingActivity.rlMeetLayout = null;
            userCenterSettingActivity.rlUnFollow = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
