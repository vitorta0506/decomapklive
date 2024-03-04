package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class VideoInfo implements Serializable {
    @SerializedName("aspect_ratio")
    public final List<Integer> aspectRatio;
    @SerializedName("duration_millis")
    public final long durationMillis;
    @SerializedName("variants")
    public final List<Variant> variants;

    /* loaded from: classes4.dex */
    public static class Variant implements Serializable {
        @SerializedName("bitrate")
        public final long bitrate;
        @SerializedName(EventTrackingUtils.CONTENT_TYPE)
        public final String contentType;
        @SerializedName("url")
        public final String url;

        public Variant(long j10, String str, String str2) {
            this.bitrate = j10;
            this.contentType = str;
            this.url = str2;
        }
    }

    private VideoInfo() {
        this(null, 0L, null);
    }

    public VideoInfo(List<Integer> list, long j10, List<Variant> list2) {
        this.aspectRatio = j.a(list);
        this.durationMillis = j10;
        this.variants = j.a(list2);
    }
}
