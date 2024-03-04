package com.guochao.faceshow.aaspring.base.mvvm.model;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0017\u0012\u0010\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;", "P", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "list", "", "(Ljava/util/List;)V", "pageCount", "", "getPageCount", "()Ljava/lang/Integer;", "setPageCount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "pageIndex", "getPageIndex", "()I", "setPageIndex", "(I)V", "totalCount", "getTotalCount", "setTotalCount", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class PagedModel<P> extends BaseModel {
    @Nullable
    private Integer pageCount;
    private int pageIndex = 1;
    private int totalCount;

    public PagedModel(@Nullable List<P> list) {
        this.pageCount = list != null ? Integer.valueOf(list.size()) : null;
    }

    @Nullable
    public final Integer getPageCount() {
        return this.pageCount;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final void setPageCount(@Nullable Integer num) {
        this.pageCount = num;
    }

    public final void setPageIndex(int i9) {
        this.pageIndex = i9;
    }

    public final void setTotalCount(int i9) {
        this.totalCount = i9;
    }
}
