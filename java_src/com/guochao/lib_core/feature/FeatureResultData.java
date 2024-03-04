package com.guochao.lib_core.feature;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/guochao/lib_core/feature/FeatureResultData;", "", "open", "", "paramJson", "", "(ILjava/lang/String;)V", "getOpen", "()I", "getParamJson", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FeatureResultData {
    private final int open;
    @Nullable
    private final String paramJson;

    public FeatureResultData(int i9, @Nullable String str) {
        this.open = i9;
        this.paramJson = str;
    }

    public static /* synthetic */ FeatureResultData copy$default(FeatureResultData featureResultData, int i9, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = featureResultData.open;
        }
        if ((i10 & 2) != 0) {
            str = featureResultData.paramJson;
        }
        return featureResultData.copy(i9, str);
    }

    public final int component1() {
        return this.open;
    }

    @Nullable
    public final String component2() {
        return this.paramJson;
    }

    @NotNull
    public final FeatureResultData copy(int i9, @Nullable String str) {
        return new FeatureResultData(i9, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FeatureResultData) {
            FeatureResultData featureResultData = (FeatureResultData) obj;
            return this.open == featureResultData.open && Intrinsics.areEqual(this.paramJson, featureResultData.paramJson);
        }
        return false;
    }

    public final int getOpen() {
        return this.open;
    }

    @Nullable
    public final String getParamJson() {
        return this.paramJson;
    }

    public int hashCode() {
        int i9 = this.open * 31;
        String str = this.paramJson;
        return i9 + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        return "FeatureResultData(open=" + this.open + ", paramJson=" + this.paramJson + ')';
    }

    public /* synthetic */ FeatureResultData(int i9, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? "" : str);
    }
}
