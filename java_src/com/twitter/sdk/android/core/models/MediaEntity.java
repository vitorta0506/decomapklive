package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class MediaEntity extends UrlEntity {
    @SerializedName("ext_alt_text")
    public final String altText;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    public final long f35214id;
    @SerializedName("id_str")
    public final String idStr;
    @SerializedName("media_url")
    public final String mediaUrl;
    @SerializedName("media_url_https")
    public final String mediaUrlHttps;
    @SerializedName("sizes")
    public final Sizes sizes;
    @SerializedName("source_status_id")
    public final long sourceStatusId;
    @SerializedName("source_status_id_str")
    public final String sourceStatusIdStr;
    @SerializedName("type")
    public final String type;
    @SerializedName("video_info")
    public final VideoInfo videoInfo;

    /* loaded from: classes4.dex */
    public static class Size implements Serializable {
        @SerializedName("h")

        /* renamed from: h  reason: collision with root package name */
        public final int f35215h;
        @SerializedName("resize")
        public final String resize;
        @SerializedName("w")

        /* renamed from: w  reason: collision with root package name */
        public final int f35216w;

        public Size(int i9, int i10, String str) {
            this.f35216w = i9;
            this.f35215h = i10;
            this.resize = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class Sizes implements Serializable {
        @SerializedName("large")
        public final Size large;
        @SerializedName("medium")
        public final Size medium;
        @SerializedName("small")
        public final Size small;
        @SerializedName("thumb")
        public final Size thumb;

        public Sizes(Size size, Size size2, Size size3, Size size4) {
            this.thumb = size;
            this.small = size2;
            this.medium = size3;
            this.large = size4;
        }
    }

    public MediaEntity(String str, String str2, String str3, int i9, int i10, long j10, String str4, String str5, String str6, Sizes sizes, long j11, String str7, String str8, VideoInfo videoInfo, String str9) {
        super(str, str2, str3, i9, i10);
        this.f35214id = j10;
        this.idStr = str4;
        this.mediaUrl = str5;
        this.mediaUrlHttps = str6;
        this.sizes = sizes;
        this.sourceStatusId = j11;
        this.sourceStatusIdStr = str7;
        this.type = str8;
        this.videoInfo = videoInfo;
        this.altText = str9;
    }
}
