package com.guochao;

import b7.b;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001$B\t\b\u0002¢\u0006\u0004\b#\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\t\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\nR(\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b\r\u0010\u000e\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R(\u0010\u0015\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b\u0015\u0010\n\u0012\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R(\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b\u001c\u0010\u001d\u0012\u0004\b\"\u0010\u0014\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006%"}, d2 = {"Lcom/guochao/GCLiveConfig;", "", "", "APP_ID", "J", "", "APP_SIGN", "Ljava/lang/String;", "", "PUSH_RTC", "I", "PUSH_CDN", "", "testEnv", "Z", "getTestEnv", "()Z", "setTestEnv", "(Z)V", "getTestEnv$annotations", "()V", "pushMode", "getPushMode", "()I", "setPushMode", "(I)V", "getPushMode$annotations", "Lcom/guochao/GCLiveConfig$AppId;", "zegoAppId", "Lcom/guochao/GCLiveConfig$AppId;", "getZegoAppId", "()Lcom/guochao/GCLiveConfig$AppId;", "setZegoAppId", "(Lcom/guochao/GCLiveConfig$AppId;)V", "getZegoAppId$annotations", "<init>", "AppId", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GCLiveConfig {
    public static final int PUSH_CDN = 1;
    public static final int PUSH_RTC = 0;
    private static int pushMode;
    @NotNull
    public static final GCLiveConfig INSTANCE = new GCLiveConfig();
    private static boolean testEnv = true;
    private static final long APP_ID = 37422161;
    @NotNull
    private static final String APP_SIGN = "faeea92c2e0b443d3cfa489c11e24b8b05128d45d796eb361418eb2b1ebb0d69";
    @NotNull
    private static AppId zegoAppId = new AppId(APP_ID, APP_SIGN);

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/guochao/GCLiveConfig$AppId;", "", "appId", "", "appSign", "", "(JLjava/lang/String;)V", "getAppId", "()J", "getAppSign", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class AppId {
        private final long appId;
        @NotNull
        private final String appSign;

        public AppId(long j10, @NotNull String appSign) {
            Intrinsics.checkNotNullParameter(appSign, "appSign");
            this.appId = j10;
            this.appSign = appSign;
        }

        public static /* synthetic */ AppId copy$default(AppId appId, long j10, String str, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                j10 = appId.appId;
            }
            if ((i9 & 2) != 0) {
                str = appId.appSign;
            }
            return appId.copy(j10, str);
        }

        public final long component1() {
            return this.appId;
        }

        @NotNull
        public final String component2() {
            return this.appSign;
        }

        @NotNull
        public final AppId copy(long j10, @NotNull String appSign) {
            Intrinsics.checkNotNullParameter(appSign, "appSign");
            return new AppId(j10, appSign);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof AppId) {
                AppId appId = (AppId) obj;
                return this.appId == appId.appId && Intrinsics.areEqual(this.appSign, appId.appSign);
            }
            return false;
        }

        public final long getAppId() {
            return this.appId;
        }

        @NotNull
        public final String getAppSign() {
            return this.appSign;
        }

        public int hashCode() {
            return (b.a(this.appId) * 31) + this.appSign.hashCode();
        }

        @NotNull
        public String toString() {
            return "AppId(appId=" + this.appId + ", appSign=" + this.appSign + ')';
        }
    }

    private GCLiveConfig() {
    }

    public static final int getPushMode() {
        return pushMode;
    }

    @JvmStatic
    public static /* synthetic */ void getPushMode$annotations() {
    }

    public static final boolean getTestEnv() {
        return testEnv;
    }

    @JvmStatic
    public static /* synthetic */ void getTestEnv$annotations() {
    }

    @NotNull
    public static final AppId getZegoAppId() {
        return zegoAppId;
    }

    @JvmStatic
    public static /* synthetic */ void getZegoAppId$annotations() {
    }

    public static final void setPushMode(int i9) {
        pushMode = i9;
    }

    public static final void setTestEnv(boolean z10) {
        testEnv = z10;
    }

    public static final void setZegoAppId(@NotNull AppId appId) {
        Intrinsics.checkNotNullParameter(appId, "<set-?>");
        zegoAppId = appId;
    }
}
