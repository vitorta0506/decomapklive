package com.guochao.faceshow.bean;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\rJ,\u0010\u0013\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/bean/BagListBean;", "", "list", "", "Lcom/guochao/faceshow/bean/BagBean;", "nowTime", "", "(Ljava/util/List;Ljava/lang/Long;)V", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "getNowTime", "()Ljava/lang/Long;", "setNowTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "component1", "component2", "copy", "(Ljava/util/List;Ljava/lang/Long;)Lcom/guochao/faceshow/bean/BagListBean;", "equals", "", "other", "hashCode", "", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BagListBean {
    @Nullable
    private List<BagBean> list;
    @Nullable
    private Long nowTime;

    public BagListBean() {
        this(null, null, 3, null);
    }

    public BagListBean(@Nullable List<BagBean> list, @Nullable Long l10) {
        this.list = list;
        this.nowTime = l10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BagListBean copy$default(BagListBean bagListBean, List list, Long l10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = bagListBean.list;
        }
        if ((i9 & 2) != 0) {
            l10 = bagListBean.nowTime;
        }
        return bagListBean.copy(list, l10);
    }

    @Nullable
    public final List<BagBean> component1() {
        return this.list;
    }

    @Nullable
    public final Long component2() {
        return this.nowTime;
    }

    @NotNull
    public final BagListBean copy(@Nullable List<BagBean> list, @Nullable Long l10) {
        return new BagListBean(list, l10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BagListBean) {
            BagListBean bagListBean = (BagListBean) obj;
            return Intrinsics.areEqual(this.list, bagListBean.list) && Intrinsics.areEqual(this.nowTime, bagListBean.nowTime);
        }
        return false;
    }

    @Nullable
    public final List<BagBean> getList() {
        return this.list;
    }

    @Nullable
    public final Long getNowTime() {
        return this.nowTime;
    }

    public int hashCode() {
        List<BagBean> list = this.list;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        Long l10 = this.nowTime;
        return hashCode + (l10 != null ? l10.hashCode() : 0);
    }

    public final void setList(@Nullable List<BagBean> list) {
        this.list = list;
    }

    public final void setNowTime(@Nullable Long l10) {
        this.nowTime = l10;
    }

    @NotNull
    public String toString() {
        return "BagListBean(list=" + this.list + ", nowTime=" + this.nowTime + ')';
    }

    public /* synthetic */ BagListBean(List list, Long l10, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? 0L : l10);
    }
}
