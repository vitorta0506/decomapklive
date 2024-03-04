package com.vk.sdk.api.stories.dto;

import com.google.gson.annotations.SerializedName;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.sdk.api.apps.dto.AppsAppMin;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b'\b\u0086\b\u0018\u00002\u00020\u0001:\u00018B\u0085\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0014J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010+\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u0011\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0007HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0010\u0010/\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u00100\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u00101\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0090\u0001\u00102\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u00103J\u0013\u00104\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u00020\u000fHÖ\u0001J\t\u00107\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010 R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010 R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'¨\u00069"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesFeedItem;", "", "type", "Lcom/vk/sdk/api/stories/dto/StoriesFeedItem$Type;", "id", "", "stories", "", "Lcom/vk/sdk/api/stories/dto/StoriesStory;", "grouped", PushConstants.EXTRA_APPLICATION_PENDING_INTENT, "Lcom/vk/sdk/api/apps/dto/AppsAppMin;", "promoData", "Lcom/vk/sdk/api/stories/dto/StoriesPromoBlock;", "birthdayUserId", "", "trackCode", "hasUnseen", "", "name", "(Lcom/vk/sdk/api/stories/dto/StoriesFeedItem$Type;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/apps/dto/AppsAppMin;Lcom/vk/sdk/api/stories/dto/StoriesPromoBlock;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V", "getApp", "()Lcom/vk/sdk/api/apps/dto/AppsAppMin;", "getBirthdayUserId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getGrouped", "()Ljava/util/List;", "getHasUnseen", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getId", "()Ljava/lang/String;", "getName", "getPromoData", "()Lcom/vk/sdk/api/stories/dto/StoriesPromoBlock;", "getStories", "getTrackCode", "getType", "()Lcom/vk/sdk/api/stories/dto/StoriesFeedItem$Type;", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/stories/dto/StoriesFeedItem$Type;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/apps/dto/AppsAppMin;Lcom/vk/sdk/api/stories/dto/StoriesPromoBlock;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/vk/sdk/api/stories/dto/StoriesFeedItem;", "equals", "other", "hashCode", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesFeedItem {
    @SerializedName(PushConstants.EXTRA_APPLICATION_PENDING_INTENT)
    @Nullable
    private final AppsAppMin app;
    @SerializedName("birthday_user_id")
    @Nullable
    private final Integer birthdayUserId;
    @SerializedName("grouped")
    @Nullable
    private final List<StoriesFeedItem> grouped;
    @SerializedName("has_unseen")
    @Nullable
    private final Boolean hasUnseen;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final String f36094id;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("promo_data")
    @Nullable
    private final StoriesPromoBlock promoData;
    @SerializedName("stories")
    @Nullable
    private final List<StoriesStory> stories;
    @SerializedName("track_code")
    @Nullable
    private final String trackCode;
    @SerializedName("type")
    @NotNull
    private final Type type;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesFeedItem$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "PROMO_STORIES", "STORIES", "LIVE_ACTIVE", "LIVE_FINISHED", "COMMUNITY_GROUPED_STORIES", "APP_GROUPED_STORIES", "BIRTHDAY", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Type {
        PROMO_STORIES("promo_stories"),
        STORIES("stories"),
        LIVE_ACTIVE("live_active"),
        LIVE_FINISHED("live_finished"),
        COMMUNITY_GROUPED_STORIES("community_grouped_stories"),
        APP_GROUPED_STORIES("app_grouped_stories"),
        BIRTHDAY("birthday");
        
        @NotNull
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public StoriesFeedItem(@NotNull Type type, @Nullable String str, @Nullable List<StoriesStory> list, @Nullable List<StoriesFeedItem> list2, @Nullable AppsAppMin appsAppMin, @Nullable StoriesPromoBlock storiesPromoBlock, @Nullable Integer num, @Nullable String str2, @Nullable Boolean bool, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.f36094id = str;
        this.stories = list;
        this.grouped = list2;
        this.app = appsAppMin;
        this.promoData = storiesPromoBlock;
        this.birthdayUserId = num;
        this.trackCode = str2;
        this.hasUnseen = bool;
        this.name = str3;
    }

    @NotNull
    public final Type component1() {
        return this.type;
    }

    @Nullable
    public final String component10() {
        return this.name;
    }

    @Nullable
    public final String component2() {
        return this.f36094id;
    }

    @Nullable
    public final List<StoriesStory> component3() {
        return this.stories;
    }

    @Nullable
    public final List<StoriesFeedItem> component4() {
        return this.grouped;
    }

    @Nullable
    public final AppsAppMin component5() {
        return this.app;
    }

    @Nullable
    public final StoriesPromoBlock component6() {
        return this.promoData;
    }

    @Nullable
    public final Integer component7() {
        return this.birthdayUserId;
    }

    @Nullable
    public final String component8() {
        return this.trackCode;
    }

    @Nullable
    public final Boolean component9() {
        return this.hasUnseen;
    }

    @NotNull
    public final StoriesFeedItem copy(@NotNull Type type, @Nullable String str, @Nullable List<StoriesStory> list, @Nullable List<StoriesFeedItem> list2, @Nullable AppsAppMin appsAppMin, @Nullable StoriesPromoBlock storiesPromoBlock, @Nullable Integer num, @Nullable String str2, @Nullable Boolean bool, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new StoriesFeedItem(type, str, list, list2, appsAppMin, storiesPromoBlock, num, str2, bool, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesFeedItem) {
            StoriesFeedItem storiesFeedItem = (StoriesFeedItem) obj;
            return this.type == storiesFeedItem.type && Intrinsics.areEqual(this.f36094id, storiesFeedItem.f36094id) && Intrinsics.areEqual(this.stories, storiesFeedItem.stories) && Intrinsics.areEqual(this.grouped, storiesFeedItem.grouped) && Intrinsics.areEqual(this.app, storiesFeedItem.app) && Intrinsics.areEqual(this.promoData, storiesFeedItem.promoData) && Intrinsics.areEqual(this.birthdayUserId, storiesFeedItem.birthdayUserId) && Intrinsics.areEqual(this.trackCode, storiesFeedItem.trackCode) && Intrinsics.areEqual(this.hasUnseen, storiesFeedItem.hasUnseen) && Intrinsics.areEqual(this.name, storiesFeedItem.name);
        }
        return false;
    }

    @Nullable
    public final AppsAppMin getApp() {
        return this.app;
    }

    @Nullable
    public final Integer getBirthdayUserId() {
        return this.birthdayUserId;
    }

    @Nullable
    public final List<StoriesFeedItem> getGrouped() {
        return this.grouped;
    }

    @Nullable
    public final Boolean getHasUnseen() {
        return this.hasUnseen;
    }

    @Nullable
    public final String getId() {
        return this.f36094id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final StoriesPromoBlock getPromoData() {
        return this.promoData;
    }

    @Nullable
    public final List<StoriesStory> getStories() {
        return this.stories;
    }

    @Nullable
    public final String getTrackCode() {
        return this.trackCode;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        String str = this.f36094id;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<StoriesStory> list = this.stories;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List<StoriesFeedItem> list2 = this.grouped;
        int hashCode4 = (hashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        AppsAppMin appsAppMin = this.app;
        int hashCode5 = (hashCode4 + (appsAppMin == null ? 0 : appsAppMin.hashCode())) * 31;
        StoriesPromoBlock storiesPromoBlock = this.promoData;
        int hashCode6 = (hashCode5 + (storiesPromoBlock == null ? 0 : storiesPromoBlock.hashCode())) * 31;
        Integer num = this.birthdayUserId;
        int hashCode7 = (hashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.trackCode;
        int hashCode8 = (hashCode7 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.hasUnseen;
        int hashCode9 = (hashCode8 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str3 = this.name;
        return hashCode9 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Type type = this.type;
        String str = this.f36094id;
        List<StoriesStory> list = this.stories;
        List<StoriesFeedItem> list2 = this.grouped;
        AppsAppMin appsAppMin = this.app;
        StoriesPromoBlock storiesPromoBlock = this.promoData;
        Integer num = this.birthdayUserId;
        String str2 = this.trackCode;
        Boolean bool = this.hasUnseen;
        String str3 = this.name;
        return "StoriesFeedItem(type=" + type + ", id=" + str + ", stories=" + list + ", grouped=" + list2 + ", app=" + appsAppMin + ", promoData=" + storiesPromoBlock + ", birthdayUserId=" + num + ", trackCode=" + str2 + ", hasUnseen=" + bool + ", name=" + str3 + ")";
    }

    public /* synthetic */ StoriesFeedItem(Type type, String str, List list, List list2, AppsAppMin appsAppMin, StoriesPromoBlock storiesPromoBlock, Integer num, String str2, Boolean bool, String str3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(type, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : list, (i9 & 8) != 0 ? null : list2, (i9 & 16) != 0 ? null : appsAppMin, (i9 & 32) != 0 ? null : storiesPromoBlock, (i9 & 64) != 0 ? null : num, (i9 & 128) != 0 ? null : str2, (i9 & 256) != 0 ? null : bool, (i9 & 512) == 0 ? str3 : null);
    }
}
