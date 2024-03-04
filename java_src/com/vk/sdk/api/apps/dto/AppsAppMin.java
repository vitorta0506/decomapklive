package com.vk.sdk.api.apps.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b0\b\u0086\b\u0018\u00002\u00020\u0001B\u0095\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0013J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010 J\t\u0010,\u001a\u00020\u0005HÆ\u0003J\t\u0010-\u001a\u00020\u0007HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010/\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010 J\u000b\u00100\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0007HÆ\u0003J¤\u0001\u00104\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u00105J\u0013\u00106\u001a\u00020\n2\b\u00107\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00108\u001a\u00020\u0005HÖ\u0001J\t\u00109\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0018R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0018R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010!\u001a\u0004\b\t\u0010 R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0018R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010!\u001a\u0004\b#\u0010 R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&¨\u0006:"}, d2 = {"Lcom/vk/sdk/api/apps/dto/AppsAppMin;", "", "type", "Lcom/vk/sdk/api/apps/dto/AppsAppType;", "id", "", "title", "", "authorOwnerId", "isInstalled", "", "icon139", "icon150", "icon278", "icon576", "backgroundLoaderColor", "loaderIcon", "icon75", "openInExternalBrowser", "(Lcom/vk/sdk/api/apps/dto/AppsAppType;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getAuthorOwnerId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getBackgroundLoaderColor", "()Ljava/lang/String;", "getIcon139", "getIcon150", "getIcon278", "getIcon576", "getIcon75", "getId", "()I", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLoaderIcon", "getOpenInExternalBrowser", "getTitle", "getType", "()Lcom/vk/sdk/api/apps/dto/AppsAppType;", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/apps/dto/AppsAppType;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/sdk/api/apps/dto/AppsAppMin;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppsAppMin {
    @SerializedName("author_owner_id")
    @Nullable
    private final Integer authorOwnerId;
    @SerializedName("background_loader_color")
    @Nullable
    private final String backgroundLoaderColor;
    @SerializedName("icon_139")
    @Nullable
    private final String icon139;
    @SerializedName("icon_150")
    @Nullable
    private final String icon150;
    @SerializedName("icon_278")
    @Nullable
    private final String icon278;
    @SerializedName("icon_576")
    @Nullable
    private final String icon576;
    @SerializedName("icon_75")
    @Nullable
    private final String icon75;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35730id;
    @SerializedName("is_installed")
    @Nullable
    private final Boolean isInstalled;
    @SerializedName("loader_icon")
    @Nullable
    private final String loaderIcon;
    @SerializedName("open_in_external_browser")
    @Nullable
    private final Boolean openInExternalBrowser;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("type")
    @NotNull
    private final AppsAppType type;

    public AppsAppMin(@NotNull AppsAppType type, int i9, @NotNull String title, @Nullable Integer num, @Nullable Boolean bool, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(title, "title");
        this.type = type;
        this.f35730id = i9;
        this.title = title;
        this.authorOwnerId = num;
        this.isInstalled = bool;
        this.icon139 = str;
        this.icon150 = str2;
        this.icon278 = str3;
        this.icon576 = str4;
        this.backgroundLoaderColor = str5;
        this.loaderIcon = str6;
        this.icon75 = str7;
        this.openInExternalBrowser = bool2;
    }

    @NotNull
    public final AppsAppType component1() {
        return this.type;
    }

    @Nullable
    public final String component10() {
        return this.backgroundLoaderColor;
    }

    @Nullable
    public final String component11() {
        return this.loaderIcon;
    }

    @Nullable
    public final String component12() {
        return this.icon75;
    }

    @Nullable
    public final Boolean component13() {
        return this.openInExternalBrowser;
    }

    public final int component2() {
        return this.f35730id;
    }

    @NotNull
    public final String component3() {
        return this.title;
    }

    @Nullable
    public final Integer component4() {
        return this.authorOwnerId;
    }

    @Nullable
    public final Boolean component5() {
        return this.isInstalled;
    }

    @Nullable
    public final String component6() {
        return this.icon139;
    }

    @Nullable
    public final String component7() {
        return this.icon150;
    }

    @Nullable
    public final String component8() {
        return this.icon278;
    }

    @Nullable
    public final String component9() {
        return this.icon576;
    }

    @NotNull
    public final AppsAppMin copy(@NotNull AppsAppType type, int i9, @NotNull String title, @Nullable Integer num, @Nullable Boolean bool, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(title, "title");
        return new AppsAppMin(type, i9, title, num, bool, str, str2, str3, str4, str5, str6, str7, bool2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppsAppMin) {
            AppsAppMin appsAppMin = (AppsAppMin) obj;
            return this.type == appsAppMin.type && this.f35730id == appsAppMin.f35730id && Intrinsics.areEqual(this.title, appsAppMin.title) && Intrinsics.areEqual(this.authorOwnerId, appsAppMin.authorOwnerId) && Intrinsics.areEqual(this.isInstalled, appsAppMin.isInstalled) && Intrinsics.areEqual(this.icon139, appsAppMin.icon139) && Intrinsics.areEqual(this.icon150, appsAppMin.icon150) && Intrinsics.areEqual(this.icon278, appsAppMin.icon278) && Intrinsics.areEqual(this.icon576, appsAppMin.icon576) && Intrinsics.areEqual(this.backgroundLoaderColor, appsAppMin.backgroundLoaderColor) && Intrinsics.areEqual(this.loaderIcon, appsAppMin.loaderIcon) && Intrinsics.areEqual(this.icon75, appsAppMin.icon75) && Intrinsics.areEqual(this.openInExternalBrowser, appsAppMin.openInExternalBrowser);
        }
        return false;
    }

    @Nullable
    public final Integer getAuthorOwnerId() {
        return this.authorOwnerId;
    }

    @Nullable
    public final String getBackgroundLoaderColor() {
        return this.backgroundLoaderColor;
    }

    @Nullable
    public final String getIcon139() {
        return this.icon139;
    }

    @Nullable
    public final String getIcon150() {
        return this.icon150;
    }

    @Nullable
    public final String getIcon278() {
        return this.icon278;
    }

    @Nullable
    public final String getIcon576() {
        return this.icon576;
    }

    @Nullable
    public final String getIcon75() {
        return this.icon75;
    }

    public final int getId() {
        return this.f35730id;
    }

    @Nullable
    public final String getLoaderIcon() {
        return this.loaderIcon;
    }

    @Nullable
    public final Boolean getOpenInExternalBrowser() {
        return this.openInExternalBrowser;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final AppsAppType getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((((this.type.hashCode() * 31) + this.f35730id) * 31) + this.title.hashCode()) * 31;
        Integer num = this.authorOwnerId;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.isInstalled;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.icon139;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.icon150;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.icon278;
        int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.icon576;
        int hashCode7 = (hashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.backgroundLoaderColor;
        int hashCode8 = (hashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.loaderIcon;
        int hashCode9 = (hashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.icon75;
        int hashCode10 = (hashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Boolean bool2 = this.openInExternalBrowser;
        return hashCode10 + (bool2 != null ? bool2.hashCode() : 0);
    }

    @Nullable
    public final Boolean isInstalled() {
        return this.isInstalled;
    }

    @NotNull
    public String toString() {
        AppsAppType appsAppType = this.type;
        int i9 = this.f35730id;
        String str = this.title;
        Integer num = this.authorOwnerId;
        Boolean bool = this.isInstalled;
        String str2 = this.icon139;
        String str3 = this.icon150;
        String str4 = this.icon278;
        String str5 = this.icon576;
        String str6 = this.backgroundLoaderColor;
        String str7 = this.loaderIcon;
        String str8 = this.icon75;
        Boolean bool2 = this.openInExternalBrowser;
        return "AppsAppMin(type=" + appsAppType + ", id=" + i9 + ", title=" + str + ", authorOwnerId=" + num + ", isInstalled=" + bool + ", icon139=" + str2 + ", icon150=" + str3 + ", icon278=" + str4 + ", icon576=" + str5 + ", backgroundLoaderColor=" + str6 + ", loaderIcon=" + str7 + ", icon75=" + str8 + ", openInExternalBrowser=" + bool2 + ")";
    }

    public /* synthetic */ AppsAppMin(AppsAppType appsAppType, int i9, String str, Integer num, Boolean bool, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Boolean bool2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(appsAppType, i9, str, (i10 & 8) != 0 ? null : num, (i10 & 16) != 0 ? null : bool, (i10 & 32) != 0 ? null : str2, (i10 & 64) != 0 ? null : str3, (i10 & 128) != 0 ? null : str4, (i10 & 256) != 0 ? null : str5, (i10 & 512) != 0 ? null : str6, (i10 & 1024) != 0 ? null : str7, (i10 & 2048) != 0 ? null : str8, (i10 & 4096) != 0 ? null : bool2);
    }
}
