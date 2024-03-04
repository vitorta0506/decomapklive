package com.vk.sdk.api.apps.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ<\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\f\u0010\nR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\r\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/apps/dto/AppsLeaderboard;", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "level", "", "points", "score", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getLevel", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPoints", "getScore", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "component3", "component4", "copy", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/apps/dto/AppsLeaderboard;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppsLeaderboard {
    @SerializedName("level")
    @Nullable
    private final Integer level;
    @SerializedName("points")
    @Nullable
    private final Integer points;
    @SerializedName("score")
    @Nullable
    private final Integer score;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;

    public AppsLeaderboard(@NotNull UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        this.level = num;
        this.points = num2;
        this.score = num3;
    }

    public static /* synthetic */ AppsLeaderboard copy$default(AppsLeaderboard appsLeaderboard, UserId userId, Integer num, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = appsLeaderboard.userId;
        }
        if ((i9 & 2) != 0) {
            num = appsLeaderboard.level;
        }
        if ((i9 & 4) != 0) {
            num2 = appsLeaderboard.points;
        }
        if ((i9 & 8) != 0) {
            num3 = appsLeaderboard.score;
        }
        return appsLeaderboard.copy(userId, num, num2, num3);
    }

    @NotNull
    public final UserId component1() {
        return this.userId;
    }

    @Nullable
    public final Integer component2() {
        return this.level;
    }

    @Nullable
    public final Integer component3() {
        return this.points;
    }

    @Nullable
    public final Integer component4() {
        return this.score;
    }

    @NotNull
    public final AppsLeaderboard copy(@NotNull UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new AppsLeaderboard(userId, num, num2, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppsLeaderboard) {
            AppsLeaderboard appsLeaderboard = (AppsLeaderboard) obj;
            return Intrinsics.areEqual(this.userId, appsLeaderboard.userId) && Intrinsics.areEqual(this.level, appsLeaderboard.level) && Intrinsics.areEqual(this.points, appsLeaderboard.points) && Intrinsics.areEqual(this.score, appsLeaderboard.score);
        }
        return false;
    }

    @Nullable
    public final Integer getLevel() {
        return this.level;
    }

    @Nullable
    public final Integer getPoints() {
        return this.points;
    }

    @Nullable
    public final Integer getScore() {
        return this.score;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = this.userId.hashCode() * 31;
        Integer num = this.level;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.points;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.score;
        return hashCode3 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        UserId userId = this.userId;
        Integer num = this.level;
        Integer num2 = this.points;
        Integer num3 = this.score;
        return "AppsLeaderboard(userId=" + userId + ", level=" + num + ", points=" + num2 + ", score=" + num3 + ")";
    }

    public /* synthetic */ AppsLeaderboard(UserId userId, Integer num, Integer num2, Integer num3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : num2, (i9 & 8) != 0 ? null : num3);
    }
}
