package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphResponse;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.LoginClient;
import com.facebook.share.internal.ShareConstants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0017\u0018\u0000 q2\u00020\u0001:\u0005pqrstB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u001c2\u0006\u0010H\u001a\u00020\u0013J \u0010I\u001a\u00020F2\u0006\u0010G\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u001c2\u0006\u0010H\u001a\u00020\u0013H\u0002J\u0010\u0010J\u001a\u00020F2\b\u0010K\u001a\u0004\u0018\u00010@J\u0006\u0010L\u001a\u00020FJ\u0006\u0010M\u001a\u00020\u0013J\u000e\u0010N\u001a\u00020\u00192\u0006\u0010O\u001a\u00020\u001cJ\u000e\u0010P\u001a\u00020F2\u0006\u0010Q\u001a\u00020RJ\u000e\u0010S\u001a\u00020F2\u0006\u0010Q\u001a\u00020RJ\b\u0010T\u001a\u00020FH\u0002J\b\u0010U\u001a\u00020\u0019H\u0016J\b\u0010V\u001a\u0004\u0018\u00010'J\u001d\u0010(\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&2\u0006\u0010K\u001a\u00020@H\u0016¢\u0006\u0002\u0010WJ2\u0010X\u001a\u00020F2\u0006\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020R2\u0018\u00103\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010[H\u0002JF\u0010X\u001a\u00020F2\u0006\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020\u001c2\b\u0010\\\u001a\u0004\u0018\u00010\u001c2\b\u0010]\u001a\u0004\u0018\u00010\u001c2\u0018\u00103\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010[H\u0002J\u0006\u0010^\u001a\u00020FJ\u0006\u0010_\u001a\u00020FJ\u0010\u0010`\u001a\u00020F2\u0006\u0010Q\u001a\u00020RH\u0002J \u0010a\u001a\u00020\u00132\u0006\u0010b\u001a\u00020\u00192\u0006\u0010c\u001a\u00020\u00192\b\u0010d\u001a\u0004\u0018\u00010eJ\u0010\u0010f\u001a\u00020F2\u0006\u0010g\u001a\u00020\u0019H\u0004J\u0010\u0010h\u001a\u00020F2\b\u0010K\u001a\u0004\u0018\u00010@J\u0006\u0010i\u001a\u00020\u0013J\u0006\u0010j\u001a\u00020FJ\u000e\u0010k\u001a\u00020F2\u0006\u0010l\u001a\u00020RJ\u0018\u0010m\u001a\u00020F2\u0006\u0010n\u001a\u00020\u00062\u0006\u0010o\u001a\u00020\u0019H\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R(\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010!\u001a\u0004\u0018\u00010\u0003@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010\u0004R$\u0010%\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&X\u0086\u000e¢\u0006\u0010\n\u0002\u0010,\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0011\u0010-\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b.\u0010\u0015R\u0014\u0010/\u001a\u0002008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b1\u00102R(\u00103\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u001e\"\u0004\b5\u0010 R\u0010\u00106\u001a\u0004\u0018\u000100X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006u"}, d2 = {"Lcom/facebook/login/LoginClient;", "Landroid/os/Parcelable;", "fragment", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;)V", ShareConstants.FEED_SOURCE_PARAM, "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", PushConstants.INTENT_ACTIVITY_NAME, "Landroidx/fragment/app/FragmentActivity;", "getActivity", "()Landroidx/fragment/app/FragmentActivity;", "backgroundProcessingListener", "Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "getBackgroundProcessingListener", "()Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "setBackgroundProcessingListener", "(Lcom/facebook/login/LoginClient$BackgroundProcessingListener;)V", "checkedInternetPermission", "", "getCheckedInternetPermission", "()Z", "setCheckedInternetPermission", "(Z)V", "currentHandler", "", "extraData", "", "", "getExtraData", "()Ljava/util/Map;", "setExtraData", "(Ljava/util/Map;)V", "value", "getFragment", "()Landroidx/fragment/app/Fragment;", "setFragment", "handlersToTry", "", "Lcom/facebook/login/LoginMethodHandler;", "getHandlersToTry", "()[Lcom/facebook/login/LoginMethodHandler;", "setHandlersToTry", "([Lcom/facebook/login/LoginMethodHandler;)V", "[Lcom/facebook/login/LoginMethodHandler;", "inProgress", "getInProgress", "logger", "Lcom/facebook/login/LoginLogger;", "getLogger", "()Lcom/facebook/login/LoginLogger;", "loggingExtras", "getLoggingExtras", "setLoggingExtras", "loginLogger", "numActivitiesReturned", "numTotalIntentsFired", "onCompletedListener", "Lcom/facebook/login/LoginClient$OnCompletedListener;", "getOnCompletedListener", "()Lcom/facebook/login/LoginClient$OnCompletedListener;", "setOnCompletedListener", "(Lcom/facebook/login/LoginClient$OnCompletedListener;)V", "pendingRequest", "Lcom/facebook/login/LoginClient$Request;", "getPendingRequest", "()Lcom/facebook/login/LoginClient$Request;", "setPendingRequest", "(Lcom/facebook/login/LoginClient$Request;)V", "addExtraData", "", "key", "accumulate", "addLoggingExtra", "authorize", "request", "cancelCurrentHandler", "checkInternetPermission", "checkPermission", "permission", "complete", "outcome", "Lcom/facebook/login/LoginClient$Result;", "completeAndValidate", "completeWithFailure", "describeContents", "getCurrentHandler", "(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;", "logAuthorizationMethodComplete", PushConstants.MZ_PUSH_MESSAGE_METHOD, "result", "", "errorMessage", "errorCode", "notifyBackgroundProcessingStart", "notifyBackgroundProcessingStop", "notifyOnCompleteListener", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "setCurrentHandlerIndex", "index", "startOrContinueAuth", "tryCurrentHandler", "tryNextHandler", "validateSameFbidAndFinish", "pendingResult", "writeToParcel", "dest", "flags", "BackgroundProcessingListener", "Companion", "OnCompletedListener", "Request", "Result", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class LoginClient implements Parcelable {
    @Nullable
    private BackgroundProcessingListener backgroundProcessingListener;
    private boolean checkedInternetPermission;
    private int currentHandler;
    @Nullable
    private Map<String, String> extraData;
    @Nullable
    private Fragment fragment;
    @Nullable
    private LoginMethodHandler[] handlersToTry;
    @Nullable
    private Map<String, String> loggingExtras;
    @Nullable
    private LoginLogger loginLogger;
    private int numActivitiesReturned;
    private int numTotalIntentsFired;
    @Nullable
    private OnCompletedListener onCompletedListener;
    @Nullable
    private Request pendingRequest;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<LoginClient> CREATOR = new Parcelable.Creator<LoginClient>() { // from class: com.facebook.login.LoginClient$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public LoginClient createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new LoginClient(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public LoginClient[] newArray(int i9) {
            return new LoginClient[i9];
        }
    };

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "", "onBackgroundProcessingStarted", "", "onBackgroundProcessingStopped", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface BackgroundProcessingListener {
        void onBackgroundProcessingStarted();

        void onBackgroundProcessingStopped();
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0007J\b\u0010\b\u001a\u00020\tH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/facebook/login/LoginClient$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/LoginClient;", "getE2E", "", "getLoginRequestCode", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final String getE2E() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("init", System.currentTimeMillis());
            } catch (JSONException unused) {
            }
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "e2e.toString()");
            return jSONObject2;
        }

        @JvmStatic
        public final int getLoginRequestCode() {
            return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/LoginClient$OnCompletedListener;", "", "onCompleted", "", "result", "Lcom/facebook/login/LoginClient$Result;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface OnCompletedListener {
        void onCompleted(@NotNull Result result);
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001c\u001dB7\b\u0010\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000bBA\b\u0010\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000fB\u000f\b\u0012\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0017H\u0016R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R \u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R \u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/facebook/login/LoginClient$Result;", "Landroid/os/Parcelable;", "request", "Lcom/facebook/login/LoginClient$Request;", "code", "Lcom/facebook/login/LoginClient$Result$Code;", JThirdPlatFormInterface.KEY_TOKEN, "Lcom/facebook/AccessToken;", "errorMessage", "", "errorCode", "(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V", "accessToken", "authenticationToken", "Lcom/facebook/AuthenticationToken;", "(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$Code;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "extraData", "", "loggingExtras", "describeContents", "", "writeToParcel", "", "dest", "flags", "Code", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Result implements Parcelable {
        @JvmField
        @Nullable
        public final AuthenticationToken authenticationToken;
        @JvmField
        @NotNull
        public final Code code;
        @JvmField
        @Nullable
        public final String errorCode;
        @JvmField
        @Nullable
        public final String errorMessage;
        @JvmField
        @Nullable
        public Map<String, String> extraData;
        @JvmField
        @Nullable
        public Map<String, String> loggingExtras;
        @JvmField
        @Nullable
        public final Request request;
        @JvmField
        @Nullable
        public final AccessToken token;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @JvmField
        @NotNull
        public static final Parcelable.Creator<Result> CREATOR = new Parcelable.Creator<Result>() { // from class: com.facebook.login.LoginClient$Result$Companion$CREATOR$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public LoginClient.Result createFromParcel(@NotNull Parcel source) {
                Intrinsics.checkNotNullParameter(source, "source");
                return new LoginClient.Result(source, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public LoginClient.Result[] newArray(int i9) {
                return new LoginClient.Result[i9];
            }
        };

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/facebook/login/LoginClient$Result$Code;", "", "loggingValue", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getLoggingValue", "()Ljava/lang/String;", "SUCCESS", "CANCEL", "ERROR", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public enum Code {
            SUCCESS(GraphResponse.SUCCESS_KEY),
            CANCEL("cancel"),
            ERROR("error");
            
            @NotNull
            private final String loggingValue;

            Code(String str) {
                this.loggingValue = str;
            }

            /* renamed from: values  reason: to resolve conflict with enum method */
            public static Code[] valuesCustom() {
                Code[] valuesCustom = values();
                return (Code[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
            }

            @NotNull
            public final String getLoggingValue() {
                return this.loggingValue;
            }
        }

        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J&\u0010\u000b\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J2\u0010\u0010\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010\u0014\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0015\u001a\u00020\rH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/facebook/login/LoginClient$Result$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/LoginClient$Result;", "createCancelResult", "request", "Lcom/facebook/login/LoginClient$Request;", "message", "", "createCompositeTokenResult", "accessToken", "Lcom/facebook/AccessToken;", "authenticationToken", "Lcom/facebook/AuthenticationToken;", "createErrorResult", "errorType", "errorDescription", "errorCode", "createTokenResult", JThirdPlatFormInterface.KEY_TOKEN, "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static /* synthetic */ Result createErrorResult$default(Companion companion, Request request, String str, String str2, String str3, int i9, Object obj) {
                if ((i9 & 8) != 0) {
                    str3 = null;
                }
                return companion.createErrorResult(request, str, str2, str3);
            }

            @JvmStatic
            @NotNull
            public final Result createCancelResult(@Nullable Request request, @Nullable String str) {
                return new Result(request, Code.CANCEL, null, str, null);
            }

            @JvmStatic
            @NotNull
            public final Result createCompositeTokenResult(@Nullable Request request, @Nullable AccessToken accessToken, @Nullable AuthenticationToken authenticationToken) {
                return new Result(request, Code.SUCCESS, accessToken, authenticationToken, null, null);
            }

            @JvmStatic
            @JvmOverloads
            @NotNull
            public final Result createErrorResult(@Nullable Request request, @Nullable String str, @Nullable String str2) {
                return createErrorResult$default(this, request, str, str2, null, 8, null);
            }

            @JvmStatic
            @JvmOverloads
            @NotNull
            public final Result createErrorResult(@Nullable Request request, @Nullable String str, @Nullable String str2, @Nullable String str3) {
                ArrayList arrayList = new ArrayList();
                if (str != null) {
                    arrayList.add(str);
                }
                if (str2 != null) {
                    arrayList.add(str2);
                }
                return new Result(request, Code.ERROR, null, TextUtils.join(": ", arrayList), str3);
            }

            @JvmStatic
            @NotNull
            public final Result createTokenResult(@Nullable Request request, @NotNull AccessToken token) {
                Intrinsics.checkNotNullParameter(token, "token");
                return new Result(request, Code.SUCCESS, token, null, null);
            }
        }

        public /* synthetic */ Result(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
            this(parcel);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Result(@Nullable Request request, @NotNull Code code, @Nullable AccessToken accessToken, @Nullable String str, @Nullable String str2) {
            this(request, code, accessToken, null, str, str2);
            Intrinsics.checkNotNullParameter(code, "code");
        }

        @JvmStatic
        @NotNull
        public static final Result createCancelResult(@Nullable Request request, @Nullable String str) {
            return Companion.createCancelResult(request, str);
        }

        @JvmStatic
        @NotNull
        public static final Result createCompositeTokenResult(@Nullable Request request, @Nullable AccessToken accessToken, @Nullable AuthenticationToken authenticationToken) {
            return Companion.createCompositeTokenResult(request, accessToken, authenticationToken);
        }

        @JvmStatic
        @JvmOverloads
        @NotNull
        public static final Result createErrorResult(@Nullable Request request, @Nullable String str, @Nullable String str2) {
            return Companion.createErrorResult(request, str, str2);
        }

        @JvmStatic
        @JvmOverloads
        @NotNull
        public static final Result createErrorResult(@Nullable Request request, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            return Companion.createErrorResult(request, str, str2, str3);
        }

        @JvmStatic
        @NotNull
        public static final Result createTokenResult(@Nullable Request request, @NotNull AccessToken accessToken) {
            return Companion.createTokenResult(request, accessToken);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel dest, int i9) {
            Intrinsics.checkNotNullParameter(dest, "dest");
            dest.writeString(this.code.name());
            dest.writeParcelable(this.token, i9);
            dest.writeParcelable(this.authenticationToken, i9);
            dest.writeString(this.errorMessage);
            dest.writeString(this.errorCode);
            dest.writeParcelable(this.request, i9);
            Utility utility = Utility.INSTANCE;
            Utility.writeNonnullStringMapToParcel(dest, this.loggingExtras);
            Utility.writeNonnullStringMapToParcel(dest, this.extraData);
        }

        public Result(@Nullable Request request, @NotNull Code code, @Nullable AccessToken accessToken, @Nullable AuthenticationToken authenticationToken, @Nullable String str, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(code, "code");
            this.request = request;
            this.token = accessToken;
            this.authenticationToken = authenticationToken;
            this.errorMessage = str;
            this.code = code;
            this.errorCode = str2;
        }

        private Result(Parcel parcel) {
            String readString = parcel.readString();
            this.code = Code.valueOf(readString == null ? "error" : readString);
            this.token = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.authenticationToken = (AuthenticationToken) parcel.readParcelable(AuthenticationToken.class.getClassLoader());
            this.errorMessage = parcel.readString();
            this.errorCode = parcel.readString();
            this.request = (Request) parcel.readParcelable(Request.class.getClassLoader());
            Utility utility = Utility.INSTANCE;
            this.loggingExtras = Utility.readNonnullStringMapFromParcel(parcel);
            this.extraData = Utility.readNonnullStringMapFromParcel(parcel);
        }
    }

    public LoginClient(@NotNull Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.currentHandler = -1;
        setFragment(fragment);
    }

    private final void addLoggingExtra(String str, String str2, boolean z10) {
        Map<String, String> map = this.loggingExtras;
        if (map == null) {
            map = new HashMap<>();
        }
        if (this.loggingExtras == null) {
            this.loggingExtras = map;
        }
        if (map.containsKey(str) && z10) {
            str2 = ((Object) map.get(str)) + ',' + str2;
        }
        map.put(str, str2);
    }

    private final void completeWithFailure() {
        complete(Result.Companion.createErrorResult$default(Result.Companion, this.pendingRequest, "Login attempt failed.", null, null, 8, null));
    }

    @JvmStatic
    @NotNull
    public static final String getE2E() {
        return Companion.getE2E();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, r2 == null ? null : r2.getApplicationId()) == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.facebook.login.LoginLogger getLogger() {
        /*
            r3 = this;
            com.facebook.login.LoginLogger r0 = r3.loginLogger
            if (r0 == 0) goto L18
            java.lang.String r1 = r0.getApplicationId()
            com.facebook.login.LoginClient$Request r2 = r3.pendingRequest
            if (r2 != 0) goto Le
            r2 = 0
            goto L12
        Le:
            java.lang.String r2 = r2.getApplicationId()
        L12:
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 != 0) goto L3a
        L18:
            com.facebook.login.LoginLogger r0 = new com.facebook.login.LoginLogger
            androidx.fragment.app.FragmentActivity r1 = r3.getActivity()
            if (r1 != 0) goto L26
            com.facebook.FacebookSdk r1 = com.facebook.FacebookSdk.INSTANCE
            android.content.Context r1 = com.facebook.FacebookSdk.getApplicationContext()
        L26:
            com.facebook.login.LoginClient$Request r2 = r3.pendingRequest
            if (r2 != 0) goto L31
            com.facebook.FacebookSdk r2 = com.facebook.FacebookSdk.INSTANCE
            java.lang.String r2 = com.facebook.FacebookSdk.getApplicationId()
            goto L35
        L31:
            java.lang.String r2 = r2.getApplicationId()
        L35:
            r0.<init>(r1, r2)
            r3.loginLogger = r0
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginClient.getLogger():com.facebook.login.LoginLogger");
    }

    @JvmStatic
    public static final int getLoginRequestCode() {
        return Companion.getLoginRequestCode();
    }

    private final void logAuthorizationMethodComplete(String str, Result result, Map<String, String> map) {
        logAuthorizationMethodComplete(str, result.code.getLoggingValue(), result.errorMessage, result.errorCode, map);
    }

    private final void notifyOnCompleteListener(Result result) {
        OnCompletedListener onCompletedListener = this.onCompletedListener;
        if (onCompletedListener == null) {
            return;
        }
        onCompletedListener.onCompleted(result);
    }

    public final void addExtraData(@NotNull String key, @NotNull String value, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Map<String, String> map = this.extraData;
        if (map == null) {
            map = new HashMap<>();
        }
        if (this.extraData == null) {
            this.extraData = map;
        }
        if (map.containsKey(key) && z10) {
            value = ((Object) map.get(key)) + ',' + value;
        }
        map.put(key, value);
    }

    public final void authorize(@Nullable Request request) {
        if (request == null) {
            return;
        }
        if (this.pendingRequest == null) {
            if (!AccessToken.Companion.isCurrentAccessTokenActive() || checkInternetPermission()) {
                this.pendingRequest = request;
                this.handlersToTry = getHandlersToTry(request);
                tryNextHandler();
                return;
            }
            return;
        }
        throw new FacebookException("Attempted to authorize while a request is pending.");
    }

    public final void cancelCurrentHandler() {
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (currentHandler == null) {
            return;
        }
        currentHandler.cancel();
    }

    public final boolean checkInternetPermission() {
        if (this.checkedInternetPermission) {
            return true;
        }
        if (checkPermission("android.permission.INTERNET") != 0) {
            FragmentActivity activity = getActivity();
            complete(Result.Companion.createErrorResult$default(Result.Companion, this.pendingRequest, activity == null ? null : activity.getString(com.facebook.common.R$string.com_facebook_internet_permission_error_title), activity != null ? activity.getString(com.facebook.common.R$string.com_facebook_internet_permission_error_message) : null, null, 8, null));
            return false;
        }
        this.checkedInternetPermission = true;
        return true;
    }

    public final int checkPermission(@NotNull String permission) {
        Intrinsics.checkNotNullParameter(permission, "permission");
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return -1;
        }
        return activity.checkCallingOrSelfPermission(permission);
    }

    public final void complete(@NotNull Result outcome) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (currentHandler != null) {
            logAuthorizationMethodComplete(currentHandler.getNameForLogging(), outcome, currentHandler.getMethodLoggingExtras());
        }
        Map<String, String> map = this.loggingExtras;
        if (map != null) {
            outcome.loggingExtras = map;
        }
        Map<String, String> map2 = this.extraData;
        if (map2 != null) {
            outcome.extraData = map2;
        }
        this.handlersToTry = null;
        this.currentHandler = -1;
        this.pendingRequest = null;
        this.loggingExtras = null;
        this.numActivitiesReturned = 0;
        this.numTotalIntentsFired = 0;
        notifyOnCompleteListener(outcome);
    }

    public final void completeAndValidate(@NotNull Result outcome) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        if (outcome.token != null && AccessToken.Companion.isCurrentAccessTokenActive()) {
            validateSameFbidAndFinish(outcome);
        } else {
            complete(outcome);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public final FragmentActivity getActivity() {
        Fragment fragment = this.fragment;
        if (fragment == null) {
            return null;
        }
        return fragment.getActivity();
    }

    @Nullable
    public final BackgroundProcessingListener getBackgroundProcessingListener() {
        return this.backgroundProcessingListener;
    }

    public final boolean getCheckedInternetPermission() {
        return this.checkedInternetPermission;
    }

    @Nullable
    public final LoginMethodHandler getCurrentHandler() {
        LoginMethodHandler[] loginMethodHandlerArr;
        int i9 = this.currentHandler;
        if (i9 < 0 || (loginMethodHandlerArr = this.handlersToTry) == null) {
            return null;
        }
        return loginMethodHandlerArr[i9];
    }

    @Nullable
    public final Map<String, String> getExtraData() {
        return this.extraData;
    }

    @Nullable
    public final Fragment getFragment() {
        return this.fragment;
    }

    @Nullable
    public final LoginMethodHandler[] getHandlersToTry() {
        return this.handlersToTry;
    }

    public final boolean getInProgress() {
        return this.pendingRequest != null && this.currentHandler >= 0;
    }

    @Nullable
    public final Map<String, String> getLoggingExtras() {
        return this.loggingExtras;
    }

    @Nullable
    public final OnCompletedListener getOnCompletedListener() {
        return this.onCompletedListener;
    }

    @Nullable
    public final Request getPendingRequest() {
        return this.pendingRequest;
    }

    public final void notifyBackgroundProcessingStart() {
        BackgroundProcessingListener backgroundProcessingListener = this.backgroundProcessingListener;
        if (backgroundProcessingListener == null) {
            return;
        }
        backgroundProcessingListener.onBackgroundProcessingStarted();
    }

    public final void notifyBackgroundProcessingStop() {
        BackgroundProcessingListener backgroundProcessingListener = this.backgroundProcessingListener;
        if (backgroundProcessingListener == null) {
            return;
        }
        backgroundProcessingListener.onBackgroundProcessingStopped();
    }

    public final boolean onActivityResult(int i9, int i10, @Nullable Intent intent) {
        this.numActivitiesReturned++;
        if (this.pendingRequest != null) {
            if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.NO_ACTIVITY_EXCEPTION, false)) {
                tryNextHandler();
                return false;
            }
            LoginMethodHandler currentHandler = getCurrentHandler();
            if (currentHandler != null && (!currentHandler.shouldKeepTrackOfMultipleIntents() || intent != null || this.numActivitiesReturned >= this.numTotalIntentsFired)) {
                return currentHandler.onActivityResult(i9, i10, intent);
            }
        }
        return false;
    }

    public final void setBackgroundProcessingListener(@Nullable BackgroundProcessingListener backgroundProcessingListener) {
        this.backgroundProcessingListener = backgroundProcessingListener;
    }

    public final void setCheckedInternetPermission(boolean z10) {
        this.checkedInternetPermission = z10;
    }

    protected final void setCurrentHandlerIndex(int i9) {
        this.currentHandler = i9;
    }

    public final void setExtraData(@Nullable Map<String, String> map) {
        this.extraData = map;
    }

    public final void setFragment(@Nullable Fragment fragment) {
        if (this.fragment == null) {
            this.fragment = fragment;
            return;
        }
        throw new FacebookException("Can't set fragment once it is already set.");
    }

    public final void setHandlersToTry(@Nullable LoginMethodHandler[] loginMethodHandlerArr) {
        this.handlersToTry = loginMethodHandlerArr;
    }

    public final void setLoggingExtras(@Nullable Map<String, String> map) {
        this.loggingExtras = map;
    }

    public final void setOnCompletedListener(@Nullable OnCompletedListener onCompletedListener) {
        this.onCompletedListener = onCompletedListener;
    }

    public final void setPendingRequest(@Nullable Request request) {
        this.pendingRequest = request;
    }

    public final void startOrContinueAuth(@Nullable Request request) {
        if (getInProgress()) {
            return;
        }
        authorize(request);
    }

    public final boolean tryCurrentHandler() {
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (currentHandler == null) {
            return false;
        }
        if (currentHandler.needsInternetPermission() && !checkInternetPermission()) {
            addLoggingExtra(LoginLogger.EVENT_EXTRAS_MISSING_INTERNET_PERMISSION, "1", false);
            return false;
        }
        Request request = this.pendingRequest;
        if (request == null) {
            return false;
        }
        int tryAuthorize = currentHandler.tryAuthorize(request);
        this.numActivitiesReturned = 0;
        if (tryAuthorize > 0) {
            getLogger().logAuthorizationMethodStart(request.getAuthId(), currentHandler.getNameForLogging(), request.isFamilyLogin() ? LoginLogger.EVENT_NAME_FOA_LOGIN_METHOD_START : LoginLogger.EVENT_NAME_LOGIN_METHOD_START);
            this.numTotalIntentsFired = tryAuthorize;
        } else {
            getLogger().logAuthorizationMethodNotTried(request.getAuthId(), currentHandler.getNameForLogging(), request.isFamilyLogin() ? LoginLogger.EVENT_NAME_FOA_LOGIN_METHOD_NOT_TRIED : LoginLogger.EVENT_NAME_LOGIN_METHOD_NOT_TRIED);
            addLoggingExtra(LoginLogger.EVENT_EXTRAS_NOT_TRIED, currentHandler.getNameForLogging(), true);
        }
        return tryAuthorize > 0;
    }

    public final void tryNextHandler() {
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (currentHandler != null) {
            logAuthorizationMethodComplete(currentHandler.getNameForLogging(), LoginLogger.EVENT_PARAM_METHOD_RESULT_SKIPPED, null, null, currentHandler.getMethodLoggingExtras());
        }
        LoginMethodHandler[] loginMethodHandlerArr = this.handlersToTry;
        while (loginMethodHandlerArr != null) {
            int i9 = this.currentHandler;
            if (i9 >= loginMethodHandlerArr.length - 1) {
                break;
            }
            this.currentHandler = i9 + 1;
            if (tryCurrentHandler()) {
                return;
            }
        }
        if (this.pendingRequest != null) {
            completeWithFailure();
        }
    }

    public final void validateSameFbidAndFinish(@NotNull Result pendingResult) {
        Result createCompositeTokenResult;
        Intrinsics.checkNotNullParameter(pendingResult, "pendingResult");
        if (pendingResult.token != null) {
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            AccessToken accessToken = pendingResult.token;
            if (currentAccessToken != null) {
                try {
                    if (Intrinsics.areEqual(currentAccessToken.getUserId(), accessToken.getUserId())) {
                        createCompositeTokenResult = Result.Companion.createCompositeTokenResult(this.pendingRequest, pendingResult.token, pendingResult.authenticationToken);
                        complete(createCompositeTokenResult);
                        return;
                    }
                } catch (Exception e10) {
                    complete(Result.Companion.createErrorResult$default(Result.Companion, this.pendingRequest, "Caught exception", e10.getMessage(), null, 8, null));
                    return;
                }
            }
            createCompositeTokenResult = Result.Companion.createErrorResult$default(Result.Companion, this.pendingRequest, "User logged in as different Facebook user.", null, null, 8, null);
            complete(createCompositeTokenResult);
            return;
        }
        throw new FacebookException("Can't validate without a token");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i9) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeParcelableArray(this.handlersToTry, i9);
        dest.writeInt(this.currentHandler);
        dest.writeParcelable(this.pendingRequest, i9);
        Utility utility = Utility.INSTANCE;
        Utility.writeNonnullStringMapToParcel(dest, this.loggingExtras);
        Utility.writeNonnullStringMapToParcel(dest, this.extraData);
    }

    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 K2\u00020\u0001:\u0001KB{\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013B\u000f\b\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\u0016J\b\u0010C\u001a\u00020DH\u0016J\u0006\u0010E\u001a\u00020+J\u000e\u0010F\u001a\u00020G2\u0006\u0010B\u001a\u00020+J\u0006\u0010B\u001a\u00020+J\u0018\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020\u00152\u0006\u0010J\u001a\u00020DH\u0016R\u0011\u0010\n\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0018\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001bR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0018R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0018\"\u0004\b&\u0010\u001bR\u001c\u0010'\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0018\"\u0004\b)\u0010\u001bR\u001a\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010,\"\u0004\b-\u0010.R\u0011\u0010/\u001a\u00020+8F¢\u0006\u0006\u001a\u0004\b/\u0010,R\u001a\u00100\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010,\"\u0004\b1\u0010.R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0011\u00104\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u001c\u00107\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u0018\"\u0004\b9\u0010\u001bR\u0011\u0010\u000e\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b:\u0010\u0018R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001a\u0010?\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010,\"\u0004\bA\u0010.R\u000e\u0010B\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006L"}, d2 = {"Lcom/facebook/login/LoginClient$Request;", "Landroid/os/Parcelable;", "loginBehavior", "Lcom/facebook/login/LoginBehavior;", "permissions", "", "", "defaultAudience", "Lcom/facebook/login/DefaultAudience;", "authType", "applicationId", "authId", "targetApp", "Lcom/facebook/login/LoginTargetApp;", "nonce", "codeVerifier", "codeChallenge", "codeChallengeMethod", "Lcom/facebook/login/CodeChallengeMethod;", "(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getApplicationId", "()Ljava/lang/String;", "getAuthId", "setAuthId", "(Ljava/lang/String;)V", "getAuthType", "setAuthType", "getCodeChallenge", "getCodeChallengeMethod", "()Lcom/facebook/login/CodeChallengeMethod;", "getCodeVerifier", "getDefaultAudience", "()Lcom/facebook/login/DefaultAudience;", "deviceAuthTargetUserId", "getDeviceAuthTargetUserId", "setDeviceAuthTargetUserId", "deviceRedirectUriString", "getDeviceRedirectUriString", "setDeviceRedirectUriString", "isFamilyLogin", "", "()Z", "setFamilyLogin", "(Z)V", "isInstagramLogin", "isRerequest", "setRerequest", "getLoginBehavior", "()Lcom/facebook/login/LoginBehavior;", "loginTargetApp", "getLoginTargetApp", "()Lcom/facebook/login/LoginTargetApp;", "messengerPageId", "getMessengerPageId", "setMessengerPageId", "getNonce", "getPermissions", "()Ljava/util/Set;", "setPermissions", "(Ljava/util/Set;)V", "resetMessengerState", "getResetMessengerState", "setResetMessengerState", "shouldSkipAccountDeduplication", "describeContents", "", "hasPublishPermission", "setShouldSkipAccountDeduplication", "", "writeToParcel", "dest", "flags", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Request implements Parcelable {
        @NotNull
        private final String applicationId;
        @NotNull
        private String authId;
        @NotNull
        private String authType;
        @Nullable
        private final String codeChallenge;
        @Nullable
        private final CodeChallengeMethod codeChallengeMethod;
        @Nullable
        private final String codeVerifier;
        @NotNull
        private final DefaultAudience defaultAudience;
        @Nullable
        private String deviceAuthTargetUserId;
        @Nullable
        private String deviceRedirectUriString;
        private boolean isFamilyLogin;
        private boolean isRerequest;
        @NotNull
        private final LoginBehavior loginBehavior;
        @NotNull
        private final LoginTargetApp loginTargetApp;
        @Nullable
        private String messengerPageId;
        @NotNull
        private final String nonce;
        @NotNull
        private Set<String> permissions;
        private boolean resetMessengerState;
        private boolean shouldSkipAccountDeduplication;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @JvmField
        @NotNull
        public static final Parcelable.Creator<Request> CREATOR = new Parcelable.Creator<Request>() { // from class: com.facebook.login.LoginClient$Request$Companion$CREATOR$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public LoginClient.Request createFromParcel(@NotNull Parcel source) {
                Intrinsics.checkNotNullParameter(source, "source");
                return new LoginClient.Request(source, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public LoginClient.Request[] newArray(int i9) {
                return new LoginClient.Request[i9];
            }
        };

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/LoginClient$Request$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/LoginClient$Request;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public /* synthetic */ Request(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
            this(parcel);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @JvmOverloads
        public Request(@NotNull LoginBehavior loginBehavior, @Nullable Set<String> set, @NotNull DefaultAudience defaultAudience, @NotNull String authType, @NotNull String applicationId, @NotNull String authId) {
            this(loginBehavior, set, defaultAudience, authType, applicationId, authId, null, null, null, null, null, 1984, null);
            Intrinsics.checkNotNullParameter(loginBehavior, "loginBehavior");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(authType, "authType");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(authId, "authId");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @JvmOverloads
        public Request(@NotNull LoginBehavior loginBehavior, @Nullable Set<String> set, @NotNull DefaultAudience defaultAudience, @NotNull String authType, @NotNull String applicationId, @NotNull String authId, @Nullable LoginTargetApp loginTargetApp) {
            this(loginBehavior, set, defaultAudience, authType, applicationId, authId, loginTargetApp, null, null, null, null, 1920, null);
            Intrinsics.checkNotNullParameter(loginBehavior, "loginBehavior");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(authType, "authType");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(authId, "authId");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @JvmOverloads
        public Request(@NotNull LoginBehavior loginBehavior, @Nullable Set<String> set, @NotNull DefaultAudience defaultAudience, @NotNull String authType, @NotNull String applicationId, @NotNull String authId, @Nullable LoginTargetApp loginTargetApp, @Nullable String str) {
            this(loginBehavior, set, defaultAudience, authType, applicationId, authId, loginTargetApp, str, null, null, null, 1792, null);
            Intrinsics.checkNotNullParameter(loginBehavior, "loginBehavior");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(authType, "authType");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(authId, "authId");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @JvmOverloads
        public Request(@NotNull LoginBehavior loginBehavior, @Nullable Set<String> set, @NotNull DefaultAudience defaultAudience, @NotNull String authType, @NotNull String applicationId, @NotNull String authId, @Nullable LoginTargetApp loginTargetApp, @Nullable String str, @Nullable String str2) {
            this(loginBehavior, set, defaultAudience, authType, applicationId, authId, loginTargetApp, str, str2, null, null, 1536, null);
            Intrinsics.checkNotNullParameter(loginBehavior, "loginBehavior");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(authType, "authType");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(authId, "authId");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @JvmOverloads
        public Request(@NotNull LoginBehavior loginBehavior, @Nullable Set<String> set, @NotNull DefaultAudience defaultAudience, @NotNull String authType, @NotNull String applicationId, @NotNull String authId, @Nullable LoginTargetApp loginTargetApp, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            this(loginBehavior, set, defaultAudience, authType, applicationId, authId, loginTargetApp, str, str2, str3, null, 1024, null);
            Intrinsics.checkNotNullParameter(loginBehavior, "loginBehavior");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(authType, "authType");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(authId, "authId");
        }

        public /* synthetic */ Request(LoginBehavior loginBehavior, Set set, DefaultAudience defaultAudience, String str, String str2, String str3, LoginTargetApp loginTargetApp, String str4, String str5, String str6, CodeChallengeMethod codeChallengeMethod, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(loginBehavior, set, defaultAudience, str, str2, str3, (i9 & 64) != 0 ? LoginTargetApp.FACEBOOK : loginTargetApp, (i9 & 128) != 0 ? null : str4, (i9 & 256) != 0 ? null : str5, (i9 & 512) != 0 ? null : str6, (i9 & 1024) != 0 ? null : codeChallengeMethod);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NotNull
        public final String getApplicationId() {
            return this.applicationId;
        }

        @NotNull
        public final String getAuthId() {
            return this.authId;
        }

        @NotNull
        public final String getAuthType() {
            return this.authType;
        }

        @Nullable
        public final String getCodeChallenge() {
            return this.codeChallenge;
        }

        @Nullable
        public final CodeChallengeMethod getCodeChallengeMethod() {
            return this.codeChallengeMethod;
        }

        @Nullable
        public final String getCodeVerifier() {
            return this.codeVerifier;
        }

        @NotNull
        public final DefaultAudience getDefaultAudience() {
            return this.defaultAudience;
        }

        @Nullable
        public final String getDeviceAuthTargetUserId() {
            return this.deviceAuthTargetUserId;
        }

        @Nullable
        public final String getDeviceRedirectUriString() {
            return this.deviceRedirectUriString;
        }

        @NotNull
        public final LoginBehavior getLoginBehavior() {
            return this.loginBehavior;
        }

        @NotNull
        public final LoginTargetApp getLoginTargetApp() {
            return this.loginTargetApp;
        }

        @Nullable
        public final String getMessengerPageId() {
            return this.messengerPageId;
        }

        @NotNull
        public final String getNonce() {
            return this.nonce;
        }

        @NotNull
        public final Set<String> getPermissions() {
            return this.permissions;
        }

        public final boolean getResetMessengerState() {
            return this.resetMessengerState;
        }

        public final boolean hasPublishPermission() {
            for (String str : this.permissions) {
                if (LoginManager.Companion.isPublishPermission(str)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isFamilyLogin() {
            return this.isFamilyLogin;
        }

        public final boolean isInstagramLogin() {
            return this.loginTargetApp == LoginTargetApp.INSTAGRAM;
        }

        public final boolean isRerequest() {
            return this.isRerequest;
        }

        public final void setAuthId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.authId = str;
        }

        public final void setAuthType(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.authType = str;
        }

        public final void setDeviceAuthTargetUserId(@Nullable String str) {
            this.deviceAuthTargetUserId = str;
        }

        public final void setDeviceRedirectUriString(@Nullable String str) {
            this.deviceRedirectUriString = str;
        }

        public final void setFamilyLogin(boolean z10) {
            this.isFamilyLogin = z10;
        }

        public final void setMessengerPageId(@Nullable String str) {
            this.messengerPageId = str;
        }

        public final void setPermissions(@NotNull Set<String> set) {
            Intrinsics.checkNotNullParameter(set, "<set-?>");
            this.permissions = set;
        }

        public final void setRerequest(boolean z10) {
            this.isRerequest = z10;
        }

        public final void setResetMessengerState(boolean z10) {
            this.resetMessengerState = z10;
        }

        public final void setShouldSkipAccountDeduplication(boolean z10) {
            this.shouldSkipAccountDeduplication = z10;
        }

        public final boolean shouldSkipAccountDeduplication() {
            return this.shouldSkipAccountDeduplication;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel dest, int i9) {
            Intrinsics.checkNotNullParameter(dest, "dest");
            dest.writeString(this.loginBehavior.name());
            dest.writeStringList(new ArrayList(this.permissions));
            dest.writeString(this.defaultAudience.name());
            dest.writeString(this.applicationId);
            dest.writeString(this.authId);
            dest.writeByte(this.isRerequest ? (byte) 1 : (byte) 0);
            dest.writeString(this.deviceRedirectUriString);
            dest.writeString(this.authType);
            dest.writeString(this.deviceAuthTargetUserId);
            dest.writeString(this.messengerPageId);
            dest.writeByte(this.resetMessengerState ? (byte) 1 : (byte) 0);
            dest.writeString(this.loginTargetApp.name());
            dest.writeByte(this.isFamilyLogin ? (byte) 1 : (byte) 0);
            dest.writeByte(this.shouldSkipAccountDeduplication ? (byte) 1 : (byte) 0);
            dest.writeString(this.nonce);
            dest.writeString(this.codeVerifier);
            dest.writeString(this.codeChallenge);
            CodeChallengeMethod codeChallengeMethod = this.codeChallengeMethod;
            dest.writeString(codeChallengeMethod == null ? null : codeChallengeMethod.name());
        }

        @JvmOverloads
        public Request(@NotNull LoginBehavior loginBehavior, @Nullable Set<String> set, @NotNull DefaultAudience defaultAudience, @NotNull String authType, @NotNull String applicationId, @NotNull String authId, @Nullable LoginTargetApp loginTargetApp, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable CodeChallengeMethod codeChallengeMethod) {
            Intrinsics.checkNotNullParameter(loginBehavior, "loginBehavior");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(authType, "authType");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(authId, "authId");
            this.loginBehavior = loginBehavior;
            this.permissions = set == null ? new HashSet<>() : set;
            this.defaultAudience = defaultAudience;
            this.authType = authType;
            this.applicationId = applicationId;
            this.authId = authId;
            this.loginTargetApp = loginTargetApp == null ? LoginTargetApp.FACEBOOK : loginTargetApp;
            if (str != null) {
                if (!(str.length() == 0)) {
                    this.nonce = str;
                    this.codeVerifier = str2;
                    this.codeChallenge = str3;
                    this.codeChallengeMethod = codeChallengeMethod;
                }
            }
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
            this.nonce = uuid;
            this.codeVerifier = str2;
            this.codeChallenge = str3;
            this.codeChallengeMethod = codeChallengeMethod;
        }

        private Request(Parcel parcel) {
            DefaultAudience defaultAudience;
            LoginTargetApp loginTargetApp;
            Validate validate = Validate.INSTANCE;
            this.loginBehavior = LoginBehavior.valueOf(Validate.notNullOrEmpty(parcel.readString(), "loginBehavior"));
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.permissions = new HashSet(arrayList);
            String readString = parcel.readString();
            if (readString != null) {
                defaultAudience = DefaultAudience.valueOf(readString);
            } else {
                defaultAudience = DefaultAudience.NONE;
            }
            this.defaultAudience = defaultAudience;
            this.applicationId = Validate.notNullOrEmpty(parcel.readString(), "applicationId");
            this.authId = Validate.notNullOrEmpty(parcel.readString(), "authId");
            this.isRerequest = parcel.readByte() != 0;
            this.deviceRedirectUriString = parcel.readString();
            this.authType = Validate.notNullOrEmpty(parcel.readString(), "authType");
            this.deviceAuthTargetUserId = parcel.readString();
            this.messengerPageId = parcel.readString();
            this.resetMessengerState = parcel.readByte() != 0;
            String readString2 = parcel.readString();
            if (readString2 != null) {
                loginTargetApp = LoginTargetApp.valueOf(readString2);
            } else {
                loginTargetApp = LoginTargetApp.FACEBOOK;
            }
            this.loginTargetApp = loginTargetApp;
            this.isFamilyLogin = parcel.readByte() != 0;
            this.shouldSkipAccountDeduplication = parcel.readByte() != 0;
            this.nonce = Validate.notNullOrEmpty(parcel.readString(), "nonce");
            this.codeVerifier = parcel.readString();
            this.codeChallenge = parcel.readString();
            String readString3 = parcel.readString();
            this.codeChallengeMethod = readString3 == null ? null : CodeChallengeMethod.valueOf(readString3);
        }
    }

    @Nullable
    public LoginMethodHandler[] getHandlersToTry(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        ArrayList arrayList = new ArrayList();
        LoginBehavior loginBehavior = request.getLoginBehavior();
        if (request.isInstagramLogin()) {
            if (!FacebookSdk.bypassAppSwitch && loginBehavior.allowsInstagramAppAuth()) {
                arrayList.add(new InstagramAppLoginMethodHandler(this));
            }
        } else {
            if (loginBehavior.allowsGetTokenAuth()) {
                arrayList.add(new GetTokenLoginMethodHandler(this));
            }
            if (!FacebookSdk.bypassAppSwitch && loginBehavior.allowsKatanaAuth()) {
                arrayList.add(new KatanaProxyLoginMethodHandler(this));
            }
        }
        if (loginBehavior.allowsCustomTabAuth()) {
            arrayList.add(new CustomTabLoginMethodHandler(this));
        }
        if (loginBehavior.allowsWebViewAuth()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        if (!request.isInstagramLogin() && loginBehavior.allowsDeviceAuth()) {
            arrayList.add(new DeviceAuthMethodHandler(this));
        }
        Object[] array = arrayList.toArray(new LoginMethodHandler[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (LoginMethodHandler[]) array;
    }

    private final void logAuthorizationMethodComplete(String str, String str2, String str3, String str4, Map<String, String> map) {
        Request request = this.pendingRequest;
        String str5 = LoginLogger.EVENT_NAME_LOGIN_METHOD_COMPLETE;
        if (request == null) {
            getLogger().logUnexpectedError(LoginLogger.EVENT_NAME_LOGIN_METHOD_COMPLETE, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
            return;
        }
        LoginLogger logger = getLogger();
        String authId = request.getAuthId();
        if (request.isFamilyLogin()) {
            str5 = LoginLogger.EVENT_NAME_FOA_LOGIN_METHOD_COMPLETE;
        }
        logger.logAuthorizationMethodComplete(authId, str, str2, str3, str4, map, str5);
    }

    public LoginClient(@NotNull Parcel source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.currentHandler = -1;
        Parcelable[] readParcelableArray = source.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        readParcelableArray = readParcelableArray == null ? new Parcelable[0] : readParcelableArray;
        ArrayList arrayList = new ArrayList();
        int length = readParcelableArray.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                break;
            }
            Parcelable parcelable = readParcelableArray[i9];
            LoginMethodHandler loginMethodHandler = parcelable instanceof LoginMethodHandler ? (LoginMethodHandler) parcelable : null;
            if (loginMethodHandler != null) {
                loginMethodHandler.setLoginClient(this);
            }
            if (loginMethodHandler != null) {
                arrayList.add(loginMethodHandler);
            }
            i9++;
        }
        Object[] array = arrayList.toArray(new LoginMethodHandler[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.handlersToTry = (LoginMethodHandler[]) array;
        this.currentHandler = source.readInt();
        this.pendingRequest = (Request) source.readParcelable(Request.class.getClassLoader());
        Utility utility = Utility.INSTANCE;
        Map<String, String> readNonnullStringMapFromParcel = Utility.readNonnullStringMapFromParcel(source);
        this.loggingExtras = readNonnullStringMapFromParcel == null ? null : MapsKt__MapsKt.toMutableMap(readNonnullStringMapFromParcel);
        Map<String, String> readNonnullStringMapFromParcel2 = Utility.readNonnullStringMapFromParcel(source);
        this.extraData = readNonnullStringMapFromParcel2 != null ? MapsKt__MapsKt.toMutableMap(readNonnullStringMapFromParcel2) : null;
    }
}
