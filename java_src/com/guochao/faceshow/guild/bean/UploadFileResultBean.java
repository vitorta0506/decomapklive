package com.guochao.faceshow.guild.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;", "", "videoUrl", "", "bigImgUrl", "smallImgUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBigImgUrl", "()Ljava/lang/String;", "setBigImgUrl", "(Ljava/lang/String;)V", "getSmallImgUrl", "setSmallImgUrl", "getVideoUrl", "setVideoUrl", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UploadFileResultBean {
    @Nullable
    private String bigImgUrl;
    @Nullable
    private String smallImgUrl;
    @Nullable
    private String videoUrl;

    public UploadFileResultBean(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.videoUrl = str;
        this.bigImgUrl = str2;
        this.smallImgUrl = str3;
    }

    public static /* synthetic */ UploadFileResultBean copy$default(UploadFileResultBean uploadFileResultBean, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = uploadFileResultBean.videoUrl;
        }
        if ((i9 & 2) != 0) {
            str2 = uploadFileResultBean.bigImgUrl;
        }
        if ((i9 & 4) != 0) {
            str3 = uploadFileResultBean.smallImgUrl;
        }
        return uploadFileResultBean.copy(str, str2, str3);
    }

    @Nullable
    public final String component1() {
        return this.videoUrl;
    }

    @Nullable
    public final String component2() {
        return this.bigImgUrl;
    }

    @Nullable
    public final String component3() {
        return this.smallImgUrl;
    }

    @NotNull
    public final UploadFileResultBean copy(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new UploadFileResultBean(str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UploadFileResultBean) {
            UploadFileResultBean uploadFileResultBean = (UploadFileResultBean) obj;
            return Intrinsics.areEqual(this.videoUrl, uploadFileResultBean.videoUrl) && Intrinsics.areEqual(this.bigImgUrl, uploadFileResultBean.bigImgUrl) && Intrinsics.areEqual(this.smallImgUrl, uploadFileResultBean.smallImgUrl);
        }
        return false;
    }

    @Nullable
    public final String getBigImgUrl() {
        return this.bigImgUrl;
    }

    @Nullable
    public final String getSmallImgUrl() {
        return this.smallImgUrl;
    }

    @Nullable
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        String str = this.videoUrl;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.bigImgUrl;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.smallImgUrl;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setBigImgUrl(@Nullable String str) {
        this.bigImgUrl = str;
    }

    public final void setSmallImgUrl(@Nullable String str) {
        this.smallImgUrl = str;
    }

    public final void setVideoUrl(@Nullable String str) {
        this.videoUrl = str;
    }

    @NotNull
    public String toString() {
        return "UploadFileResultBean(videoUrl=" + this.videoUrl + ", bigImgUrl=" + this.bigImgUrl + ", smallImgUrl=" + this.smallImgUrl + ')';
    }
}
