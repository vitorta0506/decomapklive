package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0014HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0014HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006 "}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/HelloLiveInvite;", "Landroid/os/Parcelable;", "liveId", "", "content", "contentEnd", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "getContentEnd", "setContentEnd", "getLiveId", "setLiveId", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HelloLiveInvite implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<HelloLiveInvite> CREATOR = new Creator();
    @NotNull
    private String content;
    @NotNull
    private String contentEnd;
    @NotNull
    private String liveId;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<HelloLiveInvite> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final HelloLiveInvite createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new HelloLiveInvite(parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final HelloLiveInvite[] newArray(int i9) {
            return new HelloLiveInvite[i9];
        }
    }

    public HelloLiveInvite() {
        this(null, null, null, 7, null);
    }

    public HelloLiveInvite(@NotNull String liveId, @NotNull String content, @NotNull String contentEnd) {
        Intrinsics.checkNotNullParameter(liveId, "liveId");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(contentEnd, "contentEnd");
        this.liveId = liveId;
        this.content = content;
        this.contentEnd = contentEnd;
    }

    public static /* synthetic */ HelloLiveInvite copy$default(HelloLiveInvite helloLiveInvite, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = helloLiveInvite.liveId;
        }
        if ((i9 & 2) != 0) {
            str2 = helloLiveInvite.content;
        }
        if ((i9 & 4) != 0) {
            str3 = helloLiveInvite.contentEnd;
        }
        return helloLiveInvite.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.liveId;
    }

    @NotNull
    public final String component2() {
        return this.content;
    }

    @NotNull
    public final String component3() {
        return this.contentEnd;
    }

    @NotNull
    public final HelloLiveInvite copy(@NotNull String liveId, @NotNull String content, @NotNull String contentEnd) {
        Intrinsics.checkNotNullParameter(liveId, "liveId");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(contentEnd, "contentEnd");
        return new HelloLiveInvite(liveId, content, contentEnd);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HelloLiveInvite) {
            HelloLiveInvite helloLiveInvite = (HelloLiveInvite) obj;
            return Intrinsics.areEqual(this.liveId, helloLiveInvite.liveId) && Intrinsics.areEqual(this.content, helloLiveInvite.content) && Intrinsics.areEqual(this.contentEnd, helloLiveInvite.contentEnd);
        }
        return false;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final String getContentEnd() {
        return this.contentEnd;
    }

    @NotNull
    public final String getLiveId() {
        return this.liveId;
    }

    public int hashCode() {
        return (((this.liveId.hashCode() * 31) + this.content.hashCode()) * 31) + this.contentEnd.hashCode();
    }

    public final void setContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.content = str;
    }

    public final void setContentEnd(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentEnd = str;
    }

    public final void setLiveId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.liveId = str;
    }

    @NotNull
    public String toString() {
        return "HelloLiveInvite(liveId=" + this.liveId + ", content=" + this.content + ", contentEnd=" + this.contentEnd + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.liveId);
        out.writeString(this.content);
        out.writeString(this.contentEnd);
    }

    public /* synthetic */ HelloLiveInvite(String str, String str2, String str3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? "" : str, (i9 & 2) != 0 ? "" : str2, (i9 & 4) != 0 ? "" : str3);
    }
}
