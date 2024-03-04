package com.guochao.faceshow.component.f2fmatch.model;

import b7.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchHistoryModel;", "", "id", "", "(J)V", "getId", "()J", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMatchHistoryModel {

    /* renamed from: id  reason: collision with root package name */
    private final long f25139id;

    public F2fMatchHistoryModel() {
        this(0L, 1, null);
    }

    public F2fMatchHistoryModel(long j10) {
        this.f25139id = j10;
    }

    public static /* synthetic */ F2fMatchHistoryModel copy$default(F2fMatchHistoryModel f2fMatchHistoryModel, long j10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            j10 = f2fMatchHistoryModel.f25139id;
        }
        return f2fMatchHistoryModel.copy(j10);
    }

    public final long component1() {
        return this.f25139id;
    }

    @NotNull
    public final F2fMatchHistoryModel copy(long j10) {
        return new F2fMatchHistoryModel(j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof F2fMatchHistoryModel) && this.f25139id == ((F2fMatchHistoryModel) obj).f25139id;
    }

    public final long getId() {
        return this.f25139id;
    }

    public int hashCode() {
        return b.a(this.f25139id);
    }

    @NotNull
    public String toString() {
        return "F2fMatchHistoryModel(id=" + this.f25139id + ')';
    }

    public /* synthetic */ F2fMatchHistoryModel(long j10, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? 0L : j10);
    }
}
