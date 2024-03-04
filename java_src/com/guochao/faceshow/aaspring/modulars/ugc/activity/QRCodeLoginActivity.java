package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
/* loaded from: classes3.dex */
public class QRCodeLoginActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f22354a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22355b;
    @BindView
    TextView mTextView;
    @BindView
    TextView mTextViewCancel;
    @BindView
    TextView mTextViewLogin;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num != null && num.intValue() == 2) {
                QRCodeLoginActivity.this.setResult(-1);
                QRCodeLoginActivity.this.finish();
                return;
            }
            QRCodeLoginActivity.this.f22355b = false;
            QRCodeLoginActivity.this.d0();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            QRCodeLoginActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
        }
    }

    public static void e0(Activity activity, String str, boolean z10) {
        activity.startActivityForResult(new Intent(activity, QRCodeLoginActivity.class).putExtra("keyStatus", z10).putExtra("key", str), 1024);
        activity.overridePendingTransition(R.anim.bottom_to_top, R.anim.activity_stay);
    }

    public void d0() {
        if (this.f22355b) {
            return;
        }
        this.mTextView.setTextColor(getResources().getColor(R.color.withdrawal_err));
        this.mTextView.setText(R.string.qr_login_error_tips);
        this.mTextViewLogin.setText(R.string.qr_login_retry);
        this.mTextViewCancel.setVisibility(4);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.do_nothing, R.anim.down_out);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_q_r_code_login;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        getWindow().setBackgroundDrawableResource(R.color.white);
        this.f22354a = getIntent().getStringExtra("key");
        this.f22355b = getIntent().getBooleanExtra("keyStatus", false);
        d0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @OnClick
    public void login(View view) {
        if (view.getId() != R.id.login) {
            finish();
        } else if (!this.f22355b) {
            finish();
        } else {
            showProgressDialog(null);
            post("tokens/user/info/confirmLogin").D("userKey", this.f22354a).M(new a());
        }
    }
}
