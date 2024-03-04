package com.guochao.faceshow.aaspring.beans;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J,\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;", "", "bonusDiamond", "", "giftList", "", "Lcom/guochao/faceshow/aaspring/beans/GiftBean;", "(Ljava/lang/Integer;Ljava/util/List;)V", "getBonusDiamond", "()Ljava/lang/Integer;", "setBonusDiamond", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getGiftList", "()Ljava/util/List;", "setGiftList", "(Ljava/util/List;)V", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/util/List;)Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;", "equals", "", "other", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FirstRechargeBean {
    @Nullable
    private Integer bonusDiamond;
    @Nullable
    private List<GiftBean> giftList;

    public FirstRechargeBean() {
        this(null, null, 3, null);
    }

    public FirstRechargeBean(@Nullable Integer num, @Nullable List<GiftBean> list) {
        this.bonusDiamond = num;
        this.giftList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FirstRechargeBean copy$default(FirstRechargeBean firstRechargeBean, Integer num, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = firstRechargeBean.bonusDiamond;
        }
        if ((i9 & 2) != 0) {
            list = firstRechargeBean.giftList;
        }
        return firstRechargeBean.copy(num, list);
    }

    @Nullable
    public final Integer component1() {
        return this.bonusDiamond;
    }

    @Nullable
    public final List<GiftBean> component2() {
        return this.giftList;
    }

    @NotNull
    public final FirstRechargeBean copy(@Nullable Integer num, @Nullable List<GiftBean> list) {
        return new FirstRechargeBean(num, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FirstRechargeBean) {
            FirstRechargeBean firstRechargeBean = (FirstRechargeBean) obj;
            return Intrinsics.areEqual(this.bonusDiamond, firstRechargeBean.bonusDiamond) && Intrinsics.areEqual(this.giftList, firstRechargeBean.giftList);
        }
        return false;
    }

    @Nullable
    public final Integer getBonusDiamond() {
        return this.bonusDiamond;
    }

    @Nullable
    public final List<GiftBean> getGiftList() {
        return this.giftList;
    }

    public int hashCode() {
        Integer num = this.bonusDiamond;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<GiftBean> list = this.giftList;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    public final void setBonusDiamond(@Nullable Integer num) {
        this.bonusDiamond = num;
    }

    public final void setGiftList(@Nullable List<GiftBean> list) {
        this.giftList = list;
    }

    @NotNull
    public String toString() {
        return "FirstRechargeBean(bonusDiamond=" + this.bonusDiamond + ", giftList=" + this.giftList + ')';
    }

    public /* synthetic */ FirstRechargeBean(Integer num, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : list);
    }
}
