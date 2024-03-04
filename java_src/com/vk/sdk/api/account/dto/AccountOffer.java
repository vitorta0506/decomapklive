package com.vk.sdk.api.account.dto;

import com.google.gson.annotations.SerializedName;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u00018B\u0095\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010(\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u009e\u0001\u00101\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÆ\u0001¢\u0006\u0002\u00102J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u00020\u0005HÖ\u0001J\t\u00107\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001e\u0010\u0019R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b!\u0010\u0019R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0017R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0017R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0017¨\u00069"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountOffer;", "", "description", "", "id", "", "img", "instruction", "instructionHtml", InAppPurchaseMetaData.KEY_PRICE, "shortDescription", "tag", "title", "currencyAmount", "", "linkId", "linkType", "Lcom/vk/sdk/api/account/dto/AccountOffer$LinkType;", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Lcom/vk/sdk/api/account/dto/AccountOffer$LinkType;)V", "getCurrencyAmount", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getDescription", "()Ljava/lang/String;", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getImg", "getInstruction", "getInstructionHtml", "getLinkId", "getLinkType", "()Lcom/vk/sdk/api/account/dto/AccountOffer$LinkType;", "getPrice", "getShortDescription", "getTag", "getTitle", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Lcom/vk/sdk/api/account/dto/AccountOffer$LinkType;)Lcom/vk/sdk/api/account/dto/AccountOffer;", "equals", "", "other", "hashCode", "toString", "LinkType", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountOffer {
    @SerializedName("currency_amount")
    @Nullable
    private final Float currencyAmount;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35652id;
    @SerializedName("img")
    @Nullable
    private final String img;
    @SerializedName("instruction")
    @Nullable
    private final String instruction;
    @SerializedName("instruction_html")
    @Nullable
    private final String instructionHtml;
    @SerializedName("link_id")
    @Nullable
    private final Integer linkId;
    @SerializedName("link_type")
    @Nullable
    private final LinkType linkType;
    @SerializedName(InAppPurchaseMetaData.KEY_PRICE)
    @Nullable
    private final Integer price;
    @SerializedName("short_description")
    @Nullable
    private final String shortDescription;
    @SerializedName("tag")
    @Nullable
    private final String tag;
    @SerializedName("title")
    @Nullable
    private final String title;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountOffer$LinkType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "PROFILE", "GROUP", GrsBaseInfo.CountryCodeSource.APP, "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum LinkType {
        PROFILE("profile"),
        GROUP("group"),
        APP(PushConstants.EXTRA_APPLICATION_PENDING_INTENT);
        
        @NotNull
        private final String value;

        LinkType(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public AccountOffer() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    public AccountOffer(@Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num2, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Float f10, @Nullable Integer num3, @Nullable LinkType linkType) {
        this.description = str;
        this.f35652id = num;
        this.img = str2;
        this.instruction = str3;
        this.instructionHtml = str4;
        this.price = num2;
        this.shortDescription = str5;
        this.tag = str6;
        this.title = str7;
        this.currencyAmount = f10;
        this.linkId = num3;
        this.linkType = linkType;
    }

    @Nullable
    public final String component1() {
        return this.description;
    }

    @Nullable
    public final Float component10() {
        return this.currencyAmount;
    }

    @Nullable
    public final Integer component11() {
        return this.linkId;
    }

    @Nullable
    public final LinkType component12() {
        return this.linkType;
    }

    @Nullable
    public final Integer component2() {
        return this.f35652id;
    }

    @Nullable
    public final String component3() {
        return this.img;
    }

    @Nullable
    public final String component4() {
        return this.instruction;
    }

    @Nullable
    public final String component5() {
        return this.instructionHtml;
    }

    @Nullable
    public final Integer component6() {
        return this.price;
    }

    @Nullable
    public final String component7() {
        return this.shortDescription;
    }

    @Nullable
    public final String component8() {
        return this.tag;
    }

    @Nullable
    public final String component9() {
        return this.title;
    }

    @NotNull
    public final AccountOffer copy(@Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num2, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Float f10, @Nullable Integer num3, @Nullable LinkType linkType) {
        return new AccountOffer(str, num, str2, str3, str4, num2, str5, str6, str7, f10, num3, linkType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountOffer) {
            AccountOffer accountOffer = (AccountOffer) obj;
            return Intrinsics.areEqual(this.description, accountOffer.description) && Intrinsics.areEqual(this.f35652id, accountOffer.f35652id) && Intrinsics.areEqual(this.img, accountOffer.img) && Intrinsics.areEqual(this.instruction, accountOffer.instruction) && Intrinsics.areEqual(this.instructionHtml, accountOffer.instructionHtml) && Intrinsics.areEqual(this.price, accountOffer.price) && Intrinsics.areEqual(this.shortDescription, accountOffer.shortDescription) && Intrinsics.areEqual(this.tag, accountOffer.tag) && Intrinsics.areEqual(this.title, accountOffer.title) && Intrinsics.areEqual((Object) this.currencyAmount, (Object) accountOffer.currencyAmount) && Intrinsics.areEqual(this.linkId, accountOffer.linkId) && this.linkType == accountOffer.linkType;
        }
        return false;
    }

    @Nullable
    public final Float getCurrencyAmount() {
        return this.currencyAmount;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final Integer getId() {
        return this.f35652id;
    }

    @Nullable
    public final String getImg() {
        return this.img;
    }

    @Nullable
    public final String getInstruction() {
        return this.instruction;
    }

    @Nullable
    public final String getInstructionHtml() {
        return this.instructionHtml;
    }

    @Nullable
    public final Integer getLinkId() {
        return this.linkId;
    }

    @Nullable
    public final LinkType getLinkType() {
        return this.linkType;
    }

    @Nullable
    public final Integer getPrice() {
        return this.price;
    }

    @Nullable
    public final String getShortDescription() {
        return this.shortDescription;
    }

    @Nullable
    public final String getTag() {
        return this.tag;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.description;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.f35652id;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.img;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.instruction;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.instructionHtml;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num2 = this.price;
        int hashCode6 = (hashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str5 = this.shortDescription;
        int hashCode7 = (hashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.tag;
        int hashCode8 = (hashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.title;
        int hashCode9 = (hashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Float f10 = this.currencyAmount;
        int hashCode10 = (hashCode9 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Integer num3 = this.linkId;
        int hashCode11 = (hashCode10 + (num3 == null ? 0 : num3.hashCode())) * 31;
        LinkType linkType = this.linkType;
        return hashCode11 + (linkType != null ? linkType.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.description;
        Integer num = this.f35652id;
        String str2 = this.img;
        String str3 = this.instruction;
        String str4 = this.instructionHtml;
        Integer num2 = this.price;
        String str5 = this.shortDescription;
        String str6 = this.tag;
        String str7 = this.title;
        Float f10 = this.currencyAmount;
        Integer num3 = this.linkId;
        LinkType linkType = this.linkType;
        return "AccountOffer(description=" + str + ", id=" + num + ", img=" + str2 + ", instruction=" + str3 + ", instructionHtml=" + str4 + ", price=" + num2 + ", shortDescription=" + str5 + ", tag=" + str6 + ", title=" + str7 + ", currencyAmount=" + f10 + ", linkId=" + num3 + ", linkType=" + linkType + ")";
    }

    public /* synthetic */ AccountOffer(String str, Integer num, String str2, String str3, String str4, Integer num2, String str5, String str6, String str7, Float f10, Integer num3, LinkType linkType, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : str3, (i9 & 16) != 0 ? null : str4, (i9 & 32) != 0 ? null : num2, (i9 & 64) != 0 ? null : str5, (i9 & 128) != 0 ? null : str6, (i9 & 256) != 0 ? null : str7, (i9 & 512) != 0 ? null : f10, (i9 & 1024) != 0 ? null : num3, (i9 & 2048) == 0 ? linkType : null);
    }
}
