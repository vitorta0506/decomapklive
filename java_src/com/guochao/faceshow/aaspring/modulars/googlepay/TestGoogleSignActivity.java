package com.guochao.faceshow.aaspring.modulars.googlepay;

import android.app.Dialog;
import android.view.View;
import android.widget.TextView;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.GooglePlayPurchaseResult;
import com.guochao.faceshow.views.e;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class TestGoogleSignActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private TextView f17919a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements e.a {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.googlepay.TestGoogleSignActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0173a extends TypeToken<CopyOnWriteArrayList<GooglePlayPurchaseResult>> {
            C0173a() {
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            List<GooglePlayPurchaseResult> d10 = u7.c.c().d();
            if (z10) {
                if (d10.isEmpty()) {
                    TestGoogleSignActivity.this.showToast("本地凭证是空的，只能插入一个不重复的");
                }
                CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) com.guochao.faceshow.aaspring.manager.b.a("googlePlay", d.f17928u, new C0173a().getType());
                if (copyOnWriteArrayList == null) {
                    copyOnWriteArrayList = new CopyOnWriteArrayList();
                }
                GooglePlayPurchaseResult googlePlayPurchaseResult = new GooglePlayPurchaseResult();
                googlePlayPurchaseResult.setSignture("0");
                googlePlayPurchaseResult.setSigntureData("0");
                googlePlayPurchaseResult.setUserId(TestGoogleSignActivity.this.getCurrentUser().getUserId());
                googlePlayPurchaseResult.setTimeStamp(System.currentTimeMillis());
                copyOnWriteArrayList.add(0, googlePlayPurchaseResult);
                com.guochao.faceshow.aaspring.manager.b.f("googlePlay", d.f17928u, copyOnWriteArrayList);
            } else {
                u7.c.c().b(new GooglePlayPurchaseResult(), TestGoogleSignActivity.this.getCurrentUser().getUserId(), String.valueOf(d10.size()), String.valueOf(d10.size()), System.currentTimeMillis());
            }
            TestGoogleSignActivity.this.m0();
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements e.a {
        b() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            List<GooglePlayPurchaseResult> d10 = u7.c.c().d();
            if (d10.isEmpty()) {
                TestGoogleSignActivity.this.showToast("没有可以删除的内容");
                return;
            }
            if (z10) {
                u7.c.c().e(TestGoogleSignActivity.this.getCurrentUser().getUserId());
            } else {
                u7.c.c().a(TestGoogleSignActivity.this.getCurrentUser().getUserId(), d10.get(d10.size() - 1).getSignture(), d10.get(d10.size() - 1).getSigntureData());
            }
            TestGoogleSignActivity.this.m0();
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(View view) {
        new com.guochao.faceshow.views.e(this, new a()).f("插入一个啥样的数据吗？").k("重复的").i("不重复的").show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0(View view) {
        m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0(View view) {
        new com.guochao.faceshow.views.e(this, new b()).f("去重，还是删除最后一条？").k("仅仅去重").i("删除最后一条\n(有重复就全删)").show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        List<GooglePlayPurchaseResult> d10 = u7.c.c().d();
        StringBuilder sb2 = new StringBuilder();
        for (GooglePlayPurchaseResult googlePlayPurchaseResult : d10) {
            sb2.append("{\n\t");
            sb2.append(googlePlayPurchaseResult.getUserId());
            sb2.append(",\n");
            sb2.append("\t");
            sb2.append(googlePlayPurchaseResult.getSignture());
            sb2.append(",\n");
            sb2.append("\t");
            sb2.append(googlePlayPurchaseResult.getSigntureData());
            sb2.append("\n}\n");
        }
        this.f17919a.setText(sb2);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_test_google_sign;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f17919a = (TextView) findViewById(R.id.log);
        findViewById(R.id.insert).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestGoogleSignActivity.this.i0(view);
            }
        });
        findViewById(R.id.query).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestGoogleSignActivity.this.k0(view);
            }
        });
        findViewById(R.id.delete).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestGoogleSignActivity.this.l0(view);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
