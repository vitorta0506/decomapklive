package com.guochao.faceshow.guild.activity;

import android.os.Handler;
import android.os.Looper;
import com.previewlibrary.GPreviewActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;", "Lcom/previewlibrary/GPreviewActivity;", "()V", "handler", "Landroid/os/Handler;", "finish", "", "onBackPressed", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GuildImagePreviewActivity extends GPreviewActivity {
    @NotNull
    private final Handler handler = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBackPressed$lambda-0  reason: not valid java name */
    public static final void m719onBackPressed$lambda0(GuildImagePreviewActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isFinishing()) {
            return;
        }
        this$0.finish();
        this$0.overridePendingTransition(0, 0);
    }

    @Override // com.previewlibrary.GPreviewActivity, android.app.Activity
    public void finish() {
        super.finish();
        this.handler.removeCallbacksAndMessages(null);
    }

    @Override // com.previewlibrary.GPreviewActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        this.handler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.guild.activity.l0
            @Override // java.lang.Runnable
            public final void run() {
                GuildImagePreviewActivity.m719onBackPressed$lambda0(GuildImagePreviewActivity.this);
            }
        }, 300L);
    }
}
