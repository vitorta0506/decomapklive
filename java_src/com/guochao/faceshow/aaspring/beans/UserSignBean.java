package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/UserSignBean;", "", "sesign", "", "(Ljava/lang/String;)V", "getSesign", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserSignBean {
    @NotNull
    private final String sesign;

    public UserSignBean(@NotNull String sesign) {
        Intrinsics.checkNotNullParameter(sesign, "sesign");
        this.sesign = sesign;
    }

    public static /* synthetic */ UserSignBean copy$default(UserSignBean userSignBean, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = userSignBean.sesign;
        }
        return userSignBean.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.sesign;
    }

    @NotNull
    public final UserSignBean copy(@NotNull String sesign) {
        Intrinsics.checkNotNullParameter(sesign, "sesign");
        return new UserSignBean(sesign);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UserSignBean) && Intrinsics.areEqual(this.sesign, ((UserSignBean) obj).sesign);
    }

    @NotNull
    public final String getSesign() {
        return this.sesign;
    }

    public int hashCode() {
        return this.sesign.hashCode();
    }

    @NotNull
    public String toString() {
        return "UserSignBean(sesign=" + this.sesign + ')';
    }
}
