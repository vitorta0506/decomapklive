package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ<\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\r\u0010\u000bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u000e\u0010\u000b¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "wallCount", "mailCount", "userReposted", "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCount", "()I", "getMailCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUserReposted", "getWallCount", "component1", "component2", "component3", "component4", "copy", "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseRepostsInfo {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("mail_count")
    @Nullable
    private final Integer mailCount;
    @SerializedName("user_reposted")
    @Nullable
    private final Integer userReposted;
    @SerializedName("wall_count")
    @Nullable
    private final Integer wallCount;

    public BaseRepostsInfo(int i9, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        this.count = i9;
        this.wallCount = num;
        this.mailCount = num2;
        this.userReposted = num3;
    }

    public static /* synthetic */ BaseRepostsInfo copy$default(BaseRepostsInfo baseRepostsInfo, int i9, Integer num, Integer num2, Integer num3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = baseRepostsInfo.count;
        }
        if ((i10 & 2) != 0) {
            num = baseRepostsInfo.wallCount;
        }
        if ((i10 & 4) != 0) {
            num2 = baseRepostsInfo.mailCount;
        }
        if ((i10 & 8) != 0) {
            num3 = baseRepostsInfo.userReposted;
        }
        return baseRepostsInfo.copy(i9, num, num2, num3);
    }

    public final int component1() {
        return this.count;
    }

    @Nullable
    public final Integer component2() {
        return this.wallCount;
    }

    @Nullable
    public final Integer component3() {
        return this.mailCount;
    }

    @Nullable
    public final Integer component4() {
        return this.userReposted;
    }

    @NotNull
    public final BaseRepostsInfo copy(int i9, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        return new BaseRepostsInfo(i9, num, num2, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseRepostsInfo) {
            BaseRepostsInfo baseRepostsInfo = (BaseRepostsInfo) obj;
            return this.count == baseRepostsInfo.count && Intrinsics.areEqual(this.wallCount, baseRepostsInfo.wallCount) && Intrinsics.areEqual(this.mailCount, baseRepostsInfo.mailCount) && Intrinsics.areEqual(this.userReposted, baseRepostsInfo.userReposted);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final Integer getMailCount() {
        return this.mailCount;
    }

    @Nullable
    public final Integer getUserReposted() {
        return this.userReposted;
    }

    @Nullable
    public final Integer getWallCount() {
        return this.wallCount;
    }

    public int hashCode() {
        int i9 = this.count * 31;
        Integer num = this.wallCount;
        int hashCode = (i9 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.mailCount;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.userReposted;
        return hashCode2 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        Integer num = this.wallCount;
        Integer num2 = this.mailCount;
        Integer num3 = this.userReposted;
        return "BaseRepostsInfo(count=" + i9 + ", wallCount=" + num + ", mailCount=" + num2 + ", userReposted=" + num3 + ")";
    }

    public /* synthetic */ BaseRepostsInfo(int i9, Integer num, Integer num2, Integer num3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? null : num2, (i10 & 8) != 0 ? null : num3);
    }
}
