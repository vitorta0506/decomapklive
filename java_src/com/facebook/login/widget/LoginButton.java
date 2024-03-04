package com.facebook.login.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookSdk;
import com.facebook.Profile;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.common.R$color;
import com.facebook.common.R$drawable;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginTargetApp;
import com.facebook.login.R$string;
import com.facebook.login.R$style;
import com.facebook.login.R$styleable;
import com.facebook.login.widget.ToolTipPopup;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes.dex */
public class LoginButton extends FacebookButtonBase {

    /* renamed from: r  reason: collision with root package name */
    private static final String f5019r = LoginButton.class.getName();

    /* renamed from: a  reason: collision with root package name */
    private boolean f5020a;

    /* renamed from: b  reason: collision with root package name */
    private String f5021b;

    /* renamed from: c  reason: collision with root package name */
    private String f5022c;

    /* renamed from: d  reason: collision with root package name */
    protected e f5023d;

    /* renamed from: e  reason: collision with root package name */
    private String f5024e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f5025f;

    /* renamed from: g  reason: collision with root package name */
    private ToolTipPopup.Style f5026g;

    /* renamed from: h  reason: collision with root package name */
    private ToolTipMode f5027h;

    /* renamed from: i  reason: collision with root package name */
    private long f5028i;

    /* renamed from: j  reason: collision with root package name */
    private ToolTipPopup f5029j;

    /* renamed from: k  reason: collision with root package name */
    private AccessTokenTracker f5030k;

    /* renamed from: l  reason: collision with root package name */
    private LoginManager f5031l;

    /* renamed from: m  reason: collision with root package name */
    private Float f5032m;

    /* renamed from: n  reason: collision with root package name */
    private int f5033n;

    /* renamed from: o  reason: collision with root package name */
    private final String f5034o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private CallbackManager f5035p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private ActivityResultLauncher<Collection<? extends String>> f5036q;

    /* loaded from: classes.dex */
    public enum ToolTipMode {
        AUTOMATIC(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC, 0),
        DISPLAY_ALWAYS("display_always", 1),
        NEVER_DISPLAY("never_display", 2);
        
        public static ToolTipMode DEFAULT = AUTOMATIC;
        private int intValue;
        private String stringValue;

        ToolTipMode(String str, int i9) {
            this.stringValue = str;
            this.intValue = i9;
        }

        public static ToolTipMode fromInt(int i9) {
            ToolTipMode[] values;
            for (ToolTipMode toolTipMode : values()) {
                if (toolTipMode.getValue() == i9) {
                    return toolTipMode;
                }
            }
            return null;
        }

        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }
    }

    /* loaded from: classes.dex */
    class a implements ActivityResultCallback<CallbackManager.ActivityResultParameters> {
        a() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a */
        public void onActivityResult(CallbackManager.ActivityResultParameters activityResultParameters) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f5038a;

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ FetchedAppSettings f5040a;

            a(FetchedAppSettings fetchedAppSettings) {
                this.f5040a = fetchedAppSettings;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    LoginButton.this.t(this.f5040a);
                } catch (Throwable th2) {
                    CrashShieldHandler.handleThrowable(th2, this);
                }
            }
        }

        b(String str) {
            this.f5038a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                LoginButton.this.getActivity().runOnUiThread(new a(FetchedAppSettingsManager.queryAppSettings(this.f5038a, false)));
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    /* loaded from: classes.dex */
    class c extends AccessTokenTracker {
        c() {
        }

        @Override // com.facebook.AccessTokenTracker
        protected void onCurrentAccessTokenChanged(AccessToken accessToken, AccessToken accessToken2) {
            LoginButton.this.r();
            LoginButton.this.p();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5043a;

        static {
            int[] iArr = new int[ToolTipMode.values().length];
            f5043a = iArr;
            try {
                iArr[ToolTipMode.AUTOMATIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5043a[ToolTipMode.DISPLAY_ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5043a[ToolTipMode.NEVER_DISPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private DefaultAudience f5044a = DefaultAudience.FRIENDS;

        /* renamed from: b  reason: collision with root package name */
        private List<String> f5045b = Collections.emptyList();

        /* renamed from: c  reason: collision with root package name */
        private LoginBehavior f5046c = LoginBehavior.NATIVE_WITH_FALLBACK;

        /* renamed from: d  reason: collision with root package name */
        private String f5047d = ServerProtocol.DIALOG_REREQUEST_AUTH_TYPE;

        /* renamed from: e  reason: collision with root package name */
        private LoginTargetApp f5048e = LoginTargetApp.FACEBOOK;

        /* renamed from: f  reason: collision with root package name */
        private boolean f5049f = false;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f5050g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f5051h;

        e() {
        }

        public String b() {
            return this.f5047d;
        }

        public DefaultAudience c() {
            return this.f5044a;
        }

        public LoginBehavior d() {
            return this.f5046c;
        }

        public LoginTargetApp e() {
            return this.f5048e;
        }

        @Nullable
        public String f() {
            return this.f5050g;
        }

        List<String> g() {
            return this.f5045b;
        }

        public boolean h() {
            return this.f5051h;
        }

        public boolean i() {
            return this.f5049f;
        }

        public void j(String str) {
            this.f5047d = str;
        }

        public void k(DefaultAudience defaultAudience) {
            this.f5044a = defaultAudience;
        }

        public void l(LoginBehavior loginBehavior) {
            this.f5046c = loginBehavior;
        }

        public void m(LoginTargetApp loginTargetApp) {
            this.f5048e = loginTargetApp;
        }

        public void n(@Nullable String str) {
            this.f5050g = str;
        }

        public void o(List<String> list) {
            this.f5045b = list;
        }

        public void p(boolean z10) {
            this.f5051h = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class f implements View.OnClickListener {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements DialogInterface.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ LoginManager f5053a;

            a(LoginManager loginManager) {
                this.f5053a = loginManager;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i9) {
                this.f5053a.logOut();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public f() {
        }

        protected LoginManager a() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                LoginManager loginManager = LoginManager.getInstance();
                loginManager.setDefaultAudience(LoginButton.this.getDefaultAudience());
                loginManager.setLoginBehavior(LoginButton.this.getLoginBehavior());
                loginManager.setLoginTargetApp(b());
                loginManager.setAuthType(LoginButton.this.getAuthType());
                loginManager.setFamilyLogin(c());
                loginManager.setShouldSkipAccountDeduplication(LoginButton.this.getShouldSkipAccountDeduplication());
                loginManager.setMessengerPageId(LoginButton.this.getMessengerPageId());
                loginManager.setResetMessengerState(LoginButton.this.getResetMessengerState());
                return loginManager;
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
                return null;
            }
        }

        protected LoginTargetApp b() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                return LoginTargetApp.FACEBOOK;
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
                return null;
            }
        }

        protected boolean c() {
            CrashShieldHandler.isObjectCrashing(this);
            return false;
        }

        protected void d() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                LoginManager a10 = a();
                if (LoginButton.this.f5036q != null) {
                    ((LoginManager.FacebookLoginActivityResultContract) LoginButton.this.f5036q.getContract()).setCallbackManager(LoginButton.this.f5035p != null ? LoginButton.this.f5035p : new CallbackManagerImpl());
                    LoginButton.this.f5036q.launch(LoginButton.this.f5023d.f5045b);
                } else if (LoginButton.this.getFragment() != null) {
                    a10.logIn(LoginButton.this.getFragment(), LoginButton.this.f5023d.f5045b, LoginButton.this.getLoggerID());
                } else if (LoginButton.this.getNativeFragment() != null) {
                    a10.logIn(LoginButton.this.getNativeFragment(), LoginButton.this.f5023d.f5045b, LoginButton.this.getLoggerID());
                } else {
                    a10.logIn(LoginButton.this.getActivity(), LoginButton.this.f5023d.f5045b, LoginButton.this.getLoggerID());
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }

        protected void e(Context context) {
            String string;
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                LoginManager a10 = a();
                if (LoginButton.this.f5020a) {
                    String string2 = LoginButton.this.getResources().getString(R$string.com_facebook_loginview_log_out_action);
                    String string3 = LoginButton.this.getResources().getString(R$string.com_facebook_loginview_cancel_action);
                    Profile currentProfile = Profile.getCurrentProfile();
                    if (currentProfile != null && currentProfile.getName() != null) {
                        string = String.format(LoginButton.this.getResources().getString(R$string.com_facebook_loginview_logged_in_as), currentProfile.getName());
                    } else {
                        string = LoginButton.this.getResources().getString(R$string.com_facebook_loginview_logged_in_using_facebook);
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(context);
                    builder.setMessage(string).setCancelable(true).setPositiveButton(string2, new a(a10)).setNegativeButton(string3, (DialogInterface.OnClickListener) null);
                    builder.create().show();
                    return;
                }
                a10.logOut();
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                LoginButton.this.callExternalOnClickListener(view);
                AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                if (AccessToken.isCurrentAccessTokenActive()) {
                    e(LoginButton.this.getContext());
                } else {
                    d();
                }
                InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(LoginButton.this.getContext());
                Bundle bundle = new Bundle();
                bundle.putInt("logging_in", currentAccessToken != null ? 0 : 1);
                bundle.putInt("access_token_expired", AccessToken.isCurrentAccessTokenActive() ? 1 : 0);
                internalAppEventsLogger.logEventImplicitly(LoginButton.this.f5024e, bundle);
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    public LoginButton(Context context) {
        this(context, null, 0, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
    }

    private void j() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            int i9 = d.f5043a[this.f5027h.ordinal()];
            if (i9 == 1) {
                FacebookSdk.getExecutor().execute(new b(Utility.getMetadataApplicationId(getContext())));
            } else if (i9 != 2) {
            } else {
                l(getResources().getString(R$string.com_facebook_tooltip_default));
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private void l(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ToolTipPopup toolTipPopup = new ToolTipPopup(str, this);
            this.f5029j = toolTipPopup;
            toolTipPopup.g(this.f5026g);
            this.f5029j.f(this.f5028i);
            this.f5029j.h();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private int n(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return getCompoundPaddingLeft() + getCompoundDrawablePadding() + measureTextWidth(str) + getCompoundPaddingRight();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(FetchedAppSettings fetchedAppSettings) {
        if (CrashShieldHandler.isObjectCrashing(this) || fetchedAppSettings == null) {
            return;
        }
        try {
            if (fetchedAppSettings.getNuxEnabled() && getVisibility() == 0) {
                l(fetchedAppSettings.getNuxContent());
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public void configureButton(Context context, AttributeSet attributeSet, int i9, int i10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.configureButton(context, attributeSet, i9, i10);
            setInternalOnClickListener(getNewLoginClickListener());
            o(context, attributeSet, i9, i10);
            if (isInEditMode()) {
                setBackgroundColor(getResources().getColor(R$color.com_facebook_blue));
                this.f5021b = "Continue with Facebook";
            } else {
                this.f5030k = new c();
            }
            r();
            q();
            s();
            p();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public String getAuthType() {
        return this.f5023d.b();
    }

    @Nullable
    public CallbackManager getCallbackManager() {
        return this.f5035p;
    }

    public DefaultAudience getDefaultAudience() {
        return this.f5023d.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public int getDefaultRequestCode() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return 0;
        }
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return R$style.com_facebook_loginview_default_style;
    }

    public String getLoggerID() {
        return this.f5034o;
    }

    public LoginBehavior getLoginBehavior() {
        return this.f5023d.d();
    }

    @StringRes
    protected int getLoginButtonContinueLabel() {
        return R$string.com_facebook_loginview_log_in_button_continue;
    }

    LoginManager getLoginManager() {
        if (this.f5031l == null) {
            this.f5031l = LoginManager.getInstance();
        }
        return this.f5031l;
    }

    public LoginTargetApp getLoginTargetApp() {
        return this.f5023d.e();
    }

    @Nullable
    public String getMessengerPageId() {
        return this.f5023d.f();
    }

    protected f getNewLoginClickListener() {
        return new f();
    }

    List<String> getPermissions() {
        return this.f5023d.g();
    }

    public boolean getResetMessengerState() {
        return this.f5023d.h();
    }

    public boolean getShouldSkipAccountDeduplication() {
        return this.f5023d.i();
    }

    public long getToolTipDisplayTime() {
        return this.f5028i;
    }

    public ToolTipMode getToolTipMode() {
        return this.f5027h;
    }

    public void k() {
        ToolTipPopup toolTipPopup = this.f5029j;
        if (toolTipPopup != null) {
            toolTipPopup.d();
            this.f5029j = null;
        }
    }

    protected int m(int i9) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            Resources resources = getResources();
            String str = this.f5021b;
            if (str == null) {
                str = resources.getString(R$string.com_facebook_loginview_log_in_button_continue);
                int n9 = n(str);
                if (Button.resolveSize(n9, i9) < n9) {
                    str = resources.getString(R$string.com_facebook_loginview_log_in_button);
                }
            }
            return n(str);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return 0;
        }
    }

    protected void o(Context context, AttributeSet attributeSet, int i9, int i10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.f5027h = ToolTipMode.DEFAULT;
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.com_facebook_login_view, i9, i10);
            this.f5020a = obtainStyledAttributes.getBoolean(R$styleable.com_facebook_login_view_com_facebook_confirm_logout, true);
            this.f5021b = obtainStyledAttributes.getString(R$styleable.com_facebook_login_view_com_facebook_login_text);
            this.f5022c = obtainStyledAttributes.getString(R$styleable.com_facebook_login_view_com_facebook_logout_text);
            this.f5027h = ToolTipMode.fromInt(obtainStyledAttributes.getInt(R$styleable.com_facebook_login_view_com_facebook_tooltip_mode, ToolTipMode.DEFAULT.getValue()));
            int i11 = R$styleable.com_facebook_login_view_com_facebook_login_button_radius;
            if (obtainStyledAttributes.hasValue(i11)) {
                this.f5032m = Float.valueOf(obtainStyledAttributes.getDimension(i11, 0.0f));
            }
            int integer = obtainStyledAttributes.getInteger(R$styleable.com_facebook_login_view_com_facebook_login_button_transparency, 255);
            this.f5033n = integer;
            if (integer < 0) {
                this.f5033n = 0;
            }
            if (this.f5033n > 255) {
                this.f5033n = 255;
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onAttachedToWindow();
            if (getContext() instanceof ActivityResultRegistryOwner) {
                this.f5036q = ((ActivityResultRegistryOwner) getContext()).getActivityResultRegistry().register("facebook-login", getLoginManager().createLogInActivityResultContract(this.f5035p, this.f5034o), new a());
            }
            AccessTokenTracker accessTokenTracker = this.f5030k;
            if (accessTokenTracker == null || accessTokenTracker.isTracking()) {
                return;
            }
            this.f5030k.startTracking();
            r();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onDetachedFromWindow();
            ActivityResultLauncher<Collection<? extends String>> activityResultLauncher = this.f5036q;
            if (activityResultLauncher != null) {
                activityResultLauncher.unregister();
            }
            AccessTokenTracker accessTokenTracker = this.f5030k;
            if (accessTokenTracker != null) {
                accessTokenTracker.stopTracking();
            }
            k();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onDraw(canvas);
            if (this.f5025f || isInEditMode()) {
                return;
            }
            this.f5025f = true;
            j();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onLayout(z10, i9, i10, i11, i12);
            r();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i9, int i10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
            int compoundPaddingTop = getCompoundPaddingTop() + ((int) Math.ceil(Math.abs(fontMetrics.top) + Math.abs(fontMetrics.bottom))) + getCompoundPaddingBottom();
            Resources resources = getResources();
            int m10 = m(i9);
            String str = this.f5022c;
            if (str == null) {
                str = resources.getString(R$string.com_facebook_loginview_log_out_button);
            }
            setMeasuredDimension(Button.resolveSize(Math.max(m10, n(str)), i9), compoundPaddingTop);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View view, int i9) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onVisibilityChanged(view, i9);
            if (i9 != 0) {
                k();
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    protected void p() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            setCompoundDrawablesWithIntrinsicBounds(AppCompatResources.getDrawable(getContext(), R$drawable.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    protected void q() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.f5032m == null) {
                return;
            }
            Drawable background = getBackground();
            if (Build.VERSION.SDK_INT >= 29 && (background instanceof StateListDrawable)) {
                StateListDrawable stateListDrawable = (StateListDrawable) background;
                for (int i9 = 0; i9 < stateListDrawable.getStateCount(); i9++) {
                    GradientDrawable gradientDrawable = (GradientDrawable) stateListDrawable.getStateDrawable(i9);
                    if (gradientDrawable != null) {
                        gradientDrawable.setCornerRadius(this.f5032m.floatValue());
                    }
                }
            }
            if (background instanceof GradientDrawable) {
                ((GradientDrawable) background).setCornerRadius(this.f5032m.floatValue());
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    protected void r() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Resources resources = getResources();
            if (!isInEditMode() && AccessToken.isCurrentAccessTokenActive()) {
                String str = this.f5022c;
                if (str == null) {
                    str = resources.getString(R$string.com_facebook_loginview_log_out_button);
                }
                setText(str);
                return;
            }
            String str2 = this.f5021b;
            if (str2 != null) {
                setText(str2);
                return;
            }
            String string = resources.getString(getLoginButtonContinueLabel());
            int width = getWidth();
            if (width != 0 && n(string) > width) {
                string = resources.getString(R$string.com_facebook_loginview_log_in_button);
            }
            setText(string);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    protected void s() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            getBackground().setAlpha(this.f5033n);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public void setAuthType(String str) {
        this.f5023d.j(str);
    }

    public void setDefaultAudience(DefaultAudience defaultAudience) {
        this.f5023d.k(defaultAudience);
    }

    public void setLoginBehavior(LoginBehavior loginBehavior) {
        this.f5023d.l(loginBehavior);
    }

    void setLoginManager(LoginManager loginManager) {
        this.f5031l = loginManager;
    }

    public void setLoginTargetApp(LoginTargetApp loginTargetApp) {
        this.f5023d.m(loginTargetApp);
    }

    public void setLoginText(String str) {
        this.f5021b = str;
        r();
    }

    public void setLogoutText(String str) {
        this.f5022c = str;
        r();
    }

    public void setMessengerPageId(String str) {
        this.f5023d.n(str);
    }

    public void setPermissions(List<String> list) {
        this.f5023d.o(list);
    }

    void setProperties(e eVar) {
        this.f5023d = eVar;
    }

    public void setPublishPermissions(List<String> list) {
        this.f5023d.o(list);
    }

    public void setReadPermissions(List<String> list) {
        this.f5023d.o(list);
    }

    public void setResetMessengerState(boolean z10) {
        this.f5023d.p(z10);
    }

    public void setToolTipDisplayTime(long j10) {
        this.f5028i = j10;
    }

    public void setToolTipMode(ToolTipMode toolTipMode) {
        this.f5027h = toolTipMode;
    }

    public void setToolTipStyle(ToolTipPopup.Style style) {
        this.f5026g = style;
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
    }

    public void setPermissions(String... strArr) {
        this.f5023d.o(Arrays.asList(strArr));
    }

    public void setPublishPermissions(String... strArr) {
        this.f5023d.o(Arrays.asList(strArr));
    }

    public void setReadPermissions(String... strArr) {
        this.f5023d.o(Arrays.asList(strArr));
    }

    public LoginButton(Context context, AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
    }

    protected LoginButton(Context context, AttributeSet attributeSet, int i9, int i10, String str, String str2) {
        super(context, attributeSet, i9, i10, str, str2);
        this.f5023d = new e();
        this.f5024e = AnalyticsEvents.EVENT_LOGIN_VIEW_USAGE;
        this.f5026g = ToolTipPopup.Style.BLUE;
        this.f5028i = 6000L;
        this.f5033n = 255;
        this.f5034o = UUID.randomUUID().toString();
        this.f5035p = null;
        this.f5036q = null;
    }
}
