package com.guochao.faceshow.guild.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/guild/bean/CertificatBean;", "", "idCard", "", "result", "userName", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getIdCard", "()Ljava/lang/String;", "setIdCard", "(Ljava/lang/String;)V", "getResult", "setResult", "getUserName", "setUserName", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CertificatBean {
    @NotNull
    private String idCard;
    @NotNull
    private String result;
    @NotNull
    private String userName;

    public CertificatBean(@NotNull String idCard, @NotNull String result, @NotNull String userName) {
        Intrinsics.checkNotNullParameter(idCard, "idCard");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(userName, "userName");
        this.idCard = idCard;
        this.result = result;
        this.userName = userName;
    }

    public static /* synthetic */ CertificatBean copy$default(CertificatBean certificatBean, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = certificatBean.idCard;
        }
        if ((i9 & 2) != 0) {
            str2 = certificatBean.result;
        }
        if ((i9 & 4) != 0) {
            str3 = certificatBean.userName;
        }
        return certificatBean.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.idCard;
    }

    @NotNull
    public final String component2() {
        return this.result;
    }

    @NotNull
    public final String component3() {
        return this.userName;
    }

    @NotNull
    public final CertificatBean copy(@NotNull String idCard, @NotNull String result, @NotNull String userName) {
        Intrinsics.checkNotNullParameter(idCard, "idCard");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(userName, "userName");
        return new CertificatBean(idCard, result, userName);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CertificatBean) {
            CertificatBean certificatBean = (CertificatBean) obj;
            return Intrinsics.areEqual(this.idCard, certificatBean.idCard) && Intrinsics.areEqual(this.result, certificatBean.result) && Intrinsics.areEqual(this.userName, certificatBean.userName);
        }
        return false;
    }

    @NotNull
    public final String getIdCard() {
        return this.idCard;
    }

    @NotNull
    public final String getResult() {
        return this.result;
    }

    @NotNull
    public final String getUserName() {
        return this.userName;
    }

    public int hashCode() {
        return (((this.idCard.hashCode() * 31) + this.result.hashCode()) * 31) + this.userName.hashCode();
    }

    public final void setIdCard(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.idCard = str;
    }

    public final void setResult(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.result = str;
    }

    public final void setUserName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userName = str;
    }

    @NotNull
    public String toString() {
        return "CertificatBean(idCard=" + this.idCard + ", result=" + this.result + ", userName=" + this.userName + ')';
    }
}
