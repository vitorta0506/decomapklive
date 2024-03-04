package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.login.LoginClient;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u0000 02\u00020\u0001:\u00010B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0012\u001a\u00020\nH\u0014J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\"\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u00142\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J&\u0010 \u001a\u0004\u0018\u00010\u000f2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010%\u001a\u00020\u0014H\u0016J\u0010\u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020(H\u0002J\b\u0010)\u001a\u00020\u0014H\u0016J\b\u0010*\u001a\u00020\u0014H\u0016J\u0010\u0010+\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u001fH\u0016J\b\u0010-\u001a\u00020\u0014H\u0014J\b\u0010.\u001a\u00020\u0014H\u0014J\b\u0010/\u001a\u00020\u0014H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068UX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/facebook/login/LoginFragment;", "Landroidx/fragment/app/Fragment;", "()V", "callingPackage", "", "layoutResId", "", "getLayoutResId", "()I", "<set-?>", "Lcom/facebook/login/LoginClient;", LoginFragment.SAVED_LOGIN_CLIENT, "getLoginClient", "()Lcom/facebook/login/LoginClient;", "progressBar", "Landroid/view/View;", "request", "Lcom/facebook/login/LoginClient$Request;", "createLoginClient", "hideSpinner", "", "initializeCallingPackage", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroy", "onLoginClientCompleted", "outcome", "Lcom/facebook/login/LoginClient$Result;", "onPause", "onResume", "onSaveInstanceState", "outState", "onSpinnerHidden", "onSpinnerShown", "showSpinner", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public class LoginFragment extends Fragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String EXTRA_REQUEST = "request";
    @NotNull
    private static final String NULL_CALLING_PKG_ERROR_MSG = "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.";
    @NotNull
    public static final String REQUEST_KEY = "com.facebook.LoginFragment:Request";
    @NotNull
    public static final String RESULT_KEY = "com.facebook.LoginFragment:Result";
    @NotNull
    private static final String SAVED_LOGIN_CLIENT = "loginClient";
    @NotNull
    private static final String TAG = "LoginFragment";
    @Nullable
    private String callingPackage;
    private LoginClient loginClient;
    private View progressBar;
    @Nullable
    private LoginClient.Request request;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/facebook/login/LoginFragment$Companion;", "", "()V", "EXTRA_REQUEST", "", "NULL_CALLING_PKG_ERROR_MSG", "REQUEST_KEY", "RESULT_KEY", "SAVED_LOGIN_CLIENT", "TAG", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideSpinner() {
        View view = this.progressBar;
        if (view != null) {
            view.setVisibility(8);
            onSpinnerHidden();
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        throw null;
    }

    private final void initializeCallingPackage(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity == null) {
            return;
        }
        this.callingPackage = callingActivity.getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-0  reason: not valid java name */
    public static final void m179onCreate$lambda0(LoginFragment this$0, LoginClient.Result outcome) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        this$0.onLoginClientCompleted(outcome);
    }

    private final void onLoginClientCompleted(LoginClient.Result result) {
        this.request = null;
        int i9 = result.code == LoginClient.Result.Code.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable(RESULT_KEY, result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        FragmentActivity activity = getActivity();
        if (!isAdded() || activity == null) {
            return;
        }
        activity.setResult(i9, intent);
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSpinner() {
        View view = this.progressBar;
        if (view != null) {
            view.setVisibility(0);
            onSpinnerShown();
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        throw null;
    }

    @NotNull
    protected LoginClient createLoginClient() {
        return new LoginClient(this);
    }

    @LayoutRes
    protected int getLayoutResId() {
        return com.facebook.common.R$layout.com_facebook_login_fragment;
    }

    @NotNull
    public final LoginClient getLoginClient() {
        LoginClient loginClient = this.loginClient;
        if (loginClient != null) {
            return loginClient;
        }
        Intrinsics.throwUninitializedPropertyAccessException(SAVED_LOGIN_CLIENT);
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        getLoginClient().onActivityResult(i9, i10, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        Bundle bundleExtra;
        super.onCreate(bundle);
        LoginClient loginClient = bundle == null ? null : (LoginClient) bundle.getParcelable(SAVED_LOGIN_CLIENT);
        if (loginClient != null) {
            loginClient.setFragment(this);
        } else {
            loginClient = createLoginClient();
        }
        this.loginClient = loginClient;
        getLoginClient().setOnCompletedListener(new LoginClient.OnCompletedListener() { // from class: com.facebook.login.k
            @Override // com.facebook.login.LoginClient.OnCompletedListener
            public final void onCompleted(LoginClient.Result result) {
                LoginFragment.m179onCreate$lambda0(LoginFragment.this, result);
            }
        });
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        initializeCallingPackage(activity);
        Intent intent = activity.getIntent();
        if (intent == null || (bundleExtra = intent.getBundleExtra(REQUEST_KEY)) == null) {
            return;
        }
        this.request = (LoginClient.Request) bundleExtra.getParcelable("request");
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        View findViewById = inflate.findViewById(com.facebook.common.R$id.com_facebook_login_fragment_progress_bar);
        Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById<View>(R.id.com_facebook_login_fragment_progress_bar)");
        this.progressBar = findViewById;
        getLoginClient().setBackgroundProcessingListener(new LoginClient.BackgroundProcessingListener() { // from class: com.facebook.login.LoginFragment$onCreateView$1
            @Override // com.facebook.login.LoginClient.BackgroundProcessingListener
            public void onBackgroundProcessingStarted() {
                LoginFragment.this.showSpinner();
            }

            @Override // com.facebook.login.LoginClient.BackgroundProcessingListener
            public void onBackgroundProcessingStopped() {
                LoginFragment.this.hideSpinner();
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getLoginClient().cancelCurrentHandler();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        View view = getView();
        View findViewById = view == null ? null : view.findViewById(com.facebook.common.R$id.com_facebook_login_fragment_progress_bar);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.callingPackage == null) {
            Log.e(TAG, NULL_CALLING_PKG_ERROR_MSG);
            FragmentActivity activity = getActivity();
            if (activity == null) {
                return;
            }
            activity.finish();
            return;
        }
        getLoginClient().startOrContinueAuth(this.request);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putParcelable(SAVED_LOGIN_CLIENT, getLoginClient());
    }

    protected void onSpinnerHidden() {
    }

    protected void onSpinnerShown() {
    }
}
