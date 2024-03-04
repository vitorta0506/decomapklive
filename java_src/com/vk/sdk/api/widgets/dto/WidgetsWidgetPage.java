package com.vk.sdk.api.widgets.dto;

import androidx.core.app.FrameMetricsAggregator;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseObjectCount;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b \n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0007HÆ\u0003Jz\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0005HÖ\u0001J\t\u0010+\u001a\u00020\u0007HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0016\u0010\u0012R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015¨\u0006,"}, d2 = {"Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetPage;", "", "comments", "Lcom/vk/sdk/api/base/dto/BaseObjectCount;", "date", "", "description", "", "id", "likes", "pageId", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "title", "url", "(Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getComments", "()Lcom/vk/sdk/api/base/dto/BaseObjectCount;", "getDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDescription", "()Ljava/lang/String;", "getId", "getLikes", "getPageId", "getPhoto", "getTitle", "getUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetPage;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WidgetsWidgetPage {
    @SerializedName("comments")
    @Nullable
    private final BaseObjectCount comments;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36183id;
    @SerializedName("likes")
    @Nullable
    private final BaseObjectCount likes;
    @SerializedName("page_id")
    @Nullable
    private final String pageId;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final String photo;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("url")
    @Nullable
    private final String url;

    public WidgetsWidgetPage() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public WidgetsWidgetPage(@Nullable BaseObjectCount baseObjectCount, @Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable BaseObjectCount baseObjectCount2, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        this.comments = baseObjectCount;
        this.date = num;
        this.description = str;
        this.f36183id = num2;
        this.likes = baseObjectCount2;
        this.pageId = str2;
        this.photo = str3;
        this.title = str4;
        this.url = str5;
    }

    @Nullable
    public final BaseObjectCount component1() {
        return this.comments;
    }

    @Nullable
    public final Integer component2() {
        return this.date;
    }

    @Nullable
    public final String component3() {
        return this.description;
    }

    @Nullable
    public final Integer component4() {
        return this.f36183id;
    }

    @Nullable
    public final BaseObjectCount component5() {
        return this.likes;
    }

    @Nullable
    public final String component6() {
        return this.pageId;
    }

    @Nullable
    public final String component7() {
        return this.photo;
    }

    @Nullable
    public final String component8() {
        return this.title;
    }

    @Nullable
    public final String component9() {
        return this.url;
    }

    @NotNull
    public final WidgetsWidgetPage copy(@Nullable BaseObjectCount baseObjectCount, @Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable BaseObjectCount baseObjectCount2, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        return new WidgetsWidgetPage(baseObjectCount, num, str, num2, baseObjectCount2, str2, str3, str4, str5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WidgetsWidgetPage) {
            WidgetsWidgetPage widgetsWidgetPage = (WidgetsWidgetPage) obj;
            return Intrinsics.areEqual(this.comments, widgetsWidgetPage.comments) && Intrinsics.areEqual(this.date, widgetsWidgetPage.date) && Intrinsics.areEqual(this.description, widgetsWidgetPage.description) && Intrinsics.areEqual(this.f36183id, widgetsWidgetPage.f36183id) && Intrinsics.areEqual(this.likes, widgetsWidgetPage.likes) && Intrinsics.areEqual(this.pageId, widgetsWidgetPage.pageId) && Intrinsics.areEqual(this.photo, widgetsWidgetPage.photo) && Intrinsics.areEqual(this.title, widgetsWidgetPage.title) && Intrinsics.areEqual(this.url, widgetsWidgetPage.url);
        }
        return false;
    }

    @Nullable
    public final BaseObjectCount getComments() {
        return this.comments;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final Integer getId() {
        return this.f36183id;
    }

    @Nullable
    public final BaseObjectCount getLikes() {
        return this.likes;
    }

    @Nullable
    public final String getPageId() {
        return this.pageId;
    }

    @Nullable
    public final String getPhoto() {
        return this.photo;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        BaseObjectCount baseObjectCount = this.comments;
        int hashCode = (baseObjectCount == null ? 0 : baseObjectCount.hashCode()) * 31;
        Integer num = this.date;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.description;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.f36183id;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        BaseObjectCount baseObjectCount2 = this.likes;
        int hashCode5 = (hashCode4 + (baseObjectCount2 == null ? 0 : baseObjectCount2.hashCode())) * 31;
        String str2 = this.pageId;
        int hashCode6 = (hashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.photo;
        int hashCode7 = (hashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.title;
        int hashCode8 = (hashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.url;
        return hashCode8 + (str5 != null ? str5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        BaseObjectCount baseObjectCount = this.comments;
        Integer num = this.date;
        String str = this.description;
        Integer num2 = this.f36183id;
        BaseObjectCount baseObjectCount2 = this.likes;
        String str2 = this.pageId;
        String str3 = this.photo;
        String str4 = this.title;
        String str5 = this.url;
        return "WidgetsWidgetPage(comments=" + baseObjectCount + ", date=" + num + ", description=" + str + ", id=" + num2 + ", likes=" + baseObjectCount2 + ", pageId=" + str2 + ", photo=" + str3 + ", title=" + str4 + ", url=" + str5 + ")";
    }

    public /* synthetic */ WidgetsWidgetPage(BaseObjectCount baseObjectCount, Integer num, String str, Integer num2, BaseObjectCount baseObjectCount2, String str2, String str3, String str4, String str5, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : baseObjectCount, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : num2, (i9 & 16) != 0 ? null : baseObjectCount2, (i9 & 32) != 0 ? null : str2, (i9 & 64) != 0 ? null : str3, (i9 & 128) != 0 ? null : str4, (i9 & 256) == 0 ? str5 : null);
    }
}
