package com.guochao.faceshow.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.OccupationActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.SensitiveWordFilter;
/* loaded from: classes3.dex */
public class ChooceOccupationActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f24491a;

    /* renamed from: b  reason: collision with root package name */
    private String f24492b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f24493c;

    /* renamed from: d  reason: collision with root package name */
    private EditText f24494d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f24495e;

    /* renamed from: f  reason: collision with root package name */
    private EditText f24496f;

    /* renamed from: g  reason: collision with root package name */
    private String f24497g;

    /* renamed from: h  reason: collision with root package name */
    private String f24498h;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ChooceOccupationActivity.this.q0();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ChooceOccupationActivity.this.q0();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChooceOccupationActivity chooceOccupationActivity = ChooceOccupationActivity.this;
            chooceOccupationActivity.f24497g = chooceOccupationActivity.f24494d.getText().toString().trim();
            ChooceOccupationActivity chooceOccupationActivity2 = ChooceOccupationActivity.this;
            chooceOccupationActivity2.f24498h = chooceOccupationActivity2.f24496f.getText().toString().trim();
            if (TextUtils.isEmpty(ChooceOccupationActivity.this.f24491a)) {
                ToastUtils.showToast(ChooceOccupationActivity.this.getActivity(), ChooceOccupationActivity.this.getString(R.string.choose_occupation));
            } else if (TextUtils.isEmpty(ChooceOccupationActivity.this.f24498h)) {
                ToastUtils.showToast(ChooceOccupationActivity.this.getActivity(), ChooceOccupationActivity.this.getString(R.string.input_your_job));
            } else {
                ChooceOccupationActivity.this.r0();
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements OccupationActivity.g {
        d() {
        }

        @Override // com.guochao.faceshow.activity.OccupationActivity.g
        public void a(String str, String str2) {
            ChooceOccupationActivity.this.f24491a = str2;
            ChooceOccupationActivity.this.f24492b = str;
            ChooceOccupationActivity.this.f24493c.setText(ChooceOccupationActivity.this.f24491a);
            ChooceOccupationActivity.this.q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (1010 == aVar.a()) {
                ToastUtils.showToast(ChooceOccupationActivity.this.getActivity(), ChooceOccupationActivity.this.getString(R.string.chat_content_bad));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            Intent intent = new Intent();
            intent.putExtra("career", ChooceOccupationActivity.this.f24498h);
            intent.putExtra("infoName", ChooceOccupationActivity.this.f24491a);
            intent.putExtra("companyName", ChooceOccupationActivity.this.f24497g);
            ChooceOccupationActivity.this.setResult(56, intent);
            ChooceOccupationActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0() {
        String str;
        if (this.f24495e == null) {
            return;
        }
        this.f24497g = this.f24494d.getText().toString().trim();
        this.f24498h = this.f24496f.getText().toString().trim();
        String str2 = this.f24491a;
        if (str2 != null && !TextUtils.isEmpty(str2) && (str = this.f24498h) != null && !TextUtils.isEmpty(str)) {
            this.f24495e.setEnabled(true);
        } else {
            this.f24495e.setEnabled(false);
        }
    }

    @OnClick
    public void getEvent(View view) {
        if (view.getId() != R.id.choose_occupation) {
            return;
        }
        OccupationActivity.h2("", new d()).show(getSupportFragmentManager(), "");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_chooce_occupation;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f24493c = (TextView) findViewById(R.id.choose_occupation);
        this.f24494d = (EditText) findViewById(R.id.company);
        this.f24496f = (EditText) findViewById(R.id.occupation);
        if (!TextUtils.isEmpty(this.f24491a)) {
            this.f24493c.setText(this.f24491a);
            q0();
        }
        this.f24494d.setText(this.f24497g);
        this.f24496f.setText(this.f24498h);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (intent != null && i10 == 55) {
            this.f24491a = intent.getStringExtra("infoName");
            this.f24492b = intent.getStringExtra("infoId");
            this.f24493c.setText(this.f24491a);
            q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        this.f24498h = intent.getStringExtra("career");
        this.f24497g = intent.getStringExtra("companyName");
        this.f24491a = intent.getStringExtra("infoName");
        super.onCreate(bundle);
        setTitle(getString(R.string.occupation));
        this.f24495e = (TextView) findViewById(R.id.save);
        this.f24494d.addTextChangedListener(new a());
        this.f24496f.addTextChangedListener(new b());
        findViewById(R.id.save).setOnClickListener(new c());
        this.mTitleBarHelper.f();
    }

    public void r0() {
        String checkKeyword = SensitiveWordFilter.getInstance().checkKeyword(this.f24498h);
        if (!TextUtils.isEmpty(this.f24498h) && !TextUtils.isEmpty(checkKeyword)) {
            ToastUtils.showToast(getActivity(), getString(R.string.chat_content_bad));
        } else {
            post(Contants.userJobSave).D("infoId", this.f24492b).D("company", this.f24497g).D("career", this.f24498h).M(new e());
        }
    }
}
