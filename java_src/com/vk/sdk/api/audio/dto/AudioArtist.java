package com.vk.sdk.api.audio.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseImage;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUser;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b&\b\u0086\b\u0018\u00002\u00020\u0001BÍ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\t\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\t\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\t\u0012\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\t¢\u0006\u0002\u0010\u0019J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\u0011\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\tHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\tHÆ\u0003J\u0011\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\tHÆ\u0003J\u0011\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\tHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\u0011\u00104\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\tHÆ\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u00106\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u00107\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001dJØ\u0001\u00108\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\t2\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\t2\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020\u00072\b\u0010;\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010<\u001a\u00020\u0014HÖ\u0001J\t\u0010=\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001f\u0010\u001dR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001bR\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\"R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001bR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u0006\u0010\u001dR\u001a\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\r\u0010\u001dR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001bR\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\"R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\"R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\"R\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\"¨\u0006>"}, d2 = {"Lcom/vk/sdk/api/audio/dto/AudioArtist;", "", "name", "", "domain", "id", "isAlbumCover", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "", "Lcom/vk/sdk/api/base/dto/BaseImage;", "photos", "Lcom/vk/sdk/api/audio/dto/AudioPhotosByType;", "isFollowed", "canFollow", "canPlay", "genres", "Lcom/vk/sdk/api/audio/dto/AudioGenre;", "bio", "pages", "", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUser;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getBio", "()Ljava/lang/String;", "getCanFollow", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCanPlay", "getDomain", "getGenres", "()Ljava/util/List;", "getGroups", "getId", "getName", "getPages", "getPhoto", "getPhotos", "getProfiles", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/vk/sdk/api/audio/dto/AudioArtist;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AudioArtist {
    @SerializedName("bio")
    @Nullable
    private final String bio;
    @SerializedName("can_follow")
    @Nullable
    private final Boolean canFollow;
    @SerializedName("can_play")
    @Nullable
    private final Boolean canPlay;
    @SerializedName("domain")
    @Nullable
    private final String domain;
    @SerializedName("genres")
    @Nullable
    private final List<AudioGenre> genres;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final String f35731id;
    @SerializedName("is_album_cover")
    @Nullable
    private final Boolean isAlbumCover;
    @SerializedName("is_followed")
    @Nullable
    private final Boolean isFollowed;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("pages")
    @Nullable
    private final List<Integer> pages;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final List<BaseImage> photo;
    @SerializedName("photos")
    @Nullable
    private final List<AudioPhotosByType> photos;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUser> profiles;

    public AudioArtist(@NotNull String name, @Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable List<BaseImage> list, @Nullable List<AudioPhotosByType> list2, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable List<AudioGenre> list3, @Nullable String str3, @Nullable List<Integer> list4, @Nullable List<UsersUser> list5, @Nullable List<GroupsGroupFull> list6) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.domain = str;
        this.f35731id = str2;
        this.isAlbumCover = bool;
        this.photo = list;
        this.photos = list2;
        this.isFollowed = bool2;
        this.canFollow = bool3;
        this.canPlay = bool4;
        this.genres = list3;
        this.bio = str3;
        this.pages = list4;
        this.profiles = list5;
        this.groups = list6;
    }

    @NotNull
    public final String component1() {
        return this.name;
    }

    @Nullable
    public final List<AudioGenre> component10() {
        return this.genres;
    }

    @Nullable
    public final String component11() {
        return this.bio;
    }

    @Nullable
    public final List<Integer> component12() {
        return this.pages;
    }

    @Nullable
    public final List<UsersUser> component13() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component14() {
        return this.groups;
    }

    @Nullable
    public final String component2() {
        return this.domain;
    }

    @Nullable
    public final String component3() {
        return this.f35731id;
    }

    @Nullable
    public final Boolean component4() {
        return this.isAlbumCover;
    }

    @Nullable
    public final List<BaseImage> component5() {
        return this.photo;
    }

    @Nullable
    public final List<AudioPhotosByType> component6() {
        return this.photos;
    }

    @Nullable
    public final Boolean component7() {
        return this.isFollowed;
    }

    @Nullable
    public final Boolean component8() {
        return this.canFollow;
    }

    @Nullable
    public final Boolean component9() {
        return this.canPlay;
    }

    @NotNull
    public final AudioArtist copy(@NotNull String name, @Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable List<BaseImage> list, @Nullable List<AudioPhotosByType> list2, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable List<AudioGenre> list3, @Nullable String str3, @Nullable List<Integer> list4, @Nullable List<UsersUser> list5, @Nullable List<GroupsGroupFull> list6) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new AudioArtist(name, str, str2, bool, list, list2, bool2, bool3, bool4, list3, str3, list4, list5, list6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AudioArtist) {
            AudioArtist audioArtist = (AudioArtist) obj;
            return Intrinsics.areEqual(this.name, audioArtist.name) && Intrinsics.areEqual(this.domain, audioArtist.domain) && Intrinsics.areEqual(this.f35731id, audioArtist.f35731id) && Intrinsics.areEqual(this.isAlbumCover, audioArtist.isAlbumCover) && Intrinsics.areEqual(this.photo, audioArtist.photo) && Intrinsics.areEqual(this.photos, audioArtist.photos) && Intrinsics.areEqual(this.isFollowed, audioArtist.isFollowed) && Intrinsics.areEqual(this.canFollow, audioArtist.canFollow) && Intrinsics.areEqual(this.canPlay, audioArtist.canPlay) && Intrinsics.areEqual(this.genres, audioArtist.genres) && Intrinsics.areEqual(this.bio, audioArtist.bio) && Intrinsics.areEqual(this.pages, audioArtist.pages) && Intrinsics.areEqual(this.profiles, audioArtist.profiles) && Intrinsics.areEqual(this.groups, audioArtist.groups);
        }
        return false;
    }

    @Nullable
    public final String getBio() {
        return this.bio;
    }

    @Nullable
    public final Boolean getCanFollow() {
        return this.canFollow;
    }

    @Nullable
    public final Boolean getCanPlay() {
        return this.canPlay;
    }

    @Nullable
    public final String getDomain() {
        return this.domain;
    }

    @Nullable
    public final List<AudioGenre> getGenres() {
        return this.genres;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @Nullable
    public final String getId() {
        return this.f35731id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final List<Integer> getPages() {
        return this.pages;
    }

    @Nullable
    public final List<BaseImage> getPhoto() {
        return this.photo;
    }

    @Nullable
    public final List<AudioPhotosByType> getPhotos() {
        return this.photos;
    }

    @Nullable
    public final List<UsersUser> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        String str = this.domain;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f35731id;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.isAlbumCover;
        int hashCode4 = (hashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<BaseImage> list = this.photo;
        int hashCode5 = (hashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        List<AudioPhotosByType> list2 = this.photos;
        int hashCode6 = (hashCode5 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Boolean bool2 = this.isFollowed;
        int hashCode7 = (hashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.canFollow;
        int hashCode8 = (hashCode7 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.canPlay;
        int hashCode9 = (hashCode8 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        List<AudioGenre> list3 = this.genres;
        int hashCode10 = (hashCode9 + (list3 == null ? 0 : list3.hashCode())) * 31;
        String str3 = this.bio;
        int hashCode11 = (hashCode10 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<Integer> list4 = this.pages;
        int hashCode12 = (hashCode11 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<UsersUser> list5 = this.profiles;
        int hashCode13 = (hashCode12 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List<GroupsGroupFull> list6 = this.groups;
        return hashCode13 + (list6 != null ? list6.hashCode() : 0);
    }

    @Nullable
    public final Boolean isAlbumCover() {
        return this.isAlbumCover;
    }

    @Nullable
    public final Boolean isFollowed() {
        return this.isFollowed;
    }

    @NotNull
    public String toString() {
        String str = this.name;
        String str2 = this.domain;
        String str3 = this.f35731id;
        Boolean bool = this.isAlbumCover;
        List<BaseImage> list = this.photo;
        List<AudioPhotosByType> list2 = this.photos;
        Boolean bool2 = this.isFollowed;
        Boolean bool3 = this.canFollow;
        Boolean bool4 = this.canPlay;
        List<AudioGenre> list3 = this.genres;
        String str4 = this.bio;
        List<Integer> list4 = this.pages;
        List<UsersUser> list5 = this.profiles;
        List<GroupsGroupFull> list6 = this.groups;
        return "AudioArtist(name=" + str + ", domain=" + str2 + ", id=" + str3 + ", isAlbumCover=" + bool + ", photo=" + list + ", photos=" + list2 + ", isFollowed=" + bool2 + ", canFollow=" + bool3 + ", canPlay=" + bool4 + ", genres=" + list3 + ", bio=" + str4 + ", pages=" + list4 + ", profiles=" + list5 + ", groups=" + list6 + ")";
    }

    public /* synthetic */ AudioArtist(String str, String str2, String str3, Boolean bool, List list, List list2, Boolean bool2, Boolean bool3, Boolean bool4, List list3, String str4, List list4, List list5, List list6, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : str3, (i9 & 8) != 0 ? null : bool, (i9 & 16) != 0 ? null : list, (i9 & 32) != 0 ? null : list2, (i9 & 64) != 0 ? null : bool2, (i9 & 128) != 0 ? null : bool3, (i9 & 256) != 0 ? null : bool4, (i9 & 512) != 0 ? null : list3, (i9 & 1024) != 0 ? null : str4, (i9 & 2048) != 0 ? null : list4, (i9 & 4096) != 0 ? null : list5, (i9 & 8192) == 0 ? list6 : null);
    }
}
