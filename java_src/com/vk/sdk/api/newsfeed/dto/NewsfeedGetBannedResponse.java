package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetBannedResponse;", "", "groups", "", "", "members", "(Ljava/util/List;Ljava/util/List;)V", "getGroups", "()Ljava/util/List;", "getMembers", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedGetBannedResponse {
    @SerializedName("groups")
    @Nullable
    private final List<Integer> groups;
    @SerializedName("members")
    @Nullable
    private final List<Integer> members;

    public NewsfeedGetBannedResponse() {
        this(null, null, 3, null);
    }

    public NewsfeedGetBannedResponse(@Nullable List<Integer> list, @Nullable List<Integer> list2) {
        this.groups = list;
        this.members = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NewsfeedGetBannedResponse copy$default(NewsfeedGetBannedResponse newsfeedGetBannedResponse, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = newsfeedGetBannedResponse.groups;
        }
        if ((i9 & 2) != 0) {
            list2 = newsfeedGetBannedResponse.members;
        }
        return newsfeedGetBannedResponse.copy(list, list2);
    }

    @Nullable
    public final List<Integer> component1() {
        return this.groups;
    }

    @Nullable
    public final List<Integer> component2() {
        return this.members;
    }

    @NotNull
    public final NewsfeedGetBannedResponse copy(@Nullable List<Integer> list, @Nullable List<Integer> list2) {
        return new NewsfeedGetBannedResponse(list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedGetBannedResponse) {
            NewsfeedGetBannedResponse newsfeedGetBannedResponse = (NewsfeedGetBannedResponse) obj;
            return Intrinsics.areEqual(this.groups, newsfeedGetBannedResponse.groups) && Intrinsics.areEqual(this.members, newsfeedGetBannedResponse.members);
        }
        return false;
    }

    @Nullable
    public final List<Integer> getGroups() {
        return this.groups;
    }

    @Nullable
    public final List<Integer> getMembers() {
        return this.members;
    }

    public int hashCode() {
        List<Integer> list = this.groups;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<Integer> list2 = this.members;
        return hashCode + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<Integer> list = this.groups;
        List<Integer> list2 = this.members;
        return "NewsfeedGetBannedResponse(groups=" + list + ", members=" + list2 + ")";
    }

    public /* synthetic */ NewsfeedGetBannedResponse(List list, List list2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2);
    }
}
