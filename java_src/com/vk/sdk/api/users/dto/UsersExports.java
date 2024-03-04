package com.vk.sdk.api.users.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ2\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\n\u0010\bR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u000b\u0010\b¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersExports;", "", AccessToken.DEFAULT_GRAPH_DOMAIN, "", "livejournal", "twitter", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getFacebook", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getLivejournal", "getTwitter", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/users/dto/UsersExports;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersExports {
    @SerializedName(AccessToken.DEFAULT_GRAPH_DOMAIN)
    @Nullable
    private final Integer facebook;
    @SerializedName("livejournal")
    @Nullable
    private final Integer livejournal;
    @SerializedName("twitter")
    @Nullable
    private final Integer twitter;

    public UsersExports() {
        this(null, null, null, 7, null);
    }

    public UsersExports(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        this.facebook = num;
        this.livejournal = num2;
        this.twitter = num3;
    }

    public static /* synthetic */ UsersExports copy$default(UsersExports usersExports, Integer num, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = usersExports.facebook;
        }
        if ((i9 & 2) != 0) {
            num2 = usersExports.livejournal;
        }
        if ((i9 & 4) != 0) {
            num3 = usersExports.twitter;
        }
        return usersExports.copy(num, num2, num3);
    }

    @Nullable
    public final Integer component1() {
        return this.facebook;
    }

    @Nullable
    public final Integer component2() {
        return this.livejournal;
    }

    @Nullable
    public final Integer component3() {
        return this.twitter;
    }

    @NotNull
    public final UsersExports copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        return new UsersExports(num, num2, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersExports) {
            UsersExports usersExports = (UsersExports) obj;
            return Intrinsics.areEqual(this.facebook, usersExports.facebook) && Intrinsics.areEqual(this.livejournal, usersExports.livejournal) && Intrinsics.areEqual(this.twitter, usersExports.twitter);
        }
        return false;
    }

    @Nullable
    public final Integer getFacebook() {
        return this.facebook;
    }

    @Nullable
    public final Integer getLivejournal() {
        return this.livejournal;
    }

    @Nullable
    public final Integer getTwitter() {
        return this.twitter;
    }

    public int hashCode() {
        Integer num = this.facebook;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.livejournal;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.twitter;
        return hashCode2 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.facebook;
        Integer num2 = this.livejournal;
        Integer num3 = this.twitter;
        return "UsersExports(facebook=" + num + ", livejournal=" + num2 + ", twitter=" + num3 + ")";
    }

    public /* synthetic */ UsersExports(Integer num, Integer num2, Integer num3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3);
    }
}
