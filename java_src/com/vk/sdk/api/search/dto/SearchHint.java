package com.vk.sdk.api.search.dto;

import com.google.gson.annotations.SerializedName;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.sdk.api.apps.dto.AppsApp;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseLink;
import com.vk.sdk.api.groups.dto.GroupsGroup;
import com.vk.sdk.api.users.dto.UsersUserMin;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0011HÆ\u0003Je\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÆ\u0001J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010/\u001a\u000200HÖ\u0001J\t\u00101\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u00062"}, d2 = {"Lcom/vk/sdk/api/search/dto/SearchHint;", "", "description", "", "type", "Lcom/vk/sdk/api/search/dto/SearchHintType;", PushConstants.EXTRA_APPLICATION_PENDING_INTENT, "Lcom/vk/sdk/api/apps/dto/AppsApp;", "global", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "group", "Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "profile", "Lcom/vk/sdk/api/users/dto/UsersUserMin;", "section", "Lcom/vk/sdk/api/search/dto/SearchHintSection;", "link", "Lcom/vk/sdk/api/base/dto/BaseLink;", "(Ljava/lang/String;Lcom/vk/sdk/api/search/dto/SearchHintType;Lcom/vk/sdk/api/apps/dto/AppsApp;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/groups/dto/GroupsGroup;Lcom/vk/sdk/api/users/dto/UsersUserMin;Lcom/vk/sdk/api/search/dto/SearchHintSection;Lcom/vk/sdk/api/base/dto/BaseLink;)V", "getApp", "()Lcom/vk/sdk/api/apps/dto/AppsApp;", "getDescription", "()Ljava/lang/String;", "getGlobal", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getGroup", "()Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "getLink", "()Lcom/vk/sdk/api/base/dto/BaseLink;", "getProfile", "()Lcom/vk/sdk/api/users/dto/UsersUserMin;", "getSection", "()Lcom/vk/sdk/api/search/dto/SearchHintSection;", "getType", "()Lcom/vk/sdk/api/search/dto/SearchHintType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class SearchHint {
    @SerializedName(PushConstants.EXTRA_APPLICATION_PENDING_INTENT)
    @Nullable
    private final AppsApp app;
    @SerializedName("description")
    @NotNull
    private final String description;
    @SerializedName("global")
    @Nullable
    private final BaseBoolInt global;
    @SerializedName("group")
    @Nullable
    private final GroupsGroup group;
    @SerializedName("link")
    @Nullable
    private final BaseLink link;
    @SerializedName("profile")
    @Nullable
    private final UsersUserMin profile;
    @SerializedName("section")
    @Nullable
    private final SearchHintSection section;
    @SerializedName("type")
    @NotNull
    private final SearchHintType type;

    public SearchHint(@NotNull String description, @NotNull SearchHintType type, @Nullable AppsApp appsApp, @Nullable BaseBoolInt baseBoolInt, @Nullable GroupsGroup groupsGroup, @Nullable UsersUserMin usersUserMin, @Nullable SearchHintSection searchHintSection, @Nullable BaseLink baseLink) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(type, "type");
        this.description = description;
        this.type = type;
        this.app = appsApp;
        this.global = baseBoolInt;
        this.group = groupsGroup;
        this.profile = usersUserMin;
        this.section = searchHintSection;
        this.link = baseLink;
    }

    @NotNull
    public final String component1() {
        return this.description;
    }

    @NotNull
    public final SearchHintType component2() {
        return this.type;
    }

    @Nullable
    public final AppsApp component3() {
        return this.app;
    }

    @Nullable
    public final BaseBoolInt component4() {
        return this.global;
    }

    @Nullable
    public final GroupsGroup component5() {
        return this.group;
    }

    @Nullable
    public final UsersUserMin component6() {
        return this.profile;
    }

    @Nullable
    public final SearchHintSection component7() {
        return this.section;
    }

    @Nullable
    public final BaseLink component8() {
        return this.link;
    }

    @NotNull
    public final SearchHint copy(@NotNull String description, @NotNull SearchHintType type, @Nullable AppsApp appsApp, @Nullable BaseBoolInt baseBoolInt, @Nullable GroupsGroup groupsGroup, @Nullable UsersUserMin usersUserMin, @Nullable SearchHintSection searchHintSection, @Nullable BaseLink baseLink) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(type, "type");
        return new SearchHint(description, type, appsApp, baseBoolInt, groupsGroup, usersUserMin, searchHintSection, baseLink);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SearchHint) {
            SearchHint searchHint = (SearchHint) obj;
            return Intrinsics.areEqual(this.description, searchHint.description) && this.type == searchHint.type && Intrinsics.areEqual(this.app, searchHint.app) && this.global == searchHint.global && Intrinsics.areEqual(this.group, searchHint.group) && Intrinsics.areEqual(this.profile, searchHint.profile) && this.section == searchHint.section && Intrinsics.areEqual(this.link, searchHint.link);
        }
        return false;
    }

    @Nullable
    public final AppsApp getApp() {
        return this.app;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final BaseBoolInt getGlobal() {
        return this.global;
    }

    @Nullable
    public final GroupsGroup getGroup() {
        return this.group;
    }

    @Nullable
    public final BaseLink getLink() {
        return this.link;
    }

    @Nullable
    public final UsersUserMin getProfile() {
        return this.profile;
    }

    @Nullable
    public final SearchHintSection getSection() {
        return this.section;
    }

    @NotNull
    public final SearchHintType getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((this.description.hashCode() * 31) + this.type.hashCode()) * 31;
        AppsApp appsApp = this.app;
        int hashCode2 = (hashCode + (appsApp == null ? 0 : appsApp.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.global;
        int hashCode3 = (hashCode2 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        GroupsGroup groupsGroup = this.group;
        int hashCode4 = (hashCode3 + (groupsGroup == null ? 0 : groupsGroup.hashCode())) * 31;
        UsersUserMin usersUserMin = this.profile;
        int hashCode5 = (hashCode4 + (usersUserMin == null ? 0 : usersUserMin.hashCode())) * 31;
        SearchHintSection searchHintSection = this.section;
        int hashCode6 = (hashCode5 + (searchHintSection == null ? 0 : searchHintSection.hashCode())) * 31;
        BaseLink baseLink = this.link;
        return hashCode6 + (baseLink != null ? baseLink.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.description;
        SearchHintType searchHintType = this.type;
        AppsApp appsApp = this.app;
        BaseBoolInt baseBoolInt = this.global;
        GroupsGroup groupsGroup = this.group;
        UsersUserMin usersUserMin = this.profile;
        SearchHintSection searchHintSection = this.section;
        BaseLink baseLink = this.link;
        return "SearchHint(description=" + str + ", type=" + searchHintType + ", app=" + appsApp + ", global=" + baseBoolInt + ", group=" + groupsGroup + ", profile=" + usersUserMin + ", section=" + searchHintSection + ", link=" + baseLink + ")";
    }

    public /* synthetic */ SearchHint(String str, SearchHintType searchHintType, AppsApp appsApp, BaseBoolInt baseBoolInt, GroupsGroup groupsGroup, UsersUserMin usersUserMin, SearchHintSection searchHintSection, BaseLink baseLink, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, searchHintType, (i9 & 4) != 0 ? null : appsApp, (i9 & 8) != 0 ? null : baseBoolInt, (i9 & 16) != 0 ? null : groupsGroup, (i9 & 32) != 0 ? null : usersUserMin, (i9 & 64) != 0 ? null : searchHintSection, (i9 & 128) != 0 ? null : baseLink);
    }
}
