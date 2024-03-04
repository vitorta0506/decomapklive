package com.guochao.faceshow.component.f2fmatch.model;

import com.guochao.faceshow.aaspring.base.mvvm.model.PagedModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0011\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004HÆ\u0003J\u001b\u0010\t\u001a\u00020\u00002\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchHistoryPageModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchHistoryModel;", "list", "", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMatchHistoryPageModel extends PagedModel<F2fMatchHistoryModel> {
    @NotNull
    private final List<F2fMatchHistoryModel> list;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fMatchHistoryPageModel(@NotNull List<F2fMatchHistoryModel> list) {
        super(list);
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ F2fMatchHistoryPageModel copy$default(F2fMatchHistoryPageModel f2fMatchHistoryPageModel, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = f2fMatchHistoryPageModel.list;
        }
        return f2fMatchHistoryPageModel.copy(list);
    }

    @NotNull
    public final List<F2fMatchHistoryModel> component1() {
        return this.list;
    }

    @NotNull
    public final F2fMatchHistoryPageModel copy(@NotNull List<F2fMatchHistoryModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return new F2fMatchHistoryPageModel(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof F2fMatchHistoryPageModel) && Intrinsics.areEqual(this.list, ((F2fMatchHistoryPageModel) obj).list);
    }

    @NotNull
    public final List<F2fMatchHistoryModel> getList() {
        return this.list;
    }

    public int hashCode() {
        return this.list.hashCode();
    }

    @NotNull
    public String toString() {
        return "F2fMatchHistoryPageModel(list=" + this.list + ')';
    }
}
