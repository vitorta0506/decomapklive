package com.vk.api.sdk.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.vk.api.sdk.R$string;
import com.vk.api.sdk.VKScheduler;
import com.vk.api.sdk.ui.VKCaptchaActivity;
import com.vk.api.sdk.utils.VKLoader;
import com.vk.api.sdk.utils.VKUtils;
import com.vk.api.sdk.utils.VKValidationLocker;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\nH\u0016J\b\u0010\u0010\u001a\u00020\nH\u0002J\u0012\u0010\u0011\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\b\u0010\u0014\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/vk/api/sdk/ui/VKCaptchaActivity;", "Landroid/app/Activity;", "()V", "image", "Landroid/widget/ImageView;", "input", "Landroid/widget/EditText;", "progress", "Landroid/widget/ProgressBar;", "captchaCancelled", "", "captchaDone", "displayImage", "bitmap", "Landroid/graphics/Bitmap;", "finish", "loadImage", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKCaptchaActivity extends Activity {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String KEY_URL = "key_url";
    @Nullable
    private static String lastKey;
    private ImageView image;
    private EditText input;
    private ProgressBar progress;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Lcom/vk/api/sdk/ui/VKCaptchaActivity$Companion;", "", "()V", "KEY_URL", "", "lastKey", "getLastKey", "()Ljava/lang/String;", "setLastKey", "(Ljava/lang/String;)V", "start", "", "context", "Landroid/content/Context;", "img", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: start$lambda-0  reason: not valid java name */
        public static final void m841start$lambda0(Context context, String img) {
            Intrinsics.checkNotNullParameter(context, "$context");
            Intrinsics.checkNotNullParameter(img, "$img");
            Intent putExtra = new Intent(context, VKCaptchaActivity.class).addFlags(268435456).putExtra(VKCaptchaActivity.KEY_URL, img);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(context, VKCaptch…  .putExtra(KEY_URL, img)");
            context.startActivity(putExtra);
        }

        @Nullable
        public final String getLastKey() {
            return VKCaptchaActivity.lastKey;
        }

        public final void setLastKey(@Nullable String str) {
            VKCaptchaActivity.lastKey = str;
        }

        public final void start(@NotNull final Context context, @NotNull final String img) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(img, "img");
            VKScheduler.runOnMainThread$default(new Runnable() { // from class: com.vk.api.sdk.ui.f
                @Override // java.lang.Runnable
                public final void run() {
                    VKCaptchaActivity.Companion.m841start$lambda0(context, img);
                }
            }, 0L, 2, null);
        }
    }

    private final void captchaCancelled() {
        lastKey = null;
        VKValidationLocker.INSTANCE.signal();
        setResult(0);
        finish();
    }

    private final void captchaDone() {
        EditText editText = this.input;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("input");
            editText = null;
        }
        lastKey = editText.getText().toString();
        VKValidationLocker.INSTANCE.signal();
        finish();
    }

    private final void displayImage(final Bitmap bitmap) {
        VKScheduler.runOnMainThread$default(new Runnable() { // from class: com.vk.api.sdk.ui.d
            @Override // java.lang.Runnable
            public final void run() {
                VKCaptchaActivity.m836displayImage$lambda5(VKCaptchaActivity.this, bitmap);
            }
        }, 0L, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: displayImage$lambda-5  reason: not valid java name */
    public static final void m836displayImage$lambda5(VKCaptchaActivity this$0, Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(bitmap, "$bitmap");
        ImageView imageView = this$0.image;
        ProgressBar progressBar = null;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
            imageView = null;
        }
        imageView.setImageBitmap(bitmap);
        ProgressBar progressBar2 = this$0.progress;
        if (progressBar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progress");
        } else {
            progressBar = progressBar2;
        }
        progressBar.setVisibility(8);
    }

    private final void loadImage() {
        final String stringExtra = getIntent().getStringExtra(KEY_URL);
        if (stringExtra == null) {
            return;
        }
        VKScheduler.INSTANCE.getNetworkExecutor().submit(new Runnable() { // from class: com.vk.api.sdk.ui.e
            @Override // java.lang.Runnable
            public final void run() {
                VKCaptchaActivity.m837loadImage$lambda4(stringExtra, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadImage$lambda-4  reason: not valid java name */
    public static final void m837loadImage$lambda4(String url, VKCaptchaActivity this$0) {
        Intrinsics.checkNotNullParameter(url, "$url");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        byte[] load = VKLoader.INSTANCE.load(url);
        if (load == null) {
            return;
        }
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(load, 0, load.length);
        Intrinsics.checkNotNullExpressionValue(decodeByteArray, "decodeByteArray(data, 0, data.size)");
        this$0.displayImage(decodeByteArray);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-0  reason: not valid java name */
    public static final void m838onCreate$lambda0(VKCaptchaActivity this$0, DialogInterface dialogInterface, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.captchaDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-1  reason: not valid java name */
    public static final void m839onCreate$lambda1(VKCaptchaActivity this$0, DialogInterface dialogInterface, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.captchaCancelled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-2  reason: not valid java name */
    public static final void m840onCreate$lambda2(VKCaptchaActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.captchaCancelled();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        setContentView(new FrameLayout(this));
        LinearLayout linearLayout = new LinearLayout(this);
        VKUtils vKUtils = VKUtils.INSTANCE;
        int dp = vKUtils.dp(12);
        int max = (int) (Math.max(1.0f, vKUtils.density()) * 130.0f);
        linearLayout.setPadding(dp, dp, dp, dp);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        FrameLayout frameLayout = new FrameLayout(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(max, (int) (Math.max(1.0f, vKUtils.density()) * 50.0f));
        layoutParams.bottomMargin = dp;
        frameLayout.setLayoutParams(layoutParams);
        this.progress = new ProgressBar(this);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        ProgressBar progressBar = this.progress;
        EditText editText = null;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progress");
            progressBar = null;
        }
        progressBar.setLayoutParams(layoutParams2);
        ProgressBar progressBar2 = this.progress;
        if (progressBar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progress");
            progressBar2 = null;
        }
        frameLayout.addView(progressBar2);
        this.image = new ImageView(this);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams3.gravity = 17;
        ImageView imageView = this.image;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
            imageView = null;
        }
        imageView.setLayoutParams(layoutParams3);
        ImageView imageView2 = this.image;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
            imageView2 = null;
        }
        frameLayout.addView(imageView2);
        linearLayout.addView(frameLayout);
        EditText editText2 = new EditText(this);
        this.input = editText2;
        editText2.setInputType(176);
        EditText editText3 = this.input;
        if (editText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("input");
            editText3 = null;
        }
        editText3.setSingleLine(true);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(max, -2);
        EditText editText4 = this.input;
        if (editText4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("input");
            editText4 = null;
        }
        editText4.setLayoutParams(layoutParams4);
        View view = this.input;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("input");
            view = null;
        }
        linearLayout.addView(view);
        new AlertDialog.Builder(this, 5).setView(linearLayout).setTitle(R$string.vk_captcha_hint).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.vk.api.sdk.ui.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i9) {
                VKCaptchaActivity.m838onCreate$lambda0(VKCaptchaActivity.this, dialogInterface, i9);
            }
        }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.vk.api.sdk.ui.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i9) {
                VKCaptchaActivity.m839onCreate$lambda1(VKCaptchaActivity.this, dialogInterface, i9);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.vk.api.sdk.ui.a
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                VKCaptchaActivity.m840onCreate$lambda2(VKCaptchaActivity.this, dialogInterface);
            }
        }).show();
        EditText editText5 = this.input;
        if (editText5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("input");
        } else {
            editText = editText5;
        }
        editText.requestFocus();
        loadImage();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        VKValidationLocker.INSTANCE.signal();
        super.onDestroy();
    }
}
