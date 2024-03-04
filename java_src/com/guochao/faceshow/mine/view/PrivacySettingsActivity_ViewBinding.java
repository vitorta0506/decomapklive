package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class PrivacySettingsActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PrivacySettingsActivity f25700c;

    /* renamed from: d  reason: collision with root package name */
    private View f25701d;

    /* renamed from: e  reason: collision with root package name */
    private View f25702e;

    /* renamed from: f  reason: collision with root package name */
    private View f25703f;

    /* loaded from: classes4.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PrivacySettingsActivity f25704a;

        a(PrivacySettingsActivity privacySettingsActivity) {
            this.f25704a = privacySettingsActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25704a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PrivacySettingsActivity f25706a;

        b(PrivacySettingsActivity privacySettingsActivity) {
            this.f25706a = privacySettingsActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25706a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PrivacySettingsActivity f25708a;

        c(PrivacySettingsActivity privacySettingsActivity) {
            this.f25708a = privacySettingsActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25708a.onViewClicked(view);
        }
    }

    @UiThread
    public PrivacySettingsActivity_ViewBinding(PrivacySettingsActivity privacySettingsActivity, View view) {
        super(privacySettingsActivity, view);
        this.f25700c = privacySettingsActivity;
        privacySettingsActivity.mCheckBoxDistance = (CheckBox) butterknife.internal.c.d(view, R.id.distance_check, "field 'mCheckBoxDistance'", CheckBox.class);
        privacySettingsActivity.mCheckBoxOnline = (CheckBox) butterknife.internal.c.d(view, R.id.check_hide_online, "field 'mCheckBoxOnline'", CheckBox.class);
        privacySettingsActivity.checkHidePeopleNearby = (CheckBox) butterknife.internal.c.d(view, R.id.check_hide_people_nearby, "field 'checkHidePeopleNearby'", CheckBox.class);
        privacySettingsActivity.checkHideVoiceRoom = (CheckBox) butterknife.internal.c.d(view, R.id.check_hide_voice_room, "field 'checkHideVoiceRoom'", CheckBox.class);
        privacySettingsActivity.checkPrivateLiveInvite = (CheckBox) butterknife.internal.c.d(view, R.id.private_live_invite_toggle, "field 'checkPrivateLiveInvite'", CheckBox.class);
        privacySettingsActivity.adsSwitch = (CheckBox) butterknife.internal.c.d(view, R.id.ads_switch, "field 'adsSwitch'", CheckBox.class);
        privacySettingsActivity.tvPeopleNearby = (TextView) butterknife.internal.c.d(view, R.id.tv_people_nearby, "field 'tvPeopleNearby'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.tv_trtc_setting, "field 'trtcSetting' and method 'onViewClicked'");
        privacySettingsActivity.trtcSetting = (LinearLayout) butterknife.internal.c.a(c10, R.id.tv_trtc_setting, "field 'trtcSetting'", LinearLayout.class);
        this.f25701d = c10;
        c10.setOnClickListener(new a(privacySettingsActivity));
        privacySettingsActivity.viewLine = butterknife.internal.c.c(view, R.id.view_line, "field 'viewLine'");
        privacySettingsActivity.peopleNearbyLayout = (LinearLayout) butterknife.internal.c.d(view, R.id.people_nearby_layout, "field 'peopleNearbyLayout'", LinearLayout.class);
        View c11 = butterknife.internal.c.c(view, R.id.tvBlackList, "method 'onViewClicked'");
        this.f25702e = c11;
        c11.setOnClickListener(new b(privacySettingsActivity));
        View c12 = butterknife.internal.c.c(view, R.id.tvChatList, "method 'onViewClicked'");
        this.f25703f = c12;
        c12.setOnClickListener(new c(privacySettingsActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PrivacySettingsActivity privacySettingsActivity = this.f25700c;
        if (privacySettingsActivity != null) {
            this.f25700c = null;
            privacySettingsActivity.mCheckBoxDistance = null;
            privacySettingsActivity.mCheckBoxOnline = null;
            privacySettingsActivity.checkHidePeopleNearby = null;
            privacySettingsActivity.checkHideVoiceRoom = null;
            privacySettingsActivity.checkPrivateLiveInvite = null;
            privacySettingsActivity.adsSwitch = null;
            privacySettingsActivity.tvPeopleNearby = null;
            privacySettingsActivity.trtcSetting = null;
            privacySettingsActivity.viewLine = null;
            privacySettingsActivity.peopleNearbyLayout = null;
            this.f25701d.setOnClickListener(null);
            this.f25701d = null;
            this.f25702e.setOnClickListener(null);
            this.f25702e = null;
            this.f25703f.setOnClickListener(null);
            this.f25703f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
