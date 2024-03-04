package com.guochao.faceshow.aaspring.modulars.cancelaccount;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CancelAccountRequestBean;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelImportantTipActivity;
import com.guochao.faceshow.views.g;
/* loaded from: classes3.dex */
public class CancelImportantTipActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private CancelAccountRequestBean f16607a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16608a;

        a(View view) {
            this.f16608a = view;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            CancelImportantTipActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            CancelAccountSuccessActivity.start(this.f16608a.getContext());
        }
    }

    /* loaded from: classes3.dex */
    class b extends g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f16610a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(long j10, long j11, TextView textView) {
            super(j10, j11);
            this.f16610a = textView;
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
            this.f16610a.setText(R.string.cancel_account_condition_importent_button);
            this.f16610a.setEnabled(true);
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            TextView textView = this.f16610a;
            textView.setText(String.format(CancelImportantTipActivity.this.getString(R.string.cancel_account_condition_importent_button) + "(%ss)", Long.valueOf(j10 / 1000)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0(View view) {
        showProgressDialog("");
        post("tokens/userout/update").y("id", Integer.valueOf(this.f16607a.getId())).y("securityType", Integer.valueOf(this.f16607a.getSecurityType())).y("reasonType", Integer.valueOf(this.f16607a.getReasonType())).y("reasonRemark", this.f16607a.getReasonRemark()).y("checkList", this.f16607a.getCheckList()).M(new a(view));
    }

    public static void e0(Context context, CancelAccountRequestBean cancelAccountRequestBean) {
        Intent intent = new Intent(context, CancelImportantTipActivity.class);
        intent.putExtra("requestData", cancelAccountRequestBean);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_cancel_important_tip;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        CancelAccountRequestBean cancelAccountRequestBean = (CancelAccountRequestBean) getIntent().getParcelableExtra("requestData");
        this.f16607a = cancelAccountRequestBean;
        if (cancelAccountRequestBean == null) {
            finish();
            return;
        }
        ((TextView) findViewById(R.id.important_tip1)).setText(getString(R.string.cancel_account_condition_importent_tip_1) + "\n\n" + getString(R.string.cancel_account_condition_importent_tip_1s));
        ((TextView) findViewById(R.id.important_tip2)).setText(getString(R.string.cancel_account_condition_importent_tip_2_1) + "\n\n" + getString(R.string.cancel_account_condition_importent_tip_2_2) + "\n\n" + getString(R.string.cancel_account_condition_importent_tip_2_3) + "\n\n" + getString(R.string.cancel_account_condition_importent_tip_2_4) + "\n\n" + getString(R.string.cancel_account_condition_importent_tip_2_5) + "\n\n" + getString(R.string.cancel_account_condition_importent_tip_2_6) + "\n\n" + getString(R.string.cancel_account_condition_importent_tip_2_7) + "\n\n" + getString(R.string.cancel_account_condition_importent_tip_2_8) + "\n\n" + getString(R.string.cancel_account_condition_importent_tip_2_9) + "\n\n" + getString(R.string.cancel_account_condition_importent_tip_2_10));
        TextView textView = (TextView) findViewById(R.id.next_step);
        textView.setOnClickListener(new View.OnClickListener() { // from class: d8.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelImportantTipActivity.this.d0(view);
            }
        });
        setTitle(R.string.cancel_account_condition_importent_title);
        new b(10000L, 1000L, textView).start();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
