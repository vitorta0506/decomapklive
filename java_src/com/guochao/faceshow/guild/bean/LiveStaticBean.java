package com.guochao.faceshow.guild.bean;

import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ>\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\t\u0010'\u001a\u00020(HÖ\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u0015\u0010\u000f\"\u0004\b\u0016\u0010\u0011R\u001a\u0010\u0017\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006)"}, d2 = {"Lcom/guochao/faceshow/guild/bean/LiveStaticBean;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "inTotalMoney", "", "duration", "", "nums", "durationDay", "(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getDuration", "()Ljava/lang/Double;", "setDuration", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getDurationDay", "()Ljava/lang/Integer;", "setDurationDay", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getInTotalMoney", "setInTotalMoney", "getNums", "setNums", "type", "getType", "()I", "setType", "(I)V", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/guochao/faceshow/guild/bean/LiveStaticBean;", "equals", "", "other", "", "hashCode", "toString", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LiveStaticBean extends BaseModel {
    @Nullable
    private Double duration;
    @Nullable
    private Integer durationDay;
    @Nullable
    private Integer inTotalMoney;
    @Nullable
    private Integer nums;
    private int type;

    public LiveStaticBean(@Nullable Integer num, @Nullable Double d10, @Nullable Integer num2, @Nullable Integer num3) {
        this.inTotalMoney = num;
        this.duration = d10;
        this.nums = num2;
        this.durationDay = num3;
    }

    public static /* synthetic */ LiveStaticBean copy$default(LiveStaticBean liveStaticBean, Integer num, Double d10, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = liveStaticBean.inTotalMoney;
        }
        if ((i9 & 2) != 0) {
            d10 = liveStaticBean.duration;
        }
        if ((i9 & 4) != 0) {
            num2 = liveStaticBean.nums;
        }
        if ((i9 & 8) != 0) {
            num3 = liveStaticBean.durationDay;
        }
        return liveStaticBean.copy(num, d10, num2, num3);
    }

    @Nullable
    public final Integer component1() {
        return this.inTotalMoney;
    }

    @Nullable
    public final Double component2() {
        return this.duration;
    }

    @Nullable
    public final Integer component3() {
        return this.nums;
    }

    @Nullable
    public final Integer component4() {
        return this.durationDay;
    }

    @NotNull
    public final LiveStaticBean copy(@Nullable Integer num, @Nullable Double d10, @Nullable Integer num2, @Nullable Integer num3) {
        return new LiveStaticBean(num, d10, num2, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LiveStaticBean) {
            LiveStaticBean liveStaticBean = (LiveStaticBean) obj;
            return Intrinsics.areEqual(this.inTotalMoney, liveStaticBean.inTotalMoney) && Intrinsics.areEqual((Object) this.duration, (Object) liveStaticBean.duration) && Intrinsics.areEqual(this.nums, liveStaticBean.nums) && Intrinsics.areEqual(this.durationDay, liveStaticBean.durationDay);
        }
        return false;
    }

    @Nullable
    public final Double getDuration() {
        return this.duration;
    }

    @Nullable
    public final Integer getDurationDay() {
        return this.durationDay;
    }

    @Nullable
    public final Integer getInTotalMoney() {
        return this.inTotalMoney;
    }

    @Nullable
    public final Integer getNums() {
        return this.nums;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        Integer num = this.inTotalMoney;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Double d10 = this.duration;
        int hashCode2 = (hashCode + (d10 == null ? 0 : d10.hashCode())) * 31;
        Integer num2 = this.nums;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.durationDay;
        return hashCode3 + (num3 != null ? num3.hashCode() : 0);
    }

    public final void setDuration(@Nullable Double d10) {
        this.duration = d10;
    }

    public final void setDurationDay(@Nullable Integer num) {
        this.durationDay = num;
    }

    public final void setInTotalMoney(@Nullable Integer num) {
        this.inTotalMoney = num;
    }

    public final void setNums(@Nullable Integer num) {
        this.nums = num;
    }

    public final void setType(int i9) {
        this.type = i9;
    }

    @NotNull
    public String toString() {
        return "LiveStaticBean(inTotalMoney=" + this.inTotalMoney + ", duration=" + this.duration + ", nums=" + this.nums + ", durationDay=" + this.durationDay + ')';
    }
}
