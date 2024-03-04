package com.guochao.faceshow.aaspring.modulars.cancelaccount;

import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.View;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelAccountSuccessActivity;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.modulars.login.utils.e;
import com.guochao.faceshow.aaspring.views.v;
/* loaded from: classes3.dex */
public class CancelAccountSuccessActivity extends BaseActivity {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d0(View view) {
        ChooseLoginTypeActivity.start(view.getContext());
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, CancelAccountSuccessActivity.class));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_cancel_account_success;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.g(true);
        }
        e.a(this);
        setTitle(R.string.delete_account_result);
        findViewById(R.id.exit).setOnClickListener(new View.OnClickListener() { // from class: d8.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelAccountSuccessActivity.d0(view);
            }
        });
        hideLeftBack();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (i9 == 4) {
            return true;
        }
        return super.onKeyDown(i9, keyEvent);
    }
}
