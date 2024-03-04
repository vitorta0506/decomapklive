package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
/* loaded from: classes3.dex */
public class ScanResultNoUrlActivity extends BaseActivity {
    @BindView
    TextView tvScanResult;

    public static void b0(Context context, String str) {
        Intent intent = new Intent(context, ScanResultNoUrlActivity.class);
        intent.putExtra("url", str);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_scan_result;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.tvScanResult.setText(getIntent().getStringExtra("url"));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
