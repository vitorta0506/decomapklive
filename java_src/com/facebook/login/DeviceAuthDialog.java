package com.facebook.login;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.DeviceAuthDialog;
import com.facebook.login.LoginClient;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.EnumSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000b\b\u0016\u0018\u0000 J2\u00020\u0001:\u0003JKLB\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cH\u0016J4\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001d2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010%H\u0002J\b\u0010'\u001a\u00020\u001dH\u0016J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000fH\u0015J\u0010\u0010+\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u000fH\u0014J\b\u0010,\u001a\u00020\u000fH\u0014J\b\u0010-\u001a\u00020\u001fH\u0014J\u0012\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u000101H\u0016J&\u00102\u001a\u0004\u0018\u00010\u00162\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u0001062\b\u00100\u001a\u0004\u0018\u000101H\u0016J\b\u00107\u001a\u00020\u001fH\u0016J\u0010\u00108\u001a\u00020\u001f2\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020\u001f2\u0006\u0010<\u001a\u00020=H\u0014J\u0010\u0010>\u001a\u00020\u001f2\u0006\u0010?\u001a\u000201H\u0016J'\u0010@\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u001d2\u0006\u0010A\u001a\u00020B2\b\u0010&\u001a\u0004\u0018\u00010BH\u0002¢\u0006\u0002\u0010CJ\b\u0010D\u001a\u00020\u001fH\u0002J<\u0010E\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001d2\u0006\u0010F\u001a\u00020\u001d2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010%H\u0002J\b\u0010G\u001a\u00020\u001fH\u0002J\u0010\u0010H\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010I\u001a\u00020\u001f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006M"}, d2 = {"Lcom/facebook/login/DeviceAuthDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "completed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "confirmationCode", "Landroid/widget/TextView;", "currentGraphRequestPoll", "Lcom/facebook/GraphRequestAsyncTask;", "currentRequestState", "Lcom/facebook/login/DeviceAuthDialog$RequestState;", "deviceAuthMethodHandler", "Lcom/facebook/login/DeviceAuthMethodHandler;", "instructions", "isBeingDestroyed", "", "isRetry", "pollRequest", "Lcom/facebook/GraphRequest;", "getPollRequest", "()Lcom/facebook/GraphRequest;", "progressBar", "Landroid/view/View;", "request", "Lcom/facebook/login/LoginClient$Request;", "scheduledPoll", "Ljava/util/concurrent/ScheduledFuture;", "additionalDeviceInfo", "", "", "completeLogin", "", Contants.USER_ID, "permissions", "Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;", "accessToken", "expirationTime", "Ljava/util/Date;", "dataAccessExpirationTime", "getApplicationAccessToken", "getLayoutResId", "", "isSmartLogin", "initializeContentView", "onBackButtonPressed", "onCancel", "onCreateDialog", "Landroid/app/Dialog;", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroyView", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "onError", "ex", "Lcom/facebook/FacebookException;", "onSaveInstanceState", "outState", "onSuccess", "expiresIn", "", "(Ljava/lang/String;JLjava/lang/Long;)V", "poll", "presentConfirmation", "name", "schedulePoll", "setCurrentRequestState", "startLogin", "Companion", "PermissionsLists", "RequestState", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public class DeviceAuthDialog extends DialogFragment {
    private static final int LOGIN_ERROR_SUBCODE_AUTHORIZATION_DECLINED = 1349173;
    private static final int LOGIN_ERROR_SUBCODE_CODE_EXPIRED = 1349152;
    private static final int LOGIN_ERROR_SUBCODE_EXCESSIVE_POLLING = 1349172;
    @NotNull
    private static final String REQUEST_STATE_KEY = "request_state";
    @NotNull
    private final AtomicBoolean completed = new AtomicBoolean();
    private TextView confirmationCode;
    @Nullable
    private volatile GraphRequestAsyncTask currentGraphRequestPoll;
    @Nullable
    private volatile RequestState currentRequestState;
    @Nullable
    private DeviceAuthMethodHandler deviceAuthMethodHandler;
    private TextView instructions;
    private boolean isBeingDestroyed;
    private boolean isRetry;
    private View progressBar;
    @Nullable
    private LoginClient.Request request;
    @Nullable
    private volatile ScheduledFuture<?> scheduledPoll;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String DEVICE_LOGIN_ENDPOINT = "device/login";
    @NotNull
    private static final String DEVICE_LOGIN_STATUS_ENDPOINT = "device/login_status";
    private static final int LOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING = 1349174;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0000X\u0081D¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00048\u0000X\u0081D¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u0007R\u000e\u0010\u000b\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u00020\f8\u0000X\u0081D¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u0002\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/facebook/login/DeviceAuthDialog$Companion;", "", "()V", "DEVICE_LOGIN_ENDPOINT", "", "getDEVICE_LOGIN_ENDPOINT$facebook_common_release$annotations", "getDEVICE_LOGIN_ENDPOINT$facebook_common_release", "()Ljava/lang/String;", "DEVICE_LOGIN_STATUS_ENDPOINT", "getDEVICE_LOGIN_STATUS_ENDPOINT$facebook_common_release$annotations", "getDEVICE_LOGIN_STATUS_ENDPOINT$facebook_common_release", "LOGIN_ERROR_SUBCODE_AUTHORIZATION_DECLINED", "", "LOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING", "getLOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING$facebook_common_release$annotations", "getLOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING$facebook_common_release", "()I", "LOGIN_ERROR_SUBCODE_CODE_EXPIRED", "LOGIN_ERROR_SUBCODE_EXCESSIVE_POLLING", "REQUEST_STATE_KEY", "handlePermissionResponse", "Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;", "result", "Lorg/json/JSONObject;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @VisibleForTesting
        public static /* synthetic */ void getDEVICE_LOGIN_ENDPOINT$facebook_common_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getDEVICE_LOGIN_STATUS_ENDPOINT$facebook_common_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getLOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING$facebook_common_release$annotations() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final PermissionsLists handlePermissionResponse(JSONObject jSONObject) throws JSONException {
            String optString;
            JSONArray jSONArray = jSONObject.getJSONObject("permissions").getJSONArray("data");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int length = jSONArray.length();
            if (length > 0) {
                int i9 = 0;
                while (true) {
                    int i10 = i9 + 1;
                    JSONObject optJSONObject = jSONArray.optJSONObject(i9);
                    String permission = optJSONObject.optString("permission");
                    Intrinsics.checkNotNullExpressionValue(permission, "permission");
                    if (!(permission.length() == 0) && !Intrinsics.areEqual(permission, "installed") && (optString = optJSONObject.optString("status")) != null) {
                        int hashCode = optString.hashCode();
                        if (hashCode != -1309235419) {
                            if (hashCode != 280295099) {
                                if (hashCode == 568196142 && optString.equals("declined")) {
                                    arrayList2.add(permission);
                                }
                            } else if (optString.equals("granted")) {
                                arrayList.add(permission);
                            }
                        } else if (optString.equals("expired")) {
                            arrayList3.add(permission);
                        }
                    }
                    if (i10 >= length) {
                        break;
                    }
                    i9 = i10;
                }
            }
            return new PermissionsLists(arrayList, arrayList2, arrayList3);
        }

        @NotNull
        public final String getDEVICE_LOGIN_ENDPOINT$facebook_common_release() {
            return DeviceAuthDialog.DEVICE_LOGIN_ENDPOINT;
        }

        @NotNull
        public final String getDEVICE_LOGIN_STATUS_ENDPOINT$facebook_common_release() {
            return DeviceAuthDialog.DEVICE_LOGIN_STATUS_ENDPOINT;
        }

        public final int getLOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING$facebook_common_release() {
            return DeviceAuthDialog.LOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B/\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0007R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;", "", "grantedPermissions", "", "", "declinedPermissions", "expiredPermissions", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getDeclinedPermissions", "()Ljava/util/List;", "setDeclinedPermissions", "(Ljava/util/List;)V", "getExpiredPermissions", "setExpiredPermissions", "getGrantedPermissions", "setGrantedPermissions", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class PermissionsLists {
        @NotNull
        private List<String> declinedPermissions;
        @NotNull
        private List<String> expiredPermissions;
        @NotNull
        private List<String> grantedPermissions;

        public PermissionsLists(@NotNull List<String> grantedPermissions, @NotNull List<String> declinedPermissions, @NotNull List<String> expiredPermissions) {
            Intrinsics.checkNotNullParameter(grantedPermissions, "grantedPermissions");
            Intrinsics.checkNotNullParameter(declinedPermissions, "declinedPermissions");
            Intrinsics.checkNotNullParameter(expiredPermissions, "expiredPermissions");
            this.grantedPermissions = grantedPermissions;
            this.declinedPermissions = declinedPermissions;
            this.expiredPermissions = expiredPermissions;
        }

        @NotNull
        public final List<String> getDeclinedPermissions() {
            return this.declinedPermissions;
        }

        @NotNull
        public final List<String> getExpiredPermissions() {
            return this.expiredPermissions;
        }

        @NotNull
        public final List<String> getGrantedPermissions() {
            return this.grantedPermissions;
        }

        public final void setDeclinedPermissions(@NotNull List<String> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.declinedPermissions = list;
        }

        public final void setExpiredPermissions(@NotNull List<String> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.expiredPermissions = list;
        }

        public final void setGrantedPermissions(@NotNull List<String> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.grantedPermissions = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007\b\u0010¢\u0006\u0002\u0010\u0002B\u000f\b\u0014\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0011\u001a\u00020\fJ\u0010\u0010\u001c\u001a\u00020\u001b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0018\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0018H\u0016R\"\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/facebook/login/DeviceAuthDialog$RequestState;", "Landroid/os/Parcelable;", "()V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "<set-?>", "", "authorizationUri", "getAuthorizationUri", "()Ljava/lang/String;", "interval", "", "getInterval", "()J", "setInterval", "(J)V", "lastPoll", "requestCode", "getRequestCode", "setRequestCode", "(Ljava/lang/String;)V", "userCode", "describeContents", "", "getUserCode", "setLastPoll", "", "setUserCode", "withinLastRefreshWindow", "", "writeToParcel", "dest", "flags", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class RequestState implements Parcelable {
        @Nullable
        private String authorizationUri;
        private long interval;
        private long lastPoll;
        @Nullable
        private String requestCode;
        @Nullable
        private String userCode;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @JvmField
        @NotNull
        public static final Parcelable.Creator<RequestState> CREATOR = new Parcelable.Creator<RequestState>() { // from class: com.facebook.login.DeviceAuthDialog$RequestState$Companion$CREATOR$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public DeviceAuthDialog.RequestState createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new DeviceAuthDialog.RequestState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public DeviceAuthDialog.RequestState[] newArray(int i9) {
                return new DeviceAuthDialog.RequestState[i9];
            }
        };

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/DeviceAuthDialog$RequestState$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/DeviceAuthDialog$RequestState;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public RequestState() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public RequestState(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            this.authorizationUri = parcel.readString();
            this.userCode = parcel.readString();
            this.requestCode = parcel.readString();
            this.interval = parcel.readLong();
            this.lastPoll = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Nullable
        public final String getAuthorizationUri() {
            return this.authorizationUri;
        }

        public final long getInterval() {
            return this.interval;
        }

        @Nullable
        public final String getRequestCode() {
            return this.requestCode;
        }

        @Nullable
        public final String getUserCode() {
            return this.userCode;
        }

        public final void setInterval(long j10) {
            this.interval = j10;
        }

        public final void setLastPoll(long j10) {
            this.lastPoll = j10;
        }

        public final void setRequestCode(@Nullable String str) {
            this.requestCode = str;
        }

        public final void setUserCode(@Nullable String str) {
            this.userCode = str;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", Arrays.copyOf(new Object[]{str}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(locale, format, *args)");
            this.authorizationUri = format;
        }

        public final boolean withinLastRefreshWindow() {
            return this.lastPoll != 0 && (new Date().getTime() - this.lastPoll) - (this.interval * 1000) < 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel dest, int i9) {
            Intrinsics.checkNotNullParameter(dest, "dest");
            dest.writeString(this.authorizationUri);
            dest.writeString(this.userCode);
            dest.writeString(this.requestCode);
            dest.writeLong(this.interval);
            dest.writeLong(this.lastPoll);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _get_pollRequest_$lambda-5  reason: not valid java name */
    public static final void m171_get_pollRequest_$lambda5(DeviceAuthDialog this$0, GraphResponse response) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(response, "response");
        if (this$0.completed.get()) {
            return;
        }
        FacebookRequestError error = response.getError();
        if (error != null) {
            int subErrorCode = error.getSubErrorCode();
            boolean z10 = true;
            if (subErrorCode != LOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING && subErrorCode != LOGIN_ERROR_SUBCODE_EXCESSIVE_POLLING) {
                z10 = false;
            }
            if (z10) {
                this$0.schedulePoll();
                return;
            } else if (subErrorCode != LOGIN_ERROR_SUBCODE_CODE_EXPIRED) {
                if (subErrorCode == LOGIN_ERROR_SUBCODE_AUTHORIZATION_DECLINED) {
                    this$0.onCancel();
                    return;
                }
                FacebookRequestError error2 = response.getError();
                FacebookException exception = error2 == null ? null : error2.getException();
                if (exception == null) {
                    exception = new FacebookException();
                }
                this$0.onError(exception);
                return;
            } else {
                RequestState requestState = this$0.currentRequestState;
                if (requestState != null) {
                    DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                    DeviceRequestsHelper.cleanUpAdvertisementService(requestState.getUserCode());
                }
                LoginClient.Request request = this$0.request;
                if (request != null) {
                    this$0.startLogin(request);
                    return;
                } else {
                    this$0.onCancel();
                    return;
                }
            }
        }
        try {
            JSONObject jSONObject = response.getJSONObject();
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            String string = jSONObject.getString("access_token");
            Intrinsics.checkNotNullExpressionValue(string, "resultObject.getString(\"access_token\")");
            this$0.onSuccess(string, jSONObject.getLong(AccessToken.EXPIRES_IN_KEY), Long.valueOf(jSONObject.optLong(AccessToken.DATA_ACCESS_EXPIRATION_TIME)));
        } catch (JSONException e10) {
            this$0.onError(new FacebookException(e10));
        }
    }

    private final void completeLogin(String str, PermissionsLists permissionsLists, String str2, Date date, Date date2) {
        DeviceAuthMethodHandler deviceAuthMethodHandler = this.deviceAuthMethodHandler;
        if (deviceAuthMethodHandler != null) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            deviceAuthMethodHandler.onSuccess(str2, FacebookSdk.getApplicationId(), str, permissionsLists.getGrantedPermissions(), permissionsLists.getDeclinedPermissions(), permissionsLists.getExpiredPermissions(), AccessTokenSource.DEVICE_AUTH, date, null, date2);
        }
        Dialog dialog = getDialog();
        if (dialog == null) {
            return;
        }
        dialog.dismiss();
    }

    private final GraphRequest getPollRequest() {
        Bundle bundle = new Bundle();
        RequestState requestState = this.currentRequestState;
        bundle.putString("code", requestState == null ? null : requestState.getRequestCode());
        bundle.putString("access_token", getApplicationAccessToken());
        return GraphRequest.Companion.newPostRequestWithBundle(null, DEVICE_LOGIN_STATUS_ENDPOINT, bundle, new GraphRequest.Callback() { // from class: com.facebook.login.f
            @Override // com.facebook.GraphRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                DeviceAuthDialog.m171_get_pollRequest_$lambda5(DeviceAuthDialog.this, graphResponse);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initializeContentView$lambda-2  reason: not valid java name */
    public static final void m172initializeContentView$lambda2(DeviceAuthDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onCancel();
    }

    private final void onSuccess(final String str, long j10, Long l10) {
        Bundle bundle = new Bundle();
        bundle.putString(GraphRequest.FIELDS_PARAM, "id,permissions,name");
        final Date date = null;
        final Date date2 = j10 != 0 ? new Date(new Date().getTime() + (j10 * 1000)) : null;
        if ((l10 == null || l10.longValue() != 0) && l10 != null) {
            date = new Date(l10.longValue() * 1000);
        }
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        GraphRequest newGraphPathRequest = GraphRequest.Companion.newGraphPathRequest(new AccessToken(str, FacebookSdk.getApplicationId(), "0", null, null, null, null, date2, null, date, null, 1024, null), "me", new GraphRequest.Callback() { // from class: com.facebook.login.g
            @Override // com.facebook.GraphRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                DeviceAuthDialog.m173onSuccess$lambda10(DeviceAuthDialog.this, str, date2, date, graphResponse);
            }
        });
        newGraphPathRequest.setHttpMethod(HttpMethod.GET);
        newGraphPathRequest.setParameters(bundle);
        newGraphPathRequest.executeAsync();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccess$lambda-10  reason: not valid java name */
    public static final void m173onSuccess$lambda10(DeviceAuthDialog this$0, String accessToken, Date date, Date date2, GraphResponse response) {
        EnumSet<SmartLoginOption> smartLoginOptions;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(accessToken, "$accessToken");
        Intrinsics.checkNotNullParameter(response, "response");
        if (this$0.completed.get()) {
            return;
        }
        FacebookRequestError error = response.getError();
        if (error != null) {
            FacebookException exception = error.getException();
            if (exception == null) {
                exception = new FacebookException();
            }
            this$0.onError(exception);
            return;
        }
        try {
            JSONObject jSONObject = response.getJSONObject();
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            String string = jSONObject.getString("id");
            Intrinsics.checkNotNullExpressionValue(string, "jsonObject.getString(\"id\")");
            PermissionsLists handlePermissionResponse = Companion.handlePermissionResponse(jSONObject);
            String string2 = jSONObject.getString("name");
            Intrinsics.checkNotNullExpressionValue(string2, "jsonObject.getString(\"name\")");
            RequestState requestState = this$0.currentRequestState;
            if (requestState != null) {
                DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                DeviceRequestsHelper.cleanUpAdvertisementService(requestState.getUserCode());
            }
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId());
            Boolean bool = null;
            if (appSettingsWithoutQuery != null && (smartLoginOptions = appSettingsWithoutQuery.getSmartLoginOptions()) != null) {
                bool = Boolean.valueOf(smartLoginOptions.contains(SmartLoginOption.RequireConfirm));
            }
            if (Intrinsics.areEqual(bool, Boolean.TRUE) && !this$0.isRetry) {
                this$0.isRetry = true;
                this$0.presentConfirmation(string, handlePermissionResponse, accessToken, string2, date, date2);
                return;
            }
            this$0.completeLogin(string, handlePermissionResponse, accessToken, date, date2);
        } catch (JSONException e10) {
            this$0.onError(new FacebookException(e10));
        }
    }

    private final void poll() {
        RequestState requestState = this.currentRequestState;
        if (requestState != null) {
            requestState.setLastPoll(new Date().getTime());
        }
        this.currentGraphRequestPoll = getPollRequest().executeAsync();
    }

    private final void presentConfirmation(final String str, final PermissionsLists permissionsLists, final String str2, String str3, final Date date, final Date date2) {
        String string = getResources().getString(com.facebook.common.R$string.com_facebook_smart_login_confirmation_title);
        Intrinsics.checkNotNullExpressionValue(string, "resources.getString(R.string.com_facebook_smart_login_confirmation_title)");
        String string2 = getResources().getString(com.facebook.common.R$string.com_facebook_smart_login_confirmation_continue_as);
        Intrinsics.checkNotNullExpressionValue(string2, "resources.getString(R.string.com_facebook_smart_login_confirmation_continue_as)");
        String string3 = getResources().getString(com.facebook.common.R$string.com_facebook_smart_login_confirmation_cancel);
        Intrinsics.checkNotNullExpressionValue(string3, "resources.getString(R.string.com_facebook_smart_login_confirmation_cancel)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(string2, Arrays.copyOf(new Object[]{str3}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(string).setCancelable(true).setNegativeButton(format, new DialogInterface.OnClickListener() { // from class: com.facebook.login.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i9) {
                DeviceAuthDialog.m174presentConfirmation$lambda6(DeviceAuthDialog.this, str, permissionsLists, str2, date, date2, dialogInterface, i9);
            }
        }).setPositiveButton(string3, new DialogInterface.OnClickListener() { // from class: com.facebook.login.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i9) {
                DeviceAuthDialog.m175presentConfirmation$lambda8(DeviceAuthDialog.this, dialogInterface, i9);
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: presentConfirmation$lambda-6  reason: not valid java name */
    public static final void m174presentConfirmation$lambda6(DeviceAuthDialog this$0, String userId, PermissionsLists permissions, String accessToken, Date date, Date date2, DialogInterface dialogInterface, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(userId, "$userId");
        Intrinsics.checkNotNullParameter(permissions, "$permissions");
        Intrinsics.checkNotNullParameter(accessToken, "$accessToken");
        this$0.completeLogin(userId, permissions, accessToken, date, date2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: presentConfirmation$lambda-8  reason: not valid java name */
    public static final void m175presentConfirmation$lambda8(DeviceAuthDialog this$0, DialogInterface dialogInterface, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        View initializeContentView = this$0.initializeContentView(false);
        Dialog dialog = this$0.getDialog();
        if (dialog != null) {
            dialog.setContentView(initializeContentView);
        }
        LoginClient.Request request = this$0.request;
        if (request == null) {
            return;
        }
        this$0.startLogin(request);
    }

    private final void schedulePoll() {
        RequestState requestState = this.currentRequestState;
        Long valueOf = requestState == null ? null : Long.valueOf(requestState.getInterval());
        if (valueOf != null) {
            this.scheduledPoll = DeviceAuthMethodHandler.Companion.getBackgroundExecutor().schedule(new Runnable() { // from class: com.facebook.login.h
                @Override // java.lang.Runnable
                public final void run() {
                    DeviceAuthDialog.m176schedulePoll$lambda3(DeviceAuthDialog.this);
                }
            }, valueOf.longValue(), TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: schedulePoll$lambda-3  reason: not valid java name */
    public static final void m176schedulePoll$lambda3(DeviceAuthDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.poll();
    }

    private final void setCurrentRequestState(RequestState requestState) {
        this.currentRequestState = requestState;
        TextView textView = this.confirmationCode;
        if (textView != null) {
            textView.setText(requestState.getUserCode());
            DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
            BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), DeviceRequestsHelper.generateQRCode(requestState.getAuthorizationUri()));
            TextView textView2 = this.instructions;
            if (textView2 != null) {
                textView2.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, bitmapDrawable, (Drawable) null, (Drawable) null);
                TextView textView3 = this.confirmationCode;
                if (textView3 != null) {
                    textView3.setVisibility(0);
                    View view = this.progressBar;
                    if (view != null) {
                        view.setVisibility(8);
                        if (!this.isRetry && DeviceRequestsHelper.startAdvertisementService(requestState.getUserCode())) {
                            new InternalAppEventsLogger(getContext()).logEventImplicitly(AnalyticsEvents.EVENT_SMART_LOGIN_SERVICE);
                        }
                        if (requestState.withinLastRefreshWindow()) {
                            schedulePoll();
                            return;
                        } else {
                            poll();
                            return;
                        }
                    }
                    Intrinsics.throwUninitializedPropertyAccessException("progressBar");
                    throw null;
                }
                Intrinsics.throwUninitializedPropertyAccessException("confirmationCode");
                throw null;
            }
            Intrinsics.throwUninitializedPropertyAccessException("instructions");
            throw null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("confirmationCode");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startLogin$lambda-1  reason: not valid java name */
    public static final void m177startLogin$lambda1(DeviceAuthDialog this$0, GraphResponse response) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(response, "response");
        if (this$0.isBeingDestroyed) {
            return;
        }
        if (response.getError() != null) {
            FacebookRequestError error = response.getError();
            FacebookException exception = error == null ? null : error.getException();
            if (exception == null) {
                exception = new FacebookException();
            }
            this$0.onError(exception);
            return;
        }
        JSONObject jSONObject = response.getJSONObject();
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        RequestState requestState = new RequestState();
        try {
            requestState.setUserCode(jSONObject.getString("user_code"));
            requestState.setRequestCode(jSONObject.getString("code"));
            requestState.setInterval(jSONObject.getLong("interval"));
            this$0.setCurrentRequestState(requestState);
        } catch (JSONException e10) {
            this$0.onError(new FacebookException(e10));
        }
    }

    @Nullable
    public Map<String, String> additionalDeviceInfo() {
        return null;
    }

    @NotNull
    public String getApplicationAccessToken() {
        StringBuilder sb2 = new StringBuilder();
        Validate validate = Validate.INSTANCE;
        sb2.append(Validate.hasAppID());
        sb2.append('|');
        sb2.append(Validate.hasClientToken());
        return sb2.toString();
    }

    @LayoutRes
    protected int getLayoutResId(boolean z10) {
        if (z10) {
            return com.facebook.common.R$layout.com_facebook_smart_device_dialog_fragment;
        }
        return com.facebook.common.R$layout.com_facebook_device_auth_dialog_fragment;
    }

    @NotNull
    protected View initializeContentView(boolean z10) {
        LayoutInflater layoutInflater = requireActivity().getLayoutInflater();
        Intrinsics.checkNotNullExpressionValue(layoutInflater, "requireActivity().layoutInflater");
        View inflate = layoutInflater.inflate(getLayoutResId(z10), (ViewGroup) null);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflater.inflate(getLayoutResId(isSmartLogin), null)");
        View findViewById = inflate.findViewById(com.facebook.common.R$id.progress_bar);
        Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.progress_bar)");
        this.progressBar = findViewById;
        View findViewById2 = inflate.findViewById(com.facebook.common.R$id.confirmation_code);
        Objects.requireNonNull(findViewById2, "null cannot be cast to non-null type android.widget.TextView");
        this.confirmationCode = (TextView) findViewById2;
        View findViewById3 = inflate.findViewById(com.facebook.common.R$id.cancel_button);
        Objects.requireNonNull(findViewById3, "null cannot be cast to non-null type android.widget.Button");
        ((Button) findViewById3).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceAuthDialog.m172initializeContentView$lambda2(DeviceAuthDialog.this, view);
            }
        });
        View findViewById4 = inflate.findViewById(com.facebook.common.R$id.com_facebook_device_auth_instructions);
        Objects.requireNonNull(findViewById4, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) findViewById4;
        this.instructions = textView;
        textView.setText(Html.fromHtml(getString(com.facebook.common.R$string.com_facebook_device_auth_instructions)));
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean onBackButtonPressed() {
        return true;
    }

    protected void onCancel() {
        if (this.completed.compareAndSet(false, true)) {
            RequestState requestState = this.currentRequestState;
            if (requestState != null) {
                DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                DeviceRequestsHelper.cleanUpAdvertisementService(requestState.getUserCode());
            }
            DeviceAuthMethodHandler deviceAuthMethodHandler = this.deviceAuthMethodHandler;
            if (deviceAuthMethodHandler != null) {
                deviceAuthMethodHandler.onCancel();
            }
            Dialog dialog = getDialog();
            if (dialog == null) {
                return;
            }
            dialog.dismiss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        final FragmentActivity requireActivity = requireActivity();
        final int i9 = com.facebook.common.R$style.com_facebook_auth_dialog;
        Dialog dialog = new Dialog(requireActivity, i9) { // from class: com.facebook.login.DeviceAuthDialog$onCreateDialog$dialog$1
            @Override // android.app.Dialog
            public void onBackPressed() {
                if (DeviceAuthDialog.this.onBackButtonPressed()) {
                    super.onBackPressed();
                }
            }
        };
        DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
        dialog.setContentView(initializeContentView(DeviceRequestsHelper.isAvailable() && !this.isRetry));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        RequestState requestState;
        LoginClient loginClient;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, viewGroup, bundle);
        LoginFragment loginFragment = (LoginFragment) ((FacebookActivity) requireActivity()).getCurrentFragment();
        LoginMethodHandler loginMethodHandler = null;
        if (loginFragment != null && (loginClient = loginFragment.getLoginClient()) != null) {
            loginMethodHandler = loginClient.getCurrentHandler();
        }
        this.deviceAuthMethodHandler = (DeviceAuthMethodHandler) loginMethodHandler;
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable(REQUEST_STATE_KEY)) != null) {
            setCurrentRequestState(requestState);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.isBeingDestroyed = true;
        this.completed.set(true);
        super.onDestroyView();
        GraphRequestAsyncTask graphRequestAsyncTask = this.currentGraphRequestPoll;
        if (graphRequestAsyncTask != null) {
            graphRequestAsyncTask.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture = this.scheduledPoll;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(true);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        if (this.isBeingDestroyed) {
            return;
        }
        onCancel();
    }

    protected void onError(@NotNull FacebookException ex) {
        Intrinsics.checkNotNullParameter(ex, "ex");
        if (this.completed.compareAndSet(false, true)) {
            RequestState requestState = this.currentRequestState;
            if (requestState != null) {
                DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                DeviceRequestsHelper.cleanUpAdvertisementService(requestState.getUserCode());
            }
            DeviceAuthMethodHandler deviceAuthMethodHandler = this.deviceAuthMethodHandler;
            if (deviceAuthMethodHandler != null) {
                deviceAuthMethodHandler.onError(ex);
            }
            Dialog dialog = getDialog();
            if (dialog == null) {
                return;
            }
            dialog.dismiss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        if (this.currentRequestState != null) {
            outState.putParcelable(REQUEST_STATE_KEY, this.currentRequestState);
        }
    }

    public void startLogin(@NotNull LoginClient.Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.request = request;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", request.getPermissions()));
        Utility utility = Utility.INSTANCE;
        Utility.putNonEmptyString(bundle, "redirect_uri", request.getDeviceRedirectUriString());
        Utility.putNonEmptyString(bundle, DeviceRequestsHelper.DEVICE_TARGET_USER_ID, request.getDeviceAuthTargetUserId());
        bundle.putString("access_token", getApplicationAccessToken());
        DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
        Map<String, String> additionalDeviceInfo = additionalDeviceInfo();
        bundle.putString(DeviceRequestsHelper.DEVICE_INFO_PARAM, DeviceRequestsHelper.getDeviceInfo(additionalDeviceInfo == null ? null : MapsKt__MapsKt.toMutableMap(additionalDeviceInfo)));
        GraphRequest.Companion.newPostRequestWithBundle(null, DEVICE_LOGIN_ENDPOINT, bundle, new GraphRequest.Callback() { // from class: com.facebook.login.e
            @Override // com.facebook.GraphRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                DeviceAuthDialog.m177startLogin$lambda1(DeviceAuthDialog.this, graphResponse);
            }
        }).executeAsync();
    }
}
