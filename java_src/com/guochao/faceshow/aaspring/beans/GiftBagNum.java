package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/GiftBagNum;", "", "giftId", "", "number", "(II)V", "getGiftId", "()I", "setGiftId", "(I)V", "getNumber", "setNumber", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftBagNum {
    private int giftId;
    private int number;

    public GiftBagNum() {
        this(0, 0, 3, null);
    }

    public GiftBagNum(int i9, int i10) {
        this.giftId = i9;
        this.number = i10;
    }

    public static /* synthetic */ GiftBagNum copy$default(GiftBagNum giftBagNum, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = giftBagNum.giftId;
        }
        if ((i11 & 2) != 0) {
            i10 = giftBagNum.number;
        }
        return giftBagNum.copy(i9, i10);
    }

    public final int component1() {
        return this.giftId;
    }

    public final int component2() {
        return this.number;
    }

    @NotNull
    public final GiftBagNum copy(int i9, int i10) {
        return new GiftBagNum(i9, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GiftBagNum) {
            GiftBagNum giftBagNum = (GiftBagNum) obj;
            return this.giftId == giftBagNum.giftId && this.number == giftBagNum.number;
        }
        return false;
    }

    public final int getGiftId() {
        return this.giftId;
    }

    public final int getNumber() {
        return this.number;
    }

    public int hashCode() {
        return (this.giftId * 31) + this.number;
    }

    public final void setGiftId(int i9) {
        this.giftId = i9;
    }

    public final void setNumber(int i9) {
        this.number = i9;
    }

    @NotNull
    public String toString() {
        return "GiftBagNum(giftId=" + this.giftId + ", number=" + this.number + ')';
    }

    public /* synthetic */ GiftBagNum(int i9, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i9, (i11 & 2) != 0 ? 0 : i10);
    }
}
