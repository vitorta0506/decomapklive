package com.vk.sdk.api.users.dto;

import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003JI\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersUserConnections;", "", "skype", "", AccessToken.DEFAULT_GRAPH_DOMAIN, "twitter", FacebookSdk.INSTAGRAM, "facebookName", "livejournal", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getFacebook", "()Ljava/lang/String;", "getFacebookName", "getInstagram", "getLivejournal", "getSkype", "getTwitter", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersUserConnections {
    @SerializedName(AccessToken.DEFAULT_GRAPH_DOMAIN)
    @NotNull
    private final String facebook;
    @SerializedName("facebook_name")
    @Nullable
    private final String facebookName;
    @SerializedName(FacebookSdk.INSTAGRAM)
    @NotNull
    private final String instagram;
    @SerializedName("livejournal")
    @Nullable
    private final String livejournal;
    @SerializedName("skype")
    @NotNull
    private final String skype;
    @SerializedName("twitter")
    @NotNull
    private final String twitter;

    public UsersUserConnections(@NotNull String skype, @NotNull String facebook, @NotNull String twitter, @NotNull String instagram, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(skype, "skype");
        Intrinsics.checkNotNullParameter(facebook, "facebook");
        Intrinsics.checkNotNullParameter(twitter, "twitter");
        Intrinsics.checkNotNullParameter(instagram, "instagram");
        this.skype = skype;
        this.facebook = facebook;
        this.twitter = twitter;
        this.instagram = instagram;
        this.facebookName = str;
        this.livejournal = str2;
    }

    public static /* synthetic */ UsersUserConnections copy$default(UsersUserConnections usersUserConnections, String str, String str2, String str3, String str4, String str5, String str6, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = usersUserConnections.skype;
        }
        if ((i9 & 2) != 0) {
            str2 = usersUserConnections.facebook;
        }
        String str7 = str2;
        if ((i9 & 4) != 0) {
            str3 = usersUserConnections.twitter;
        }
        String str8 = str3;
        if ((i9 & 8) != 0) {
            str4 = usersUserConnections.instagram;
        }
        String str9 = str4;
        if ((i9 & 16) != 0) {
            str5 = usersUserConnections.facebookName;
        }
        String str10 = str5;
        if ((i9 & 32) != 0) {
            str6 = usersUserConnections.livejournal;
        }
        return usersUserConnections.copy(str, str7, str8, str9, str10, str6);
    }

    @NotNull
    public final String component1() {
        return this.skype;
    }

    @NotNull
    public final String component2() {
        return this.facebook;
    }

    @NotNull
    public final String component3() {
        return this.twitter;
    }

    @NotNull
    public final String component4() {
        return this.instagram;
    }

    @Nullable
    public final String component5() {
        return this.facebookName;
    }

    @Nullable
    public final String component6() {
        return this.livejournal;
    }

    @NotNull
    public final UsersUserConnections copy(@NotNull String skype, @NotNull String facebook, @NotNull String twitter, @NotNull String instagram, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(skype, "skype");
        Intrinsics.checkNotNullParameter(facebook, "facebook");
        Intrinsics.checkNotNullParameter(twitter, "twitter");
        Intrinsics.checkNotNullParameter(instagram, "instagram");
        return new UsersUserConnections(skype, facebook, twitter, instagram, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersUserConnections) {
            UsersUserConnections usersUserConnections = (UsersUserConnections) obj;
            return Intrinsics.areEqual(this.skype, usersUserConnections.skype) && Intrinsics.areEqual(this.facebook, usersUserConnections.facebook) && Intrinsics.areEqual(this.twitter, usersUserConnections.twitter) && Intrinsics.areEqual(this.instagram, usersUserConnections.instagram) && Intrinsics.areEqual(this.facebookName, usersUserConnections.facebookName) && Intrinsics.areEqual(this.livejournal, usersUserConnections.livejournal);
        }
        return false;
    }

    @NotNull
    public final String getFacebook() {
        return this.facebook;
    }

    @Nullable
    public final String getFacebookName() {
        return this.facebookName;
    }

    @NotNull
    public final String getInstagram() {
        return this.instagram;
    }

    @Nullable
    public final String getLivejournal() {
        return this.livejournal;
    }

    @NotNull
    public final String getSkype() {
        return this.skype;
    }

    @NotNull
    public final String getTwitter() {
        return this.twitter;
    }

    public int hashCode() {
        int hashCode = ((((((this.skype.hashCode() * 31) + this.facebook.hashCode()) * 31) + this.twitter.hashCode()) * 31) + this.instagram.hashCode()) * 31;
        String str = this.facebookName;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.livejournal;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.skype;
        String str2 = this.facebook;
        String str3 = this.twitter;
        String str4 = this.instagram;
        String str5 = this.facebookName;
        String str6 = this.livejournal;
        return "UsersUserConnections(skype=" + str + ", facebook=" + str2 + ", twitter=" + str3 + ", instagram=" + str4 + ", facebookName=" + str5 + ", livejournal=" + str6 + ")";
    }

    public /* synthetic */ UsersUserConnections(String str, String str2, String str3, String str4, String str5, String str6, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i9 & 16) != 0 ? null : str5, (i9 & 32) != 0 ? null : str6);
    }
}
