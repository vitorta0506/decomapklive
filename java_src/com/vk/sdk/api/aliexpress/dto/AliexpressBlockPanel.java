package com.vk.sdk.api.aliexpress.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003JC\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/aliexpress/dto/AliexpressBlockPanel;", "", "title", "", "subtitle", "photo62", "photo124", "photo186", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPhoto124", "()Ljava/lang/String;", "getPhoto186", "getPhoto62", "getSubtitle", "getTitle", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AliexpressBlockPanel {
    @SerializedName("photo_124")
    @Nullable
    private final String photo124;
    @SerializedName("photo_186")
    @Nullable
    private final String photo186;
    @SerializedName("photo_62")
    @Nullable
    private final String photo62;
    @SerializedName("subtitle")
    @Nullable
    private final String subtitle;
    @SerializedName("title")
    @NotNull
    private final String title;

    public AliexpressBlockPanel(@NotNull String title, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.subtitle = str;
        this.photo62 = str2;
        this.photo124 = str3;
        this.photo186 = str4;
    }

    public static /* synthetic */ AliexpressBlockPanel copy$default(AliexpressBlockPanel aliexpressBlockPanel, String str, String str2, String str3, String str4, String str5, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = aliexpressBlockPanel.title;
        }
        if ((i9 & 2) != 0) {
            str2 = aliexpressBlockPanel.subtitle;
        }
        String str6 = str2;
        if ((i9 & 4) != 0) {
            str3 = aliexpressBlockPanel.photo62;
        }
        String str7 = str3;
        if ((i9 & 8) != 0) {
            str4 = aliexpressBlockPanel.photo124;
        }
        String str8 = str4;
        if ((i9 & 16) != 0) {
            str5 = aliexpressBlockPanel.photo186;
        }
        return aliexpressBlockPanel.copy(str, str6, str7, str8, str5);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @Nullable
    public final String component2() {
        return this.subtitle;
    }

    @Nullable
    public final String component3() {
        return this.photo62;
    }

    @Nullable
    public final String component4() {
        return this.photo124;
    }

    @Nullable
    public final String component5() {
        return this.photo186;
    }

    @NotNull
    public final AliexpressBlockPanel copy(@NotNull String title, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new AliexpressBlockPanel(title, str, str2, str3, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AliexpressBlockPanel) {
            AliexpressBlockPanel aliexpressBlockPanel = (AliexpressBlockPanel) obj;
            return Intrinsics.areEqual(this.title, aliexpressBlockPanel.title) && Intrinsics.areEqual(this.subtitle, aliexpressBlockPanel.subtitle) && Intrinsics.areEqual(this.photo62, aliexpressBlockPanel.photo62) && Intrinsics.areEqual(this.photo124, aliexpressBlockPanel.photo124) && Intrinsics.areEqual(this.photo186, aliexpressBlockPanel.photo186);
        }
        return false;
    }

    @Nullable
    public final String getPhoto124() {
        return this.photo124;
    }

    @Nullable
    public final String getPhoto186() {
        return this.photo186;
    }

    @Nullable
    public final String getPhoto62() {
        return this.photo62;
    }

    @Nullable
    public final String getSubtitle() {
        return this.subtitle;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = this.title.hashCode() * 31;
        String str = this.subtitle;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.photo62;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.photo124;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.photo186;
        return hashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.title;
        String str2 = this.subtitle;
        String str3 = this.photo62;
        String str4 = this.photo124;
        String str5 = this.photo186;
        return "AliexpressBlockPanel(title=" + str + ", subtitle=" + str2 + ", photo62=" + str3 + ", photo124=" + str4 + ", photo186=" + str5 + ")";
    }

    public /* synthetic */ AliexpressBlockPanel(String str, String str2, String str3, String str4, String str5, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : str3, (i9 & 8) != 0 ? null : str4, (i9 & 16) != 0 ? null : str5);
    }
}
