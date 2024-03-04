package com.guochao.faceshow.mine.view;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.ViewModelProvider;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.mine.model.SettingStatusBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.e;
/* loaded from: classes4.dex */
public class UserCenterSettingActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f25896a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f25897b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f25898c = "";

    /* renamed from: d  reason: collision with root package name */
    private boolean f25899d;

    /* renamed from: e  reason: collision with root package name */
    private SettingStatusBean f25900e;

    /* renamed from: f  reason: collision with root package name */
    private com.guochao.faceshow.views.e f25901f;

    /* renamed from: g  reason: collision with root package name */
    private com.guochao.faceshow.views.e f25902g;
    @BindView
    TextView groupName;

    /* renamed from: h  reason: collision with root package name */
    private FriendListViewModel f25903h;
    @BindView
    RelativeLayout rlDoNotLiveNoticeLayout;
    @BindView
    RelativeLayout rlDoNotLookLayout;
    @BindView
    RelativeLayout rlMeetLayout;
    @BindView
    RelativeLayout rlShieldingLayout;
    @BindView
    RelativeLayout rlStealthLayout;
    @BindView
    RelativeLayout rlToReportLayout;
    @BindView
    RelativeLayout rlUnFollow;
    @BindView
    RelativeLayout setGroup;
    @BindView
    CheckBox swDoNotLiveNotice;
    @BindView
    CheckBox swDoNotLook;
    @BindView
    CheckBox swMeet;
    @BindView
    CheckBox swStealth;
    @BindView
    TextView tvDoNotLiveNotice;
    @BindView
    TextView tvDoNotLook;
    @BindView
    TextView tvMeet;
    @BindView
    TextView tvShielding;
    @BindView
    TextView tvStealth;
    @BindView
    TextView tvToReport;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {

        /* renamed from: com.guochao.faceshow.mine.view.UserCenterSettingActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0255a implements e.a {
            C0255a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    if (UserCenterSettingActivity.this.f25900e != null) {
                        UserCenterSettingActivity userCenterSettingActivity = UserCenterSettingActivity.this;
                        userCenterSettingActivity.u0(userCenterSettingActivity.f25900e.getSetId(), "isShow", 0);
                    } else {
                        CheckBox checkBox = UserCenterSettingActivity.this.swDoNotLook;
                        checkBox.setChecked(!checkBox.isChecked());
                    }
                    dialog.dismiss();
                    return;
                }
                UserCenterSettingActivity.this.swDoNotLook.setChecked(false);
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (UserCenterSettingActivity.this.swDoNotLook.isChecked()) {
                if (UserCenterSettingActivity.this.f25901f == null) {
                    UserCenterSettingActivity.this.f25901f = new com.guochao.faceshow.views.e(UserCenterSettingActivity.this.getActivity(), new C0255a());
                    UserCenterSettingActivity.this.f25901f.setCancelable(false);
                    UserCenterSettingActivity.this.f25901f.b(UserCenterSettingActivity.this.getResources().getString(R.string.common_dialog_title_tip));
                    UserCenterSettingActivity.this.f25901f.f(UserCenterSettingActivity.this.getResources().getString(R.string.user_center_circle_content));
                }
                UserCenterSettingActivity.this.f25901f.show();
            } else if (UserCenterSettingActivity.this.f25900e != null) {
                UserCenterSettingActivity userCenterSettingActivity = UserCenterSettingActivity.this;
                userCenterSettingActivity.u0(userCenterSettingActivity.f25900e.getSetId(), "isShow", 1);
            } else {
                CheckBox checkBox = UserCenterSettingActivity.this.swDoNotLook;
                checkBox.setChecked(true ^ checkBox.isChecked());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<SettingStatusBean> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable SettingStatusBean settingStatusBean, @NonNull FaceCastBaseResponse<SettingStatusBean> faceCastBaseResponse) {
            if (settingStatusBean != null) {
                UserCenterSettingActivity.this.f25900e = settingStatusBean;
                if (UserCenterSettingActivity.this.f25900e.getIsFriend() == 1) {
                    UserCenterSettingActivity.this.rlDoNotLookLayout.setVisibility(0);
                    UserCenterSettingActivity.this.rlDoNotLiveNoticeLayout.setVisibility(0);
                    UserCenterSettingActivity.this.rlStealthLayout.setVisibility(0);
                    UserCenterSettingActivity.this.rlShieldingLayout.setVisibility(0);
                    UserCenterSettingActivity.this.rlToReportLayout.setVisibility(0);
                    if (BaseConfig.isChinese()) {
                        UserCenterSettingActivity.this.rlUnFollow.setVisibility(0);
                    }
                    UserCenterSettingActivity.this.setGroup.setVisibility(0);
                } else {
                    UserCenterSettingActivity.this.rlDoNotLookLayout.setVisibility(8);
                    UserCenterSettingActivity.this.rlDoNotLiveNoticeLayout.setVisibility(8);
                    UserCenterSettingActivity.this.rlStealthLayout.setVisibility(8);
                    UserCenterSettingActivity.this.rlShieldingLayout.setVisibility(0);
                    UserCenterSettingActivity.this.rlToReportLayout.setVisibility(0);
                    if (BaseConfig.isChinese()) {
                        UserCenterSettingActivity.this.rlUnFollow.setVisibility(8);
                    }
                    UserCenterSettingActivity.this.setGroup.setVisibility(8);
                }
                int isShow = UserCenterSettingActivity.this.f25900e.getIsShow();
                if (isShow == 0) {
                    UserCenterSettingActivity.this.swDoNotLook.setChecked(true);
                } else if (isShow == 1) {
                    UserCenterSettingActivity.this.swDoNotLook.setChecked(false);
                }
                int isNotice = UserCenterSettingActivity.this.f25900e.getIsNotice();
                if (isNotice == 0) {
                    UserCenterSettingActivity.this.swDoNotLiveNotice.setChecked(true);
                } else if (isNotice == 1) {
                    UserCenterSettingActivity.this.swDoNotLiveNotice.setChecked(false);
                }
                int stealth = UserCenterSettingActivity.this.f25900e.getStealth();
                if (stealth == 0) {
                    UserCenterSettingActivity.this.swStealth.setChecked(true);
                } else if (stealth == 1) {
                    UserCenterSettingActivity.this.swStealth.setChecked(false);
                }
                if (UserCenterSettingActivity.this.f25900e.getIsFriend() == 1) {
                    int isBlack = UserCenterSettingActivity.this.f25900e.getIsBlack();
                    if (isBlack == 0) {
                        UserCenterSettingActivity.this.rlShieldingLayout.setVisibility(0);
                    } else if (isBlack == 1) {
                        UserCenterSettingActivity.this.rlShieldingLayout.setVisibility(8);
                    }
                }
                int lvl = UserCenterSettingActivity.this.f25900e.getLvl();
                if (lvl == 0) {
                    UserCenterSettingActivity.this.swMeet.setChecked(false);
                } else if (lvl != 1) {
                } else {
                    UserCenterSettingActivity.this.swMeet.setChecked(true);
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<SettingStatusBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f25907a;

        c(String str) {
            this.f25907a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            String str = this.f25907a;
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1894004733:
                    if (str.equals("stealth")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1180125369:
                    if (str.equals("isShow")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -365655902:
                    if (str.equals("isNotice")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 107554:
                    if (str.equals("lvl")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    CheckBox checkBox = UserCenterSettingActivity.this.swStealth;
                    checkBox.setChecked(!checkBox.isChecked());
                    return;
                case 1:
                    CheckBox checkBox2 = UserCenterSettingActivity.this.swDoNotLook;
                    checkBox2.setChecked(!checkBox2.isChecked());
                    return;
                case 2:
                    CheckBox checkBox3 = UserCenterSettingActivity.this.swDoNotLiveNotice;
                    checkBox3.setChecked(!checkBox3.isChecked());
                    return;
                case 3:
                    CheckBox checkBox4 = UserCenterSettingActivity.this.swMeet;
                    checkBox4.setChecked(!checkBox4.isChecked());
                    return;
                default:
                    return;
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements e.a {
        d() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                UserCenterSettingActivity userCenterSettingActivity = UserCenterSettingActivity.this;
                userCenterSettingActivity.q0(userCenterSettingActivity.f25896a);
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements hb.b<String> {
        e() {
        }

        @Override // hb.b
        /* renamed from: a */
        public void onResponse(String str) {
            UserCenterSettingActivity.this.rlUnFollow.setVisibility(8);
            UserCenterSettingActivity.this.rlDoNotLookLayout.setVisibility(8);
            UserCenterSettingActivity.this.rlDoNotLiveNoticeLayout.setVisibility(8);
            UserCenterSettingActivity.this.rlStealthLayout.setVisibility(8);
            UserCenterSettingActivity.this.rlShieldingLayout.setVisibility(0);
            UserCenterSettingActivity.this.rlToReportLayout.setVisibility(0);
        }

        @Override // hb.b
        public /* synthetic */ void onFail(String str) {
            hb.a.a(this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (UserCenterSettingActivity.this.swDoNotLiveNotice.isChecked()) {
                if (UserCenterSettingActivity.this.f25900e != null) {
                    UserCenterSettingActivity userCenterSettingActivity = UserCenterSettingActivity.this;
                    userCenterSettingActivity.u0(userCenterSettingActivity.f25900e.getSetId(), "isNotice", 0);
                    return;
                }
                CheckBox checkBox = UserCenterSettingActivity.this.swDoNotLiveNotice;
                checkBox.setChecked(!checkBox.isChecked());
            } else if (UserCenterSettingActivity.this.f25900e != null) {
                UserCenterSettingActivity userCenterSettingActivity2 = UserCenterSettingActivity.this;
                userCenterSettingActivity2.u0(userCenterSettingActivity2.f25900e.getSetId(), "isNotice", 1);
            } else {
                CheckBox checkBox2 = UserCenterSettingActivity.this.swDoNotLiveNotice;
                checkBox2.setChecked(!checkBox2.isChecked());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (UserCenterSettingActivity.this.swStealth.isChecked()) {
                if (UserCenterSettingActivity.this.f25900e != null) {
                    UserCenterSettingActivity userCenterSettingActivity = UserCenterSettingActivity.this;
                    userCenterSettingActivity.u0(userCenterSettingActivity.f25900e.getSetId(), "stealth", 0);
                    return;
                }
                CheckBox checkBox = UserCenterSettingActivity.this.swStealth;
                checkBox.setChecked(!checkBox.isChecked());
            } else if (UserCenterSettingActivity.this.f25900e != null) {
                UserCenterSettingActivity userCenterSettingActivity2 = UserCenterSettingActivity.this;
                userCenterSettingActivity2.u0(userCenterSettingActivity2.f25900e.getSetId(), "stealth", 1);
            } else {
                CheckBox checkBox2 = UserCenterSettingActivity.this.swStealth;
                checkBox2.setChecked(!checkBox2.isChecked());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h implements View.OnClickListener {

        /* loaded from: classes4.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    UserCenterSettingActivity userCenterSettingActivity = UserCenterSettingActivity.this;
                    userCenterSettingActivity.t0(SpUtils.getStr(userCenterSettingActivity, Contants.USER_ID), UserCenterSettingActivity.this.f25896a, 4);
                    dialog.dismiss();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (UserCenterSettingActivity.this.f25902g == null) {
                UserCenterSettingActivity.this.f25902g = new com.guochao.faceshow.views.e(UserCenterSettingActivity.this.getActivity(), new a());
                UserCenterSettingActivity.this.f25902g.setCancelable(false);
                UserCenterSettingActivity.this.f25902g.b(UserCenterSettingActivity.this.getResources().getString(R.string.common_dialog_title_tip));
                UserCenterSettingActivity.this.f25902g.f(UserCenterSettingActivity.this.getResources().getString(R.string.user_center_black_list));
            }
            UserCenterSettingActivity.this.f25902g.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = UserCenterSettingActivity.this.getIntent();
            intent.putExtra(Contants.USER_ID, UserCenterSettingActivity.this.f25896a);
            UserCenterSettingActivity.this.setResult(-1, intent);
            UserCenterSettingActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (UserCenterSettingActivity.this.swMeet.isChecked()) {
                if (UserCenterSettingActivity.this.f25900e != null) {
                    UserCenterSettingActivity userCenterSettingActivity = UserCenterSettingActivity.this;
                    userCenterSettingActivity.u0(userCenterSettingActivity.f25900e.getSetId(), "lvl", 1);
                    return;
                }
                CheckBox checkBox = UserCenterSettingActivity.this.swMeet;
                checkBox.setChecked(!checkBox.isChecked());
            } else if (UserCenterSettingActivity.this.f25900e != null) {
                UserCenterSettingActivity userCenterSettingActivity2 = UserCenterSettingActivity.this;
                userCenterSettingActivity2.u0(userCenterSettingActivity2.f25900e.getSetId(), "lvl", 0);
            } else {
                CheckBox checkBox2 = UserCenterSettingActivity.this.swMeet;
                checkBox2.setChecked(!checkBox2.isChecked());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserCenterSettingActivity.this.v0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(UserCenterSettingActivity.this, FriendSetGroupActivity.class);
            intent.putExtra("id", UserCenterSettingActivity.this.f25896a);
            UserCenterSettingActivity.this.startActivityForResult(intent, 105);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class m extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        m() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            UserCenterSettingActivity.this.finish();
        }
    }

    private void initData() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0(String str) {
        ib.b.a(str, getActivity(), new e());
    }

    private void r0() {
        this.swDoNotLook.setOnClickListener(new a());
        this.swDoNotLiveNotice.setOnClickListener(new f());
        this.swStealth.setOnClickListener(new g());
        this.rlShieldingLayout.setOnClickListener(new h());
        this.rlToReportLayout.setOnClickListener(new i());
        this.swMeet.setOnClickListener(new j());
        this.rlUnFollow.setOnClickListener(new k());
        this.setGroup.setOnClickListener(new l());
    }

    private void s0(String str, String str2) {
        post(Contants.PERSIONAL_SETTING_STATUS).D(Contants.USER_ID, str).D("accountId", str2).M(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0(String str, String str2, int i9) {
        post(Contants.PULL_BLACK).D(Contants.USER_ID, str).D("account", str2).D("reportType", String.valueOf(i9)).M(new m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(int i9, String str, int i10) {
        post(Contants.UPDATE_PERSONAL_SETTING_STATUS).D("setId", String.valueOf(i9)).D(str, String.valueOf(i10)).M(new c(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e((Context) getActivity(), true, (e.a) new d());
        eVar.d(ContextCompat.getColor(getActivity(), R.color.color_common_dialog_cancel));
        eVar.m(ContextCompat.getColor(getActivity(), R.color.color_common_dialog_confirm));
        eVar.f(getActivity().getString(R.string.focus_cancel_tip));
        eVar.show();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_user_center_setting;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(getResources().getString(R.string.setting_text));
        this.f25896a = getIntent().getStringExtra(Contants.USER_ID);
        this.f25897b = getIntent().getStringExtra("accountImg");
        this.f25898c = getIntent().getStringExtra("accountName");
        this.f25899d = getIntent().getBooleanExtra("focusShowStatus", false);
        if (BaseConfig.isChinese() && this.f25899d) {
            this.rlUnFollow.setVisibility(0);
        } else {
            this.rlUnFollow.setVisibility(8);
        }
        s0(SpUtils.getStr(this, Contants.USER_ID), this.f25896a);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1 && i9 == 105 && intent != null) {
            this.groupName.setText(intent.getStringExtra("name"));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        GroupInfo findGroupInfoByFriendId;
        super.onCreate(bundle);
        initData();
        r0();
        this.f25903h = (FriendListViewModel) new ViewModelProvider(GCApplication.app()).get(FriendListViewModel.class);
        if (TextUtils.isEmpty(this.f25896a) || (findGroupInfoByFriendId = this.f25903h.findGroupInfoByFriendId(this.f25896a)) == null) {
            return;
        }
        if (findGroupInfoByFriendId.getId() == 0 && TextUtils.isEmpty(findGroupInfoByFriendId.getName())) {
            this.groupName.setText(R.string.message_Friends);
        } else {
            this.groupName.setText(findGroupInfoByFriendId.getName());
        }
    }
}
