package com.vk.sdk.api.users.dto;

import androidx.core.view.ViewCompat;
import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\bM\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B¥\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010G\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010H\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010I\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010J\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010K\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010L\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010M\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ®\u0002\u0010N\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010OJ\u0013\u0010P\u001a\u00020Q2\b\u0010R\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010S\u001a\u00020\u0003HÖ\u0001J\t\u0010T\u001a\u00020UHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001f\u0010\u001dR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b \u0010\u001dR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b!\u0010\u001dR\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\"\u0010\u001dR\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b#\u0010\u001dR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b$\u0010\u001dR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b%\u0010\u001dR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b&\u0010\u001dR\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b'\u0010\u001dR\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b(\u0010\u001dR\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b)\u0010\u001dR\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b*\u0010\u001dR\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b+\u0010\u001dR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b,\u0010\u001dR\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b-\u0010\u001dR\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b.\u0010\u001dR\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b/\u0010\u001dR\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b0\u0010\u001dR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b1\u0010\u001dR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b2\u0010\u001dR\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b3\u0010\u001dR\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b4\u0010\u001dR\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b5\u0010\u001d¨\u0006V"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersUserCounters;", "", "albums", "", "badges", "audios", "followers", NativeProtocol.AUDIENCE_FRIENDS, "gifts", "groups", "notes", "onlineFriends", "pages", "photos", "subscriptions", "userPhotos", "userVideos", "videos", "newPhotoTags", "newRecognitionTags", "mutualFriends", "posts", "articles", "wishes", "podcasts", "clips", "clipsFollowers", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getAlbums", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getArticles", "getAudios", "getBadges", "getClips", "getClipsFollowers", "getFollowers", "getFriends", "getGifts", "getGroups", "getMutualFriends", "getNewPhotoTags", "getNewRecognitionTags", "getNotes", "getOnlineFriends", "getPages", "getPhotos", "getPodcasts", "getPosts", "getSubscriptions", "getUserPhotos", "getUserVideos", "getVideos", "getWishes", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/users/dto/UsersUserCounters;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersUserCounters {
    @SerializedName("albums")
    @Nullable
    private final Integer albums;
    @SerializedName("articles")
    @Nullable
    private final Integer articles;
    @SerializedName("audios")
    @Nullable
    private final Integer audios;
    @SerializedName("badges")
    @Nullable
    private final Integer badges;
    @SerializedName("clips")
    @Nullable
    private final Integer clips;
    @SerializedName("clips_followers")
    @Nullable
    private final Integer clipsFollowers;
    @SerializedName("followers")
    @Nullable
    private final Integer followers;
    @SerializedName(NativeProtocol.AUDIENCE_FRIENDS)
    @Nullable
    private final Integer friends;
    @SerializedName("gifts")
    @Nullable
    private final Integer gifts;
    @SerializedName("groups")
    @Nullable
    private final Integer groups;
    @SerializedName("mutual_friends")
    @Nullable
    private final Integer mutualFriends;
    @SerializedName("new_photo_tags")
    @Nullable
    private final Integer newPhotoTags;
    @SerializedName("new_recognition_tags")
    @Nullable
    private final Integer newRecognitionTags;
    @SerializedName("notes")
    @Nullable
    private final Integer notes;
    @SerializedName("online_friends")
    @Nullable
    private final Integer onlineFriends;
    @SerializedName("pages")
    @Nullable
    private final Integer pages;
    @SerializedName("photos")
    @Nullable
    private final Integer photos;
    @SerializedName("podcasts")
    @Nullable
    private final Integer podcasts;
    @SerializedName("posts")
    @Nullable
    private final Integer posts;
    @SerializedName("subscriptions")
    @Nullable
    private final Integer subscriptions;
    @SerializedName("user_photos")
    @Nullable
    private final Integer userPhotos;
    @SerializedName("user_videos")
    @Nullable
    private final Integer userVideos;
    @SerializedName("videos")
    @Nullable
    private final Integer videos;
    @SerializedName("wishes")
    @Nullable
    private final Integer wishes;

    public UsersUserCounters() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ViewCompat.MEASURED_SIZE_MASK, null);
    }

    public UsersUserCounters(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Integer num11, @Nullable Integer num12, @Nullable Integer num13, @Nullable Integer num14, @Nullable Integer num15, @Nullable Integer num16, @Nullable Integer num17, @Nullable Integer num18, @Nullable Integer num19, @Nullable Integer num20, @Nullable Integer num21, @Nullable Integer num22, @Nullable Integer num23, @Nullable Integer num24) {
        this.albums = num;
        this.badges = num2;
        this.audios = num3;
        this.followers = num4;
        this.friends = num5;
        this.gifts = num6;
        this.groups = num7;
        this.notes = num8;
        this.onlineFriends = num9;
        this.pages = num10;
        this.photos = num11;
        this.subscriptions = num12;
        this.userPhotos = num13;
        this.userVideos = num14;
        this.videos = num15;
        this.newPhotoTags = num16;
        this.newRecognitionTags = num17;
        this.mutualFriends = num18;
        this.posts = num19;
        this.articles = num20;
        this.wishes = num21;
        this.podcasts = num22;
        this.clips = num23;
        this.clipsFollowers = num24;
    }

    @Nullable
    public final Integer component1() {
        return this.albums;
    }

    @Nullable
    public final Integer component10() {
        return this.pages;
    }

    @Nullable
    public final Integer component11() {
        return this.photos;
    }

    @Nullable
    public final Integer component12() {
        return this.subscriptions;
    }

    @Nullable
    public final Integer component13() {
        return this.userPhotos;
    }

    @Nullable
    public final Integer component14() {
        return this.userVideos;
    }

    @Nullable
    public final Integer component15() {
        return this.videos;
    }

    @Nullable
    public final Integer component16() {
        return this.newPhotoTags;
    }

    @Nullable
    public final Integer component17() {
        return this.newRecognitionTags;
    }

    @Nullable
    public final Integer component18() {
        return this.mutualFriends;
    }

    @Nullable
    public final Integer component19() {
        return this.posts;
    }

    @Nullable
    public final Integer component2() {
        return this.badges;
    }

    @Nullable
    public final Integer component20() {
        return this.articles;
    }

    @Nullable
    public final Integer component21() {
        return this.wishes;
    }

    @Nullable
    public final Integer component22() {
        return this.podcasts;
    }

    @Nullable
    public final Integer component23() {
        return this.clips;
    }

    @Nullable
    public final Integer component24() {
        return this.clipsFollowers;
    }

    @Nullable
    public final Integer component3() {
        return this.audios;
    }

    @Nullable
    public final Integer component4() {
        return this.followers;
    }

    @Nullable
    public final Integer component5() {
        return this.friends;
    }

    @Nullable
    public final Integer component6() {
        return this.gifts;
    }

    @Nullable
    public final Integer component7() {
        return this.groups;
    }

    @Nullable
    public final Integer component8() {
        return this.notes;
    }

    @Nullable
    public final Integer component9() {
        return this.onlineFriends;
    }

    @NotNull
    public final UsersUserCounters copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Integer num11, @Nullable Integer num12, @Nullable Integer num13, @Nullable Integer num14, @Nullable Integer num15, @Nullable Integer num16, @Nullable Integer num17, @Nullable Integer num18, @Nullable Integer num19, @Nullable Integer num20, @Nullable Integer num21, @Nullable Integer num22, @Nullable Integer num23, @Nullable Integer num24) {
        return new UsersUserCounters(num, num2, num3, num4, num5, num6, num7, num8, num9, num10, num11, num12, num13, num14, num15, num16, num17, num18, num19, num20, num21, num22, num23, num24);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersUserCounters) {
            UsersUserCounters usersUserCounters = (UsersUserCounters) obj;
            return Intrinsics.areEqual(this.albums, usersUserCounters.albums) && Intrinsics.areEqual(this.badges, usersUserCounters.badges) && Intrinsics.areEqual(this.audios, usersUserCounters.audios) && Intrinsics.areEqual(this.followers, usersUserCounters.followers) && Intrinsics.areEqual(this.friends, usersUserCounters.friends) && Intrinsics.areEqual(this.gifts, usersUserCounters.gifts) && Intrinsics.areEqual(this.groups, usersUserCounters.groups) && Intrinsics.areEqual(this.notes, usersUserCounters.notes) && Intrinsics.areEqual(this.onlineFriends, usersUserCounters.onlineFriends) && Intrinsics.areEqual(this.pages, usersUserCounters.pages) && Intrinsics.areEqual(this.photos, usersUserCounters.photos) && Intrinsics.areEqual(this.subscriptions, usersUserCounters.subscriptions) && Intrinsics.areEqual(this.userPhotos, usersUserCounters.userPhotos) && Intrinsics.areEqual(this.userVideos, usersUserCounters.userVideos) && Intrinsics.areEqual(this.videos, usersUserCounters.videos) && Intrinsics.areEqual(this.newPhotoTags, usersUserCounters.newPhotoTags) && Intrinsics.areEqual(this.newRecognitionTags, usersUserCounters.newRecognitionTags) && Intrinsics.areEqual(this.mutualFriends, usersUserCounters.mutualFriends) && Intrinsics.areEqual(this.posts, usersUserCounters.posts) && Intrinsics.areEqual(this.articles, usersUserCounters.articles) && Intrinsics.areEqual(this.wishes, usersUserCounters.wishes) && Intrinsics.areEqual(this.podcasts, usersUserCounters.podcasts) && Intrinsics.areEqual(this.clips, usersUserCounters.clips) && Intrinsics.areEqual(this.clipsFollowers, usersUserCounters.clipsFollowers);
        }
        return false;
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
    public final Integer getAudios() {
        return this.audios;
    }

    @Nullable
    public final Integer getBadges() {
        return this.badges;
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
    public final Integer getFollowers() {
        return this.followers;
    }

    @Nullable
    public final Integer getFriends() {
        return this.friends;
    }

    @Nullable
    public final Integer getGifts() {
        return this.gifts;
    }

    @Nullable
    public final Integer getGroups() {
        return this.groups;
    }

    @Nullable
    public final Integer getMutualFriends() {
        return this.mutualFriends;
    }

    @Nullable
    public final Integer getNewPhotoTags() {
        return this.newPhotoTags;
    }

    @Nullable
    public final Integer getNewRecognitionTags() {
        return this.newRecognitionTags;
    }

    @Nullable
    public final Integer getNotes() {
        return this.notes;
    }

    @Nullable
    public final Integer getOnlineFriends() {
        return this.onlineFriends;
    }

    @Nullable
    public final Integer getPages() {
        return this.pages;
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
    public final Integer getPosts() {
        return this.posts;
    }

    @Nullable
    public final Integer getSubscriptions() {
        return this.subscriptions;
    }

    @Nullable
    public final Integer getUserPhotos() {
        return this.userPhotos;
    }

    @Nullable
    public final Integer getUserVideos() {
        return this.userVideos;
    }

    @Nullable
    public final Integer getVideos() {
        return this.videos;
    }

    @Nullable
    public final Integer getWishes() {
        return this.wishes;
    }

    public int hashCode() {
        Integer num = this.albums;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.badges;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.audios;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.followers;
        int hashCode4 = (hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.friends;
        int hashCode5 = (hashCode4 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.gifts;
        int hashCode6 = (hashCode5 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.groups;
        int hashCode7 = (hashCode6 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.notes;
        int hashCode8 = (hashCode7 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.onlineFriends;
        int hashCode9 = (hashCode8 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.pages;
        int hashCode10 = (hashCode9 + (num10 == null ? 0 : num10.hashCode())) * 31;
        Integer num11 = this.photos;
        int hashCode11 = (hashCode10 + (num11 == null ? 0 : num11.hashCode())) * 31;
        Integer num12 = this.subscriptions;
        int hashCode12 = (hashCode11 + (num12 == null ? 0 : num12.hashCode())) * 31;
        Integer num13 = this.userPhotos;
        int hashCode13 = (hashCode12 + (num13 == null ? 0 : num13.hashCode())) * 31;
        Integer num14 = this.userVideos;
        int hashCode14 = (hashCode13 + (num14 == null ? 0 : num14.hashCode())) * 31;
        Integer num15 = this.videos;
        int hashCode15 = (hashCode14 + (num15 == null ? 0 : num15.hashCode())) * 31;
        Integer num16 = this.newPhotoTags;
        int hashCode16 = (hashCode15 + (num16 == null ? 0 : num16.hashCode())) * 31;
        Integer num17 = this.newRecognitionTags;
        int hashCode17 = (hashCode16 + (num17 == null ? 0 : num17.hashCode())) * 31;
        Integer num18 = this.mutualFriends;
        int hashCode18 = (hashCode17 + (num18 == null ? 0 : num18.hashCode())) * 31;
        Integer num19 = this.posts;
        int hashCode19 = (hashCode18 + (num19 == null ? 0 : num19.hashCode())) * 31;
        Integer num20 = this.articles;
        int hashCode20 = (hashCode19 + (num20 == null ? 0 : num20.hashCode())) * 31;
        Integer num21 = this.wishes;
        int hashCode21 = (hashCode20 + (num21 == null ? 0 : num21.hashCode())) * 31;
        Integer num22 = this.podcasts;
        int hashCode22 = (hashCode21 + (num22 == null ? 0 : num22.hashCode())) * 31;
        Integer num23 = this.clips;
        int hashCode23 = (hashCode22 + (num23 == null ? 0 : num23.hashCode())) * 31;
        Integer num24 = this.clipsFollowers;
        return hashCode23 + (num24 != null ? num24.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.albums;
        Integer num2 = this.badges;
        Integer num3 = this.audios;
        Integer num4 = this.followers;
        Integer num5 = this.friends;
        Integer num6 = this.gifts;
        Integer num7 = this.groups;
        Integer num8 = this.notes;
        Integer num9 = this.onlineFriends;
        Integer num10 = this.pages;
        Integer num11 = this.photos;
        Integer num12 = this.subscriptions;
        Integer num13 = this.userPhotos;
        Integer num14 = this.userVideos;
        Integer num15 = this.videos;
        Integer num16 = this.newPhotoTags;
        Integer num17 = this.newRecognitionTags;
        Integer num18 = this.mutualFriends;
        Integer num19 = this.posts;
        Integer num20 = this.articles;
        Integer num21 = this.wishes;
        Integer num22 = this.podcasts;
        Integer num23 = this.clips;
        Integer num24 = this.clipsFollowers;
        return "UsersUserCounters(albums=" + num + ", badges=" + num2 + ", audios=" + num3 + ", followers=" + num4 + ", friends=" + num5 + ", gifts=" + num6 + ", groups=" + num7 + ", notes=" + num8 + ", onlineFriends=" + num9 + ", pages=" + num10 + ", photos=" + num11 + ", subscriptions=" + num12 + ", userPhotos=" + num13 + ", userVideos=" + num14 + ", videos=" + num15 + ", newPhotoTags=" + num16 + ", newRecognitionTags=" + num17 + ", mutualFriends=" + num18 + ", posts=" + num19 + ", articles=" + num20 + ", wishes=" + num21 + ", podcasts=" + num22 + ", clips=" + num23 + ", clipsFollowers=" + num24 + ")";
    }

    public /* synthetic */ UsersUserCounters(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, Integer num12, Integer num13, Integer num14, Integer num15, Integer num16, Integer num17, Integer num18, Integer num19, Integer num20, Integer num21, Integer num22, Integer num23, Integer num24, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3, (i9 & 8) != 0 ? null : num4, (i9 & 16) != 0 ? null : num5, (i9 & 32) != 0 ? null : num6, (i9 & 64) != 0 ? null : num7, (i9 & 128) != 0 ? null : num8, (i9 & 256) != 0 ? null : num9, (i9 & 512) != 0 ? null : num10, (i9 & 1024) != 0 ? null : num11, (i9 & 2048) != 0 ? null : num12, (i9 & 4096) != 0 ? null : num13, (i9 & 8192) != 0 ? null : num14, (i9 & 16384) != 0 ? null : num15, (i9 & 32768) != 0 ? null : num16, (i9 & 65536) != 0 ? null : num17, (i9 & 131072) != 0 ? null : num18, (i9 & 262144) != 0 ? null : num19, (i9 & 524288) != 0 ? null : num20, (i9 & 1048576) != 0 ? null : num21, (i9 & 2097152) != 0 ? null : num22, (i9 & 4194304) != 0 ? null : num23, (i9 & 8388608) != 0 ? null : num24);
    }
}
