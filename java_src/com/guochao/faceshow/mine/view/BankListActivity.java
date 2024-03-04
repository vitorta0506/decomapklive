package com.guochao.faceshow.mine.view;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.mine.model.BankBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.h;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class BankListActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    List<BankBean> f25481a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    wa.a f25482b;
    @BindView
    ListView lvBankList;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i9, long j10) {
            List<BankBean> list = BankListActivity.this.f25481a;
            if (list == null || list.isEmpty()) {
                return;
            }
            Intent intent = new Intent();
            intent.putExtra("bankBean", BankListActivity.this.f25481a.get(i9));
            BankListActivity.this.setResult(-1, intent);
            BankListActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends c<List<BankBean>> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<BankBean>> aVar) {
            h.a(BankListActivity.this.getActivity(), aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<BankBean> list, @NonNull FaceCastBaseResponse<List<BankBean>> faceCastBaseResponse) {
            if (list != null) {
                BankListActivity.this.f25481a.clear();
                BankListActivity.this.f25481a.addAll(list);
                BankListActivity.this.f25482b.notifyDataSetChanged();
            }
        }
    }

    private void b0() {
        post(Contants.BANK_LIST).M(new b());
    }

    private void d0() {
        this.lvBankList.setOnItemClickListener(new a());
    }

    private void initData() {
        wa.a aVar = new wa.a(this, this.f25481a);
        this.f25482b = aVar;
        this.lvBankList.setAdapter((ListAdapter) aVar);
        b0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_bank_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.lvBankList.setEmptyView(LayoutInflater.from(this).inflate(R.layout.sl_list_nodata, (ViewGroup) null));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.withdrawal_bank_name);
        initData();
        d0();
    }
}
