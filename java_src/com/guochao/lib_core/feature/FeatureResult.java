package com.guochao.lib_core.feature;

import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u0017\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003HÆ\u0003J!\u0010\n\u001a\u00020\u00002\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001R\u001f\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/guochao/lib_core/feature/FeatureResult;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "resultMap", "", "", "Lcom/guochao/lib_core/feature/FeatureResultData;", "(Ljava/util/Map;)V", "getResultMap", "()Ljava/util/Map;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FeatureResult extends BaseModel {
    @Nullable
    private final Map<String, FeatureResultData> resultMap;

    public FeatureResult(@Nullable Map<String, FeatureResultData> map) {
        this.resultMap = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FeatureResult copy$default(FeatureResult featureResult, Map map, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            map = featureResult.resultMap;
        }
        return featureResult.copy(map);
    }

    @Nullable
    public final Map<String, FeatureResultData> component1() {
        return this.resultMap;
    }

    @NotNull
    public final FeatureResult copy(@Nullable Map<String, FeatureResultData> map) {
        return new FeatureResult(map);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FeatureResult) && Intrinsics.areEqual(this.resultMap, ((FeatureResult) obj).resultMap);
    }

    @Nullable
    public final Map<String, FeatureResultData> getResultMap() {
        return this.resultMap;
    }

    public int hashCode() {
        Map<String, FeatureResultData> map = this.resultMap;
        if (map == null) {
            return 0;
        }
        return map.hashCode();
    }

    @NotNull
    public String toString() {
        return "FeatureResult(resultMap=" + this.resultMap + ')';
    }
}
