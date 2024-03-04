package com.guochao.faceshow.aaspring.modulars.welcome;

import android.content.Intent;
import android.os.Bundle;
import com.guochao.faceshow.utils.PushUtils;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.tencent.imsdk.v2.V2TIMManager;
import com.xiaomi.mipush.sdk.MiPushMessage;
import java.io.Serializable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\rH\u0014J\u0012\u0010\u0010\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/welcome/MiPushIMActivity;", "Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;", "()V", "checkIntent", "", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "Landroid/content/Intent;", "finish", "handlePush", "ext", "", "initView", "savedInstanceSate", "Landroid/os/Bundle;", "onCreate", "savedInstanceState", "onNewIntent", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MiPushIMActivity extends SplashActivity {
    private final void checkIntent(Intent intent) {
        Map<String, String> extra;
        String str;
        Bundle extras = intent.getExtras();
        MiPushMessage miPushMessage = null;
        if (extras != null) {
            Serializable serializable = extras.getSerializable("key_message");
            if (serializable instanceof MiPushMessage) {
                miPushMessage = (MiPushMessage) serializable;
            }
        }
        if (miPushMessage == null || (extra = miPushMessage.getExtra()) == null || (str = extra.get("ext")) == null) {
            return;
        }
        handlePush(str);
    }

    private final void handlePush(String str) {
        try {
            if (V2TIMManager.getInstance().getLoginStatus() == 3) {
                Intent intent = new Intent(this, SplashActivity.class);
                if (getIntent() != null) {
                    intent.putExtras(getIntent());
                }
                PushUtils.jumpToChat(new JSONObject(str));
                startActivity(intent);
                overridePendingTransition(0, 0);
                return;
            }
            PushUtils.jumpToChat(new JSONObject(str));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.welcome.SplashActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.welcome.SplashActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "intent");
        checkIntent(intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.welcome.SplashActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(@Nullable Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            checkIntent(intent);
        }
        finish();
    }
}
