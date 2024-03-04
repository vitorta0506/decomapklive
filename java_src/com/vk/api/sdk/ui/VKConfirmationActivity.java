package com.vk.api.sdk.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.vk.api.sdk.R$string;
import com.vk.api.sdk.VKScheduler;
import com.vk.api.sdk.ui.VKConfirmationActivity;
import com.vk.api.sdk.utils.VKValidationLocker;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\b\u0010\b\u001a\u00020\u0004H\u0014¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/ui/VKConfirmationActivity;", "Landroid/app/Activity;", "()V", "finish", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKConfirmationActivity extends Activity {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String KEY_MESSAGE = "key_message";
    private static boolean result;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/vk/api/sdk/ui/VKConfirmationActivity$Companion;", "", "()V", "KEY_MESSAGE", "", "result", "", "getResult", "()Z", "setResult", "(Z)V", "start", "", "context", "Landroid/content/Context;", "message", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: start$lambda-0  reason: not valid java name */
        public static final void m845start$lambda0(Context context, String message) {
            Intrinsics.checkNotNullParameter(context, "$context");
            Intrinsics.checkNotNullParameter(message, "$message");
            Intent putExtra = new Intent(context, VKConfirmationActivity.class).addFlags(268435456).putExtra(VKConfirmationActivity.KEY_MESSAGE, message);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(context, VKConfir…tra(KEY_MESSAGE, message)");
            context.startActivity(putExtra);
        }

        public final boolean getResult() {
            return VKConfirmationActivity.result;
        }

        public final void setResult(boolean z10) {
            VKConfirmationActivity.result = z10;
        }

        public final void start(@NotNull final Context context, @NotNull final String message) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(message, "message");
            VKScheduler.runOnMainThread$default(new Runnable() { // from class: com.vk.api.sdk.ui.j
                @Override // java.lang.Runnable
                public final void run() {
                    VKConfirmationActivity.Companion.m845start$lambda0(context, message);
                }
            }, 0L, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-0  reason: not valid java name */
    public static final void m842onCreate$lambda0(VKConfirmationActivity this$0, DialogInterface dialogInterface, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        result = true;
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-1  reason: not valid java name */
    public static final void m843onCreate$lambda1(VKConfirmationActivity this$0, DialogInterface dialogInterface, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        result = false;
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-2  reason: not valid java name */
    public static final void m844onCreate$lambda2(VKConfirmationActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        result = false;
        this$0.finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        VKValidationLocker.INSTANCE.signal();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        setContentView(new FrameLayout(this));
        new AlertDialog.Builder(this, 5).setTitle(R$string.vk_confirm).setMessage(getIntent().getStringExtra(KEY_MESSAGE)).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.vk.api.sdk.ui.i
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i9) {
                VKConfirmationActivity.m842onCreate$lambda0(VKConfirmationActivity.this, dialogInterface, i9);
            }
        }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.vk.api.sdk.ui.h
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i9) {
                VKConfirmationActivity.m843onCreate$lambda1(VKConfirmationActivity.this, dialogInterface, i9);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.vk.api.sdk.ui.g
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                VKConfirmationActivity.m844onCreate$lambda2(VKConfirmationActivity.this, dialogInterface);
            }
        }).show();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        VKValidationLocker.INSTANCE.signal();
    }
}
