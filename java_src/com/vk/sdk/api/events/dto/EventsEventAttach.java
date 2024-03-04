package com.vk.sdk.api.events.dto;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.vk.sdk.api.groups.dto.GroupsGroupFullMemberStatus;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001f\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u000fJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0006HÆ\u0003J\t\u0010!\u001a\u00020\tHÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001cJj\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010'J\u0013\u0010(\u001a\u00020\t2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0006HÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0017R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0011R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001c¨\u0006,"}, d2 = {"Lcom/vk/sdk/api/events/dto/EventsEventAttach;", "", "buttonText", "", NativeProtocol.AUDIENCE_FRIENDS, "", "", "id", "isFavorite", "", ViewHierarchyConstants.TEXT_KEY, IntegrityManager.INTEGRITY_TYPE_ADDRESS, "memberStatus", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFullMemberStatus;", CrashHianalyticsData.TIME, "(Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullMemberStatus;Ljava/lang/Integer;)V", "getAddress", "()Ljava/lang/String;", "getButtonText", "getFriends", "()Ljava/util/List;", "getId", "()I", "()Z", "getMemberStatus", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupFullMemberStatus;", "getText", "getTime", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullMemberStatus;Ljava/lang/Integer;)Lcom/vk/sdk/api/events/dto/EventsEventAttach;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class EventsEventAttach {
    @SerializedName(IntegrityManager.INTEGRITY_TYPE_ADDRESS)
    @Nullable
    private final String address;
    @SerializedName("button_text")
    @NotNull
    private final String buttonText;
    @SerializedName(NativeProtocol.AUDIENCE_FRIENDS)
    @NotNull
    private final List<Integer> friends;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35790id;
    @SerializedName("is_favorite")
    private final boolean isFavorite;
    @SerializedName("member_status")
    @Nullable
    private final GroupsGroupFullMemberStatus memberStatus;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;
    @SerializedName(CrashHianalyticsData.TIME)
    @Nullable
    private final Integer time;

    public EventsEventAttach(@NotNull String buttonText, @NotNull List<Integer> friends, int i9, boolean z10, @NotNull String text, @Nullable String str, @Nullable GroupsGroupFullMemberStatus groupsGroupFullMemberStatus, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(friends, "friends");
        Intrinsics.checkNotNullParameter(text, "text");
        this.buttonText = buttonText;
        this.friends = friends;
        this.f35790id = i9;
        this.isFavorite = z10;
        this.text = text;
        this.address = str;
        this.memberStatus = groupsGroupFullMemberStatus;
        this.time = num;
    }

    @NotNull
    public final String component1() {
        return this.buttonText;
    }

    @NotNull
    public final List<Integer> component2() {
        return this.friends;
    }

    public final int component3() {
        return this.f35790id;
    }

    public final boolean component4() {
        return this.isFavorite;
    }

    @NotNull
    public final String component5() {
        return this.text;
    }

    @Nullable
    public final String component6() {
        return this.address;
    }

    @Nullable
    public final GroupsGroupFullMemberStatus component7() {
        return this.memberStatus;
    }

    @Nullable
    public final Integer component8() {
        return this.time;
    }

    @NotNull
    public final EventsEventAttach copy(@NotNull String buttonText, @NotNull List<Integer> friends, int i9, boolean z10, @NotNull String text, @Nullable String str, @Nullable GroupsGroupFullMemberStatus groupsGroupFullMemberStatus, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(friends, "friends");
        Intrinsics.checkNotNullParameter(text, "text");
        return new EventsEventAttach(buttonText, friends, i9, z10, text, str, groupsGroupFullMemberStatus, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EventsEventAttach) {
            EventsEventAttach eventsEventAttach = (EventsEventAttach) obj;
            return Intrinsics.areEqual(this.buttonText, eventsEventAttach.buttonText) && Intrinsics.areEqual(this.friends, eventsEventAttach.friends) && this.f35790id == eventsEventAttach.f35790id && this.isFavorite == eventsEventAttach.isFavorite && Intrinsics.areEqual(this.text, eventsEventAttach.text) && Intrinsics.areEqual(this.address, eventsEventAttach.address) && this.memberStatus == eventsEventAttach.memberStatus && Intrinsics.areEqual(this.time, eventsEventAttach.time);
        }
        return false;
    }

    @Nullable
    public final String getAddress() {
        return this.address;
    }

    @NotNull
    public final String getButtonText() {
        return this.buttonText;
    }

    @NotNull
    public final List<Integer> getFriends() {
        return this.friends;
    }

    public final int getId() {
        return this.f35790id;
    }

    @Nullable
    public final GroupsGroupFullMemberStatus getMemberStatus() {
        return this.memberStatus;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final Integer getTime() {
        return this.time;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.buttonText.hashCode() * 31) + this.friends.hashCode()) * 31) + this.f35790id) * 31;
        boolean z10 = this.isFavorite;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int hashCode2 = (((hashCode + i9) * 31) + this.text.hashCode()) * 31;
        String str = this.address;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        GroupsGroupFullMemberStatus groupsGroupFullMemberStatus = this.memberStatus;
        int hashCode4 = (hashCode3 + (groupsGroupFullMemberStatus == null ? 0 : groupsGroupFullMemberStatus.hashCode())) * 31;
        Integer num = this.time;
        return hashCode4 + (num != null ? num.hashCode() : 0);
    }

    public final boolean isFavorite() {
        return this.isFavorite;
    }

    @NotNull
    public String toString() {
        String str = this.buttonText;
        List<Integer> list = this.friends;
        int i9 = this.f35790id;
        boolean z10 = this.isFavorite;
        String str2 = this.text;
        String str3 = this.address;
        GroupsGroupFullMemberStatus groupsGroupFullMemberStatus = this.memberStatus;
        Integer num = this.time;
        return "EventsEventAttach(buttonText=" + str + ", friends=" + list + ", id=" + i9 + ", isFavorite=" + z10 + ", text=" + str2 + ", address=" + str3 + ", memberStatus=" + groupsGroupFullMemberStatus + ", time=" + num + ")";
    }

    public /* synthetic */ EventsEventAttach(String str, List list, int i9, boolean z10, String str2, String str3, GroupsGroupFullMemberStatus groupsGroupFullMemberStatus, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, i9, z10, str2, (i10 & 32) != 0 ? null : str3, (i10 & 64) != 0 ? null : groupsGroupFullMemberStatus, (i10 & 128) != 0 ? null : num);
    }
}
