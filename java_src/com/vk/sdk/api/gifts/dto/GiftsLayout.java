package com.vk.sdk.api.gifts.dto;

import androidx.core.app.FrameMetricsAggregator;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b \b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010\"\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003Jz\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020\u000b2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\n\u0010\u0014R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0017\u0010\u0012R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0010¨\u0006+"}, d2 = {"Lcom/vk/sdk/api/gifts/dto/GiftsLayout;", "", "id", "", "thumb512", "", "thumb256", "thumb48", "thumb96", "stickersProductId", "isStickersStyle", "", "buildId", "keywords", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V", "getBuildId", "()Ljava/lang/String;", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getKeywords", "getStickersProductId", "getThumb256", "getThumb48", "getThumb512", "getThumb96", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/gifts/dto/GiftsLayout;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GiftsLayout {
    @SerializedName("build_id")
    @Nullable
    private final String buildId;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35814id;
    @SerializedName("is_stickers_style")
    @Nullable
    private final Boolean isStickersStyle;
    @SerializedName("keywords")
    @Nullable
    private final String keywords;
    @SerializedName("stickers_product_id")
    @Nullable
    private final Integer stickersProductId;
    @SerializedName("thumb_256")
    @Nullable
    private final String thumb256;
    @SerializedName("thumb_48")
    @Nullable
    private final String thumb48;
    @SerializedName("thumb_512")
    @Nullable
    private final String thumb512;
    @SerializedName("thumb_96")
    @Nullable
    private final String thumb96;

    public GiftsLayout() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public GiftsLayout(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num2, @Nullable Boolean bool, @Nullable String str5, @Nullable String str6) {
        this.f35814id = num;
        this.thumb512 = str;
        this.thumb256 = str2;
        this.thumb48 = str3;
        this.thumb96 = str4;
        this.stickersProductId = num2;
        this.isStickersStyle = bool;
        this.buildId = str5;
        this.keywords = str6;
    }

    @Nullable
    public final Integer component1() {
        return this.f35814id;
    }

    @Nullable
    public final String component2() {
        return this.thumb512;
    }

    @Nullable
    public final String component3() {
        return this.thumb256;
    }

    @Nullable
    public final String component4() {
        return this.thumb48;
    }

    @Nullable
    public final String component5() {
        return this.thumb96;
    }

    @Nullable
    public final Integer component6() {
        return this.stickersProductId;
    }

    @Nullable
    public final Boolean component7() {
        return this.isStickersStyle;
    }

    @Nullable
    public final String component8() {
        return this.buildId;
    }

    @Nullable
    public final String component9() {
        return this.keywords;
    }

    @NotNull
    public final GiftsLayout copy(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num2, @Nullable Boolean bool, @Nullable String str5, @Nullable String str6) {
        return new GiftsLayout(num, str, str2, str3, str4, num2, bool, str5, str6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GiftsLayout) {
            GiftsLayout giftsLayout = (GiftsLayout) obj;
            return Intrinsics.areEqual(this.f35814id, giftsLayout.f35814id) && Intrinsics.areEqual(this.thumb512, giftsLayout.thumb512) && Intrinsics.areEqual(this.thumb256, giftsLayout.thumb256) && Intrinsics.areEqual(this.thumb48, giftsLayout.thumb48) && Intrinsics.areEqual(this.thumb96, giftsLayout.thumb96) && Intrinsics.areEqual(this.stickersProductId, giftsLayout.stickersProductId) && Intrinsics.areEqual(this.isStickersStyle, giftsLayout.isStickersStyle) && Intrinsics.areEqual(this.buildId, giftsLayout.buildId) && Intrinsics.areEqual(this.keywords, giftsLayout.keywords);
        }
        return false;
    }

    @Nullable
    public final String getBuildId() {
        return this.buildId;
    }

    @Nullable
    public final Integer getId() {
        return this.f35814id;
    }

    @Nullable
    public final String getKeywords() {
        return this.keywords;
    }

    @Nullable
    public final Integer getStickersProductId() {
        return this.stickersProductId;
    }

    @Nullable
    public final String getThumb256() {
        return this.thumb256;
    }

    @Nullable
    public final String getThumb48() {
        return this.thumb48;
    }

    @Nullable
    public final String getThumb512() {
        return this.thumb512;
    }

    @Nullable
    public final String getThumb96() {
        return this.thumb96;
    }

    public int hashCode() {
        Integer num = this.f35814id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.thumb512;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.thumb256;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.thumb48;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.thumb96;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num2 = this.stickersProductId;
        int hashCode6 = (hashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool = this.isStickersStyle;
        int hashCode7 = (hashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str5 = this.buildId;
        int hashCode8 = (hashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.keywords;
        return hashCode8 + (str6 != null ? str6.hashCode() : 0);
    }

    @Nullable
    public final Boolean isStickersStyle() {
        return this.isStickersStyle;
    }

    @NotNull
    public String toString() {
        Integer num = this.f35814id;
        String str = this.thumb512;
        String str2 = this.thumb256;
        String str3 = this.thumb48;
        String str4 = this.thumb96;
        Integer num2 = this.stickersProductId;
        Boolean bool = this.isStickersStyle;
        String str5 = this.buildId;
        String str6 = this.keywords;
        return "GiftsLayout(id=" + num + ", thumb512=" + str + ", thumb256=" + str2 + ", thumb48=" + str3 + ", thumb96=" + str4 + ", stickersProductId=" + num2 + ", isStickersStyle=" + bool + ", buildId=" + str5 + ", keywords=" + str6 + ")";
    }

    public /* synthetic */ GiftsLayout(Integer num, String str, String str2, String str3, String str4, Integer num2, Boolean bool, String str5, String str6, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : str3, (i9 & 16) != 0 ? null : str4, (i9 & 32) != 0 ? null : num2, (i9 & 64) != 0 ? null : bool, (i9 & 128) != 0 ? null : str5, (i9 & 256) == 0 ? str6 : null);
    }
}
