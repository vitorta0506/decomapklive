package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.PersonalDynamicListFragment;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class PersonalDynamicListActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f22336a;

    /* renamed from: b  reason: collision with root package name */
    private String f22337b;

    public static void start(Context context, String str, String str2) {
        Intent intent = new Intent(context, PersonalDynamicListActivity.class);
        intent.putExtra(Contants.USER_ID, str);
        intent.putExtra("userName", str2);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_personal_dynamic_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (Build.VERSION.SDK_INT >= 23) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 8192);
        }
        this.f22336a = getIntent().getStringExtra(Contants.USER_ID);
        this.f22337b = getIntent().getStringExtra("userName");
        if (getCurrentUser().getUserId().equalsIgnoreCase(this.f22336a)) {
            setTitle(R.string.ugc_my_dynamic);
        } else {
            setTitle(getString(R.string.ugc_others_dynamic, new Object[]{this.f22337b}));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(R.id.content, PersonalDynamicListFragment.getInstance(this.f22336a)).commit();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }
}
