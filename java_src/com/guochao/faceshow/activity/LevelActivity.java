package com.guochao.faceshow.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.utils.WebViewUrlTools;
import com.guochao.faceshow.web.WebViewActivity;
/* loaded from: classes3.dex */
public class LevelActivity extends WebViewActivity {
    public static void start(Context context) {
        Intent intent = new Intent(context, LevelActivity.class);
        intent.putExtra("url", WebViewUrlTools.getLocalWebUrl(40));
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.web.WebViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.web.WebViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_level;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setLightStatusBar(true);
    }
}
