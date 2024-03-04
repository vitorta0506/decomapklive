package com.vk.sdk.api.account.dto;

import androidx.core.app.FrameMetricsAggregator;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.BaseConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003Ju\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020'HÖ\u0001R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000e¨\u0006("}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterests;", "", "activities", "Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;", "interests", BaseConfig.DB_TYPE_MUSIC_NAME, "tv", "movies", "books", "games", "quotes", "about", "(Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;)V", "getAbout", "()Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterest;", "getActivities", "getBooks", "getGames", "getInterests", "getMovies", "getMusic", "getQuotes", "getTv", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountUserSettingsInterests {
    @SerializedName("about")
    @Nullable
    private final AccountUserSettingsInterest about;
    @SerializedName("activities")
    @Nullable
    private final AccountUserSettingsInterest activities;
    @SerializedName("books")
    @Nullable
    private final AccountUserSettingsInterest books;
    @SerializedName("games")
    @Nullable
    private final AccountUserSettingsInterest games;
    @SerializedName("interests")
    @Nullable
    private final AccountUserSettingsInterest interests;
    @SerializedName("movies")
    @Nullable
    private final AccountUserSettingsInterest movies;
    @SerializedName(BaseConfig.DB_TYPE_MUSIC_NAME)
    @Nullable
    private final AccountUserSettingsInterest music;
    @SerializedName("quotes")
    @Nullable
    private final AccountUserSettingsInterest quotes;
    @SerializedName("tv")
    @Nullable
    private final AccountUserSettingsInterest tv;

    public AccountUserSettingsInterests() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public AccountUserSettingsInterests(@Nullable AccountUserSettingsInterest accountUserSettingsInterest, @Nullable AccountUserSettingsInterest accountUserSettingsInterest2, @Nullable AccountUserSettingsInterest accountUserSettingsInterest3, @Nullable AccountUserSettingsInterest accountUserSettingsInterest4, @Nullable AccountUserSettingsInterest accountUserSettingsInterest5, @Nullable AccountUserSettingsInterest accountUserSettingsInterest6, @Nullable AccountUserSettingsInterest accountUserSettingsInterest7, @Nullable AccountUserSettingsInterest accountUserSettingsInterest8, @Nullable AccountUserSettingsInterest accountUserSettingsInterest9) {
        this.activities = accountUserSettingsInterest;
        this.interests = accountUserSettingsInterest2;
        this.music = accountUserSettingsInterest3;
        this.tv = accountUserSettingsInterest4;
        this.movies = accountUserSettingsInterest5;
        this.books = accountUserSettingsInterest6;
        this.games = accountUserSettingsInterest7;
        this.quotes = accountUserSettingsInterest8;
        this.about = accountUserSettingsInterest9;
    }

    @Nullable
    public final AccountUserSettingsInterest component1() {
        return this.activities;
    }

    @Nullable
    public final AccountUserSettingsInterest component2() {
        return this.interests;
    }

    @Nullable
    public final AccountUserSettingsInterest component3() {
        return this.music;
    }

    @Nullable
    public final AccountUserSettingsInterest component4() {
        return this.tv;
    }

    @Nullable
    public final AccountUserSettingsInterest component5() {
        return this.movies;
    }

    @Nullable
    public final AccountUserSettingsInterest component6() {
        return this.books;
    }

    @Nullable
    public final AccountUserSettingsInterest component7() {
        return this.games;
    }

    @Nullable
    public final AccountUserSettingsInterest component8() {
        return this.quotes;
    }

    @Nullable
    public final AccountUserSettingsInterest component9() {
        return this.about;
    }

    @NotNull
    public final AccountUserSettingsInterests copy(@Nullable AccountUserSettingsInterest accountUserSettingsInterest, @Nullable AccountUserSettingsInterest accountUserSettingsInterest2, @Nullable AccountUserSettingsInterest accountUserSettingsInterest3, @Nullable AccountUserSettingsInterest accountUserSettingsInterest4, @Nullable AccountUserSettingsInterest accountUserSettingsInterest5, @Nullable AccountUserSettingsInterest accountUserSettingsInterest6, @Nullable AccountUserSettingsInterest accountUserSettingsInterest7, @Nullable AccountUserSettingsInterest accountUserSettingsInterest8, @Nullable AccountUserSettingsInterest accountUserSettingsInterest9) {
        return new AccountUserSettingsInterests(accountUserSettingsInterest, accountUserSettingsInterest2, accountUserSettingsInterest3, accountUserSettingsInterest4, accountUserSettingsInterest5, accountUserSettingsInterest6, accountUserSettingsInterest7, accountUserSettingsInterest8, accountUserSettingsInterest9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountUserSettingsInterests) {
            AccountUserSettingsInterests accountUserSettingsInterests = (AccountUserSettingsInterests) obj;
            return Intrinsics.areEqual(this.activities, accountUserSettingsInterests.activities) && Intrinsics.areEqual(this.interests, accountUserSettingsInterests.interests) && Intrinsics.areEqual(this.music, accountUserSettingsInterests.music) && Intrinsics.areEqual(this.tv, accountUserSettingsInterests.tv) && Intrinsics.areEqual(this.movies, accountUserSettingsInterests.movies) && Intrinsics.areEqual(this.books, accountUserSettingsInterests.books) && Intrinsics.areEqual(this.games, accountUserSettingsInterests.games) && Intrinsics.areEqual(this.quotes, accountUserSettingsInterests.quotes) && Intrinsics.areEqual(this.about, accountUserSettingsInterests.about);
        }
        return false;
    }

    @Nullable
    public final AccountUserSettingsInterest getAbout() {
        return this.about;
    }

    @Nullable
    public final AccountUserSettingsInterest getActivities() {
        return this.activities;
    }

    @Nullable
    public final AccountUserSettingsInterest getBooks() {
        return this.books;
    }

    @Nullable
    public final AccountUserSettingsInterest getGames() {
        return this.games;
    }

    @Nullable
    public final AccountUserSettingsInterest getInterests() {
        return this.interests;
    }

    @Nullable
    public final AccountUserSettingsInterest getMovies() {
        return this.movies;
    }

    @Nullable
    public final AccountUserSettingsInterest getMusic() {
        return this.music;
    }

    @Nullable
    public final AccountUserSettingsInterest getQuotes() {
        return this.quotes;
    }

    @Nullable
    public final AccountUserSettingsInterest getTv() {
        return this.tv;
    }

    public int hashCode() {
        AccountUserSettingsInterest accountUserSettingsInterest = this.activities;
        int hashCode = (accountUserSettingsInterest == null ? 0 : accountUserSettingsInterest.hashCode()) * 31;
        AccountUserSettingsInterest accountUserSettingsInterest2 = this.interests;
        int hashCode2 = (hashCode + (accountUserSettingsInterest2 == null ? 0 : accountUserSettingsInterest2.hashCode())) * 31;
        AccountUserSettingsInterest accountUserSettingsInterest3 = this.music;
        int hashCode3 = (hashCode2 + (accountUserSettingsInterest3 == null ? 0 : accountUserSettingsInterest3.hashCode())) * 31;
        AccountUserSettingsInterest accountUserSettingsInterest4 = this.tv;
        int hashCode4 = (hashCode3 + (accountUserSettingsInterest4 == null ? 0 : accountUserSettingsInterest4.hashCode())) * 31;
        AccountUserSettingsInterest accountUserSettingsInterest5 = this.movies;
        int hashCode5 = (hashCode4 + (accountUserSettingsInterest5 == null ? 0 : accountUserSettingsInterest5.hashCode())) * 31;
        AccountUserSettingsInterest accountUserSettingsInterest6 = this.books;
        int hashCode6 = (hashCode5 + (accountUserSettingsInterest6 == null ? 0 : accountUserSettingsInterest6.hashCode())) * 31;
        AccountUserSettingsInterest accountUserSettingsInterest7 = this.games;
        int hashCode7 = (hashCode6 + (accountUserSettingsInterest7 == null ? 0 : accountUserSettingsInterest7.hashCode())) * 31;
        AccountUserSettingsInterest accountUserSettingsInterest8 = this.quotes;
        int hashCode8 = (hashCode7 + (accountUserSettingsInterest8 == null ? 0 : accountUserSettingsInterest8.hashCode())) * 31;
        AccountUserSettingsInterest accountUserSettingsInterest9 = this.about;
        return hashCode8 + (accountUserSettingsInterest9 != null ? accountUserSettingsInterest9.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        AccountUserSettingsInterest accountUserSettingsInterest = this.activities;
        AccountUserSettingsInterest accountUserSettingsInterest2 = this.interests;
        AccountUserSettingsInterest accountUserSettingsInterest3 = this.music;
        AccountUserSettingsInterest accountUserSettingsInterest4 = this.tv;
        AccountUserSettingsInterest accountUserSettingsInterest5 = this.movies;
        AccountUserSettingsInterest accountUserSettingsInterest6 = this.books;
        AccountUserSettingsInterest accountUserSettingsInterest7 = this.games;
        AccountUserSettingsInterest accountUserSettingsInterest8 = this.quotes;
        AccountUserSettingsInterest accountUserSettingsInterest9 = this.about;
        return "AccountUserSettingsInterests(activities=" + accountUserSettingsInterest + ", interests=" + accountUserSettingsInterest2 + ", music=" + accountUserSettingsInterest3 + ", tv=" + accountUserSettingsInterest4 + ", movies=" + accountUserSettingsInterest5 + ", books=" + accountUserSettingsInterest6 + ", games=" + accountUserSettingsInterest7 + ", quotes=" + accountUserSettingsInterest8 + ", about=" + accountUserSettingsInterest9 + ")";
    }

    public /* synthetic */ AccountUserSettingsInterests(AccountUserSettingsInterest accountUserSettingsInterest, AccountUserSettingsInterest accountUserSettingsInterest2, AccountUserSettingsInterest accountUserSettingsInterest3, AccountUserSettingsInterest accountUserSettingsInterest4, AccountUserSettingsInterest accountUserSettingsInterest5, AccountUserSettingsInterest accountUserSettingsInterest6, AccountUserSettingsInterest accountUserSettingsInterest7, AccountUserSettingsInterest accountUserSettingsInterest8, AccountUserSettingsInterest accountUserSettingsInterest9, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : accountUserSettingsInterest, (i9 & 2) != 0 ? null : accountUserSettingsInterest2, (i9 & 4) != 0 ? null : accountUserSettingsInterest3, (i9 & 8) != 0 ? null : accountUserSettingsInterest4, (i9 & 16) != 0 ? null : accountUserSettingsInterest5, (i9 & 32) != 0 ? null : accountUserSettingsInterest6, (i9 & 64) != 0 ? null : accountUserSettingsInterest7, (i9 & 128) != 0 ? null : accountUserSettingsInterest8, (i9 & 256) == 0 ? accountUserSettingsInterest9 : null);
    }
}
