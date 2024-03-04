package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.AddressDynamicListFragment;
/* loaded from: classes3.dex */
public class AddressDynamicListActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f22105a;
    @BindView
    TextView addressTV;

    /* renamed from: b  reason: collision with root package name */
    private AddressDynamicListFragment f22106b;
    @BindView
    TextView countTV;

    public static void start(Context context, String str, String str2) {
        Intent intent = new Intent(context, AddressDynamicListActivity.class);
        intent.putExtra("placeName", str);
        intent.putExtra("partakeTimes", str2);
        context.startActivity(intent);
    }

    public String b0() {
        return this.f22105a;
    }

    public void d0() {
        AddressDynamicListFragment addressDynamicListFragment = this.f22106b;
        if (addressDynamicListFragment != null) {
            addressDynamicListFragment.getRecyclerView().scrollToPosition(0);
            this.f22106b.getRefreshableLayout().o();
        }
    }

    public void e0(@NonNull String str) {
        this.countTV.setText(str);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).f(Color.parseColor("#F4F6F9")).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_address_dynamic_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (Build.VERSION.SDK_INT >= 23) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 8192);
        }
        this.f22105a = getIntent().getStringExtra("placeName");
        String stringExtra = getIntent().getStringExtra("partakeTimes");
        setTitle("");
        if (!TextUtils.isEmpty(this.f22105a)) {
            this.addressTV.setText(this.f22105a);
            if (!TextUtils.isEmpty(stringExtra)) {
                this.countTV.setText(getString(R.string.ugc_people_come, new Object[]{stringExtra}));
            }
            this.f22106b = AddressDynamicListFragment.Q1(this.f22105a);
            getSupportFragmentManager().beginTransaction().replace(R.id.content, this.f22106b).commit();
            return;
        }
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setLightStatusBar(true);
    }
}
