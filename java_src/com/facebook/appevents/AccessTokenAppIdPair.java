package com.facebook.appevents;

import androidx.annotation.RestrictTo;
import com.facebook.internal.Utility;
import java.io.ObjectStreamException;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u0002\u0013\u0014B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0002R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/AccessTokenAppIdPair;", "Ljava/io/Serializable;", "accessToken", "Lcom/facebook/AccessToken;", "(Lcom/facebook/AccessToken;)V", "accessTokenString", "", "applicationId", "(Ljava/lang/String;Ljava/lang/String;)V", "getAccessTokenString", "()Ljava/lang/String;", "getApplicationId", "equals", "", "o", "", "hashCode", "", "writeReplace", "Companion", "SerializationProxyV1", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class AccessTokenAppIdPair implements Serializable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 1;
    @Nullable
    private final String accessTokenString;
    @NotNull
    private final String applicationId;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/AccessTokenAppIdPair$Companion;", "", "()V", "serialVersionUID", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;", "Ljava/io/Serializable;", "accessTokenString", "", "appId", "(Ljava/lang/String;Ljava/lang/String;)V", "readResolve", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SerializationProxyV1 implements Serializable {
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final long serialVersionUID = -2488473066578201069L;
        @Nullable
        private final String accessTokenString;
        @NotNull
        private final String appId;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1$Companion;", "", "()V", "serialVersionUID", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public SerializationProxyV1(@Nullable String str, @NotNull String appId) {
            Intrinsics.checkNotNullParameter(appId, "appId");
            this.accessTokenString = str;
            this.appId = appId;
        }

        private final Object readResolve() throws ObjectStreamException {
            return new AccessTokenAppIdPair(this.accessTokenString, this.appId);
        }
    }

    public AccessTokenAppIdPair(@Nullable String str, @NotNull String applicationId) {
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        this.applicationId = applicationId;
        Utility utility = Utility.INSTANCE;
        this.accessTokenString = Utility.isNullOrEmpty(str) ? null : str;
    }

    private final Object writeReplace() throws ObjectStreamException {
        return new SerializationProxyV1(this.accessTokenString, this.applicationId);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof AccessTokenAppIdPair) {
            Utility utility = Utility.INSTANCE;
            AccessTokenAppIdPair accessTokenAppIdPair = (AccessTokenAppIdPair) obj;
            return Utility.areObjectsEqual(accessTokenAppIdPair.accessTokenString, this.accessTokenString) && Utility.areObjectsEqual(accessTokenAppIdPair.applicationId, this.applicationId);
        }
        return false;
    }

    @Nullable
    public final String getAccessTokenString() {
        return this.accessTokenString;
    }

    @NotNull
    public final String getApplicationId() {
        return this.applicationId;
    }

    public int hashCode() {
        String str = this.accessTokenString;
        return (str == null ? 0 : str.hashCode()) ^ this.applicationId.hashCode();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AccessTokenAppIdPair(@org.jetbrains.annotations.NotNull com.facebook.AccessToken r2) {
        /*
            r1 = this;
            java.lang.String r0 = "accessToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r2 = r2.getToken()
            com.facebook.FacebookSdk r0 = com.facebook.FacebookSdk.INSTANCE
            java.lang.String r0 = com.facebook.FacebookSdk.getApplicationId()
            r1.<init>(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.AccessTokenAppIdPair.<init>(com.facebook.AccessToken):void");
    }
}
