package com.vk.api.sdk.auth;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.vk.api.sdk.VK;
import com.vk.api.sdk.auth.VKAuthenticationResult;
import com.vk.api.sdk.exceptions.VKAuthException;
import com.vk.api.sdk.ui.VKWebViewAuthActivity;
import com.vk.api.sdk.utils.VKUtils;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0000\u0018\u00002\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthResultContract;", "Landroidx/activity/result/contract/ActivityResultContract;", "", "Lcom/vk/api/sdk/auth/VKScope;", "Lcom/vk/api/sdk/auth/VKAuthenticationResult;", "authManager", "Lcom/vk/api/sdk/auth/VKAuthManager;", "(Lcom/vk/api/sdk/auth/VKAuthManager;)V", "createIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "input", "parseResult", "resultCode", "", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKAuthResultContract extends ActivityResultContract<Collection<? extends VKScope>, VKAuthenticationResult> {
    @NotNull
    private final VKAuthManager authManager;

    public VKAuthResultContract(@NotNull VKAuthManager authManager) {
        Intrinsics.checkNotNullParameter(authManager, "authManager");
        this.authManager = authManager;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    public Intent createIntent(@NotNull Context context, @NotNull Collection<? extends VKScope> input) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        VKAuthParams vKAuthParams = new VKAuthParams(VK.getAppId(context), null, input, 2, null);
        if (VKUtils.isIntentAvailable(context, VKAuthManager.VK_APP_AUTH_ACTION, null, VKAuthManager.VK_APP_PACKAGE_ID)) {
            return this.authManager.createVKClientAuthIntent(vKAuthParams);
        }
        return VKWebViewAuthActivity.Companion.createAuthIntent$core_release(context, vKAuthParams);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    public VKAuthenticationResult parseResult(int i9, @Nullable Intent intent) {
        VKAuthenticationResult processResult;
        if (i9 != -1) {
            processResult = new VKAuthenticationResult.Failed(new VKAuthException(0, Intrinsics.stringPlus("Authentication cancelled with activity code = ", Integer.valueOf(i9)), 1, null));
        } else {
            processResult = this.authManager.processResult(intent);
        }
        if (processResult instanceof VKAuthenticationResult.Success) {
            this.authManager.storeLoginResult((VKAuthenticationResult.Success) processResult);
            VK.INSTANCE.trackVisitor$core_release();
        }
        return processResult;
    }
}
