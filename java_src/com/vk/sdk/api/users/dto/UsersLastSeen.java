package com.vk.sdk.api.users.dto;

import com.google.gson.annotations.SerializedName;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J&\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\t\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersLastSeen;", "", "platform", "", CrashHianalyticsData.TIME, "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "getPlatform", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getTime", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/users/dto/UsersLastSeen;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersLastSeen {
    @SerializedName("platform")
    @Nullable
    private final Integer platform;
    @SerializedName(CrashHianalyticsData.TIME)
    @Nullable
    private final Integer time;

    public UsersLastSeen() {
        this(null, null, 3, null);
    }

    public UsersLastSeen(@Nullable Integer num, @Nullable Integer num2) {
        this.platform = num;
        this.time = num2;
    }

    public static /* synthetic */ UsersLastSeen copy$default(UsersLastSeen usersLastSeen, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = usersLastSeen.platform;
        }
        if ((i9 & 2) != 0) {
            num2 = usersLastSeen.time;
        }
        return usersLastSeen.copy(num, num2);
    }

    @Nullable
    public final Integer component1() {
        return this.platform;
    }

    @Nullable
    public final Integer component2() {
        return this.time;
    }

    @NotNull
    public final UsersLastSeen copy(@Nullable Integer num, @Nullable Integer num2) {
        return new UsersLastSeen(num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersLastSeen) {
            UsersLastSeen usersLastSeen = (UsersLastSeen) obj;
            return Intrinsics.areEqual(this.platform, usersLastSeen.platform) && Intrinsics.areEqual(this.time, usersLastSeen.time);
        }
        return false;
    }

    @Nullable
    public final Integer getPlatform() {
        return this.platform;
    }

    @Nullable
    public final Integer getTime() {
        return this.time;
    }

    public int hashCode() {
        Integer num = this.platform;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.time;
        return hashCode + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.platform;
        Integer num2 = this.time;
        return "UsersLastSeen(platform=" + num + ", time=" + num2 + ")";
    }

    public /* synthetic */ UsersLastSeen(Integer num, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2);
    }
}
