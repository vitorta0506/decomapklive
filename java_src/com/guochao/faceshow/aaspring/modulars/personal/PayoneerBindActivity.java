package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.PayoneerData;
import com.guochao.faceshow.aaspring.beans.PayoneerLink;
import com.guochao.faceshow.aaspring.utils.UrlUtils;
import com.guochao.faceshow.web.WebViewActivity;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class PayoneerBindActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private int f21221a;
    @BindView
    TextView tvPayoneerAccountUnreviewed;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<PayoneerLink> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PayoneerLink payoneerLink, @NonNull FaceCastBaseResponse<PayoneerLink> faceCastBaseResponse) {
            PayoneerBindActivity.this.dismissProgressDialog();
            if (payoneerLink == null || TextUtils.isEmpty(payoneerLink.getUrl())) {
                return;
            }
            WebViewActivity.createBuilder().m(payoneerLink.getUrl()).c(true).a(PayoneerBindActivity.this.getActivity());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PayoneerLink> aVar) {
            PayoneerBindActivity.this.dismissProgressDialog();
        }
    }

    private void b0(int i9) {
        showProgressDialog(null);
        get("tokens/pay/payoneer/link").B("linkType", i9).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_payoneer;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.my_vallet_withdrawal);
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        int intExtra = getIntent().getIntExtra("type", 0);
        this.f21221a = intExtra;
        if (intExtra == 0) {
            this.tvPayoneerAccountUnreviewed.setVisibility(8);
            return;
        }
        this.tvPayoneerAccountUnreviewed.setVisibility(0);
        UrlUtils.checkLink(this.tvPayoneerAccountUnreviewed);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        int intExtra = intent.getIntExtra("type", 0);
        this.f21221a = intExtra;
        if (intExtra == 0) {
            this.tvPayoneerAccountUnreviewed.setVisibility(8);
        } else {
            this.tvPayoneerAccountUnreviewed.setVisibility(0);
            UrlUtils.checkLink(this.tvPayoneerAccountUnreviewed);
        }
        setIntent(intent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onPayoneerBindSuccess(PayoneerData payoneerData) {
        finish();
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.tv_login) {
            b0(1);
        } else if (id2 != R.id.tv_registered) {
        } else {
            b0(0);
        }
    }
}
