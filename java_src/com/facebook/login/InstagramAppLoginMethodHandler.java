package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookSdk;
import com.facebook.internal.NativeProtocol;
import com.facebook.login.LoginClient;
import com.facebook.share.internal.ShareConstants;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0011H\u0016R\u0014\u0010\b\u001a\u00020\tX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/facebook/login/InstagramAppLoginMethodHandler;", "Lcom/facebook/login/NativeAppLoginMethodHandler;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", ShareConstants.FEED_SOURCE_PARAM, "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "nameForLogging", "", "getNameForLogging", "()Ljava/lang/String;", "tokenSource", "Lcom/facebook/AccessTokenSource;", "getTokenSource", "()Lcom/facebook/AccessTokenSource;", "describeContents", "", "tryAuthorize", "request", "Lcom/facebook/login/LoginClient$Request;", "writeToParcel", "", "dest", "flags", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class InstagramAppLoginMethodHandler extends NativeAppLoginMethodHandler {
    @NotNull
    private final String nameForLogging;
    @NotNull
    private final AccessTokenSource tokenSource;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<InstagramAppLoginMethodHandler> CREATOR = new Parcelable.Creator<InstagramAppLoginMethodHandler>() { // from class: com.facebook.login.InstagramAppLoginMethodHandler$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public InstagramAppLoginMethodHandler createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new InstagramAppLoginMethodHandler(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public InstagramAppLoginMethodHandler[] newArray(int i9) {
            return new InstagramAppLoginMethodHandler[i9];
        }
    };

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/InstagramAppLoginMethodHandler$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/InstagramAppLoginMethodHandler;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstagramAppLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        this.nameForLogging = "instagram_login";
        this.tokenSource = AccessTokenSource.INSTAGRAM_APPLICATION_WEB;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String getNameForLogging() {
        return this.nameForLogging;
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler
    @NotNull
    public AccessTokenSource getTokenSource() {
        return this.tokenSource;
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler, com.facebook.login.LoginMethodHandler
    public int tryAuthorize(@NotNull LoginClient.Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        LoginClient.Companion companion = LoginClient.Companion;
        String e2e = companion.getE2E();
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        Context activity = getLoginClient().getActivity();
        if (activity == null) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            activity = FacebookSdk.getApplicationContext();
        }
        String applicationId = request.getApplicationId();
        Set<String> permissions = request.getPermissions();
        boolean isRerequest = request.isRerequest();
        boolean hasPublishPermission = request.hasPublishPermission();
        DefaultAudience defaultAudience = request.getDefaultAudience();
        if (defaultAudience == null) {
            defaultAudience = DefaultAudience.NONE;
        }
        Intent createInstagramIntent = NativeProtocol.createInstagramIntent(activity, applicationId, permissions, e2e, isRerequest, hasPublishPermission, defaultAudience, getClientState(request.getAuthId()), request.getAuthType(), request.getMessengerPageId(), request.getResetMessengerState(), request.isFamilyLogin(), request.shouldSkipAccountDeduplication());
        addLoggingExtra("e2e", e2e);
        return tryIntent(createInstagramIntent, companion.getLoginRequestCode()) ? 1 : 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i9) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        super.writeToParcel(dest, i9);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstagramAppLoginMethodHandler(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.nameForLogging = "instagram_login";
        this.tokenSource = AccessTokenSource.INSTAGRAM_APPLICATION_WEB;
    }
}