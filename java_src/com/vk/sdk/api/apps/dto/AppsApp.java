package com.vk.sdk.api.apps.dto;

import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b`\b\u0086\b\u0018\u00002\u00020\u0001B\u008b\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010*J\t\u0010S\u001a\u00020\u0003HÆ\u0003J\u0010\u0010T\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010,J\u0011\u0010U\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011HÆ\u0003J\u0010\u0010V\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010,J\u000b\u0010W\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010Y\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010,J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010BJ\u0010\u0010[\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010,J\u000b\u0010\\\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u0010\u0010]\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010,J\t\u0010^\u001a\u00020\u0005HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010,J\u000b\u0010a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010c\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010,J\u0010\u0010d\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010BJ\u000b\u0010e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010i\u001a\u00020\u0007HÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010l\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010m\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010BJ\u000b\u0010n\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010p\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010s\u001a\u0004\u0018\u00010\rHÆ\u0003J\u009a\u0003\u0010t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0017HÆ\u0001¢\u0006\u0002\u0010uJ\u0013\u0010v\u001a\u00020\u00172\b\u0010w\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010x\u001a\u00020\u0005HÖ\u0001J\t\u0010y\u001a\u00020\u0007HÖ\u0001R\u001a\u0010 \u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\b+\u0010,R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0018\u0010&\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010/R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010/R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010/R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\b3\u0010,R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010/R\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010/R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\b8\u0010,R\u0018\u0010\"\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010/R\u0018\u0010#\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010/R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010/R\u0018\u0010$\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010/R\u0018\u0010%\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010/R\u0018\u0010(\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010/R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010@R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010C\u001a\u0004\bA\u0010BR\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\b\u0018\u0010,R\u001a\u0010!\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010C\u001a\u0004\b!\u0010BR\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010DR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u0018\u0010'\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u0010/R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\bH\u0010,R\u001a\u0010)\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010C\u001a\u0004\bI\u0010BR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010/R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\bK\u0010,R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bL\u0010DR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bM\u0010/R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\bN\u0010,R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010/R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bP\u0010/R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010R¨\u0006z"}, d2 = {"Lcom/vk/sdk/api/apps/dto/AppsApp;", "", "type", "Lcom/vk/sdk/api/apps/dto/AppsAppType;", "id", "", "title", "", "authorUrl", "banner1120", "banner560", "icon16", "isNew", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "pushEnabled", "screenOrientation", NativeProtocol.AUDIENCE_FRIENDS, "", "catalogPosition", "description", "genre", "genreId", "international", "", "isInCatalog", "leaderboardType", "Lcom/vk/sdk/api/apps/dto/AppsAppLeaderboardType;", "membersCount", "platformId", "publishedDate", "screenName", "section", "authorOwnerId", "isInstalled", "icon139", "icon150", "icon278", "icon576", "backgroundLoaderColor", "loaderIcon", "icon75", "openInExternalBrowser", "(Lcom/vk/sdk/api/apps/dto/AppsAppType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/vk/sdk/api/apps/dto/AppsAppLeaderboardType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getAuthorOwnerId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAuthorUrl", "()Ljava/lang/String;", "getBackgroundLoaderColor", "getBanner1120", "getBanner560", "getCatalogPosition", "getDescription", "getFriends", "()Ljava/util/List;", "getGenre", "getGenreId", "getIcon139", "getIcon150", "getIcon16", "getIcon278", "getIcon576", "getIcon75", "getId", "()I", "getInternational", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getLeaderboardType", "()Lcom/vk/sdk/api/apps/dto/AppsAppLeaderboardType;", "getLoaderIcon", "getMembersCount", "getOpenInExternalBrowser", "getPlatformId", "getPublishedDate", "getPushEnabled", "getScreenName", "getScreenOrientation", "getSection", "getTitle", "getType", "()Lcom/vk/sdk/api/apps/dto/AppsAppType;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/apps/dto/AppsAppType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/vk/sdk/api/apps/dto/AppsAppLeaderboardType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/sdk/api/apps/dto/AppsApp;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppsApp {
    @SerializedName("author_owner_id")
    @Nullable
    private final Integer authorOwnerId;
    @SerializedName("author_url")
    @Nullable
    private final String authorUrl;
    @SerializedName("background_loader_color")
    @Nullable
    private final String backgroundLoaderColor;
    @SerializedName("banner_1120")
    @Nullable
    private final String banner1120;
    @SerializedName("banner_560")
    @Nullable
    private final String banner560;
    @SerializedName("catalog_position")
    @Nullable
    private final Integer catalogPosition;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName(NativeProtocol.AUDIENCE_FRIENDS)
    @Nullable
    private final List<Integer> friends;
    @SerializedName("genre")
    @Nullable
    private final String genre;
    @SerializedName("genre_id")
    @Nullable
    private final Integer genreId;
    @SerializedName("icon_139")
    @Nullable
    private final String icon139;
    @SerializedName("icon_150")
    @Nullable
    private final String icon150;
    @SerializedName("icon_16")
    @Nullable
    private final String icon16;
    @SerializedName("icon_278")
    @Nullable
    private final String icon278;
    @SerializedName("icon_576")
    @Nullable
    private final String icon576;
    @SerializedName("icon_75")
    @Nullable
    private final String icon75;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35729id;
    @SerializedName("international")
    @Nullable
    private final Boolean international;
    @SerializedName("is_in_catalog")
    @Nullable
    private final Integer isInCatalog;
    @SerializedName("is_installed")
    @Nullable
    private final Boolean isInstalled;
    @SerializedName("is_new")
    @Nullable
    private final BaseBoolInt isNew;
    @SerializedName("leaderboard_type")
    @Nullable
    private final AppsAppLeaderboardType leaderboardType;
    @SerializedName("loader_icon")
    @Nullable
    private final String loaderIcon;
    @SerializedName("members_count")
    @Nullable
    private final Integer membersCount;
    @SerializedName("open_in_external_browser")
    @Nullable
    private final Boolean openInExternalBrowser;
    @SerializedName("platform_id")
    @Nullable
    private final String platformId;
    @SerializedName("published_date")
    @Nullable
    private final Integer publishedDate;
    @SerializedName("push_enabled")
    @Nullable
    private final BaseBoolInt pushEnabled;
    @SerializedName("screen_name")
    @Nullable
    private final String screenName;
    @SerializedName("screen_orientation")
    @Nullable
    private final Integer screenOrientation;
    @SerializedName("section")
    @Nullable
    private final String section;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("type")
    @NotNull
    private final AppsAppType type;

    public AppsApp(@NotNull AppsAppType type, int i9, @NotNull String title, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable Integer num, @Nullable List<Integer> list, @Nullable Integer num2, @Nullable String str5, @Nullable String str6, @Nullable Integer num3, @Nullable Boolean bool, @Nullable Integer num4, @Nullable AppsAppLeaderboardType appsAppLeaderboardType, @Nullable Integer num5, @Nullable String str7, @Nullable Integer num6, @Nullable String str8, @Nullable String str9, @Nullable Integer num7, @Nullable Boolean bool2, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable String str14, @Nullable String str15, @Nullable String str16, @Nullable Boolean bool3) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(title, "title");
        this.type = type;
        this.f35729id = i9;
        this.title = title;
        this.authorUrl = str;
        this.banner1120 = str2;
        this.banner560 = str3;
        this.icon16 = str4;
        this.isNew = baseBoolInt;
        this.pushEnabled = baseBoolInt2;
        this.screenOrientation = num;
        this.friends = list;
        this.catalogPosition = num2;
        this.description = str5;
        this.genre = str6;
        this.genreId = num3;
        this.international = bool;
        this.isInCatalog = num4;
        this.leaderboardType = appsAppLeaderboardType;
        this.membersCount = num5;
        this.platformId = str7;
        this.publishedDate = num6;
        this.screenName = str8;
        this.section = str9;
        this.authorOwnerId = num7;
        this.isInstalled = bool2;
        this.icon139 = str10;
        this.icon150 = str11;
        this.icon278 = str12;
        this.icon576 = str13;
        this.backgroundLoaderColor = str14;
        this.loaderIcon = str15;
        this.icon75 = str16;
        this.openInExternalBrowser = bool3;
    }

    @NotNull
    public final AppsAppType component1() {
        return this.type;
    }

    @Nullable
    public final Integer component10() {
        return this.screenOrientation;
    }

    @Nullable
    public final List<Integer> component11() {
        return this.friends;
    }

    @Nullable
    public final Integer component12() {
        return this.catalogPosition;
    }

    @Nullable
    public final String component13() {
        return this.description;
    }

    @Nullable
    public final String component14() {
        return this.genre;
    }

    @Nullable
    public final Integer component15() {
        return this.genreId;
    }

    @Nullable
    public final Boolean component16() {
        return this.international;
    }

    @Nullable
    public final Integer component17() {
        return this.isInCatalog;
    }

    @Nullable
    public final AppsAppLeaderboardType component18() {
        return this.leaderboardType;
    }

    @Nullable
    public final Integer component19() {
        return this.membersCount;
    }

    public final int component2() {
        return this.f35729id;
    }

    @Nullable
    public final String component20() {
        return this.platformId;
    }

    @Nullable
    public final Integer component21() {
        return this.publishedDate;
    }

    @Nullable
    public final String component22() {
        return this.screenName;
    }

    @Nullable
    public final String component23() {
        return this.section;
    }

    @Nullable
    public final Integer component24() {
        return this.authorOwnerId;
    }

    @Nullable
    public final Boolean component25() {
        return this.isInstalled;
    }

    @Nullable
    public final String component26() {
        return this.icon139;
    }

    @Nullable
    public final String component27() {
        return this.icon150;
    }

    @Nullable
    public final String component28() {
        return this.icon278;
    }

    @Nullable
    public final String component29() {
        return this.icon576;
    }

    @NotNull
    public final String component3() {
        return this.title;
    }

    @Nullable
    public final String component30() {
        return this.backgroundLoaderColor;
    }

    @Nullable
    public final String component31() {
        return this.loaderIcon;
    }

    @Nullable
    public final String component32() {
        return this.icon75;
    }

    @Nullable
    public final Boolean component33() {
        return this.openInExternalBrowser;
    }

    @Nullable
    public final String component4() {
        return this.authorUrl;
    }

    @Nullable
    public final String component5() {
        return this.banner1120;
    }

    @Nullable
    public final String component6() {
        return this.banner560;
    }

    @Nullable
    public final String component7() {
        return this.icon16;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.isNew;
    }

    @Nullable
    public final BaseBoolInt component9() {
        return this.pushEnabled;
    }

    @NotNull
    public final AppsApp copy(@NotNull AppsAppType type, int i9, @NotNull String title, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable Integer num, @Nullable List<Integer> list, @Nullable Integer num2, @Nullable String str5, @Nullable String str6, @Nullable Integer num3, @Nullable Boolean bool, @Nullable Integer num4, @Nullable AppsAppLeaderboardType appsAppLeaderboardType, @Nullable Integer num5, @Nullable String str7, @Nullable Integer num6, @Nullable String str8, @Nullable String str9, @Nullable Integer num7, @Nullable Boolean bool2, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable String str14, @Nullable String str15, @Nullable String str16, @Nullable Boolean bool3) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(title, "title");
        return new AppsApp(type, i9, title, str, str2, str3, str4, baseBoolInt, baseBoolInt2, num, list, num2, str5, str6, num3, bool, num4, appsAppLeaderboardType, num5, str7, num6, str8, str9, num7, bool2, str10, str11, str12, str13, str14, str15, str16, bool3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppsApp) {
            AppsApp appsApp = (AppsApp) obj;
            return this.type == appsApp.type && this.f35729id == appsApp.f35729id && Intrinsics.areEqual(this.title, appsApp.title) && Intrinsics.areEqual(this.authorUrl, appsApp.authorUrl) && Intrinsics.areEqual(this.banner1120, appsApp.banner1120) && Intrinsics.areEqual(this.banner560, appsApp.banner560) && Intrinsics.areEqual(this.icon16, appsApp.icon16) && this.isNew == appsApp.isNew && this.pushEnabled == appsApp.pushEnabled && Intrinsics.areEqual(this.screenOrientation, appsApp.screenOrientation) && Intrinsics.areEqual(this.friends, appsApp.friends) && Intrinsics.areEqual(this.catalogPosition, appsApp.catalogPosition) && Intrinsics.areEqual(this.description, appsApp.description) && Intrinsics.areEqual(this.genre, appsApp.genre) && Intrinsics.areEqual(this.genreId, appsApp.genreId) && Intrinsics.areEqual(this.international, appsApp.international) && Intrinsics.areEqual(this.isInCatalog, appsApp.isInCatalog) && this.leaderboardType == appsApp.leaderboardType && Intrinsics.areEqual(this.membersCount, appsApp.membersCount) && Intrinsics.areEqual(this.platformId, appsApp.platformId) && Intrinsics.areEqual(this.publishedDate, appsApp.publishedDate) && Intrinsics.areEqual(this.screenName, appsApp.screenName) && Intrinsics.areEqual(this.section, appsApp.section) && Intrinsics.areEqual(this.authorOwnerId, appsApp.authorOwnerId) && Intrinsics.areEqual(this.isInstalled, appsApp.isInstalled) && Intrinsics.areEqual(this.icon139, appsApp.icon139) && Intrinsics.areEqual(this.icon150, appsApp.icon150) && Intrinsics.areEqual(this.icon278, appsApp.icon278) && Intrinsics.areEqual(this.icon576, appsApp.icon576) && Intrinsics.areEqual(this.backgroundLoaderColor, appsApp.backgroundLoaderColor) && Intrinsics.areEqual(this.loaderIcon, appsApp.loaderIcon) && Intrinsics.areEqual(this.icon75, appsApp.icon75) && Intrinsics.areEqual(this.openInExternalBrowser, appsApp.openInExternalBrowser);
        }
        return false;
    }

    @Nullable
    public final Integer getAuthorOwnerId() {
        return this.authorOwnerId;
    }

    @Nullable
    public final String getAuthorUrl() {
        return this.authorUrl;
    }

    @Nullable
    public final String getBackgroundLoaderColor() {
        return this.backgroundLoaderColor;
    }

    @Nullable
    public final String getBanner1120() {
        return this.banner1120;
    }

    @Nullable
    public final String getBanner560() {
        return this.banner560;
    }

    @Nullable
    public final Integer getCatalogPosition() {
        return this.catalogPosition;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final List<Integer> getFriends() {
        return this.friends;
    }

    @Nullable
    public final String getGenre() {
        return this.genre;
    }

    @Nullable
    public final Integer getGenreId() {
        return this.genreId;
    }

    @Nullable
    public final String getIcon139() {
        return this.icon139;
    }

    @Nullable
    public final String getIcon150() {
        return this.icon150;
    }

    @Nullable
    public final String getIcon16() {
        return this.icon16;
    }

    @Nullable
    public final String getIcon278() {
        return this.icon278;
    }

    @Nullable
    public final String getIcon576() {
        return this.icon576;
    }

    @Nullable
    public final String getIcon75() {
        return this.icon75;
    }

    public final int getId() {
        return this.f35729id;
    }

    @Nullable
    public final Boolean getInternational() {
        return this.international;
    }

    @Nullable
    public final AppsAppLeaderboardType getLeaderboardType() {
        return this.leaderboardType;
    }

    @Nullable
    public final String getLoaderIcon() {
        return this.loaderIcon;
    }

    @Nullable
    public final Integer getMembersCount() {
        return this.membersCount;
    }

    @Nullable
    public final Boolean getOpenInExternalBrowser() {
        return this.openInExternalBrowser;
    }

    @Nullable
    public final String getPlatformId() {
        return this.platformId;
    }

    @Nullable
    public final Integer getPublishedDate() {
        return this.publishedDate;
    }

    @Nullable
    public final BaseBoolInt getPushEnabled() {
        return this.pushEnabled;
    }

    @Nullable
    public final String getScreenName() {
        return this.screenName;
    }

    @Nullable
    public final Integer getScreenOrientation() {
        return this.screenOrientation;
    }

    @Nullable
    public final String getSection() {
        return this.section;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final AppsAppType getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((((this.type.hashCode() * 31) + this.f35729id) * 31) + this.title.hashCode()) * 31;
        String str = this.authorUrl;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.banner1120;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.banner560;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.icon16;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.isNew;
        int hashCode6 = (hashCode5 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.pushEnabled;
        int hashCode7 = (hashCode6 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        Integer num = this.screenOrientation;
        int hashCode8 = (hashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        List<Integer> list = this.friends;
        int hashCode9 = (hashCode8 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num2 = this.catalogPosition;
        int hashCode10 = (hashCode9 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str5 = this.description;
        int hashCode11 = (hashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.genre;
        int hashCode12 = (hashCode11 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num3 = this.genreId;
        int hashCode13 = (hashCode12 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Boolean bool = this.international;
        int hashCode14 = (hashCode13 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num4 = this.isInCatalog;
        int hashCode15 = (hashCode14 + (num4 == null ? 0 : num4.hashCode())) * 31;
        AppsAppLeaderboardType appsAppLeaderboardType = this.leaderboardType;
        int hashCode16 = (hashCode15 + (appsAppLeaderboardType == null ? 0 : appsAppLeaderboardType.hashCode())) * 31;
        Integer num5 = this.membersCount;
        int hashCode17 = (hashCode16 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str7 = this.platformId;
        int hashCode18 = (hashCode17 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num6 = this.publishedDate;
        int hashCode19 = (hashCode18 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str8 = this.screenName;
        int hashCode20 = (hashCode19 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.section;
        int hashCode21 = (hashCode20 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Integer num7 = this.authorOwnerId;
        int hashCode22 = (hashCode21 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Boolean bool2 = this.isInstalled;
        int hashCode23 = (hashCode22 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str10 = this.icon139;
        int hashCode24 = (hashCode23 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.icon150;
        int hashCode25 = (hashCode24 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.icon278;
        int hashCode26 = (hashCode25 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.icon576;
        int hashCode27 = (hashCode26 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.backgroundLoaderColor;
        int hashCode28 = (hashCode27 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.loaderIcon;
        int hashCode29 = (hashCode28 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.icon75;
        int hashCode30 = (hashCode29 + (str16 == null ? 0 : str16.hashCode())) * 31;
        Boolean bool3 = this.openInExternalBrowser;
        return hashCode30 + (bool3 != null ? bool3.hashCode() : 0);
    }

    @Nullable
    public final Integer isInCatalog() {
        return this.isInCatalog;
    }

    @Nullable
    public final Boolean isInstalled() {
        return this.isInstalled;
    }

    @Nullable
    public final BaseBoolInt isNew() {
        return this.isNew;
    }

    @NotNull
    public String toString() {
        AppsAppType appsAppType = this.type;
        int i9 = this.f35729id;
        String str = this.title;
        String str2 = this.authorUrl;
        String str3 = this.banner1120;
        String str4 = this.banner560;
        String str5 = this.icon16;
        BaseBoolInt baseBoolInt = this.isNew;
        BaseBoolInt baseBoolInt2 = this.pushEnabled;
        Integer num = this.screenOrientation;
        List<Integer> list = this.friends;
        Integer num2 = this.catalogPosition;
        String str6 = this.description;
        String str7 = this.genre;
        Integer num3 = this.genreId;
        Boolean bool = this.international;
        Integer num4 = this.isInCatalog;
        AppsAppLeaderboardType appsAppLeaderboardType = this.leaderboardType;
        Integer num5 = this.membersCount;
        String str8 = this.platformId;
        Integer num6 = this.publishedDate;
        String str9 = this.screenName;
        String str10 = this.section;
        Integer num7 = this.authorOwnerId;
        Boolean bool2 = this.isInstalled;
        String str11 = this.icon139;
        String str12 = this.icon150;
        String str13 = this.icon278;
        String str14 = this.icon576;
        String str15 = this.backgroundLoaderColor;
        String str16 = this.loaderIcon;
        String str17 = this.icon75;
        Boolean bool3 = this.openInExternalBrowser;
        return "AppsApp(type=" + appsAppType + ", id=" + i9 + ", title=" + str + ", authorUrl=" + str2 + ", banner1120=" + str3 + ", banner560=" + str4 + ", icon16=" + str5 + ", isNew=" + baseBoolInt + ", pushEnabled=" + baseBoolInt2 + ", screenOrientation=" + num + ", friends=" + list + ", catalogPosition=" + num2 + ", description=" + str6 + ", genre=" + str7 + ", genreId=" + num3 + ", international=" + bool + ", isInCatalog=" + num4 + ", leaderboardType=" + appsAppLeaderboardType + ", membersCount=" + num5 + ", platformId=" + str8 + ", publishedDate=" + num6 + ", screenName=" + str9 + ", section=" + str10 + ", authorOwnerId=" + num7 + ", isInstalled=" + bool2 + ", icon139=" + str11 + ", icon150=" + str12 + ", icon278=" + str13 + ", icon576=" + str14 + ", backgroundLoaderColor=" + str15 + ", loaderIcon=" + str16 + ", icon75=" + str17 + ", openInExternalBrowser=" + bool3 + ")";
    }

    public /* synthetic */ AppsApp(AppsAppType appsAppType, int i9, String str, String str2, String str3, String str4, String str5, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, Integer num, List list, Integer num2, String str6, String str7, Integer num3, Boolean bool, Integer num4, AppsAppLeaderboardType appsAppLeaderboardType, Integer num5, String str8, Integer num6, String str9, String str10, Integer num7, Boolean bool2, String str11, String str12, String str13, String str14, String str15, String str16, String str17, Boolean bool3, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(appsAppType, i9, str, (i10 & 8) != 0 ? null : str2, (i10 & 16) != 0 ? null : str3, (i10 & 32) != 0 ? null : str4, (i10 & 64) != 0 ? null : str5, (i10 & 128) != 0 ? null : baseBoolInt, (i10 & 256) != 0 ? null : baseBoolInt2, (i10 & 512) != 0 ? null : num, (i10 & 1024) != 0 ? null : list, (i10 & 2048) != 0 ? null : num2, (i10 & 4096) != 0 ? null : str6, (i10 & 8192) != 0 ? null : str7, (i10 & 16384) != 0 ? null : num3, (32768 & i10) != 0 ? null : bool, (65536 & i10) != 0 ? null : num4, (131072 & i10) != 0 ? null : appsAppLeaderboardType, (262144 & i10) != 0 ? null : num5, (524288 & i10) != 0 ? null : str8, (1048576 & i10) != 0 ? null : num6, (2097152 & i10) != 0 ? null : str9, (4194304 & i10) != 0 ? null : str10, (8388608 & i10) != 0 ? null : num7, (16777216 & i10) != 0 ? null : bool2, (33554432 & i10) != 0 ? null : str11, (67108864 & i10) != 0 ? null : str12, (134217728 & i10) != 0 ? null : str13, (268435456 & i10) != 0 ? null : str14, (536870912 & i10) != 0 ? null : str15, (1073741824 & i10) != 0 ? null : str16, (i10 & Integer.MIN_VALUE) != 0 ? null : str17, (i11 & 1) != 0 ? null : bool3);
    }
}
