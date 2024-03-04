package com.vk.sdk.api.groups.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J9\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsContactsItem;", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "desc", "", "phone", "email", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "getEmail", "getPhone", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsContactsItem {
    @SerializedName("desc")
    @Nullable
    private final String desc;
    @SerializedName("email")
    @Nullable
    private final String email;
    @SerializedName("phone")
    @Nullable
    private final String phone;
    @SerializedName(AccessToken.USER_ID_KEY)
    @Nullable
    private final UserId userId;

    public GroupsContactsItem() {
        this(null, null, null, null, 15, null);
    }

    public GroupsContactsItem(@Nullable UserId userId, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.userId = userId;
        this.desc = str;
        this.phone = str2;
        this.email = str3;
    }

    public static /* synthetic */ GroupsContactsItem copy$default(GroupsContactsItem groupsContactsItem, UserId userId, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = groupsContactsItem.userId;
        }
        if ((i9 & 2) != 0) {
            str = groupsContactsItem.desc;
        }
        if ((i9 & 4) != 0) {
            str2 = groupsContactsItem.phone;
        }
        if ((i9 & 8) != 0) {
            str3 = groupsContactsItem.email;
        }
        return groupsContactsItem.copy(userId, str, str2, str3);
    }

    @Nullable
    public final UserId component1() {
        return this.userId;
    }

    @Nullable
    public final String component2() {
        return this.desc;
    }

    @Nullable
    public final String component3() {
        return this.phone;
    }

    @Nullable
    public final String component4() {
        return this.email;
    }

    @NotNull
    public final GroupsContactsItem copy(@Nullable UserId userId, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new GroupsContactsItem(userId, str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsContactsItem) {
            GroupsContactsItem groupsContactsItem = (GroupsContactsItem) obj;
            return Intrinsics.areEqual(this.userId, groupsContactsItem.userId) && Intrinsics.areEqual(this.desc, groupsContactsItem.desc) && Intrinsics.areEqual(this.phone, groupsContactsItem.phone) && Intrinsics.areEqual(this.email, groupsContactsItem.email);
        }
        return false;
    }

    @Nullable
    public final String getDesc() {
        return this.desc;
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    @Nullable
    public final UserId getUserId() {
        return this.userId;
    }

    public int hashCode() {
        UserId userId = this.userId;
        int hashCode = (userId == null ? 0 : userId.hashCode()) * 31;
        String str = this.desc;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.phone;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.email;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        UserId userId = this.userId;
        String str = this.desc;
        String str2 = this.phone;
        String str3 = this.email;
        return "GroupsContactsItem(userId=" + userId + ", desc=" + str + ", phone=" + str2 + ", email=" + str3 + ")";
    }

    public /* synthetic */ GroupsContactsItem(UserId userId, String str, String str2, String str3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : userId, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : str3);
    }
}
