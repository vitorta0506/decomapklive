package com.vk.api.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.recaptcha.RecaptchaActionType;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.api.sdk.auth.VKAccessToken;
import com.vk.api.sdk.auth.VKAuthCallback;
import com.vk.api.sdk.auth.VKAuthManager;
import com.vk.api.sdk.auth.VKAuthResultContract;
import com.vk.api.sdk.auth.VKAuthenticationResult;
import com.vk.api.sdk.auth.VKScope;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.internal.ApiCommand;
import com.vk.api.sdk.requests.VKBooleanRequest;
import com.vk.api.sdk.utils.DefaultUserAgent;
import com.vk.api.sdk.utils.VKUrlResolver;
import com.vk.api.sdk.utils.VKUtils;
import com.vk.dto.common.id.UserId;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0016H\u0007J\u0010\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0007J.\u0010$\u001a\u00020\u001f\"\u0004\b\u0000\u0010%2\f\u0010&\u001a\b\u0012\u0004\u0012\u0002H%0'2\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u0002H%\u0018\u00010)H\u0007J!\u0010*\u001a\u0002H%\"\u0004\b\u0000\u0010%2\f\u0010+\u001a\b\u0012\u0004\u0012\u0002H%0'H\u0007¢\u0006\u0002\u0010,J\b\u0010-\u001a\u00020\u0004H\u0007J\u0010\u0010.\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010/\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#H\u0002J\r\u00100\u001a\u000201H\u0000¢\u0006\u0002\b2J\b\u00103\u001a\u000204H\u0007J\u001a\u00105\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020807\u0012\u0004\u0012\u00020906H\u0007J\r\u0010:\u001a\u00020\u001fH\u0000¢\u0006\u0002\b;J\u0010\u0010<\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0007J\b\u0010=\u001a\u00020>H\u0007J \u0010?\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020A2\u000e\b\u0002\u0010B\u001a\b\u0012\u0004\u0012\u00020807H\u0007J*\u0010?\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000208070C2\u0006\u0010@\u001a\u00020D2\f\u0010(\u001a\b\u0012\u0004\u0012\u0002090EH\u0007J\b\u0010F\u001a\u00020\u001fH\u0007J4\u0010G\u001a\u00020>2\u0006\u0010H\u001a\u00020\u00112\u0006\u0010I\u001a\u00020\u00112\b\u0010J\u001a\u0004\u0018\u00010K2\u0006\u0010(\u001a\u00020L2\b\b\u0002\u0010M\u001a\u00020>H\u0007J\u0010\u0010N\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0016H\u0007J*\u0010O\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010P\u001a\u0002042\u0006\u0010Q\u001a\u00020\u00042\b\u0010R\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010S\u001a\u00020\u001f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J4\u0010T\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010P\u001a\u0002042\u0006\u0010Q\u001a\u00020\u00042\b\u0010R\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010U\u001a\u00020>H\u0007J\r\u0010V\u001a\u00020\u001fH\u0000¢\u0006\u0002\bWR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u00020\tX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00138\u0002@\u0002X\u0083.¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\b\u0012\u0004\u0012\u00020\u0016`\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001a\u0010\u001b¨\u0006X"}, d2 = {"Lcom/vk/api/sdk/VK;", "", "()V", "SDK_APP_ID", "", "SDK_UA_PREFIX", "SDK_VERSION", "SDK_VERSION_CODE", "apiManager", "Lcom/vk/api/sdk/VKApiManager;", "getApiManager$core_release", "()Lcom/vk/api/sdk/VKApiManager;", "setApiManager$core_release", "(Lcom/vk/api/sdk/VKApiManager;)V", "authManager", "Lcom/vk/api/sdk/auth/VKAuthManager;", "cachedResourceAppId", "", "config", "Lcom/vk/api/sdk/VKApiConfig;", "tokenExpiredHandlers", "Ljava/util/ArrayList;", "Lcom/vk/api/sdk/VKTokenExpiredHandler;", "Lkotlin/collections/ArrayList;", "urlResolver", "Lcom/vk/api/sdk/utils/VKUrlResolver;", "getUrlResolver", "()Lcom/vk/api/sdk/utils/VKUrlResolver;", "urlResolver$delegate", "Lkotlin/Lazy;", "addTokenExpiredHandler", "", "handler", "clearAccessToken", "context", "Landroid/content/Context;", "execute", ExifInterface.GPS_DIRECTION_TRUE, "request", "Lcom/vk/api/sdk/internal/ApiCommand;", "callback", "Lcom/vk/api/sdk/VKApiCallback;", "executeSync", "cmd", "(Lcom/vk/api/sdk/internal/ApiCommand;)Ljava/lang/Object;", "getApiVersion", "getAppId", "getAppIdFromResources", "getSDKUserAgent", "Lcom/vk/api/sdk/utils/DefaultUserAgent;", "getSDKUserAgent$core_release", "getUserId", "Lcom/vk/dto/common/id/UserId;", "getVKAuthActivityResultContract", "Landroidx/activity/result/contract/ActivityResultContract;", "", "Lcom/vk/api/sdk/auth/VKScope;", "Lcom/vk/api/sdk/auth/VKAuthenticationResult;", "handleTokenExpired", "handleTokenExpired$core_release", "initialize", "isLoggedIn", "", RecaptchaActionType.LOGIN, PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "scopes", "Landroidx/activity/result/ActivityResultLauncher;", "Landroidx/activity/ComponentActivity;", "Landroidx/activity/result/ActivityResultCallback;", "logout", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "Lcom/vk/api/sdk/auth/VKAuthCallback;", "showErrorToast", "removeTokenExpiredHandler", "saveAccessToken", Contants.USER_ID, "accessToken", "secret", "setConfig", "setCredentials", "saveAccessTokenToStorage", "trackVisitor", "trackVisitor$core_release", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VK {
    @NotNull
    private static final String SDK_APP_ID = "com_vk_sdk_AppId";
    @NotNull
    private static final String SDK_UA_PREFIX = "VKAndroidSDK";
    @NotNull
    private static final String SDK_VERSION = "VKSdkVersion";
    @NotNull
    private static final String SDK_VERSION_CODE = "VKSdkVersionCode";
    public static VKApiManager apiManager;
    private static VKAuthManager authManager;
    private static int cachedResourceAppId;
    private static VKApiConfig config;
    @NotNull
    private static final Lazy urlResolver$delegate;
    @NotNull
    public static final VK INSTANCE = new VK();
    @NotNull
    private static final ArrayList<VKTokenExpiredHandler> tokenExpiredHandlers = new ArrayList<>();

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<VKUrlResolver>() { // from class: com.vk.api.sdk.VK$urlResolver$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VKUrlResolver invoke() {
                return new VKUrlResolver();
            }
        });
        urlResolver$delegate = lazy;
    }

    private VK() {
    }

    @JvmStatic
    public static final void addTokenExpiredHandler(@NotNull VKTokenExpiredHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        tokenExpiredHandlers.add(handler);
    }

    @JvmStatic
    public static final void clearAccessToken(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        VKAuthManager vKAuthManager = authManager;
        if (vKAuthManager != null) {
            if (vKAuthManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("authManager");
                vKAuthManager = null;
            }
            vKAuthManager.clearAccessToken();
        }
    }

    @JvmStatic
    public static final <T> void execute(@NotNull final ApiCommand<T> request, @Nullable final VKApiCallback<? super T> vKApiCallback) {
        Intrinsics.checkNotNullParameter(request, "request");
        VKScheduler.INSTANCE.getNetworkExecutor().submit(new Runnable() { // from class: com.vk.api.sdk.b
            @Override // java.lang.Runnable
            public final void run() {
                VK.m831execute$lambda3(ApiCommand.this, vKApiCallback);
            }
        });
    }

    public static /* synthetic */ void execute$default(ApiCommand apiCommand, VKApiCallback vKApiCallback, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            vKApiCallback = null;
        }
        execute(apiCommand, vKApiCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: execute$lambda-3  reason: not valid java name */
    public static final void m831execute$lambda3(ApiCommand request, final VKApiCallback vKApiCallback) {
        Intrinsics.checkNotNullParameter(request, "$request");
        try {
            final Object executeSync = executeSync(request);
            VKScheduler.runOnMainThread$default(new Runnable() { // from class: com.vk.api.sdk.a
                @Override // java.lang.Runnable
                public final void run() {
                    VK.m832execute$lambda3$lambda1(VKApiCallback.this, executeSync);
                }
            }, 0L, 2, null);
        } catch (Exception e10) {
            VKScheduler.runOnMainThread$default(new Runnable() { // from class: com.vk.api.sdk.c
                @Override // java.lang.Runnable
                public final void run() {
                    VK.m833execute$lambda3$lambda2(e10, vKApiCallback);
                }
            }, 0L, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: execute$lambda-3$lambda-1  reason: not valid java name */
    public static final void m832execute$lambda3$lambda1(VKApiCallback vKApiCallback, Object obj) {
        if (vKApiCallback == null) {
            return;
        }
        vKApiCallback.success(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: execute$lambda-3$lambda-2  reason: not valid java name */
    public static final void m833execute$lambda3$lambda2(Exception e10, VKApiCallback vKApiCallback) {
        Intrinsics.checkNotNullParameter(e10, "$e");
        if ((e10 instanceof VKApiExecutionException) && ((VKApiExecutionException) e10).isInvalidCredentialsError()) {
            INSTANCE.handleTokenExpired$core_release();
        }
        if (vKApiCallback == null) {
            return;
        }
        vKApiCallback.fail(e10);
    }

    @JvmStatic
    public static final <T> T executeSync(@NotNull ApiCommand<T> cmd) throws InterruptedException, IOException, VKApiException {
        Intrinsics.checkNotNullParameter(cmd, "cmd");
        return cmd.execute(INSTANCE.getApiManager$core_release());
    }

    @JvmStatic
    @NotNull
    public static final String getApiVersion() {
        VKApiConfig vKApiConfig = config;
        if (vKApiConfig == null) {
            Intrinsics.throwUninitializedPropertyAccessException("config");
            vKApiConfig = null;
        }
        return vKApiConfig.getVersion();
    }

    @JvmStatic
    public static final int getAppId(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            return INSTANCE.getApiManager$core_release().getConfig().getAppId();
        } catch (Exception unused) {
            return INSTANCE.getAppIdFromResources(context);
        }
    }

    private final int getAppIdFromResources(Context context) {
        int i9;
        int i10 = cachedResourceAppId;
        if (i10 != 0) {
            return i10;
        }
        try {
            i9 = context.getResources().getInteger(context.getResources().getIdentifier(SDK_APP_ID, TypedValues.Custom.S_INT, context.getPackageName()));
        } catch (Exception unused) {
            i9 = 0;
        }
        if (i9 != 0) {
            cachedResourceAppId = i9;
            return i9;
        }
        throw new RuntimeException("<integer name=\"com_vk_sdk_AppId\">your_app_id</integer> is not found in your resources.xml");
    }

    @JvmStatic
    @NotNull
    public static final UserId getUserId() {
        VKAuthManager vKAuthManager = authManager;
        if (vKAuthManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authManager");
            vKAuthManager = null;
        }
        VKAccessToken currentToken = vKAuthManager.getCurrentToken();
        UserId userId = currentToken != null ? currentToken.getUserId() : null;
        return userId == null ? UserId.DEFAULT : userId;
    }

    @JvmStatic
    @NotNull
    public static final ActivityResultContract<Collection<VKScope>, VKAuthenticationResult> getVKAuthActivityResultContract() {
        VKAuthManager vKAuthManager = authManager;
        if (vKAuthManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authManager");
            vKAuthManager = null;
        }
        return new VKAuthResultContract(vKAuthManager);
    }

    @JvmStatic
    public static final void initialize(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        VK vk2 = INSTANCE;
        setConfig(new VKApiConfig(context, vk2.getAppIdFromResources(context), new VKDefaultValidationHandler(context), null, null, null, null, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, null, null, 16777208, null));
        if (isLoggedIn()) {
            vk2.trackVisitor$core_release();
        }
    }

    @JvmStatic
    public static final boolean isLoggedIn() {
        VKAuthManager vKAuthManager = authManager;
        if (vKAuthManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authManager");
            vKAuthManager = null;
        }
        return vKAuthManager.isLoggedIn();
    }

    @Deprecated(message = "Use login with usage of ActivityResultLauncher")
    @JvmStatic
    @JvmOverloads
    public static final void login(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        login$default(activity, null, 2, null);
    }

    @Deprecated(message = "Use login with usage of ActivityResultLauncher")
    @JvmStatic
    @JvmOverloads
    public static final void login(@NotNull Activity activity, @NotNull Collection<? extends VKScope> scopes) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        VKAuthManager vKAuthManager = authManager;
        if (vKAuthManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authManager");
            vKAuthManager = null;
        }
        vKAuthManager.login(activity, scopes);
    }

    public static /* synthetic */ void login$default(Activity activity, Collection collection, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            collection = SetsKt__SetsKt.emptySet();
        }
        login(activity, collection);
    }

    @JvmStatic
    public static final void logout() {
        VKAuthManager vKAuthManager = authManager;
        VKApiConfig vKApiConfig = null;
        if (vKAuthManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authManager");
            vKAuthManager = null;
        }
        vKAuthManager.clearAccessToken();
        VKUtils vKUtils = VKUtils.INSTANCE;
        VKApiConfig vKApiConfig2 = config;
        if (vKApiConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("config");
        } else {
            vKApiConfig = vKApiConfig2;
        }
        vKUtils.clearAllCookies(vKApiConfig.getContext());
    }

    @Deprecated(message = "Use new api for getting a result from an activity instead")
    @JvmStatic
    @JvmOverloads
    public static final boolean onActivityResult(int i9, int i10, @Nullable Intent intent, @NotNull VKAuthCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        return onActivityResult$default(i9, i10, intent, callback, false, 16, null);
    }

    @Deprecated(message = "Use new api for getting a result from an activity instead")
    @JvmStatic
    @JvmOverloads
    public static final boolean onActivityResult(int i9, int i10, @Nullable Intent intent, @NotNull VKAuthCallback callback, boolean z10) {
        VKAuthManager vKAuthManager;
        Intrinsics.checkNotNullParameter(callback, "callback");
        VKAuthManager vKAuthManager2 = authManager;
        VKApiConfig vKApiConfig = null;
        if (vKAuthManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authManager");
            vKAuthManager = null;
        } else {
            vKAuthManager = vKAuthManager2;
        }
        VKApiConfig vKApiConfig2 = config;
        if (vKApiConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("config");
        } else {
            vKApiConfig = vKApiConfig2;
        }
        boolean onActivityResult = vKAuthManager.onActivityResult(vKApiConfig.getContext(), i9, i10, intent, callback, z10);
        if (onActivityResult) {
            VK vk2 = INSTANCE;
            if (isLoggedIn()) {
                vk2.trackVisitor$core_release();
            }
        }
        return onActivityResult;
    }

    public static /* synthetic */ boolean onActivityResult$default(int i9, int i10, Intent intent, VKAuthCallback vKAuthCallback, boolean z10, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            z10 = true;
        }
        return onActivityResult(i9, i10, intent, vKAuthCallback, z10);
    }

    @JvmStatic
    public static final void removeTokenExpiredHandler(@NotNull VKTokenExpiredHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        tokenExpiredHandlers.remove(handler);
    }

    @JvmStatic
    public static final void saveAccessToken(@NotNull Context context, @NotNull UserId userId, @NotNull String accessToken, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        setCredentials(context, userId, accessToken, str, true);
    }

    @JvmStatic
    public static final void setConfig(@NotNull VKApiConfig config2) {
        Intrinsics.checkNotNullParameter(config2, "config");
        VK vk2 = INSTANCE;
        config = config2;
        vk2.setApiManager$core_release(new VKApiManager(config2));
        authManager = new VKAuthManager(config2.getKeyValueStorage());
        vk2.getApiManager$core_release().setCredentials(VKApiCredentials.Companion.lazyFrom(new Function0<VKAccessToken>() { // from class: com.vk.api.sdk.VK$setConfig$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final VKAccessToken invoke() {
                VKAuthManager vKAuthManager;
                vKAuthManager = VK.authManager;
                if (vKAuthManager == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("authManager");
                    vKAuthManager = null;
                }
                return vKAuthManager.getCurrentToken();
            }
        }));
    }

    @JvmStatic
    public static final void setCredentials(@NotNull Context context, @NotNull UserId userId, @NotNull String accessToken, @Nullable String str, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        if (z10) {
            VKAccessToken vKAccessToken = new VKAccessToken(userId, accessToken, str);
            VKApiConfig vKApiConfig = config;
            if (vKApiConfig == null) {
                Intrinsics.throwUninitializedPropertyAccessException("config");
                vKApiConfig = null;
            }
            vKAccessToken.save(vKApiConfig.getKeyValueStorage());
        }
        INSTANCE.getApiManager$core_release().setCredentials(accessToken, str);
    }

    public static /* synthetic */ void setCredentials$default(Context context, UserId userId, String str, String str2, boolean z10, int i9, Object obj) {
        if ((i9 & 16) != 0) {
            z10 = true;
        }
        setCredentials(context, userId, str, str2, z10);
    }

    @NotNull
    public final VKApiManager getApiManager$core_release() {
        VKApiManager vKApiManager = apiManager;
        if (vKApiManager != null) {
            return vKApiManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("apiManager");
        return null;
    }

    @NotNull
    public final DefaultUserAgent getSDKUserAgent$core_release() {
        VKApiConfig vKApiConfig = config;
        if (vKApiConfig != null) {
            VKApiConfig vKApiConfig2 = null;
            if (vKApiConfig == null) {
                Intrinsics.throwUninitializedPropertyAccessException("config");
                vKApiConfig = null;
            }
            PackageManager packageManager = vKApiConfig.getContext().getPackageManager();
            VKApiConfig vKApiConfig3 = config;
            if (vKApiConfig3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("config");
                vKApiConfig3 = null;
            }
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(vKApiConfig3.getContext().getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "config.context.packageMa…ageManager.GET_META_DATA)");
            String valueOf = String.valueOf(applicationInfo.metaData.get(SDK_VERSION));
            String valueOf2 = String.valueOf(applicationInfo.metaData.get(SDK_VERSION_CODE));
            VKUtils vKUtils = VKUtils.INSTANCE;
            VKApiConfig vKApiConfig4 = config;
            if (vKApiConfig4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("config");
            } else {
                vKApiConfig2 = vKApiConfig4;
            }
            return new DefaultUserAgent(SDK_UA_PREFIX, valueOf, valueOf2, vKUtils.getPhysicalDisplaySize(vKApiConfig2.getContext()));
        }
        throw new RuntimeException("please call VK.initialize first!");
    }

    @NotNull
    public final VKUrlResolver getUrlResolver() {
        return (VKUrlResolver) urlResolver$delegate.getValue();
    }

    public final void handleTokenExpired$core_release() {
        VKAuthManager vKAuthManager = authManager;
        if (vKAuthManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authManager");
            vKAuthManager = null;
        }
        vKAuthManager.clearAccessToken();
        for (VKTokenExpiredHandler vKTokenExpiredHandler : tokenExpiredHandlers) {
            vKTokenExpiredHandler.onTokenExpired();
        }
    }

    public final void setApiManager$core_release(@NotNull VKApiManager vKApiManager) {
        Intrinsics.checkNotNullParameter(vKApiManager, "<set-?>");
        apiManager = vKApiManager;
    }

    public final void trackVisitor$core_release() {
        execute$default(new VKBooleanRequest("stats.trackVisitor"), null, 2, null);
    }

    @JvmStatic
    @NotNull
    public static final ActivityResultLauncher<Collection<VKScope>> login(@NotNull ComponentActivity activity, @NotNull ActivityResultCallback<VKAuthenticationResult> callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ActivityResultLauncher<Collection<VKScope>> registerForActivityResult = activity.registerForActivityResult(getVKAuthActivityResultContract(), callback);
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "activity.registerForActi…sultContract(), callback)");
        return registerForActivityResult;
    }
}
