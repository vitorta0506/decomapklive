package com.guochao.faceshow.aaspring.beans;

import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/HelloStarSummonListBean;", "", "()V", "code", "", "getCode", "()I", "setCode", "(I)V", "data", "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummonListBean$Result;", "getData", "()Lcom/guochao/faceshow/aaspring/beans/HelloStarSummonListBean$Result;", "setData", "(Lcom/guochao/faceshow/aaspring/beans/HelloStarSummonListBean$Result;)V", "Result", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HelloStarSummonListBean {
    private int code;
    @Nullable
    private Result data;

    public final int getCode() {
        return this.code;
    }

    @Nullable
    public final Result getData() {
        return this.data;
    }

    public final void setCode(int i9) {
        this.code = i9;
    }

    public final void setData(@Nullable Result result) {
        this.data = result;
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J@\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000b\"\u0004\b\u0018\u0010\r¨\u0006%"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/HelloStarSummonListBean$Result;", "", "page", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "total", "list", "", "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;", "(Ljava/lang/Integer;IILjava/util/List;)V", "getCount", "()I", "setCount", "(I)V", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "getPage", "()Ljava/lang/Integer;", "setPage", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTotal", "setTotal", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;IILjava/util/List;)Lcom/guochao/faceshow/aaspring/beans/HelloStarSummonListBean$Result;", "equals", "", "other", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Result {
        private int count;
        @Nullable
        private List<HelloStarSummon> list;
        @Nullable
        private Integer page;
        private int total;

        public Result() {
            this(null, 0, 0, null, 15, null);
        }

        public Result(@Nullable Integer num, int i9, int i10, @Nullable List<HelloStarSummon> list) {
            this.page = num;
            this.count = i9;
            this.total = i10;
            this.list = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Result copy$default(Result result, Integer num, int i9, int i10, List list, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                num = result.page;
            }
            if ((i11 & 2) != 0) {
                i9 = result.count;
            }
            if ((i11 & 4) != 0) {
                i10 = result.total;
            }
            if ((i11 & 8) != 0) {
                list = result.list;
            }
            return result.copy(num, i9, i10, list);
        }

        @Nullable
        public final Integer component1() {
            return this.page;
        }

        public final int component2() {
            return this.count;
        }

        public final int component3() {
            return this.total;
        }

        @Nullable
        public final List<HelloStarSummon> component4() {
            return this.list;
        }

        @NotNull
        public final Result copy(@Nullable Integer num, int i9, int i10, @Nullable List<HelloStarSummon> list) {
            return new Result(num, i9, i10, list);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Result) {
                Result result = (Result) obj;
                return Intrinsics.areEqual(this.page, result.page) && this.count == result.count && this.total == result.total && Intrinsics.areEqual(this.list, result.list);
            }
            return false;
        }

        public final int getCount() {
            return this.count;
        }

        @Nullable
        public final List<HelloStarSummon> getList() {
            return this.list;
        }

        @Nullable
        public final Integer getPage() {
            return this.page;
        }

        public final int getTotal() {
            return this.total;
        }

        public int hashCode() {
            Integer num = this.page;
            int hashCode = (((((num == null ? 0 : num.hashCode()) * 31) + this.count) * 31) + this.total) * 31;
            List<HelloStarSummon> list = this.list;
            return hashCode + (list != null ? list.hashCode() : 0);
        }

        public final void setCount(int i9) {
            this.count = i9;
        }

        public final void setList(@Nullable List<HelloStarSummon> list) {
            this.list = list;
        }

        public final void setPage(@Nullable Integer num) {
            this.page = num;
        }

        public final void setTotal(int i9) {
            this.total = i9;
        }

        @NotNull
        public String toString() {
            return "Result(page=" + this.page + ", count=" + this.count + ", total=" + this.total + ", list=" + this.list + ')';
        }

        public /* synthetic */ Result(Integer num, int i9, int i10, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? 0 : i9, (i11 & 4) != 0 ? 0 : i10, (i11 & 8) != 0 ? null : list);
        }
    }
}