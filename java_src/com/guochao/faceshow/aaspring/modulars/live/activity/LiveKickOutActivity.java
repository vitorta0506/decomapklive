package com.guochao.faceshow.aaspring.modulars.live.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0002¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveKickOutActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "()V", "checkLiveKickedData", "", "data", "Landroid/content/Intent;", "getLayoutId", "", "initView", "loadData", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "showKickedDialog", "content", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LiveKickOutActivity extends BaseActivity {
    private final void checkLiveKickedData(Intent intent) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        if (intent.getBooleanExtra("isBlacked", false)) {
            String string = getResources().getString(R.string.is_black_for_other);
            Intrinsics.checkNotNullExpressionValue(string, "resources.getString(R.string.is_black_for_other)");
            showKickedDialog(string);
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("isBroadcaster", false);
        boolean booleanExtra2 = intent.getBooleanExtra("isVVip", false);
        boolean booleanExtra3 = intent.getBooleanExtra("isOfficial", false);
        boolean booleanExtra4 = intent.getBooleanExtra("voice", false);
        if (intent.getBooleanExtra("privateVoice", false)) {
            String string2 = getResources().getString(R.string.voice_room_private_title);
            Intrinsics.checkNotNullExpressionValue(string2, "resources.getString(com.…voice_room_private_title)");
            showKickedDialog(string2);
        } else if (booleanExtra4) {
            String string3 = getResources().getString(R.string.voice_room_tips_you_are_kicked);
            Intrinsics.checkNotNullExpressionValue(string3, "resources.getString(com.…room_tips_you_are_kicked)");
            showKickedDialog(string3);
        } else if (booleanExtra) {
            String string4 = getResources().getString(R.string.liveremovemsg);
            Intrinsics.checkNotNullExpressionValue(string4, "resources.getString(R.string.liveremovemsg)");
            showKickedDialog(string4);
        } else if (booleanExtra3) {
            String string5 = getResources().getString(R.string.vip_mall_has_been_kicked_self_by_official);
            Intrinsics.checkNotNullExpressionValue(string5, "resources.getString(R.st…_kicked_self_by_official)");
            showKickedDialog(string5);
        } else if (booleanExtra2) {
            String string6 = getResources().getString(R.string.vip_mall_has_been_kicked_self_by_vvip_dialog_tip);
            Intrinsics.checkNotNullExpressionValue(string6, "resources.getString(R.st…_self_by_vvip_dialog_tip)");
            showKickedDialog(string6);
        } else {
            String string7 = getResources().getString(R.string.liveremovemsg);
            Intrinsics.checkNotNullExpressionValue(string7, "resources.getString(R.string.liveremovemsg)");
            showKickedDialog(string7);
        }
    }

    private final void showKickedDialog(String str) {
        e alert = alert(str, null, new e.a() { // from class: com.guochao.faceshow.aaspring.modulars.live.activity.a
            @Override // com.guochao.faceshow.views.e.a
            public final void onClick(Dialog dialog, boolean z10) {
                LiveKickOutActivity.m446showKickedDialog$lambda0(LiveKickOutActivity.this, dialog, z10);
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(e eVar) {
                d.a(this, eVar);
            }
        }, true);
        if (alert != null) {
            alert.setCancelable(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showKickedDialog$lambda-0  reason: not valid java name */
    public static final void m446showKickedDialog$lambda0(LiveKickOutActivity this$0, Dialog dialog, boolean z10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialog.dismiss();
        this$0.finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return 0;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "intent");
        checkLiveKickedData(intent);
    }
}
