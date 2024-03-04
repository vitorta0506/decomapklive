package com.vk.sdk.api.video.dto;

import androidx.core.app.FrameMetricsAggregator;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003Ju\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000e¨\u0006'"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoVideoFiles;", "", "external", "", "mp4240", "mp4360", "mp4480", "mp4720", "mp41080", "mp41440", "mp42160", "flv320", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getExternal", "()Ljava/lang/String;", "getFlv320", "getMp41080", "getMp41440", "getMp42160", "getMp4240", "getMp4360", "getMp4480", "getMp4720", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoVideoFiles {
    @SerializedName("external")
    @Nullable
    private final String external;
    @SerializedName("flv_320")
    @Nullable
    private final String flv320;
    @SerializedName("mp4_1080")
    @Nullable
    private final String mp41080;
    @SerializedName("mp4_1440")
    @Nullable
    private final String mp41440;
    @SerializedName("mp4_2160")
    @Nullable
    private final String mp42160;
    @SerializedName("mp4_240")
    @Nullable
    private final String mp4240;
    @SerializedName("mp4_360")
    @Nullable
    private final String mp4360;
    @SerializedName("mp4_480")
    @Nullable
    private final String mp4480;
    @SerializedName("mp4_720")
    @Nullable
    private final String mp4720;

    public VideoVideoFiles() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public VideoVideoFiles(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9) {
        this.external = str;
        this.mp4240 = str2;
        this.mp4360 = str3;
        this.mp4480 = str4;
        this.mp4720 = str5;
        this.mp41080 = str6;
        this.mp41440 = str7;
        this.mp42160 = str8;
        this.flv320 = str9;
    }

    @Nullable
    public final String component1() {
        return this.external;
    }

    @Nullable
    public final String component2() {
        return this.mp4240;
    }

    @Nullable
    public final String component3() {
        return this.mp4360;
    }

    @Nullable
    public final String component4() {
        return this.mp4480;
    }

    @Nullable
    public final String component5() {
        return this.mp4720;
    }

    @Nullable
    public final String component6() {
        return this.mp41080;
    }

    @Nullable
    public final String component7() {
        return this.mp41440;
    }

    @Nullable
    public final String component8() {
        return this.mp42160;
    }

    @Nullable
    public final String component9() {
        return this.flv320;
    }

    @NotNull
    public final VideoVideoFiles copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9) {
        return new VideoVideoFiles(str, str2, str3, str4, str5, str6, str7, str8, str9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoVideoFiles) {
            VideoVideoFiles videoVideoFiles = (VideoVideoFiles) obj;
            return Intrinsics.areEqual(this.external, videoVideoFiles.external) && Intrinsics.areEqual(this.mp4240, videoVideoFiles.mp4240) && Intrinsics.areEqual(this.mp4360, videoVideoFiles.mp4360) && Intrinsics.areEqual(this.mp4480, videoVideoFiles.mp4480) && Intrinsics.areEqual(this.mp4720, videoVideoFiles.mp4720) && Intrinsics.areEqual(this.mp41080, videoVideoFiles.mp41080) && Intrinsics.areEqual(this.mp41440, videoVideoFiles.mp41440) && Intrinsics.areEqual(this.mp42160, videoVideoFiles.mp42160) && Intrinsics.areEqual(this.flv320, videoVideoFiles.flv320);
        }
        return false;
    }

    @Nullable
    public final String getExternal() {
        return this.external;
    }

    @Nullable
    public final String getFlv320() {
        return this.flv320;
    }

    @Nullable
    public final String getMp41080() {
        return this.mp41080;
    }

    @Nullable
    public final String getMp41440() {
        return this.mp41440;
    }

    @Nullable
    public final String getMp42160() {
        return this.mp42160;
    }

    @Nullable
    public final String getMp4240() {
        return this.mp4240;
    }

    @Nullable
    public final String getMp4360() {
        return this.mp4360;
    }

    @Nullable
    public final String getMp4480() {
        return this.mp4480;
    }

    @Nullable
    public final String getMp4720() {
        return this.mp4720;
    }

    public int hashCode() {
        String str = this.external;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.mp4240;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.mp4360;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.mp4480;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.mp4720;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.mp41080;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.mp41440;
        int hashCode7 = (hashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.mp42160;
        int hashCode8 = (hashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.flv320;
        return hashCode8 + (str9 != null ? str9.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.external;
        String str2 = this.mp4240;
        String str3 = this.mp4360;
        String str4 = this.mp4480;
        String str5 = this.mp4720;
        String str6 = this.mp41080;
        String str7 = this.mp41440;
        String str8 = this.mp42160;
        String str9 = this.flv320;
        return "VideoVideoFiles(external=" + str + ", mp4240=" + str2 + ", mp4360=" + str3 + ", mp4480=" + str4 + ", mp4720=" + str5 + ", mp41080=" + str6 + ", mp41440=" + str7 + ", mp42160=" + str8 + ", flv320=" + str9 + ")";
    }

    public /* synthetic */ VideoVideoFiles(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : str3, (i9 & 8) != 0 ? null : str4, (i9 & 16) != 0 ? null : str5, (i9 & 32) != 0 ? null : str6, (i9 & 64) != 0 ? null : str7, (i9 & 128) != 0 ? null : str8, (i9 & 256) == 0 ? str9 : null);
    }
}
