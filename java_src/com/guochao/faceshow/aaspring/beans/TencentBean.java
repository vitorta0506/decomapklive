package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/TencentBean;", "", "license", "", "(Ljava/lang/String;)V", "getLicense", "()Ljava/lang/String;", "setLicense", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TencentBean {
    @Nullable
    private String license;

    public TencentBean() {
        this(null, 1, null);
    }

    public TencentBean(@Nullable String str) {
        this.license = str;
    }

    public static /* synthetic */ TencentBean copy$default(TencentBean tencentBean, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = tencentBean.license;
        }
        return tencentBean.copy(str);
    }

    @Nullable
    public final String component1() {
        return this.license;
    }

    @NotNull
    public final TencentBean copy(@Nullable String str) {
        return new TencentBean(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TencentBean) && Intrinsics.areEqual(this.license, ((TencentBean) obj).license);
    }

    @Nullable
    public final String getLicense() {
        return this.license;
    }

    public int hashCode() {
        String str = this.license;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final void setLicense(@Nullable String str) {
        this.license = str;
    }

    @NotNull
    public String toString() {
        return "TencentBean(license=" + this.license + ')';
    }

    public /* synthetic */ TencentBean(String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str);
    }
}
