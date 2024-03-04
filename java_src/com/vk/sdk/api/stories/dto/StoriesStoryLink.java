package com.vk.sdk.api.stories.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J)\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesStoryLink;", "", ViewHierarchyConstants.TEXT_KEY, "", "url", "linkUrlTarget", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getLinkUrlTarget", "()Ljava/lang/String;", "getText", "getUrl", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesStoryLink {
    @SerializedName("link_url_target")
    @Nullable
    private final String linkUrlTarget;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;
    @SerializedName("url")
    @NotNull
    private final String url;

    public StoriesStoryLink(@NotNull String text, @NotNull String url, @Nullable String str) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(url, "url");
        this.text = text;
        this.url = url;
        this.linkUrlTarget = str;
    }

    public static /* synthetic */ StoriesStoryLink copy$default(StoriesStoryLink storiesStoryLink, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = storiesStoryLink.text;
        }
        if ((i9 & 2) != 0) {
            str2 = storiesStoryLink.url;
        }
        if ((i9 & 4) != 0) {
            str3 = storiesStoryLink.linkUrlTarget;
        }
        return storiesStoryLink.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.text;
    }

    @NotNull
    public final String component2() {
        return this.url;
    }

    @Nullable
    public final String component3() {
        return this.linkUrlTarget;
    }

    @NotNull
    public final StoriesStoryLink copy(@NotNull String text, @NotNull String url, @Nullable String str) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(url, "url");
        return new StoriesStoryLink(text, url, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesStoryLink) {
            StoriesStoryLink storiesStoryLink = (StoriesStoryLink) obj;
            return Intrinsics.areEqual(this.text, storiesStoryLink.text) && Intrinsics.areEqual(this.url, storiesStoryLink.url) && Intrinsics.areEqual(this.linkUrlTarget, storiesStoryLink.linkUrlTarget);
        }
        return false;
    }

    @Nullable
    public final String getLinkUrlTarget() {
        return this.linkUrlTarget;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = ((this.text.hashCode() * 31) + this.url.hashCode()) * 31;
        String str = this.linkUrlTarget;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.text;
        String str2 = this.url;
        String str3 = this.linkUrlTarget;
        return "StoriesStoryLink(text=" + str + ", url=" + str2 + ", linkUrlTarget=" + str3 + ")";
    }

    public /* synthetic */ StoriesStoryLink(String str, String str2, String str3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i9 & 4) != 0 ? null : str3);
    }
}
