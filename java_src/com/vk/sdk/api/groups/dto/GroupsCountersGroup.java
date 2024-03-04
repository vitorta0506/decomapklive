package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b2\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B¹\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014JÂ\u0001\u00103\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00104J\u0013\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00108\u001a\u00020\u0003HÖ\u0001J\t\u00109\u001a\u00020:HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0016\u0010\u0014R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0017\u0010\u0014R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0018\u0010\u0014R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0019\u0010\u0014R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001a\u0010\u0014R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001b\u0010\u0014R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001c\u0010\u0014R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001d\u0010\u0014R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001e\u0010\u0014R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001f\u0010\u0014R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b \u0010\u0014R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b!\u0010\u0014R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\"\u0010\u0014R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b#\u0010\u0014¨\u0006;"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsCountersGroup;", "", "addresses", "", "albums", "audios", "audioPlaylists", "docs", "market", "photos", "topics", "videos", "marketServices", "podcasts", "articles", "narratives", "clips", "clipsFollowers", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getAddresses", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAlbums", "getArticles", "getAudioPlaylists", "getAudios", "getClips", "getClipsFollowers", "getDocs", "getMarket", "getMarketServices", "getNarratives", "getPhotos", "getPodcasts", "getTopics", "getVideos", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/groups/dto/GroupsCountersGroup;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsCountersGroup {
    @SerializedName("addresses")
    @Nullable
    private final Integer addresses;
    @SerializedName("albums")
    @Nullable
    private final Integer albums;
    @SerializedName("articles")
    @Nullable
    private final Integer articles;
    @SerializedName("audio_playlists")
    @Nullable
    private final Integer audioPlaylists;
    @SerializedName("audios")
    @Nullable
    private final Integer audios;
    @SerializedName("clips")
    @Nullable
    private final Integer clips;
    @SerializedName("clips_followers")
    @Nullable
    private final Integer clipsFollowers;
    @SerializedName("docs")
    @Nullable
    private final Integer docs;
    @SerializedName("market")
    @Nullable
    private final Integer market;
    @SerializedName("market_services")
    @Nullable
    private final Integer marketServices;
    @SerializedName("narratives")
    @Nullable
    private final Integer narratives;
    @SerializedName("photos")
    @Nullable
    private final Integer photos;
    @SerializedName("podcasts")
    @Nullable
    private final Integer podcasts;
    @SerializedName("topics")
    @Nullable
    private final Integer topics;
    @SerializedName("videos")
    @Nullable
    private final Integer videos;

    public GroupsCountersGroup() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
    }

    public GroupsCountersGroup(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Integer num11, @Nullable Integer num12, @Nullable Integer num13, @Nullable Integer num14, @Nullable Integer num15) {
        this.addresses = num;
        this.albums = num2;
        this.audios = num3;
        this.audioPlaylists = num4;
        this.docs = num5;
        this.market = num6;
        this.photos = num7;
        this.topics = num8;
        this.videos = num9;
        this.marketServices = num10;
        this.podcasts = num11;
        this.articles = num12;
        this.narratives = num13;
        this.clips = num14;
        this.clipsFollowers = num15;
    }

    @Nullable
    public final Integer component1() {
        return this.addresses;
    }

    @Nullable
    public final Integer component10() {
        return this.marketServices;
    }

    @Nullable
    public final Integer component11() {
        return this.podcasts;
    }

    @Nullable
    public final Integer component12() {
        return this.articles;
    }

    @Nullable
    public final Integer component13() {
        return this.narratives;
    }

    @Nullable
    public final Integer component14() {
        return this.clips;
    }

    @Nullable
    public final Integer component15() {
        return this.clipsFollowers;
    }

    @Nullable
    public final Integer component2() {
        return this.albums;
    }

    @Nullable
    public final Integer component3() {
        return this.audios;
    }

    @Nullable
    public final Integer component4() {
        return this.audioPlaylists;
    }

    @Nullable
    public final Integer component5() {
        return this.docs;
    }

    @Nullable
    public final Integer component6() {
        return this.market;
    }

    @Nullable
    public final Integer component7() {
        return this.photos;
    }

    @Nullable
    public final Integer component8() {
        return this.topics;
    }

    @Nullable
    public final Integer component9() {
        return this.videos;
    }

    @NotNull
    public final GroupsCountersGroup copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Integer num11, @Nullable Integer num12, @Nullable Integer num13, @Nullable Integer num14, @Nullable Integer num15) {
        return new GroupsCountersGroup(num, num2, num3, num4, num5, num6, num7, num8, num9, num10, num11, num12, num13, num14, num15);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsCountersGroup) {
            GroupsCountersGroup groupsCountersGroup = (GroupsCountersGroup) obj;
            return Intrinsics.areEqual(this.addresses, groupsCountersGroup.addresses) && Intrinsics.areEqual(this.albums, groupsCountersGroup.albums) && Intrinsics.areEqual(this.audios, groupsCountersGroup.audios) && Intrinsics.areEqual(this.audioPlaylists, groupsCountersGroup.audioPlaylists) && Intrinsics.areEqual(this.docs, groupsCountersGroup.docs) && Intrinsics.areEqual(this.market, groupsCountersGroup.market) && Intrinsics.areEqual(this.photos, groupsCountersGroup.photos) && Intrinsics.areEqual(this.topics, groupsCountersGroup.topics) && Intrinsics.areEqual(this.videos, groupsCountersGroup.videos) && Intrinsics.areEqual(this.marketServices, groupsCountersGroup.marketServices) && Intrinsics.areEqual(this.podcasts, groupsCountersGroup.podcasts) && Intrinsics.areEqual(this.articles, groupsCountersGroup.articles) && Intrinsics.areEqual(this.narratives, groupsCountersGroup.narratives) && Intrinsics.areEqual(this.clips, groupsCountersGroup.clips) && Intrinsics.areEqual(this.clipsFollowers, groupsCountersGroup.clipsFollowers);
        }
        return false;
    }

    @Nullable
    public final Integer getAddresses() {
        return this.addresses;
    }

    @Nullable
    public final Integer getAlbums() {
        return this.albums;
    }

    @Nullable
    public final Integer getArticles() {
        return this.articles;
    }

    @Nullable
    public final Integer getAudioPlaylists() {
        return this.audioPlaylists;
    }

    @Nullable
    public final Integer getAudios() {
        return this.audios;
    }

    @Nullable
    public final Integer getClips() {
        return this.clips;
    }

    @Nullable
    public final Integer getClipsFollowers() {
        return this.clipsFollowers;
    }

    @Nullable
    public final Integer getDocs() {
        return this.docs;
    }

    @Nullable
    public final Integer getMarket() {
        return this.market;
    }

    @Nullable
    public final Integer getMarketServices() {
        return this.marketServices;
    }

    @Nullable
    public final Integer getNarratives() {
        return this.narratives;
    }

    @Nullable
    public final Integer getPhotos() {
        return this.photos;
    }

    @Nullable
    public final Integer getPodcasts() {
        return this.podcasts;
    }

    @Nullable
    public final Integer getTopics() {
        return this.topics;
    }

    @Nullable
    public final Integer getVideos() {
        return this.videos;
    }

    public int hashCode() {
        Integer num = this.addresses;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.albums;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.audios;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.audioPlaylists;
        int hashCode4 = (hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.docs;
        int hashCode5 = (hashCode4 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.market;
        int hashCode6 = (hashCode5 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.photos;
        int hashCode7 = (hashCode6 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.topics;
        int hashCode8 = (hashCode7 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.videos;
        int hashCode9 = (hashCode8 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.marketServices;
        int hashCode10 = (hashCode9 + (num10 == null ? 0 : num10.hashCode())) * 31;
        Integer num11 = this.podcasts;
        int hashCode11 = (hashCode10 + (num11 == null ? 0 : num11.hashCode())) * 31;
        Integer num12 = this.articles;
        int hashCode12 = (hashCode11 + (num12 == null ? 0 : num12.hashCode())) * 31;
        Integer num13 = this.narratives;
        int hashCode13 = (hashCode12 + (num13 == null ? 0 : num13.hashCode())) * 31;
        Integer num14 = this.clips;
        int hashCode14 = (hashCode13 + (num14 == null ? 0 : num14.hashCode())) * 31;
        Integer num15 = this.clipsFollowers;
        return hashCode14 + (num15 != null ? num15.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.addresses;
        Integer num2 = this.albums;
        Integer num3 = this.audios;
        Integer num4 = this.audioPlaylists;
        Integer num5 = this.docs;
        Integer num6 = this.market;
        Integer num7 = this.photos;
        Integer num8 = this.topics;
        Integer num9 = this.videos;
        Integer num10 = this.marketServices;
        Integer num11 = this.podcasts;
        Integer num12 = this.articles;
        Integer num13 = this.narratives;
        Integer num14 = this.clips;
        Integer num15 = this.clipsFollowers;
        return "GroupsCountersGroup(addresses=" + num + ", albums=" + num2 + ", audios=" + num3 + ", audioPlaylists=" + num4 + ", docs=" + num5 + ", market=" + num6 + ", photos=" + num7 + ", topics=" + num8 + ", videos=" + num9 + ", marketServices=" + num10 + ", podcasts=" + num11 + ", articles=" + num12 + ", narratives=" + num13 + ", clips=" + num14 + ", clipsFollowers=" + num15 + ")";
    }

    public /* synthetic */ GroupsCountersGroup(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, Integer num12, Integer num13, Integer num14, Integer num15, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3, (i9 & 8) != 0 ? null : num4, (i9 & 16) != 0 ? null : num5, (i9 & 32) != 0 ? null : num6, (i9 & 64) != 0 ? null : num7, (i9 & 128) != 0 ? null : num8, (i9 & 256) != 0 ? null : num9, (i9 & 512) != 0 ? null : num10, (i9 & 1024) != 0 ? null : num11, (i9 & 2048) != 0 ? null : num12, (i9 & 4096) != 0 ? null : num13, (i9 & 8192) != 0 ? null : num14, (i9 & 16384) == 0 ? num15 : null);
    }
}
