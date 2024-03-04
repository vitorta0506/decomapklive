package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.ListView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class BankListActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BankListActivity f25485c;

    @UiThread
    public BankListActivity_ViewBinding(BankListActivity bankListActivity, View view) {
        super(bankListActivity, view);
        this.f25485c = bankListActivity;
        bankListActivity.lvBankList = (ListView) c.d(view, R.id.lvBankList, "field 'lvBankList'", ListView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BankListActivity bankListActivity = this.f25485c;
        if (bankListActivity != null) {
            this.f25485c = null;
            bankListActivity.lvBankList = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
