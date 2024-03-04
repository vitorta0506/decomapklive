package com.vk.sdk.api.friends.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0003J,\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/friends/dto/FriendsRequestsMutual;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "users", "", "(Ljava/lang/Integer;Ljava/util/List;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUsers", "()Ljava/util/List;", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/sdk/api/friends/dto/FriendsRequestsMutual;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FriendsRequestsMutual {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("users")
    @Nullable
    private final List<Integer> users;

    public FriendsRequestsMutual() {
        this(null, null, 3, null);
    }

    public FriendsRequestsMutual(@Nullable Integer num, @Nullable List<Integer> list) {
        this.count = num;
        this.users = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FriendsRequestsMutual copy$default(FriendsRequestsMutual friendsRequestsMutual, Integer num, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = friendsRequestsMutual.count;
        }
        if ((i9 & 2) != 0) {
            list = friendsRequestsMutual.users;
        }
        return friendsRequestsMutual.copy(num, list);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final List<Integer> component2() {
        return this.users;
    }

    @NotNull
    public final FriendsRequestsMutual copy(@Nullable Integer num, @Nullable List<Integer> list) {
        return new FriendsRequestsMutual(num, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FriendsRequestsMutual) {
            FriendsRequestsMutual friendsRequestsMutual = (FriendsRequestsMutual) obj;
            return Intrinsics.areEqual(this.count, friendsRequestsMutual.count) && Intrinsics.areEqual(this.users, friendsRequestsMutual.users);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<Integer> getUsers() {
        return this.users;
    }

    public int hashCode() {
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<Integer> list = this.users;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        List<Integer> list = this.users;
        return "FriendsRequestsMutual(count=" + num + ", users=" + list + ")";
    }

    public /* synthetic */ FriendsRequestsMutual(Integer num, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : list);
    }
}
