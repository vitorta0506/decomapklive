package com.guochao.faceshow.bean;

import b7.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J;\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000b\"\u0004\b\u0017\u0010\r¨\u0006$"}, d2 = {"Lcom/guochao/faceshow/bean/BagBean;", "", "giftId", "", "number", "freezeNumber", "expireDay", "", "bagAttribute", "(IIIJI)V", "getBagAttribute", "()I", "setBagAttribute", "(I)V", "getExpireDay", "()J", "setExpireDay", "(J)V", "getFreezeNumber", "setFreezeNumber", "getGiftId", "setGiftId", "getNumber", "setNumber", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BagBean {
    private int bagAttribute;
    private long expireDay;
    private int freezeNumber;
    private int giftId;
    private int number;

    public BagBean() {
        this(0, 0, 0, 0L, 0, 31, null);
    }

    public BagBean(int i9, int i10, int i11, long j10, int i12) {
        this.giftId = i9;
        this.number = i10;
        this.freezeNumber = i11;
        this.expireDay = j10;
        this.bagAttribute = i12;
    }

    public static /* synthetic */ BagBean copy$default(BagBean bagBean, int i9, int i10, int i11, long j10, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i9 = bagBean.giftId;
        }
        if ((i13 & 2) != 0) {
            i10 = bagBean.number;
        }
        int i14 = i10;
        if ((i13 & 4) != 0) {
            i11 = bagBean.freezeNumber;
        }
        int i15 = i11;
        if ((i13 & 8) != 0) {
            j10 = bagBean.expireDay;
        }
        long j11 = j10;
        if ((i13 & 16) != 0) {
            i12 = bagBean.bagAttribute;
        }
        return bagBean.copy(i9, i14, i15, j11, i12);
    }

    public final int component1() {
        return this.giftId;
    }

    public final int component2() {
        return this.number;
    }

    public final int component3() {
        return this.freezeNumber;
    }

    public final long component4() {
        return this.expireDay;
    }

    public final int component5() {
        return this.bagAttribute;
    }

    @NotNull
    public final BagBean copy(int i9, int i10, int i11, long j10, int i12) {
        return new BagBean(i9, i10, i11, j10, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BagBean) {
            BagBean bagBean = (BagBean) obj;
            return this.giftId == bagBean.giftId && this.number == bagBean.number && this.freezeNumber == bagBean.freezeNumber && this.expireDay == bagBean.expireDay && this.bagAttribute == bagBean.bagAttribute;
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

    public final int getGiftId() {
        return this.giftId;
    }

    public final int getNumber() {
        return this.number;
    }

    public int hashCode() {
        return (((((((this.giftId * 31) + this.number) * 31) + this.freezeNumber) * 31) + b.a(this.expireDay)) * 31) + this.bagAttribute;
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

    public final void setGiftId(int i9) {
        this.giftId = i9;
    }

    public final void setNumber(int i9) {
        this.number = i9;
    }

    @NotNull
    public String toString() {
        return "BagBean(giftId=" + this.giftId + ", number=" + this.number + ", freezeNumber=" + this.freezeNumber + ", expireDay=" + this.expireDay + ", bagAttribute=" + this.bagAttribute + ')';
    }

    public /* synthetic */ BagBean(int i9, int i10, int i11, long j10, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i9, (i13 & 2) != 0 ? 0 : i10, (i13 & 4) == 0 ? i11 : 0, (i13 & 8) != 0 ? 0L : j10, (i13 & 16) != 0 ? 1 : i12);
    }
}
