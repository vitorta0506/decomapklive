package com.vk.sdk.api.secure.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/secure/dto/SecureSmsNotification;", "", "appId", "", "date", "id", "message", Contants.USER_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAppId", "()Ljava/lang/String;", "getDate", "getId", "getMessage", "getUserId", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class SecureSmsNotification {
    @SerializedName("app_id")
    @Nullable
    private final String appId;
    @SerializedName("date")
    @Nullable
    private final String date;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final String f36071id;
    @SerializedName("message")
    @Nullable
    private final String message;
    @SerializedName(AccessToken.USER_ID_KEY)
    @Nullable
    private final String userId;

    public SecureSmsNotification() {
        this(null, null, null, null, null, 31, null);
    }

    public SecureSmsNotification(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        this.appId = str;
        this.date = str2;
        this.f36071id = str3;
        this.message = str4;
        this.userId = str5;
    }

    public static /* synthetic */ SecureSmsNotification copy$default(SecureSmsNotification secureSmsNotification, String str, String str2, String str3, String str4, String str5, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = secureSmsNotification.appId;
        }
        if ((i9 & 2) != 0) {
            str2 = secureSmsNotification.date;
        }
        String str6 = str2;
        if ((i9 & 4) != 0) {
            str3 = secureSmsNotification.f36071id;
        }
        String str7 = str3;
        if ((i9 & 8) != 0) {
            str4 = secureSmsNotification.message;
        }
        String str8 = str4;
        if ((i9 & 16) != 0) {
            str5 = secureSmsNotification.userId;
        }
        return secureSmsNotification.copy(str, str6, str7, str8, str5);
    }

    @Nullable
    public final String component1() {
        return this.appId;
    }

    @Nullable
    public final String component2() {
        return this.date;
    }

    @Nullable
    public final String component3() {
        return this.f36071id;
    }

    @Nullable
    public final String component4() {
        return this.message;
    }

    @Nullable
    public final String component5() {
        return this.userId;
    }

    @NotNull
    public final SecureSmsNotification copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        return new SecureSmsNotification(str, str2, str3, str4, str5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SecureSmsNotification) {
            SecureSmsNotification secureSmsNotification = (SecureSmsNotification) obj;
            return Intrinsics.areEqual(this.appId, secureSmsNotification.appId) && Intrinsics.areEqual(this.date, secureSmsNotification.date) && Intrinsics.areEqual(this.f36071id, secureSmsNotification.f36071id) && Intrinsics.areEqual(this.message, secureSmsNotification.message) && Intrinsics.areEqual(this.userId, secureSmsNotification.userId);
        }
        return false;
    }

    @Nullable
    public final String getAppId() {
        return this.appId;
    }

    @Nullable
    public final String getDate() {
        return this.date;
    }

    @Nullable
    public final String getId() {
        return this.f36071id;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        String str = this.appId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.date;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f36071id;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.message;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.userId;
        return hashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.appId;
        String str2 = this.date;
        String str3 = this.f36071id;
        String str4 = this.message;
        String str5 = this.userId;
        return "SecureSmsNotification(appId=" + str + ", date=" + str2 + ", id=" + str3 + ", message=" + str4 + ", userId=" + str5 + ")";
    }

    public /* synthetic */ SecureSmsNotification(String str, String str2, String str3, String str4, String str5, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : str3, (i9 & 8) != 0 ? null : str4, (i9 & 16) != 0 ? null : str5);
    }
}
