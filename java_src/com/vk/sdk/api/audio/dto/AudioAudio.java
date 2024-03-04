package com.vk.sdk.api.audio.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bu\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0010J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\t\u0010%\u001a\u00020\u0007HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0005HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010+\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0088\u0001\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00101\u001a\u00020\u0005HÖ\u0001J\t\u00102\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0017\u0010\u0014R\u0016\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001a\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0012R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0012R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0012¨\u00063"}, d2 = {"Lcom/vk/sdk/api/audio/dto/AudioAudio;", "", "artist", "", "id", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "title", "duration", "accessKey", "url", "date", "albumId", "genreId", "performer", "(Ljava/lang/String;ILcom/vk/dto/common/id/UserId;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getAccessKey", "()Ljava/lang/String;", "getAlbumId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getArtist", "getDate", "getDuration", "()I", "getGenreId", "getId", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPerformer", "getTitle", "getUrl", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;ILcom/vk/dto/common/id/UserId;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/audio/dto/AudioAudio;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AudioAudio {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("album_id")
    @Nullable
    private final Integer albumId;
    @SerializedName("artist")
    @NotNull
    private final String artist;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("duration")
    private final int duration;
    @SerializedName("genre_id")
    @Nullable
    private final Integer genreId;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35732id;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("performer")
    @Nullable
    private final String performer;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("url")
    @Nullable
    private final String url;

    public AudioAudio(@NotNull String artist, int i9, @NotNull UserId ownerId, @NotNull String title, int i10, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(artist, "artist");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        this.artist = artist;
        this.f35732id = i9;
        this.ownerId = ownerId;
        this.title = title;
        this.duration = i10;
        this.accessKey = str;
        this.url = str2;
        this.date = num;
        this.albumId = num2;
        this.genreId = num3;
        this.performer = str3;
    }

    @NotNull
    public final String component1() {
        return this.artist;
    }

    @Nullable
    public final Integer component10() {
        return this.genreId;
    }

    @Nullable
    public final String component11() {
        return this.performer;
    }

    public final int component2() {
        return this.f35732id;
    }

    @NotNull
    public final UserId component3() {
        return this.ownerId;
    }

    @NotNull
    public final String component4() {
        return this.title;
    }

    public final int component5() {
        return this.duration;
    }

    @Nullable
    public final String component6() {
        return this.accessKey;
    }

    @Nullable
    public final String component7() {
        return this.url;
    }

    @Nullable
    public final Integer component8() {
        return this.date;
    }

    @Nullable
    public final Integer component9() {
        return this.albumId;
    }

    @NotNull
    public final AudioAudio copy(@NotNull String artist, int i9, @NotNull UserId ownerId, @NotNull String title, int i10, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(artist, "artist");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        return new AudioAudio(artist, i9, ownerId, title, i10, str, str2, num, num2, num3, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AudioAudio) {
            AudioAudio audioAudio = (AudioAudio) obj;
            return Intrinsics.areEqual(this.artist, audioAudio.artist) && this.f35732id == audioAudio.f35732id && Intrinsics.areEqual(this.ownerId, audioAudio.ownerId) && Intrinsics.areEqual(this.title, audioAudio.title) && this.duration == audioAudio.duration && Intrinsics.areEqual(this.accessKey, audioAudio.accessKey) && Intrinsics.areEqual(this.url, audioAudio.url) && Intrinsics.areEqual(this.date, audioAudio.date) && Intrinsics.areEqual(this.albumId, audioAudio.albumId) && Intrinsics.areEqual(this.genreId, audioAudio.genreId) && Intrinsics.areEqual(this.performer, audioAudio.performer);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final Integer getAlbumId() {
        return this.albumId;
    }

    @NotNull
    public final String getArtist() {
        return this.artist;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    public final int getDuration() {
        return this.duration;
    }

    @Nullable
    public final Integer getGenreId() {
        return this.genreId;
    }

    public final int getId() {
        return this.f35732id;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final String getPerformer() {
        return this.performer;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = ((((((((this.artist.hashCode() * 31) + this.f35732id) * 31) + this.ownerId.hashCode()) * 31) + this.title.hashCode()) * 31) + this.duration) * 31;
        String str = this.accessKey;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.url;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.date;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.albumId;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.genreId;
        int hashCode6 = (hashCode5 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str3 = this.performer;
        return hashCode6 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.artist;
        int i9 = this.f35732id;
        UserId userId = this.ownerId;
        String str2 = this.title;
        int i10 = this.duration;
        String str3 = this.accessKey;
        String str4 = this.url;
        Integer num = this.date;
        Integer num2 = this.albumId;
        Integer num3 = this.genreId;
        String str5 = this.performer;
        return "AudioAudio(artist=" + str + ", id=" + i9 + ", ownerId=" + userId + ", title=" + str2 + ", duration=" + i10 + ", accessKey=" + str3 + ", url=" + str4 + ", date=" + num + ", albumId=" + num2 + ", genreId=" + num3 + ", performer=" + str5 + ")";
    }

    public /* synthetic */ AudioAudio(String str, int i9, UserId userId, String str2, int i10, String str3, String str4, Integer num, Integer num2, Integer num3, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i9, userId, str2, i10, (i11 & 32) != 0 ? null : str3, (i11 & 64) != 0 ? null : str4, (i11 & 128) != 0 ? null : num, (i11 & 256) != 0 ? null : num2, (i11 & 512) != 0 ? null : num3, (i11 & 1024) != 0 ? null : str5);
    }
}
