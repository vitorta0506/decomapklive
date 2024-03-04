package com.guochao.component.mvp.model;

import b7.b;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b%\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0006HÆ\u0003J\t\u0010*\u001a\u00020\u0006HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\fHÆ\u0003J`\u0010/\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001¢\u0006\u0002\u00100J\u0013\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00104\u001a\u00020\u0003HÖ\u0001J\t\u00105\u001a\u00020\fHÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000f\"\u0004\b\u001c\u0010\u0011R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0018\"\u0004\b\"\u0010\u001aR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0018\"\u0004\b$\u0010\u001aR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0018\"\u0004\b&\u0010\u001a¨\u00066"}, d2 = {"Lcom/guochao/component/mvp/model/MvpBagBean;", "", "id", "", Contants.USER_ID, "startTime", "", "expireTime", "used", "valid", "received", "url", "", "(Ljava/lang/Integer;IJJIIILjava/lang/String;)V", "getExpireTime", "()J", "setExpireTime", "(J)V", "getId", "()Ljava/lang/Integer;", "setId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getReceived", "()I", "setReceived", "(I)V", "getStartTime", "setStartTime", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getUsed", "setUsed", "getUserId", "setUserId", "getValid", "setValid", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/Integer;IJJIIILjava/lang/String;)Lcom/guochao/component/mvp/model/MvpBagBean;", "equals", "", "other", "hashCode", "toString", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MvpBagBean {
    private long expireTime;
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private Integer f15902id;
    private int received;
    private long startTime;
    @NotNull
    private String url;
    private int used;
    private int userId;
    private int valid;

    public MvpBagBean() {
        this(null, 0, 0L, 0L, 0, 0, 0, null, 255, null);
    }

    public MvpBagBean(@Nullable Integer num, int i9, long j10, long j11, int i10, int i11, int i12, @NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f15902id = num;
        this.userId = i9;
        this.startTime = j10;
        this.expireTime = j11;
        this.used = i10;
        this.valid = i11;
        this.received = i12;
        this.url = url;
    }

    @Nullable
    public final Integer component1() {
        return this.f15902id;
    }

    public final int component2() {
        return this.userId;
    }

    public final long component3() {
        return this.startTime;
    }

    public final long component4() {
        return this.expireTime;
    }

    public final int component5() {
        return this.used;
    }

    public final int component6() {
        return this.valid;
    }

    public final int component7() {
        return this.received;
    }

    @NotNull
    public final String component8() {
        return this.url;
    }

    @NotNull
    public final MvpBagBean copy(@Nullable Integer num, int i9, long j10, long j11, int i10, int i11, int i12, @NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new MvpBagBean(num, i9, j10, j11, i10, i11, i12, url);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MvpBagBean) {
            MvpBagBean mvpBagBean = (MvpBagBean) obj;
            return Intrinsics.areEqual(this.f15902id, mvpBagBean.f15902id) && this.userId == mvpBagBean.userId && this.startTime == mvpBagBean.startTime && this.expireTime == mvpBagBean.expireTime && this.used == mvpBagBean.used && this.valid == mvpBagBean.valid && this.received == mvpBagBean.received && Intrinsics.areEqual(this.url, mvpBagBean.url);
        }
        return false;
    }

    public final long getExpireTime() {
        return this.expireTime;
    }

    @Nullable
    public final Integer getId() {
        return this.f15902id;
    }

    public final int getReceived() {
        return this.received;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public final int getUsed() {
        return this.used;
    }

    public final int getUserId() {
        return this.userId;
    }

    public final int getValid() {
        return this.valid;
    }

    public int hashCode() {
        Integer num = this.f15902id;
        return ((((((((((((((num == null ? 0 : num.hashCode()) * 31) + this.userId) * 31) + b.a(this.startTime)) * 31) + b.a(this.expireTime)) * 31) + this.used) * 31) + this.valid) * 31) + this.received) * 31) + this.url.hashCode();
    }

    public final void setExpireTime(long j10) {
        this.expireTime = j10;
    }

    public final void setId(@Nullable Integer num) {
        this.f15902id = num;
    }

    public final void setReceived(int i9) {
        this.received = i9;
    }

    public final void setStartTime(long j10) {
        this.startTime = j10;
    }

    public final void setUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }

    public final void setUsed(int i9) {
        this.used = i9;
    }

    public final void setUserId(int i9) {
        this.userId = i9;
    }

    public final void setValid(int i9) {
        this.valid = i9;
    }

    @NotNull
    public String toString() {
        return "MvpBagBean(id=" + this.f15902id + ", userId=" + this.userId + ", startTime=" + this.startTime + ", expireTime=" + this.expireTime + ", used=" + this.used + ", valid=" + this.valid + ", received=" + this.received + ", url=" + this.url + ')';
    }

    public /* synthetic */ MvpBagBean(Integer num, int i9, long j10, long j11, int i10, int i11, int i12, String str, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : num, (i13 & 2) != 0 ? 0 : i9, (i13 & 4) != 0 ? 0L : j10, (i13 & 8) == 0 ? j11 : 0L, (i13 & 16) != 0 ? 0 : i10, (i13 & 32) != 0 ? 0 : i11, (i13 & 64) == 0 ? i12 : 0, (i13 & 128) != 0 ? "" : str);
    }
}
