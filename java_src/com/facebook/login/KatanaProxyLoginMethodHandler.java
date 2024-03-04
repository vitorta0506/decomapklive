package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.VisibleForTesting;
import com.facebook.share.internal.ShareConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\b\u001a\u00020\tX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/facebook/login/KatanaProxyLoginMethodHandler;", "Lcom/facebook/login/NativeAppLoginMethodHandler;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", ShareConstants.FEED_SOURCE_PARAM, "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "nameForLogging", "", "getNameForLogging", "()Ljava/lang/String;", "describeContents", "", "shouldKeepTrackOfMultipleIntents", "", "tryAuthorize", "request", "Lcom/facebook/login/LoginClient$Request;", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@VisibleForTesting(otherwise = 3)
/* loaded from: classes.dex */
public final class KatanaProxyLoginMethodHandler extends NativeAppLoginMethodHandler {
    @NotNull
    private final String nameForLogging;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new Parcelable.Creator<KatanaProxyLoginMethodHandler>() { // from class: com.facebook.login.KatanaProxyLoginMethodHandler$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public KatanaProxyLoginMethodHandler createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new KatanaProxyLoginMethodHandler(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public KatanaProxyLoginMethodHandler[] newArray(int i9) {
            return new KatanaProxyLoginMethodHandler[i9];
        }
    };

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/KatanaProxyLoginMethodHandler$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/KatanaProxyLoginMethodHandler;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KatanaProxyLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        this.nameForLogging = "katana_proxy_auth";
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

    @Override // com.facebook.login.LoginMethodHandler
    public boolean shouldKeepTrackOfMultipleIntents() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0094  */
    @Override // com.facebook.login.NativeAppLoginMethodHandler, com.facebook.login.LoginMethodHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int tryAuthorize(@org.jetbrains.annotations.NotNull com.facebook.login.LoginClient.Request r24) {
        /*
            r23 = this;
            r0 = r23
            java.lang.String r1 = "request"
            r2 = r24
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            com.facebook.login.LoginBehavior r1 = r24.getLoginBehavior()
            boolean r3 = com.facebook.FacebookSdk.ignoreAppSwitchToLoggedOut
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L23
            com.facebook.internal.CustomTabUtils r3 = com.facebook.internal.CustomTabUtils.INSTANCE
            java.lang.String r3 = com.facebook.internal.CustomTabUtils.getChromePackage()
            if (r3 == 0) goto L23
            boolean r1 = r1.allowsCustomTabAuth()
            if (r1 == 0) goto L23
            r15 = 1
            goto L24
        L23:
            r15 = 0
        L24:
            com.facebook.login.LoginClient$Companion r1 = com.facebook.login.LoginClient.Companion
            java.lang.String r1 = r1.getE2E()
            com.facebook.internal.NativeProtocol r3 = com.facebook.internal.NativeProtocol.INSTANCE
            com.facebook.login.LoginClient r3 = r23.getLoginClient()
            androidx.fragment.app.FragmentActivity r6 = r3.getActivity()
            java.lang.String r7 = r24.getApplicationId()
            java.util.Set r8 = r24.getPermissions()
            boolean r10 = r24.isRerequest()
            boolean r11 = r24.hasPublishPermission()
            com.facebook.login.DefaultAudience r3 = r24.getDefaultAudience()
            if (r3 != 0) goto L4c
            com.facebook.login.DefaultAudience r3 = com.facebook.login.DefaultAudience.NONE
        L4c:
            r12 = r3
            java.lang.String r3 = r24.getAuthId()
            java.lang.String r13 = r0.getClientState(r3)
            java.lang.String r14 = r24.getAuthType()
            java.lang.String r16 = r24.getMessengerPageId()
            boolean r17 = r24.getResetMessengerState()
            boolean r18 = r24.isFamilyLogin()
            boolean r19 = r24.shouldSkipAccountDeduplication()
            java.lang.String r20 = r24.getNonce()
            java.lang.String r21 = r24.getCodeChallenge()
            com.facebook.login.CodeChallengeMethod r2 = r24.getCodeChallengeMethod()
            if (r2 != 0) goto L79
            r2 = 0
            goto L7d
        L79:
            java.lang.String r2 = r2.name()
        L7d:
            r22 = r2
            r9 = r1
            java.util.List r2 = com.facebook.internal.NativeProtocol.createProxyAuthIntents(r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22)
            java.lang.String r3 = "e2e"
            r0.addLoggingExtra(r3, r1)
            java.util.Iterator r1 = r2.iterator()
            r2 = 0
        L8e:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto La8
            int r2 = r2 + r4
            java.lang.Object r3 = r1.next()
            android.content.Intent r3 = (android.content.Intent) r3
            com.facebook.login.LoginClient$Companion r6 = com.facebook.login.LoginClient.Companion
            int r6 = r6.getLoginRequestCode()
            boolean r3 = r0.tryIntent(r3, r6)
            if (r3 == 0) goto L8e
            return r2
        La8:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.KatanaProxyLoginMethodHandler.tryAuthorize(com.facebook.login.LoginClient$Request):int");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KatanaProxyLoginMethodHandler(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.nameForLogging = "katana_proxy_auth";
    }
}
