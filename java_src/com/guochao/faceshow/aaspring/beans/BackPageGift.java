package com.guochao.faceshow.aaspring.beans;

import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b/\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B}\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\b¢\u0006\u0002\u0010\u0011J\t\u00100\u001a\u00020\u0003HÆ\u0003J\t\u00101\u001a\u00020\u000eHÆ\u0003J\t\u00102\u001a\u00020\bHÆ\u0003J\t\u00103\u001a\u00020\bHÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\bHÆ\u0003J\t\u00108\u001a\u00020\bHÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\bHÆ\u0003J\u0081\u0001\u0010<\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\bHÆ\u0001J\u0013\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010@\u001a\u00020\bHÖ\u0001J\t\u0010A\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\f\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001d\"\u0004\b!\u0010\u001fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010\u001fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001d\"\u0004\b%\u0010\u001fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001d\"\u0004\b'\u0010\u001fR\u001a\u0010\u0010\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0013\"\u0004\b)\u0010\u0015R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0013\"\u0004\b+\u0010\u0015R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001d\"\u0004\b-\u0010\u001fR\u001a\u0010\u000f\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0013\"\u0004\b/\u0010\u0015¨\u0006B"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/BackPageGift;", "", "giftId", "", "name", "introduction", "img", InAppPurchaseMetaData.KEY_PRICE, "", "freezeNumber", "updateTime", "giftName", "bagAttribute", "expireDay", "", "useDay", "number", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IJII)V", "getBagAttribute", "()I", "setBagAttribute", "(I)V", "getExpireDay", "()J", "setExpireDay", "(J)V", "getFreezeNumber", "setFreezeNumber", "getGiftId", "()Ljava/lang/String;", "setGiftId", "(Ljava/lang/String;)V", "getGiftName", "setGiftName", "getImg", "setImg", "getIntroduction", "setIntroduction", "getName", "setName", "getNumber", "setNumber", "getPrice", "setPrice", "getUpdateTime", "setUpdateTime", "getUseDay", "setUseDay", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BackPageGift {
    private int bagAttribute;
    private long expireDay;
    private int freezeNumber;
    @NotNull
    private String giftId;
    @NotNull
    private String giftName;
    @NotNull
    private String img;
    @NotNull
    private String introduction;
    @NotNull
    private String name;
    private int number;
    private int price;
    @NotNull
    private String updateTime;
    private int useDay;

    public BackPageGift() {
        this(null, null, null, null, 0, 0, null, null, 0, 0L, 0, 0, 4095, null);
    }

    public BackPageGift(@NotNull String giftId, @NotNull String name, @NotNull String introduction, @NotNull String img, int i9, int i10, @NotNull String updateTime, @NotNull String giftName, int i11, long j10, int i12, int i13) {
        Intrinsics.checkNotNullParameter(giftId, "giftId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(introduction, "introduction");
        Intrinsics.checkNotNullParameter(img, "img");
        Intrinsics.checkNotNullParameter(updateTime, "updateTime");
        Intrinsics.checkNotNullParameter(giftName, "giftName");
        this.giftId = giftId;
        this.name = name;
        this.introduction = introduction;
        this.img = img;
        this.price = i9;
        this.freezeNumber = i10;
        this.updateTime = updateTime;
        this.giftName = giftName;
        this.bagAttribute = i11;
        this.expireDay = j10;
        this.useDay = i12;
        this.number = i13;
    }

    @NotNull
    public final String component1() {
        return this.giftId;
    }

    public final long component10() {
        return this.expireDay;
    }

    public final int component11() {
        return this.useDay;
    }

    public final int component12() {
        return this.number;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final String component3() {
        return this.introduction;
    }

    @NotNull
    public final String component4() {
        return this.img;
    }

    public final int component5() {
        return this.price;
    }

    public final int component6() {
        return this.freezeNumber;
    }

    @NotNull
    public final String component7() {
        return this.updateTime;
    }

    @NotNull
    public final String component8() {
        return this.giftName;
    }

    public final int component9() {
        return this.bagAttribute;
    }

    @NotNull
    public final BackPageGift copy(@NotNull String giftId, @NotNull String name, @NotNull String introduction, @NotNull String img, int i9, int i10, @NotNull String updateTime, @NotNull String giftName, int i11, long j10, int i12, int i13) {
        Intrinsics.checkNotNullParameter(giftId, "giftId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(introduction, "introduction");
        Intrinsics.checkNotNullParameter(img, "img");
        Intrinsics.checkNotNullParameter(updateTime, "updateTime");
        Intrinsics.checkNotNullParameter(giftName, "giftName");
        return new BackPageGift(giftId, name, introduction, img, i9, i10, updateTime, giftName, i11, j10, i12, i13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BackPageGift) {
            BackPageGift backPageGift = (BackPageGift) obj;
            return Intrinsics.areEqual(this.giftId, backPageGift.giftId) && Intrinsics.areEqual(this.name, backPageGift.name) && Intrinsics.areEqual(this.introduction, backPageGift.introduction) && Intrinsics.areEqual(this.img, backPageGift.img) && this.price == backPageGift.price && this.freezeNumber == backPageGift.freezeNumber && Intrinsics.areEqual(this.updateTime, backPageGift.updateTime) && Intrinsics.areEqual(this.giftName, backPageGift.giftName) && this.bagAttribute == backPageGift.bagAttribute && this.expireDay == backPageGift.expireDay && this.useDay == backPageGift.useDay && this.number == backPageGift.number;
        }
        return false;
    }

    public final int getBagAttribute() {
        return this.bagAttribute;
    }

    public final long getExpireDay() {
        return this.expireDay;
    }

    public final int getFreezeNumber() {
        return this.freezeNumber;
    }

    @NotNull
    public final String getGiftId() {
        return this.giftId;
    }

    @NotNull
    public final String getGiftName() {
        return this.giftName;
    }

    @NotNull
    public final String getImg() {
        return this.img;
    }

    @NotNull
    public final String getIntroduction() {
        return this.introduction;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final int getNumber() {
        return this.number;
    }

    public final int getPrice() {
        return this.price;
    }

    @NotNull
    public final String getUpdateTime() {
        return this.updateTime;
    }

    public final int getUseDay() {
        return this.useDay;
    }

    public int hashCode() {
        return (((((((((((((((((((((this.giftId.hashCode() * 31) + this.name.hashCode()) * 31) + this.introduction.hashCode()) * 31) + this.img.hashCode()) * 31) + this.price) * 31) + this.freezeNumber) * 31) + this.updateTime.hashCode()) * 31) + this.giftName.hashCode()) * 31) + this.bagAttribute) * 31) + b7.b.a(this.expireDay)) * 31) + this.useDay) * 31) + this.number;
    }

    public final void setBagAttribute(int i9) {
        this.bagAttribute = i9;
    }

    public final void setExpireDay(long j10) {
        this.expireDay = j10;
    }

    public final void setFreezeNumber(int i9) {
        this.freezeNumber = i9;
    }

    public final void setGiftId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.giftId = str;
    }

    public final void setGiftName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.giftName = str;
    }

    public final void setImg(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.img = str;
    }

    public final void setIntroduction(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.introduction = str;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setNumber(int i9) {
        this.number = i9;
    }

    public final void setPrice(int i9) {
        this.price = i9;
    }

    public final void setUpdateTime(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.updateTime = str;
    }

    public final void setUseDay(int i9) {
        this.useDay = i9;
    }

    @NotNull
    public String toString() {
        return "BackPageGift(giftId=" + this.giftId + ", name=" + this.name + ", introduction=" + this.introduction + ", img=" + this.img + ", price=" + this.price + ", freezeNumber=" + this.freezeNumber + ", updateTime=" + this.updateTime + ", giftName=" + this.giftName + ", bagAttribute=" + this.bagAttribute + ", expireDay=" + this.expireDay + ", useDay=" + this.useDay + ", number=" + this.number + ')';
    }

    public /* synthetic */ BackPageGift(String str, String str2, String str3, String str4, int i9, int i10, String str5, String str6, int i11, long j10, int i12, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? "" : str, (i14 & 2) != 0 ? "" : str2, (i14 & 4) != 0 ? "" : str3, (i14 & 8) != 0 ? "" : str4, (i14 & 16) != 0 ? 0 : i9, (i14 & 32) != 0 ? 0 : i10, (i14 & 64) != 0 ? "" : str5, (i14 & 128) == 0 ? str6 : "", (i14 & 256) != 0 ? 0 : i11, (i14 & 512) != 0 ? 0L : j10, (i14 & 1024) != 0 ? 0 : i12, (i14 & 2048) == 0 ? i13 : 0);
    }
}
