package com.vk.sdk.api.auth.dto;

import com.facebook.GraphResponse;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/auth/dto/AuthRestoreResponse;", "", GraphResponse.SUCCESS_KEY, "Lcom/vk/sdk/api/auth/dto/AuthRestoreResponse$Success;", "sid", "", "(Lcom/vk/sdk/api/auth/dto/AuthRestoreResponse$Success;Ljava/lang/String;)V", "getSid", "()Ljava/lang/String;", "getSuccess", "()Lcom/vk/sdk/api/auth/dto/AuthRestoreResponse$Success;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Success", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AuthRestoreResponse {
    @SerializedName("sid")
    @Nullable
    private final String sid;
    @SerializedName(GraphResponse.SUCCESS_KEY)
    @Nullable
    private final Success success;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/auth/dto/AuthRestoreResponse$Success;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OK", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Success {
        OK(1);
        
        private final int value;

        Success(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public AuthRestoreResponse() {
        this(null, null, 3, null);
    }

    public AuthRestoreResponse(@Nullable Success success, @Nullable String str) {
        this.success = success;
        this.sid = str;
    }

    public static /* synthetic */ AuthRestoreResponse copy$default(AuthRestoreResponse authRestoreResponse, Success success, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            success = authRestoreResponse.success;
        }
        if ((i9 & 2) != 0) {
            str = authRestoreResponse.sid;
        }
        return authRestoreResponse.copy(success, str);
    }

    @Nullable
    public final Success component1() {
        return this.success;
    }

    @Nullable
    public final String component2() {
        return this.sid;
    }

    @NotNull
    public final AuthRestoreResponse copy(@Nullable Success success, @Nullable String str) {
        return new AuthRestoreResponse(success, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AuthRestoreResponse) {
            AuthRestoreResponse authRestoreResponse = (AuthRestoreResponse) obj;
            return this.success == authRestoreResponse.success && Intrinsics.areEqual(this.sid, authRestoreResponse.sid);
        }
        return false;
    }

    @Nullable
    public final String getSid() {
        return this.sid;
    }

    @Nullable
    public final Success getSuccess() {
        return this.success;
    }

    public int hashCode() {
        Success success = this.success;
        int hashCode = (success == null ? 0 : success.hashCode()) * 31;
        String str = this.sid;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Success success = this.success;
        String str = this.sid;
        return "AuthRestoreResponse(success=" + success + ", sid=" + str + ")";
    }

    public /* synthetic */ AuthRestoreResponse(Success success, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : success, (i9 & 2) != 0 ? null : str);
    }
}
