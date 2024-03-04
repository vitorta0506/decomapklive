package com.guochao.faceshow.mine.view;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.PrivacySettingModel;
import com.guochao.faceshow.aaspring.modulars.date.activity.DateSettingActivity;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes4.dex */
public class PrivacySettingsActivity extends BaseActivity implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    PrivacySettingModel f25678a;
    @BindView
    CheckBox adsSwitch;

    /* renamed from: b  reason: collision with root package name */
    private boolean f25679b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f25680c;
    @BindView
    CheckBox checkHidePeopleNearby;
    @BindView
    CheckBox checkHideVoiceRoom;
    @BindView
    CheckBox checkPrivateLiveInvite;
    @BindView
    CheckBox mCheckBoxDistance;
    @BindView
    CheckBox mCheckBoxOnline;
    @BindView
    LinearLayout peopleNearbyLayout;
    @BindView
    LinearLayout trtcSetting;
    @BindView
    TextView tvPeopleNearby;
    @BindView
    View viewLine;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements GCRequestJava.c<Object> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            PrivacySettingsActivity.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements GCRequestJava.d<PrivacySettingModel> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<PrivacySettingModel> response) {
            PrivacySettingsActivity.this.f25678a = response.getData();
            PrivacySettingsActivity.this.dismissProgressDialog();
            PrivacySettingsActivity privacySettingsActivity = PrivacySettingsActivity.this;
            PrivacySettingModel privacySettingModel = privacySettingsActivity.f25678a;
            if (privacySettingModel != null) {
                privacySettingsActivity.mCheckBoxOnline.setChecked(privacySettingModel.getOnline() == 1);
                PrivacySettingsActivity privacySettingsActivity2 = PrivacySettingsActivity.this;
                privacySettingsActivity2.mCheckBoxDistance.setChecked(privacySettingsActivity2.f25678a.getCloseDistance() == 2);
                PrivacySettingsActivity privacySettingsActivity3 = PrivacySettingsActivity.this;
                privacySettingsActivity3.checkHidePeopleNearby.setChecked(privacySettingsActivity3.f25678a.getNearbyFunc() != 1);
                PrivacySettingsActivity privacySettingsActivity4 = PrivacySettingsActivity.this;
                privacySettingsActivity4.checkHideVoiceRoom.setChecked(privacySettingsActivity4.f25678a.getVoiceRoomStatus() == 0);
                PrivacySettingsActivity privacySettingsActivity5 = PrivacySettingsActivity.this;
                privacySettingsActivity5.checkPrivateLiveInvite.setChecked(privacySettingsActivity5.f25678a.getPrivateInvite() == 0);
                PrivacySettingsActivity.this.f25679b = true;
            }
        }
    }

    /* loaded from: classes4.dex */
    class c extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f25683a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CompoundButton f25684b;

        c(boolean z10, CompoundButton compoundButton) {
            this.f25683a = z10;
            this.f25684b = compoundButton;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            this.f25684b.setEnabled(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            UserBean currentUser = PrivacySettingsActivity.this.getCurrentUser();
            if (currentUser.userSet == null) {
                currentUser.userSet = new UserBean.UserSet();
            }
            currentUser.userSet.online = this.f25683a ? 1 : 0;
            b8.e.g().a(currentUser, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CompoundButton f25686a;

        d(CompoundButton compoundButton) {
            this.f25686a = compoundButton;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            this.f25686a.setEnabled(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CompoundButton f25688a;

        e(CompoundButton compoundButton) {
            this.f25688a = compoundButton;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            this.f25688a.setEnabled(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            this.f25688a.setEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements GCRequestJava.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CompoundButton f25690a;

        f(CompoundButton compoundButton) {
            this.f25690a = compoundButton;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            this.f25690a.setEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements GCRequestJava.d<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CompoundButton f25692a;

        g(CompoundButton compoundButton) {
            this.f25692a = compoundButton;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Boolean> response) {
            this.f25692a.setEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f25694a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f25695b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f25696c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f25697d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ CompoundButton f25698e;

        h(String str, String str2, String str3, String str4, CompoundButton compoundButton) {
            this.f25694a = str;
            this.f25695b = str2;
            this.f25696c = str3;
            this.f25697d = str4;
            this.f25698e = compoundButton;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            this.f25698e.setEnabled(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            UserBean currentUser = PrivacySettingsActivity.this.getCurrentUser();
            if (currentUser.userSet == null) {
                currentUser.userSet = new UserBean.UserSet();
            }
            currentUser.userSet.distance = Integer.parseInt(this.f25694a);
            currentUser.userSet.nearby = Integer.parseInt(this.f25695b);
            currentUser.userSet.friends = Integer.parseInt(this.f25696c);
            currentUser.userSet.closeDistance = Integer.parseInt(this.f25697d);
            b8.e.g().a(currentUser, false);
        }
    }

    private void d0() {
        showProgressDialog("");
        new GCRequestJava("api/token/user/editor/current/user/privacy/setting/map").j(new b()).d(new a()).bindToLifecycle(getLifecycle()).method(GCRequest.Method.GET).request();
    }

    private void e0(CompoundButton compoundButton, int i9) {
        post("tokens/report/updateNearbyFunc").D(Contants.USER_ID, getCurrentUser().getUserId()).B("nearbyFunc", i9).M(new e(compoundButton));
    }

    private void g0(CompoundButton compoundButton, String str, String str2, String str3, String str4, String str5) {
        compoundButton.setEnabled(false);
        post(Contants.DISTANCE_MODE).D(Contants.USER_ID, str).D("distance", str2).D("nearby", str3).D("language", "1").D(NativeProtocol.AUDIENCE_FRIENDS, str4).D("closeDistance", str5).M(new h(str2, str3, str4, str5, compoundButton));
    }

    private void i0(CompoundButton compoundButton, boolean z10) {
        post("tokens/report/updatePrivateInvite").y("privateInvite", Integer.valueOf(!z10 ? 1 : 0)).M(new d(compoundButton));
    }

    private void k0(CompoundButton compoundButton, int i9) {
        new GCRequestJava("api/token/user/editor/current/user/set/privacy").putBodyModel(new PrivacySettingModel.VoiceRoomStatusModel(i9), true).j(new g(compoundButton)).d(new f(compoundButton)).bindToLifecycle(getLifecycle()).request();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_privacy_setting;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (BaseConfig.isChinese()) {
            this.trtcSetting.setVisibility(8);
        }
        UserBean currentUser = getCurrentUser();
        if (currentUser.userSet == null) {
            currentUser.userSet = new UserBean.UserSet();
        }
        this.tvPeopleNearby.setText(R.string.personal_show_people_nearby);
        this.mCheckBoxDistance.setOnCheckedChangeListener(this);
        this.mCheckBoxOnline.setOnCheckedChangeListener(this);
        this.checkHidePeopleNearby.setOnCheckedChangeListener(this);
        this.checkHideVoiceRoom.setOnCheckedChangeListener(this);
        this.checkPrivateLiveInvite.setOnCheckedChangeListener(this);
        this.adsSwitch.setOnCheckedChangeListener(this);
        CheckBox checkBox = this.adsSwitch;
        BaseApplication baseApplication = BaseApplication.getInstance();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HidePermanentlyAds");
        sb2.append(getCurrentUser().getUserId());
        checkBox.setChecked(SpUtils.getLong(baseApplication, sb2.toString()) != -1);
        this.f25680c = true;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        d0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 != 1011 || intent == null) {
            return;
        }
        int intExtra = intent.getIntExtra("appointAuth", 0);
        PrivacySettingModel privacySettingModel = this.f25678a;
        if (privacySettingModel == null || intExtra == privacySettingModel.getAppointAuth()) {
            return;
        }
        this.f25678a.setAppointAuth(intExtra);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
        switch (compoundButton.getId()) {
            case R.id.ads_switch /* 2131361946 */:
                if (this.f25679b) {
                    if (z10) {
                        BaseApplication baseApplication = BaseApplication.getInstance();
                        SpUtils.setLong(baseApplication, "HidePermanentlyAds" + getCurrentUser().getUserId(), 0L);
                        return;
                    }
                    BaseApplication baseApplication2 = BaseApplication.getInstance();
                    SpUtils.setLong(baseApplication2, "HidePermanentlyAds" + getCurrentUser().getUserId(), -1L);
                    return;
                }
                return;
            case R.id.check_hide_online /* 2131362287 */:
                if (this.f25679b) {
                    compoundButton.setEnabled(false);
                    post("tokens/report/updateOnline").B("online", z10 ? 1 : 0).D(Contants.USER_ID, getCurrentUser().getUserId()).D("language", "1").M(new c(z10, compoundButton));
                    return;
                }
                return;
            case R.id.check_hide_people_nearby /* 2131362288 */:
                if (this.f25679b) {
                    compoundButton.setEnabled(false);
                    if (!z10) {
                        e0(compoundButton, 1);
                        return;
                    } else {
                        e0(compoundButton, 0);
                        return;
                    }
                }
                return;
            case R.id.check_hide_voice_room /* 2131362289 */:
                if (this.f25679b) {
                    compoundButton.setEnabled(false);
                    if (z10) {
                        k0(compoundButton, 0);
                        return;
                    } else {
                        k0(compoundButton, 1);
                        return;
                    }
                }
                return;
            case R.id.distance_check /* 2131362520 */:
                if (this.f25679b) {
                    if (!z10) {
                        g0(compoundButton, getCurrentUser().getUserId(), "2", "2", "2", "1");
                        return;
                    } else {
                        g0(compoundButton, getCurrentUser().getUserId(), "1", "2", "2", "2");
                        return;
                    }
                }
                return;
            case R.id.private_live_invite_toggle /* 2131364036 */:
                if (this.f25679b) {
                    compoundButton.setEnabled(false);
                    i0(compoundButton, z10);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.setting_privacy_setting);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.tvBlackList) {
            startActivity(BlackListActivity.class);
        } else if (id2 == R.id.tvChatList) {
            startActivity(ChatControllerActivity.class);
        } else if (id2 != R.id.tv_trtc_setting) {
        } else {
            Intent intent = new Intent(getActivity(), DateSettingActivity.class);
            intent.putExtra("fromType", 2);
            startActivityForResult(intent, 1011);
        }
    }
}
