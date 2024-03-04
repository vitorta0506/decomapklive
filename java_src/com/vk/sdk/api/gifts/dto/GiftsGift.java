package com.vk.sdk.api.gifts.dto;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001f\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\fHÆ\u0003Jb\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\t\u0010'\u001a\u00020\bHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\u000fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0016\u0010\u000fR\u0018\u0010\n\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006("}, d2 = {"Lcom/vk/sdk/api/gifts/dto/GiftsGift;", "", "date", "", "fromId", "gift", "Lcom/vk/sdk/api/gifts/dto/GiftsLayout;", "giftHash", "", "id", "message", ShareConstants.WEB_DIALOG_PARAM_PRIVACY, "Lcom/vk/sdk/api/gifts/dto/GiftsGiftPrivacy;", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/gifts/dto/GiftsLayout;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/gifts/dto/GiftsGiftPrivacy;)V", "getDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getFromId", "getGift", "()Lcom/vk/sdk/api/gifts/dto/GiftsLayout;", "getGiftHash", "()Ljava/lang/String;", "getId", "getMessage", "getPrivacy", "()Lcom/vk/sdk/api/gifts/dto/GiftsGiftPrivacy;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/gifts/dto/GiftsLayout;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/gifts/dto/GiftsGiftPrivacy;)Lcom/vk/sdk/api/gifts/dto/GiftsGift;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GiftsGift {
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("from_id")
    @Nullable
    private final Integer fromId;
    @SerializedName("gift")
    @Nullable
    private final GiftsLayout gift;
    @SerializedName("gift_hash")
    @Nullable
    private final String giftHash;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35813id;
    @SerializedName("message")
    @Nullable
    private final String message;
    @SerializedName(ShareConstants.WEB_DIALOG_PARAM_PRIVACY)
    @Nullable
    private final GiftsGiftPrivacy privacy;

    public GiftsGift() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public GiftsGift(@Nullable Integer num, @Nullable Integer num2, @Nullable GiftsLayout giftsLayout, @Nullable String str, @Nullable Integer num3, @Nullable String str2, @Nullable GiftsGiftPrivacy giftsGiftPrivacy) {
        this.date = num;
        this.fromId = num2;
        this.gift = giftsLayout;
        this.giftHash = str;
        this.f35813id = num3;
        this.message = str2;
        this.privacy = giftsGiftPrivacy;
    }

    public static /* synthetic */ GiftsGift copy$default(GiftsGift giftsGift, Integer num, Integer num2, GiftsLayout giftsLayout, String str, Integer num3, String str2, GiftsGiftPrivacy giftsGiftPrivacy, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = giftsGift.date;
        }
        if ((i9 & 2) != 0) {
            num2 = giftsGift.fromId;
        }
        Integer num4 = num2;
        if ((i9 & 4) != 0) {
            giftsLayout = giftsGift.gift;
        }
        GiftsLayout giftsLayout2 = giftsLayout;
        if ((i9 & 8) != 0) {
            str = giftsGift.giftHash;
        }
        String str3 = str;
        if ((i9 & 16) != 0) {
            num3 = giftsGift.f35813id;
        }
        Integer num5 = num3;
        if ((i9 & 32) != 0) {
            str2 = giftsGift.message;
        }
        String str4 = str2;
        if ((i9 & 64) != 0) {
            giftsGiftPrivacy = giftsGift.privacy;
        }
        return giftsGift.copy(num, num4, giftsLayout2, str3, num5, str4, giftsGiftPrivacy);
    }

    @Nullable
    public final Integer component1() {
        return this.date;
    }

    @Nullable
    public final Integer component2() {
        return this.fromId;
    }

    @Nullable
    public final GiftsLayout component3() {
        return this.gift;
    }

    @Nullable
    public final String component4() {
        return this.giftHash;
    }

    @Nullable
    public final Integer component5() {
        return this.f35813id;
    }

    @Nullable
    public final String component6() {
        return this.message;
    }

    @Nullable
    public final GiftsGiftPrivacy component7() {
        return this.privacy;
    }

    @NotNull
    public final GiftsGift copy(@Nullable Integer num, @Nullable Integer num2, @Nullable GiftsLayout giftsLayout, @Nullable String str, @Nullable Integer num3, @Nullable String str2, @Nullable GiftsGiftPrivacy giftsGiftPrivacy) {
        return new GiftsGift(num, num2, giftsLayout, str, num3, str2, giftsGiftPrivacy);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GiftsGift) {
            GiftsGift giftsGift = (GiftsGift) obj;
            return Intrinsics.areEqual(this.date, giftsGift.date) && Intrinsics.areEqual(this.fromId, giftsGift.fromId) && Intrinsics.areEqual(this.gift, giftsGift.gift) && Intrinsics.areEqual(this.giftHash, giftsGift.giftHash) && Intrinsics.areEqual(this.f35813id, giftsGift.f35813id) && Intrinsics.areEqual(this.message, giftsGift.message) && this.privacy == giftsGift.privacy;
        }
        return false;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final Integer getFromId() {
        return this.fromId;
    }

    @Nullable
    public final GiftsLayout getGift() {
        return this.gift;
    }

    @Nullable
    public final String getGiftHash() {
        return this.giftHash;
    }

    @Nullable
    public final Integer getId() {
        return this.f35813id;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    @Nullable
    public final GiftsGiftPrivacy getPrivacy() {
        return this.privacy;
    }

    public int hashCode() {
        Integer num = this.date;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.fromId;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        GiftsLayout giftsLayout = this.gift;
        int hashCode3 = (hashCode2 + (giftsLayout == null ? 0 : giftsLayout.hashCode())) * 31;
        String str = this.giftHash;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num3 = this.f35813id;
        int hashCode5 = (hashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str2 = this.message;
        int hashCode6 = (hashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        GiftsGiftPrivacy giftsGiftPrivacy = this.privacy;
        return hashCode6 + (giftsGiftPrivacy != null ? giftsGiftPrivacy.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.date;
        Integer num2 = this.fromId;
        GiftsLayout giftsLayout = this.gift;
        String str = this.giftHash;
        Integer num3 = this.f35813id;
        String str2 = this.message;
        GiftsGiftPrivacy giftsGiftPrivacy = this.privacy;
        return "GiftsGift(date=" + num + ", fromId=" + num2 + ", gift=" + giftsLayout + ", giftHash=" + str + ", id=" + num3 + ", message=" + str2 + ", privacy=" + giftsGiftPrivacy + ")";
    }

    public /* synthetic */ GiftsGift(Integer num, Integer num2, GiftsLayout giftsLayout, String str, Integer num3, String str2, GiftsGiftPrivacy giftsGiftPrivacy, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : giftsLayout, (i9 & 8) != 0 ? null : str, (i9 & 16) != 0 ? null : num3, (i9 & 32) != 0 ? null : str2, (i9 & 64) != 0 ? null : giftsGiftPrivacy);
    }
}
