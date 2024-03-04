package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;", "", "unixTime", "", "startTime", "(JJ)V", "getStartTime", "()J", "setStartTime", "(J)V", "getUnixTime", "setUnixTime", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AdsRequestBean {
    private long startTime;
    private long unixTime;

    public AdsRequestBean(long j10, long j11) {
        this.unixTime = j10;
        this.startTime = j11;
    }

    public static /* synthetic */ AdsRequestBean copy$default(AdsRequestBean adsRequestBean, long j10, long j11, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            j10 = adsRequestBean.unixTime;
        }
        if ((i9 & 2) != 0) {
            j11 = adsRequestBean.startTime;
        }
        return adsRequestBean.copy(j10, j11);
    }

    public final long component1() {
        return this.unixTime;
    }

    public final long component2() {
        return this.startTime;
    }

    @NotNull
    public final AdsRequestBean copy(long j10, long j11) {
        return new AdsRequestBean(j10, j11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsRequestBean) {
            AdsRequestBean adsRequestBean = (AdsRequestBean) obj;
            return this.unixTime == adsRequestBean.unixTime && this.startTime == adsRequestBean.startTime;
        }
        return false;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final long getUnixTime() {
        return this.unixTime;
    }

    public int hashCode() {
        return (b7.b.a(this.unixTime) * 31) + b7.b.a(this.startTime);
    }

    public final void setStartTime(long j10) {
        this.startTime = j10;
    }

    public final void setUnixTime(long j10) {
        this.unixTime = j10;
    }

    @NotNull
    public String toString() {
        return "AdsRequestBean(unixTime=" + this.unixTime + ", startTime=" + this.startTime + ')';
    }
}
