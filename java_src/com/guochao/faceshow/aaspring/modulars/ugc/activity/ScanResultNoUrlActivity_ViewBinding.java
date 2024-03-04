package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class ScanResultNoUrlActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ScanResultNoUrlActivity f22388c;

    @UiThread
    public ScanResultNoUrlActivity_ViewBinding(ScanResultNoUrlActivity scanResultNoUrlActivity, View view) {
        super(scanResultNoUrlActivity, view);
        this.f22388c = scanResultNoUrlActivity;
        scanResultNoUrlActivity.tvScanResult = (TextView) butterknife.internal.c.d(view, R.id.tv_scan_result, "field 'tvScanResult'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ScanResultNoUrlActivity scanResultNoUrlActivity = this.f22388c;
        if (scanResultNoUrlActivity != null) {
            this.f22388c = null;
            scanResultNoUrlActivity.tvScanResult = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
