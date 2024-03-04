package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.FacebookServiceException;
import com.facebook.bolts.AppLinks;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.CustomTabLoginMethodHandler;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.support.api.entity.core.CommonCode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b'\u0018\u00002\u00020\u0001B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u001a\u0010\u0015\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J0\u0010\u001a\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u00112\b\u0010\u001d\u001a\u0004\u0018\u00010\u0011H\u0014J\u0018\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\"\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010$\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010%\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u0017H&J\u001a\u0010&\u001a\u00020 2\b\u0010'\u001a\u0004\u0018\u00010\u00192\u0006\u0010!\u001a\u00020\"H\u0014R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006("}, d2 = {"Lcom/facebook/login/NativeAppLoginMethodHandler;", "Lcom/facebook/login/LoginMethodHandler;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", ShareConstants.FEED_SOURCE_PARAM, "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "tokenSource", "Lcom/facebook/AccessTokenSource;", "getTokenSource", "()Lcom/facebook/AccessTokenSource;", "completeLogin", "", "outcome", "Lcom/facebook/login/LoginClient$Result;", "getError", "", AppLinks.KEY_NAME_EXTRAS, "Landroid/os/Bundle;", "getErrorMessage", "handleResultCancel", "request", "Lcom/facebook/login/LoginClient$Request;", "data", "Landroid/content/Intent;", "handleResultError", "error", "errorMessage", "errorCode", "handleResultOk", "onActivityResult", "", "requestCode", "", "resultCode", "processSuccessResponse", "tryAuthorize", "tryIntent", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@VisibleForTesting(otherwise = 3)
/* loaded from: classes.dex */
public abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {
    @NotNull
    private final AccessTokenSource tokenSource;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAppLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        this.tokenSource = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
    }

    private final void completeLogin(LoginClient.Result result) {
        if (result != null) {
            getLoginClient().completeAndValidate(result);
        } else {
            getLoginClient().tryNextHandler();
        }
    }

    private final void processSuccessResponse(final LoginClient.Request request, final Bundle bundle) {
        if (bundle.containsKey("code")) {
            Utility utility = Utility.INSTANCE;
            if (!Utility.isNullOrEmpty(bundle.getString("code"))) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.login.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        NativeAppLoginMethodHandler.m185processSuccessResponse$lambda0(NativeAppLoginMethodHandler.this, request, bundle);
                    }
                });
                return;
            }
        }
        handleResultOk(request, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processSuccessResponse$lambda-0  reason: not valid java name */
    public static final void m185processSuccessResponse$lambda0(NativeAppLoginMethodHandler this$0, LoginClient.Request request, Bundle extras) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(extras, "$extras");
        try {
            this$0.handleResultOk(request, this$0.processCodeExchange(request, extras));
        } catch (FacebookServiceException e10) {
            FacebookRequestError requestError = e10.getRequestError();
            this$0.handleResultError(request, requestError.getErrorType(), requestError.getErrorMessage(), String.valueOf(requestError.getErrorCode()));
        } catch (FacebookException e11) {
            this$0.handleResultError(request, null, e11.getMessage(), null);
        }
    }

    @Nullable
    protected String getError(@Nullable Bundle bundle) {
        String string = bundle == null ? null : bundle.getString("error");
        if (string == null) {
            if (bundle == null) {
                return null;
            }
            return bundle.getString(NativeProtocol.BRIDGE_ARG_ERROR_TYPE);
        }
        return string;
    }

    @Nullable
    protected String getErrorMessage(@Nullable Bundle bundle) {
        String string = bundle == null ? null : bundle.getString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE);
        if (string == null) {
            if (bundle == null) {
                return null;
            }
            return bundle.getString(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION);
        }
        return string;
    }

    @NotNull
    public AccessTokenSource getTokenSource() {
        return this.tokenSource;
    }

    protected void handleResultCancel(@Nullable LoginClient.Request request, @NotNull Intent data) {
        Object obj;
        Intrinsics.checkNotNullParameter(data, "data");
        Bundle extras = data.getExtras();
        String error = getError(extras);
        String str = null;
        if (extras != null && (obj = extras.get("error_code")) != null) {
            str = obj.toString();
        }
        ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
        if (Intrinsics.areEqual(ServerProtocol.getErrorConnectionFailure(), str)) {
            completeLogin(LoginClient.Result.Companion.createErrorResult(request, error, getErrorMessage(extras), str));
        } else {
            completeLogin(LoginClient.Result.Companion.createCancelResult(request, error));
        }
    }

    protected void handleResultError(@Nullable LoginClient.Request request, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        boolean contains;
        boolean contains2;
        if (str != null && Intrinsics.areEqual(str, "logged_out")) {
            CustomTabLoginMethodHandler.Companion companion = CustomTabLoginMethodHandler.Companion;
            CustomTabLoginMethodHandler.calledThroughLoggedOutAppSwitch = true;
            completeLogin(null);
            return;
        }
        ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
        contains = CollectionsKt___CollectionsKt.contains(ServerProtocol.getErrorsProxyAuthDisabled(), str);
        if (contains) {
            completeLogin(null);
            return;
        }
        contains2 = CollectionsKt___CollectionsKt.contains(ServerProtocol.getErrorsUserCanceled(), str);
        if (contains2) {
            completeLogin(LoginClient.Result.Companion.createCancelResult(request, null));
        } else {
            completeLogin(LoginClient.Result.Companion.createErrorResult(request, str, str2, str3));
        }
    }

    protected void handleResultOk(@NotNull LoginClient.Request request, @NotNull Bundle extras) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(extras, "extras");
        try {
            LoginMethodHandler.Companion companion = LoginMethodHandler.Companion;
            completeLogin(LoginClient.Result.Companion.createCompositeTokenResult(request, companion.createAccessTokenFromWebBundle(request.getPermissions(), extras, getTokenSource(), request.getApplicationId()), companion.createAuthenticationTokenFromWebBundle(extras, request.getNonce())));
        } catch (FacebookException e10) {
            completeLogin(LoginClient.Result.Companion.createErrorResult$default(LoginClient.Result.Companion, request, null, e10.getMessage(), null, 8, null));
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean onActivityResult(int i9, int i10, @Nullable Intent intent) {
        LoginClient.Request pendingRequest = getLoginClient().getPendingRequest();
        if (intent == null) {
            completeLogin(LoginClient.Result.Companion.createCancelResult(pendingRequest, "Operation canceled"));
        } else if (i10 == 0) {
            handleResultCancel(pendingRequest, intent);
        } else if (i10 != -1) {
            completeLogin(LoginClient.Result.Companion.createErrorResult$default(LoginClient.Result.Companion, pendingRequest, "Unexpected resultCode from authorization.", null, null, 8, null));
        } else {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                completeLogin(LoginClient.Result.Companion.createErrorResult$default(LoginClient.Result.Companion, pendingRequest, "Unexpected null from returned authorization data.", null, null, 8, null));
                return true;
            }
            String error = getError(extras);
            Object obj = extras.get("error_code");
            String obj2 = obj == null ? null : obj.toString();
            String errorMessage = getErrorMessage(extras);
            String string = extras.getString("e2e");
            Utility utility = Utility.INSTANCE;
            if (!Utility.isNullOrEmpty(string)) {
                logWebLoginCompleted(string);
            }
            if (error == null && obj2 == null && errorMessage == null && pendingRequest != null) {
                processSuccessResponse(pendingRequest, extras);
            } else {
                handleResultError(pendingRequest, error, errorMessage, obj2);
            }
        }
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public abstract int tryAuthorize(@NotNull LoginClient.Request request);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean tryIntent(@Nullable Intent intent, int i9) {
        if (intent == null) {
            return false;
        }
        try {
            Fragment fragment = getLoginClient().getFragment();
            if (fragment == null) {
                return true;
            }
            fragment.startActivityForResult(intent, i9);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAppLoginMethodHandler(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.tokenSource = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
    }
}
