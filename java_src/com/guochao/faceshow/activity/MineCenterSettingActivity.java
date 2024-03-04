package com.guochao.faceshow.activity;

import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.bean.SetNineInfo;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class MineCenterSettingActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private CheckBox f24572a;

    /* renamed from: b  reason: collision with root package name */
    private CheckBox f24573b;

    /* renamed from: c  reason: collision with root package name */
    private CheckBox f24574c;

    /* renamed from: d  reason: collision with root package name */
    private CheckBox f24575d;

    /* renamed from: e  reason: collision with root package name */
    private CheckBox f24576e;

    /* renamed from: f  reason: collision with root package name */
    private CheckBox f24577f;

    /* renamed from: g  reason: collision with root package name */
    private CheckBox f24578g;

    /* renamed from: h  reason: collision with root package name */
    private LinearLayout f24579h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
        }
    }

    /* loaded from: classes3.dex */
    class b implements CompoundButton.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                MineCenterSettingActivity.this.o0("basicInfo", 0);
            } else {
                MineCenterSettingActivity.this.o0("basicInfo", 1);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                MineCenterSettingActivity.this.o0("interest", 0);
            } else {
                MineCenterSettingActivity.this.o0("interest", 1);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements CompoundButton.OnCheckedChangeListener {
        d() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                MineCenterSettingActivity.this.o0("career", 0);
            } else {
                MineCenterSettingActivity.this.o0("career", 1);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements CompoundButton.OnCheckedChangeListener {
        e() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                MineCenterSettingActivity.this.o0("emotion", 0);
            } else {
                MineCenterSettingActivity.this.o0("emotion", 1);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f implements CompoundButton.OnCheckedChangeListener {
        f() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                MineCenterSettingActivity.this.o0("makeFriend", 0);
            } else {
                MineCenterSettingActivity.this.o0("makeFriend", 1);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements CompoundButton.OnCheckedChangeListener {
        g() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                MineCenterSettingActivity.this.o0("languageMastered", 0);
            } else {
                MineCenterSettingActivity.this.o0("languageMastered", 1);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h implements CompoundButton.OnCheckedChangeListener {
        h() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                MineCenterSettingActivity.this.o0("dialogue", 0);
            } else {
                MineCenterSettingActivity.this.o0("dialogue", 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.c<SetNineInfo> {
        i() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable SetNineInfo setNineInfo, @NonNull FaceCastBaseResponse<SetNineInfo> faceCastBaseResponse) {
            if (setNineInfo.basicInfo == 1) {
                MineCenterSettingActivity.this.f24572a.setChecked(false);
            } else {
                MineCenterSettingActivity.this.f24572a.setChecked(true);
            }
            if (setNineInfo.interest == 1) {
                MineCenterSettingActivity.this.f24573b.setChecked(false);
            } else {
                MineCenterSettingActivity.this.f24573b.setChecked(true);
            }
            if (setNineInfo.career == 1) {
                MineCenterSettingActivity.this.f24574c.setChecked(false);
            } else {
                MineCenterSettingActivity.this.f24574c.setChecked(true);
            }
            if (setNineInfo.emotion == 1) {
                MineCenterSettingActivity.this.f24575d.setChecked(false);
            } else {
                MineCenterSettingActivity.this.f24575d.setChecked(true);
            }
            if (setNineInfo.makeFriend == 1) {
                MineCenterSettingActivity.this.f24576e.setChecked(false);
            } else {
                MineCenterSettingActivity.this.f24576e.setChecked(true);
            }
            if (setNineInfo.language == 1) {
                MineCenterSettingActivity.this.f24577f.setChecked(false);
            } else {
                MineCenterSettingActivity.this.f24577f.setChecked(true);
            }
            if (setNineInfo.dialogue == 1) {
                MineCenterSettingActivity.this.f24578g.setChecked(false);
            } else {
                MineCenterSettingActivity.this.f24578g.setChecked(true);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<SetNineInfo> aVar) {
        }
    }

    private void n0() {
        post(Contants.setList).M(new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(String str, int i9) {
        PostRequest post = post(Contants.setUpdate);
        post.D(str, i9 + "").M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_mine_center_setting;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f24572a = (CheckBox) findViewById(R.id.hide_mine_basic);
        this.f24573b = (CheckBox) findViewById(R.id.hide_my_interest);
        this.f24574c = (CheckBox) findViewById(R.id.hide_my_profession);
        this.f24575d = (CheckBox) findViewById(R.id.hide_my_emotional_state);
        this.f24576e = (CheckBox) findViewById(R.id.hide_my_friends_intentions);
        this.f24577f = (CheckBox) findViewById(R.id.hide_my_mastery_language);
        this.f24578g = (CheckBox) findViewById(R.id.accept_tranger_conversation);
        this.f24579h = (LinearLayout) findViewById(R.id.ll_multi_language);
        if (BaseConfig.isChinese()) {
            this.f24579h.setVisibility(8);
        }
        this.f24572a.setOnCheckedChangeListener(new b());
        this.f24573b.setOnCheckedChangeListener(new c());
        this.f24574c.setOnCheckedChangeListener(new d());
        this.f24575d.setOnCheckedChangeListener(new e());
        this.f24576e.setOnCheckedChangeListener(new f());
        this.f24577f.setOnCheckedChangeListener(new g());
        this.f24578g.setOnCheckedChangeListener(new h());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.setting_personal_data);
        n0();
    }
}
