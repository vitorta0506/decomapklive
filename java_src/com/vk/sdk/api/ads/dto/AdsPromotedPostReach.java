package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b3\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0095\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0012J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001eJ\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J°\u0001\u00104\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00105J\u0013\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00109\u001a\u00020\u0003HÖ\u0001J\t\u0010:\u001a\u00020;HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0014R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0014R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b \u0010\u001eR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b!\u0010\u001eR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\"\u0010\u001eR\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b#\u0010\u001eR\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b$\u0010\u001e¨\u0006<"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsPromotedPostReach;", "", "hide", "", "id", "joinGroup", "links", "reachSubscribers", "reachTotal", "report", "toGroup", "unsubscribe", "videoViews100p", "videoViews25p", "videoViews3s", "videoViews50p", "videoViews75p", "videoViewsStart", "(IIIIIIIIILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getHide", "()I", "getId", "getJoinGroup", "getLinks", "getReachSubscribers", "getReachTotal", "getReport", "getToGroup", "getUnsubscribe", "getVideoViews100p", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getVideoViews25p", "getVideoViews3s", "getVideoViews50p", "getVideoViews75p", "getVideoViewsStart", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIIIIIIIILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/ads/dto/AdsPromotedPostReach;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsPromotedPostReach {
    @SerializedName("hide")
    private final int hide;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35675id;
    @SerializedName("join_group")
    private final int joinGroup;
    @SerializedName("links")
    private final int links;
    @SerializedName("reach_subscribers")
    private final int reachSubscribers;
    @SerializedName("reach_total")
    private final int reachTotal;
    @SerializedName("report")
    private final int report;
    @SerializedName("to_group")
    private final int toGroup;
    @SerializedName("unsubscribe")
    private final int unsubscribe;
    @SerializedName("video_views_100p")
    @Nullable
    private final Integer videoViews100p;
    @SerializedName("video_views_25p")
    @Nullable
    private final Integer videoViews25p;
    @SerializedName("video_views_3s")
    @Nullable
    private final Integer videoViews3s;
    @SerializedName("video_views_50p")
    @Nullable
    private final Integer videoViews50p;
    @SerializedName("video_views_75p")
    @Nullable
    private final Integer videoViews75p;
    @SerializedName("video_views_start")
    @Nullable
    private final Integer videoViewsStart;

    public AdsPromotedPostReach(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6) {
        this.hide = i9;
        this.f35675id = i10;
        this.joinGroup = i11;
        this.links = i12;
        this.reachSubscribers = i13;
        this.reachTotal = i14;
        this.report = i15;
        this.toGroup = i16;
        this.unsubscribe = i17;
        this.videoViews100p = num;
        this.videoViews25p = num2;
        this.videoViews3s = num3;
        this.videoViews50p = num4;
        this.videoViews75p = num5;
        this.videoViewsStart = num6;
    }

    public final int component1() {
        return this.hide;
    }

    @Nullable
    public final Integer component10() {
        return this.videoViews100p;
    }

    @Nullable
    public final Integer component11() {
        return this.videoViews25p;
    }

    @Nullable
    public final Integer component12() {
        return this.videoViews3s;
    }

    @Nullable
    public final Integer component13() {
        return this.videoViews50p;
    }

    @Nullable
    public final Integer component14() {
        return this.videoViews75p;
    }

    @Nullable
    public final Integer component15() {
        return this.videoViewsStart;
    }

    public final int component2() {
        return this.f35675id;
    }

    public final int component3() {
        return this.joinGroup;
    }

    public final int component4() {
        return this.links;
    }

    public final int component5() {
        return this.reachSubscribers;
    }

    public final int component6() {
        return this.reachTotal;
    }

    public final int component7() {
        return this.report;
    }

    public final int component8() {
        return this.toGroup;
    }

    public final int component9() {
        return this.unsubscribe;
    }

    @NotNull
    public final AdsPromotedPostReach copy(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6) {
        return new AdsPromotedPostReach(i9, i10, i11, i12, i13, i14, i15, i16, i17, num, num2, num3, num4, num5, num6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsPromotedPostReach) {
            AdsPromotedPostReach adsPromotedPostReach = (AdsPromotedPostReach) obj;
            return this.hide == adsPromotedPostReach.hide && this.f35675id == adsPromotedPostReach.f35675id && this.joinGroup == adsPromotedPostReach.joinGroup && this.links == adsPromotedPostReach.links && this.reachSubscribers == adsPromotedPostReach.reachSubscribers && this.reachTotal == adsPromotedPostReach.reachTotal && this.report == adsPromotedPostReach.report && this.toGroup == adsPromotedPostReach.toGroup && this.unsubscribe == adsPromotedPostReach.unsubscribe && Intrinsics.areEqual(this.videoViews100p, adsPromotedPostReach.videoViews100p) && Intrinsics.areEqual(this.videoViews25p, adsPromotedPostReach.videoViews25p) && Intrinsics.areEqual(this.videoViews3s, adsPromotedPostReach.videoViews3s) && Intrinsics.areEqual(this.videoViews50p, adsPromotedPostReach.videoViews50p) && Intrinsics.areEqual(this.videoViews75p, adsPromotedPostReach.videoViews75p) && Intrinsics.areEqual(this.videoViewsStart, adsPromotedPostReach.videoViewsStart);
        }
        return false;
    }

    public final int getHide() {
        return this.hide;
    }

    public final int getId() {
        return this.f35675id;
    }

    public final int getJoinGroup() {
        return this.joinGroup;
    }

    public final int getLinks() {
        return this.links;
    }

    public final int getReachSubscribers() {
        return this.reachSubscribers;
    }

    public final int getReachTotal() {
        return this.reachTotal;
    }

    public final int getReport() {
        return this.report;
    }

    public final int getToGroup() {
        return this.toGroup;
    }

    public final int getUnsubscribe() {
        return this.unsubscribe;
    }

    @Nullable
    public final Integer getVideoViews100p() {
        return this.videoViews100p;
    }

    @Nullable
    public final Integer getVideoViews25p() {
        return this.videoViews25p;
    }

    @Nullable
    public final Integer getVideoViews3s() {
        return this.videoViews3s;
    }

    @Nullable
    public final Integer getVideoViews50p() {
        return this.videoViews50p;
    }

    @Nullable
    public final Integer getVideoViews75p() {
        return this.videoViews75p;
    }

    @Nullable
    public final Integer getVideoViewsStart() {
        return this.videoViewsStart;
    }

    public int hashCode() {
        int i9 = ((((((((((((((((this.hide * 31) + this.f35675id) * 31) + this.joinGroup) * 31) + this.links) * 31) + this.reachSubscribers) * 31) + this.reachTotal) * 31) + this.report) * 31) + this.toGroup) * 31) + this.unsubscribe) * 31;
        Integer num = this.videoViews100p;
        int hashCode = (i9 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.videoViews25p;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.videoViews3s;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.videoViews50p;
        int hashCode4 = (hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.videoViews75p;
        int hashCode5 = (hashCode4 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.videoViewsStart;
        return hashCode5 + (num6 != null ? num6.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.hide;
        int i10 = this.f35675id;
        int i11 = this.joinGroup;
        int i12 = this.links;
        int i13 = this.reachSubscribers;
        int i14 = this.reachTotal;
        int i15 = this.report;
        int i16 = this.toGroup;
        int i17 = this.unsubscribe;
        Integer num = this.videoViews100p;
        Integer num2 = this.videoViews25p;
        Integer num3 = this.videoViews3s;
        Integer num4 = this.videoViews50p;
        Integer num5 = this.videoViews75p;
        Integer num6 = this.videoViewsStart;
        return "AdsPromotedPostReach(hide=" + i9 + ", id=" + i10 + ", joinGroup=" + i11 + ", links=" + i12 + ", reachSubscribers=" + i13 + ", reachTotal=" + i14 + ", report=" + i15 + ", toGroup=" + i16 + ", unsubscribe=" + i17 + ", videoViews100p=" + num + ", videoViews25p=" + num2 + ", videoViews3s=" + num3 + ", videoViews50p=" + num4 + ", videoViews75p=" + num5 + ", videoViewsStart=" + num6 + ")";
    }

    public /* synthetic */ AdsPromotedPostReach(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, int i18, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, i12, i13, i14, i15, i16, i17, (i18 & 512) != 0 ? null : num, (i18 & 1024) != 0 ? null : num2, (i18 & 2048) != 0 ? null : num3, (i18 & 4096) != 0 ? null : num4, (i18 & 8192) != 0 ? null : num5, (i18 & 16384) != 0 ? null : num6);
    }
}
