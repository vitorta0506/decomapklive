package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/CloudCustomData;", "", "type", "", "code", "(II)V", "getCode", "()I", "setCode", "(I)V", "getType", "setType", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CloudCustomData {
    private int code;
    private int type;

    public CloudCustomData() {
        this(0, 0, 3, null);
    }

    public CloudCustomData(int i9, int i10) {
        this.type = i9;
        this.code = i10;
    }

    public static /* synthetic */ CloudCustomData copy$default(CloudCustomData cloudCustomData, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = cloudCustomData.type;
        }
        if ((i11 & 2) != 0) {
            i10 = cloudCustomData.code;
        }
        return cloudCustomData.copy(i9, i10);
    }

    public final int component1() {
        return this.type;
    }

    public final int component2() {
        return this.code;
    }

    @NotNull
    public final CloudCustomData copy(int i9, int i10) {
        return new CloudCustomData(i9, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CloudCustomData) {
            CloudCustomData cloudCustomData = (CloudCustomData) obj;
            return this.type == cloudCustomData.type && this.code == cloudCustomData.code;
        }
        return false;
    }

    public final int getCode() {
        return this.code;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.type * 31) + this.code;
    }

    public final void setCode(int i9) {
        this.code = i9;
    }

    public final void setType(int i9) {
        this.type = i9;
    }

    @NotNull
    public String toString() {
        return "CloudCustomData(type=" + this.type + ", code=" + this.code + ')';
    }

    public /* synthetic */ CloudCustomData(int i9, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i9, (i11 & 2) != 0 ? 0 : i10);
    }
}
