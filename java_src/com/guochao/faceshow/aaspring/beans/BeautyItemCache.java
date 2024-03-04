package com.guochao.faceshow.aaspring.beans;

import android.util.ArrayMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0007\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;", "", "()V", "lastBeautyValue", "Landroid/util/ArrayMap;", "", "", "getLastBeautyValue", "()Landroid/util/ArrayMap;", "setLastBeautyValue", "(Landroid/util/ArrayMap;)V", "lastFaceMotion", "getLastFaceMotion", "()Ljava/lang/String;", "setLastFaceMotion", "(Ljava/lang/String;)V", "lastFilter", "getLastFilter", "setLastFilter", "lastFilterStrength", "getLastFilterStrength", "()F", "setLastFilterStrength", "(F)V", "isEmpty", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BeautyItemCache {
    @NotNull
    private ArrayMap<String, Float> lastBeautyValue = new ArrayMap<>();
    @Nullable
    private transient String lastFaceMotion;
    @Nullable
    private String lastFilter;
    private float lastFilterStrength;

    @NotNull
    public final ArrayMap<String, Float> getLastBeautyValue() {
        return this.lastBeautyValue;
    }

    @Nullable
    public final String getLastFaceMotion() {
        return this.lastFaceMotion;
    }

    @Nullable
    public final String getLastFilter() {
        return this.lastFilter;
    }

    public final float getLastFilterStrength() {
        return this.lastFilterStrength;
    }

    public final boolean isEmpty() {
        return this.lastBeautyValue.isEmpty() && this.lastFilter == null && this.lastFaceMotion == null;
    }

    public final void setLastBeautyValue(@NotNull ArrayMap<String, Float> arrayMap) {
        Intrinsics.checkNotNullParameter(arrayMap, "<set-?>");
        this.lastBeautyValue = arrayMap;
    }

    public final void setLastFaceMotion(@Nullable String str) {
        this.lastFaceMotion = str;
    }

    public final void setLastFilter(@Nullable String str) {
        this.lastFilter = str;
    }

    public final void setLastFilterStrength(float f10) {
        this.lastFilterStrength = f10;
    }
}
