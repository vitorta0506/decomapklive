package com.vk.sdk.api.apps.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/apps/dto/AppsScope;", "", "name", "Lcom/vk/sdk/api/apps/dto/AppsScope$Name;", "title", "", "(Lcom/vk/sdk/api/apps/dto/AppsScope$Name;Ljava/lang/String;)V", "getName", "()Lcom/vk/sdk/api/apps/dto/AppsScope$Name;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Name", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppsScope {
    @SerializedName("name")
    @NotNull
    private final Name name;
    @SerializedName("title")
    @Nullable
    private final String title;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/apps/dto/AppsScope$Name;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", ShareConstants.PEOPLE_IDS, ShareConstants.PHOTOS, ShareConstants.VIDEO_URL, "PAGES", "STATUS", "NOTES", "WALL", "DOCS", "GROUPS", "STATS", "MARKET", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Name {
        FRIENDS(NativeProtocol.AUDIENCE_FRIENDS),
        PHOTOS("photos"),
        VIDEO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO),
        PAGES("pages"),
        STATUS("status"),
        NOTES("notes"),
        WALL("wall"),
        DOCS("docs"),
        GROUPS("groups"),
        STATS("stats"),
        MARKET("market");
        
        @NotNull
        private final String value;

        Name(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public AppsScope(@NotNull Name name, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.title = str;
    }

    public static /* synthetic */ AppsScope copy$default(AppsScope appsScope, Name name, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            name = appsScope.name;
        }
        if ((i9 & 2) != 0) {
            str = appsScope.title;
        }
        return appsScope.copy(name, str);
    }

    @NotNull
    public final Name component1() {
        return this.name;
    }

    @Nullable
    public final String component2() {
        return this.title;
    }

    @NotNull
    public final AppsScope copy(@NotNull Name name, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new AppsScope(name, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppsScope) {
            AppsScope appsScope = (AppsScope) obj;
            return this.name == appsScope.name && Intrinsics.areEqual(this.title, appsScope.title);
        }
        return false;
    }

    @NotNull
    public final Name getName() {
        return this.name;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        String str = this.title;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        Name name = this.name;
        String str = this.title;
        return "AppsScope(name=" + name + ", title=" + str + ")";
    }

    public /* synthetic */ AppsScope(Name name, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(name, (i9 & 2) != 0 ? null : str);
    }
}
