package com.vk.sdk.api.wall.dto;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseCommentsInfo;
import com.vk.sdk.api.base.dto.BaseLikesInfo;
import com.vk.sdk.api.base.dto.BaseRepostsInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b]\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0091\u0001B¯\u0003\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\r\u0012\u0010\b\u0002\u0010+\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0003\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u000101\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u000105¢\u0006\u0002\u00106J\u0011\u0010i\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0003HÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u0010\u0010k\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010aJ\u000b\u0010l\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u0010\u0010m\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010@J\u000b\u0010n\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u0010\u0010o\u001a\u0004\u0018\u00010\u001aHÆ\u0003¢\u0006\u0002\u0010RJ\u0011\u0010p\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0003HÆ\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\u001eHÆ\u0003J\u0010\u0010r\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010@J\u0010\u0010s\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010@J\u000b\u0010t\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010#HÆ\u0003J\u0010\u0010w\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010@J\u0010\u0010x\u001a\u0004\u0018\u00010\u001aHÆ\u0003¢\u0006\u0002\u0010RJ\u0010\u0010y\u001a\u0004\u0018\u00010\u001aHÆ\u0003¢\u0006\u0002\u0010RJ\u000b\u0010z\u001a\u0004\u0018\u00010(HÆ\u0003J\u000b\u0010{\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010|\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010@J\u0011\u0010}\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0003HÆ\u0003J\u000b\u0010~\u001a\u0004\u0018\u00010-HÆ\u0003J\u000b\u0010\u007f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u0080\u0001\u001a\u0004\u0018\u00010/HÆ\u0003J\f\u0010\u0081\u0001\u001a\u0004\u0018\u000101HÆ\u0003J\f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\f\u0010\u0084\u0001\u001a\u0004\u0018\u000105HÆ\u0003J\f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0011\u0010\u0088\u0001\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010@J\f\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003Jº\u0003\u0010\u008b\u0001\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00032\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\r2\u0010\b\u0002\u0010+\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00032\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/2\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u00104\u001a\u0004\u0018\u000105HÆ\u0001¢\u0006\u0003\u0010\u008c\u0001J\u0015\u0010\u008d\u0001\u001a\u00020\u001a2\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010\u008f\u0001\u001a\u00020\rHÖ\u0001J\n\u0010\u0090\u0001\u001a\u00020\u0016HÖ\u0001R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u001e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010<R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010<R\u001a\u0010\u0017\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010A\u001a\u0004\b?\u0010@R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010:R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u001a\u0010\u001f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010A\u001a\u0004\bI\u0010@R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u001a\u0010 \u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010A\u001a\u0004\bL\u0010@R\u0018\u0010!\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bM\u0010HR\u0018\u0010\"\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u0010OR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bP\u00108R\u001a\u0010$\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010A\u001a\u0004\bQ\u0010@R\u001a\u0010%\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010S\u001a\u0004\b%\u0010RR\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010S\u001a\u0004\b\u0019\u0010RR\u001a\u0010&\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010S\u001a\u0004\b&\u0010RR\u001a\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010A\u001a\u0004\b\f\u0010@R\u0018\u0010'\u001a\u0004\u0018\u00010(8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bT\u0010UR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bV\u0010<R\u0018\u0010)\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u0010HR\u001e\u0010+\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bX\u0010:R\u001a\u0010*\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010A\u001a\u0004\bY\u0010@R\u0018\u0010,\u001a\u0004\u0018\u00010-8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010[R\u0018\u0010.\u001a\u0004\u0018\u00010/8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010]R\u0018\u00100\u001a\u0004\u0018\u0001018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b^\u0010_R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010b\u001a\u0004\b`\u0010aR\u0018\u00102\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bc\u0010HR\u0018\u00103\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bd\u00108R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\be\u0010fR\u0018\u00104\u001a\u0004\u0018\u0001058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bg\u0010h¨\u0006\u0092\u0001"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "", "copyHistory", "", "canEdit", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "createdBy", "Lcom/vk/dto/common/id/UserId;", "canDelete", "canPin", "donut", "Lcom/vk/sdk/api/wall/dto/WallWallpostDonut;", "isPinned", "", "comments", "Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;", "markedAsAds", "topicId", "Lcom/vk/sdk/api/wall/dto/WallWallpostFull$TopicId;", "shortTextRate", "", "hash", "", "carouselOffset", "accessKey", "isDeleted", "", "attachments", "Lcom/vk/sdk/api/wall/dto/WallWallpostAttachment;", "copyright", "Lcom/vk/sdk/api/wall/dto/WallPostCopyright;", "date", "edited", "fromId", "geo", "Lcom/vk/sdk/api/wall/dto/WallGeo;", "id", "isArchived", "isFavorite", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "ownerId", ShareConstants.RESULT_POST_ID, "parentsStack", "postSource", "Lcom/vk/sdk/api/wall/dto/WallPostSource;", "postType", "Lcom/vk/sdk/api/wall/dto/WallPostType;", "reposts", "Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "signerId", ViewHierarchyConstants.TEXT_KEY, AdUnitActivity.EXTRA_VIEWS, "Lcom/vk/sdk/api/wall/dto/WallViews;", "(Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/wall/dto/WallWallpostDonut;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/wall/dto/WallWallpostFull$TopicId;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostCopyright;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/wall/dto/WallGeo;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostSource;Lcom/vk/sdk/api/wall/dto/WallPostType;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/wall/dto/WallViews;)V", "getAccessKey", "()Ljava/lang/String;", "getAttachments", "()Ljava/util/List;", "getCanDelete", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCanEdit", "getCanPin", "getCarouselOffset", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getComments", "()Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;", "getCopyHistory", "getCopyright", "()Lcom/vk/sdk/api/wall/dto/WallPostCopyright;", "getCreatedBy", "()Lcom/vk/dto/common/id/UserId;", "getDate", "getDonut", "()Lcom/vk/sdk/api/wall/dto/WallWallpostDonut;", "getEdited", "getFromId", "getGeo", "()Lcom/vk/sdk/api/wall/dto/WallGeo;", "getHash", "getId", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "getMarkedAsAds", "getOwnerId", "getParentsStack", "getPostId", "getPostSource", "()Lcom/vk/sdk/api/wall/dto/WallPostSource;", "getPostType", "()Lcom/vk/sdk/api/wall/dto/WallPostType;", "getReposts", "()Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "getShortTextRate", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getSignerId", "getText", "getTopicId", "()Lcom/vk/sdk/api/wall/dto/WallWallpostFull$TopicId;", "getViews", "()Lcom/vk/sdk/api/wall/dto/WallViews;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/wall/dto/WallWallpostDonut;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/wall/dto/WallWallpostFull$TopicId;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostCopyright;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/wall/dto/WallGeo;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostSource;Lcom/vk/sdk/api/wall/dto/WallPostType;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/wall/dto/WallViews;)Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "equals", "other", "hashCode", "toString", "TopicId", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallWallpostFull {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("attachments")
    @Nullable
    private final List<WallWallpostAttachment> attachments;
    @SerializedName("can_delete")
    @Nullable
    private final BaseBoolInt canDelete;
    @SerializedName("can_edit")
    @Nullable
    private final BaseBoolInt canEdit;
    @SerializedName("can_pin")
    @Nullable
    private final BaseBoolInt canPin;
    @SerializedName("carousel_offset")
    @Nullable
    private final Integer carouselOffset;
    @SerializedName("comments")
    @Nullable
    private final BaseCommentsInfo comments;
    @SerializedName("copy_history")
    @Nullable
    private final List<WallWallpostFull> copyHistory;
    @SerializedName("copyright")
    @Nullable
    private final WallPostCopyright copyright;
    @SerializedName("created_by")
    @Nullable
    private final UserId createdBy;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("donut")
    @Nullable
    private final WallWallpostDonut donut;
    @SerializedName("edited")
    @Nullable
    private final Integer edited;
    @SerializedName("from_id")
    @Nullable
    private final UserId fromId;
    @SerializedName("geo")
    @Nullable
    private final WallGeo geo;
    @SerializedName("hash")
    @Nullable
    private final String hash;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36158id;
    @SerializedName("is_archived")
    @Nullable
    private final Boolean isArchived;
    @SerializedName("is_deleted")
    @Nullable
    private final Boolean isDeleted;
    @SerializedName("is_favorite")
    @Nullable
    private final Boolean isFavorite;
    @SerializedName("is_pinned")
    @Nullable
    private final Integer isPinned;
    @SerializedName("likes")
    @Nullable
    private final BaseLikesInfo likes;
    @SerializedName("marked_as_ads")
    @Nullable
    private final BaseBoolInt markedAsAds;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("parents_stack")
    @Nullable
    private final List<Integer> parentsStack;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;
    @SerializedName("post_source")
    @Nullable
    private final WallPostSource postSource;
    @SerializedName("post_type")
    @Nullable
    private final WallPostType postType;
    @SerializedName("reposts")
    @Nullable
    private final BaseRepostsInfo reposts;
    @SerializedName("short_text_rate")
    @Nullable
    private final Float shortTextRate;
    @SerializedName("signer_id")
    @Nullable
    private final UserId signerId;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName("topic_id")
    @Nullable
    private final TopicId topicId;
    @SerializedName(AdUnitActivity.EXTRA_VIEWS)
    @Nullable
    private final WallViews views;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallWallpostFull$TopicId;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "EMPTY_TOPIC", "ART", "IT", "GAMES", "MUSIC", "PHOTO", "SCIENCE_AND_TECH", "SPORT", "TRAVEL", "TV_AND_CINEMA", "HUMOR", "FASHION", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum TopicId {
        EMPTY_TOPIC(0),
        ART(1),
        IT(7),
        GAMES(12),
        MUSIC(16),
        PHOTO(19),
        SCIENCE_AND_TECH(21),
        SPORT(23),
        TRAVEL(25),
        TV_AND_CINEMA(26),
        HUMOR(32),
        FASHION(43);
        
        private final int value;

        TopicId(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public WallWallpostFull() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, 3, null);
    }

    public WallWallpostFull(@Nullable List<WallWallpostFull> list, @Nullable BaseBoolInt baseBoolInt, @Nullable UserId userId, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable WallWallpostDonut wallWallpostDonut, @Nullable Integer num, @Nullable BaseCommentsInfo baseCommentsInfo, @Nullable BaseBoolInt baseBoolInt4, @Nullable TopicId topicId, @Nullable Float f10, @Nullable String str, @Nullable Integer num2, @Nullable String str2, @Nullable Boolean bool, @Nullable List<WallWallpostAttachment> list2, @Nullable WallPostCopyright wallPostCopyright, @Nullable Integer num3, @Nullable Integer num4, @Nullable UserId userId2, @Nullable WallGeo wallGeo, @Nullable Integer num5, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable BaseLikesInfo baseLikesInfo, @Nullable UserId userId3, @Nullable Integer num6, @Nullable List<Integer> list3, @Nullable WallPostSource wallPostSource, @Nullable WallPostType wallPostType, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable UserId userId4, @Nullable String str3, @Nullable WallViews wallViews) {
        this.copyHistory = list;
        this.canEdit = baseBoolInt;
        this.createdBy = userId;
        this.canDelete = baseBoolInt2;
        this.canPin = baseBoolInt3;
        this.donut = wallWallpostDonut;
        this.isPinned = num;
        this.comments = baseCommentsInfo;
        this.markedAsAds = baseBoolInt4;
        this.topicId = topicId;
        this.shortTextRate = f10;
        this.hash = str;
        this.carouselOffset = num2;
        this.accessKey = str2;
        this.isDeleted = bool;
        this.attachments = list2;
        this.copyright = wallPostCopyright;
        this.date = num3;
        this.edited = num4;
        this.fromId = userId2;
        this.geo = wallGeo;
        this.f36158id = num5;
        this.isArchived = bool2;
        this.isFavorite = bool3;
        this.likes = baseLikesInfo;
        this.ownerId = userId3;
        this.postId = num6;
        this.parentsStack = list3;
        this.postSource = wallPostSource;
        this.postType = wallPostType;
        this.reposts = baseRepostsInfo;
        this.signerId = userId4;
        this.text = str3;
        this.views = wallViews;
    }

    @Nullable
    public final List<WallWallpostFull> component1() {
        return this.copyHistory;
    }

    @Nullable
    public final TopicId component10() {
        return this.topicId;
    }

    @Nullable
    public final Float component11() {
        return this.shortTextRate;
    }

    @Nullable
    public final String component12() {
        return this.hash;
    }

    @Nullable
    public final Integer component13() {
        return this.carouselOffset;
    }

    @Nullable
    public final String component14() {
        return this.accessKey;
    }

    @Nullable
    public final Boolean component15() {
        return this.isDeleted;
    }

    @Nullable
    public final List<WallWallpostAttachment> component16() {
        return this.attachments;
    }

    @Nullable
    public final WallPostCopyright component17() {
        return this.copyright;
    }

    @Nullable
    public final Integer component18() {
        return this.date;
    }

    @Nullable
    public final Integer component19() {
        return this.edited;
    }

    @Nullable
    public final BaseBoolInt component2() {
        return this.canEdit;
    }

    @Nullable
    public final UserId component20() {
        return this.fromId;
    }

    @Nullable
    public final WallGeo component21() {
        return this.geo;
    }

    @Nullable
    public final Integer component22() {
        return this.f36158id;
    }

    @Nullable
    public final Boolean component23() {
        return this.isArchived;
    }

    @Nullable
    public final Boolean component24() {
        return this.isFavorite;
    }

    @Nullable
    public final BaseLikesInfo component25() {
        return this.likes;
    }

    @Nullable
    public final UserId component26() {
        return this.ownerId;
    }

    @Nullable
    public final Integer component27() {
        return this.postId;
    }

    @Nullable
    public final List<Integer> component28() {
        return this.parentsStack;
    }

    @Nullable
    public final WallPostSource component29() {
        return this.postSource;
    }

    @Nullable
    public final UserId component3() {
        return this.createdBy;
    }

    @Nullable
    public final WallPostType component30() {
        return this.postType;
    }

    @Nullable
    public final BaseRepostsInfo component31() {
        return this.reposts;
    }

    @Nullable
    public final UserId component32() {
        return this.signerId;
    }

    @Nullable
    public final String component33() {
        return this.text;
    }

    @Nullable
    public final WallViews component34() {
        return this.views;
    }

    @Nullable
    public final BaseBoolInt component4() {
        return this.canDelete;
    }

    @Nullable
    public final BaseBoolInt component5() {
        return this.canPin;
    }

    @Nullable
    public final WallWallpostDonut component6() {
        return this.donut;
    }

    @Nullable
    public final Integer component7() {
        return this.isPinned;
    }

    @Nullable
    public final BaseCommentsInfo component8() {
        return this.comments;
    }

    @Nullable
    public final BaseBoolInt component9() {
        return this.markedAsAds;
    }

    @NotNull
    public final WallWallpostFull copy(@Nullable List<WallWallpostFull> list, @Nullable BaseBoolInt baseBoolInt, @Nullable UserId userId, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable WallWallpostDonut wallWallpostDonut, @Nullable Integer num, @Nullable BaseCommentsInfo baseCommentsInfo, @Nullable BaseBoolInt baseBoolInt4, @Nullable TopicId topicId, @Nullable Float f10, @Nullable String str, @Nullable Integer num2, @Nullable String str2, @Nullable Boolean bool, @Nullable List<WallWallpostAttachment> list2, @Nullable WallPostCopyright wallPostCopyright, @Nullable Integer num3, @Nullable Integer num4, @Nullable UserId userId2, @Nullable WallGeo wallGeo, @Nullable Integer num5, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable BaseLikesInfo baseLikesInfo, @Nullable UserId userId3, @Nullable Integer num6, @Nullable List<Integer> list3, @Nullable WallPostSource wallPostSource, @Nullable WallPostType wallPostType, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable UserId userId4, @Nullable String str3, @Nullable WallViews wallViews) {
        return new WallWallpostFull(list, baseBoolInt, userId, baseBoolInt2, baseBoolInt3, wallWallpostDonut, num, baseCommentsInfo, baseBoolInt4, topicId, f10, str, num2, str2, bool, list2, wallPostCopyright, num3, num4, userId2, wallGeo, num5, bool2, bool3, baseLikesInfo, userId3, num6, list3, wallPostSource, wallPostType, baseRepostsInfo, userId4, str3, wallViews);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallWallpostFull) {
            WallWallpostFull wallWallpostFull = (WallWallpostFull) obj;
            return Intrinsics.areEqual(this.copyHistory, wallWallpostFull.copyHistory) && this.canEdit == wallWallpostFull.canEdit && Intrinsics.areEqual(this.createdBy, wallWallpostFull.createdBy) && this.canDelete == wallWallpostFull.canDelete && this.canPin == wallWallpostFull.canPin && Intrinsics.areEqual(this.donut, wallWallpostFull.donut) && Intrinsics.areEqual(this.isPinned, wallWallpostFull.isPinned) && Intrinsics.areEqual(this.comments, wallWallpostFull.comments) && this.markedAsAds == wallWallpostFull.markedAsAds && this.topicId == wallWallpostFull.topicId && Intrinsics.areEqual((Object) this.shortTextRate, (Object) wallWallpostFull.shortTextRate) && Intrinsics.areEqual(this.hash, wallWallpostFull.hash) && Intrinsics.areEqual(this.carouselOffset, wallWallpostFull.carouselOffset) && Intrinsics.areEqual(this.accessKey, wallWallpostFull.accessKey) && Intrinsics.areEqual(this.isDeleted, wallWallpostFull.isDeleted) && Intrinsics.areEqual(this.attachments, wallWallpostFull.attachments) && Intrinsics.areEqual(this.copyright, wallWallpostFull.copyright) && Intrinsics.areEqual(this.date, wallWallpostFull.date) && Intrinsics.areEqual(this.edited, wallWallpostFull.edited) && Intrinsics.areEqual(this.fromId, wallWallpostFull.fromId) && Intrinsics.areEqual(this.geo, wallWallpostFull.geo) && Intrinsics.areEqual(this.f36158id, wallWallpostFull.f36158id) && Intrinsics.areEqual(this.isArchived, wallWallpostFull.isArchived) && Intrinsics.areEqual(this.isFavorite, wallWallpostFull.isFavorite) && Intrinsics.areEqual(this.likes, wallWallpostFull.likes) && Intrinsics.areEqual(this.ownerId, wallWallpostFull.ownerId) && Intrinsics.areEqual(this.postId, wallWallpostFull.postId) && Intrinsics.areEqual(this.parentsStack, wallWallpostFull.parentsStack) && Intrinsics.areEqual(this.postSource, wallWallpostFull.postSource) && this.postType == wallWallpostFull.postType && Intrinsics.areEqual(this.reposts, wallWallpostFull.reposts) && Intrinsics.areEqual(this.signerId, wallWallpostFull.signerId) && Intrinsics.areEqual(this.text, wallWallpostFull.text) && Intrinsics.areEqual(this.views, wallWallpostFull.views);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final List<WallWallpostAttachment> getAttachments() {
        return this.attachments;
    }

    @Nullable
    public final BaseBoolInt getCanDelete() {
        return this.canDelete;
    }

    @Nullable
    public final BaseBoolInt getCanEdit() {
        return this.canEdit;
    }

    @Nullable
    public final BaseBoolInt getCanPin() {
        return this.canPin;
    }

    @Nullable
    public final Integer getCarouselOffset() {
        return this.carouselOffset;
    }

    @Nullable
    public final BaseCommentsInfo getComments() {
        return this.comments;
    }

    @Nullable
    public final List<WallWallpostFull> getCopyHistory() {
        return this.copyHistory;
    }

    @Nullable
    public final WallPostCopyright getCopyright() {
        return this.copyright;
    }

    @Nullable
    public final UserId getCreatedBy() {
        return this.createdBy;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final WallWallpostDonut getDonut() {
        return this.donut;
    }

    @Nullable
    public final Integer getEdited() {
        return this.edited;
    }

    @Nullable
    public final UserId getFromId() {
        return this.fromId;
    }

    @Nullable
    public final WallGeo getGeo() {
        return this.geo;
    }

    @Nullable
    public final String getHash() {
        return this.hash;
    }

    @Nullable
    public final Integer getId() {
        return this.f36158id;
    }

    @Nullable
    public final BaseLikesInfo getLikes() {
        return this.likes;
    }

    @Nullable
    public final BaseBoolInt getMarkedAsAds() {
        return this.markedAsAds;
    }

    @Nullable
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final List<Integer> getParentsStack() {
        return this.parentsStack;
    }

    @Nullable
    public final Integer getPostId() {
        return this.postId;
    }

    @Nullable
    public final WallPostSource getPostSource() {
        return this.postSource;
    }

    @Nullable
    public final WallPostType getPostType() {
        return this.postType;
    }

    @Nullable
    public final BaseRepostsInfo getReposts() {
        return this.reposts;
    }

    @Nullable
    public final Float getShortTextRate() {
        return this.shortTextRate;
    }

    @Nullable
    public final UserId getSignerId() {
        return this.signerId;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final TopicId getTopicId() {
        return this.topicId;
    }

    @Nullable
    public final WallViews getViews() {
        return this.views;
    }

    public int hashCode() {
        List<WallWallpostFull> list = this.copyHistory;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        BaseBoolInt baseBoolInt = this.canEdit;
        int hashCode2 = (hashCode + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        UserId userId = this.createdBy;
        int hashCode3 = (hashCode2 + (userId == null ? 0 : userId.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.canDelete;
        int hashCode4 = (hashCode3 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.canPin;
        int hashCode5 = (hashCode4 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        WallWallpostDonut wallWallpostDonut = this.donut;
        int hashCode6 = (hashCode5 + (wallWallpostDonut == null ? 0 : wallWallpostDonut.hashCode())) * 31;
        Integer num = this.isPinned;
        int hashCode7 = (hashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        BaseCommentsInfo baseCommentsInfo = this.comments;
        int hashCode8 = (hashCode7 + (baseCommentsInfo == null ? 0 : baseCommentsInfo.hashCode())) * 31;
        BaseBoolInt baseBoolInt4 = this.markedAsAds;
        int hashCode9 = (hashCode8 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
        TopicId topicId = this.topicId;
        int hashCode10 = (hashCode9 + (topicId == null ? 0 : topicId.hashCode())) * 31;
        Float f10 = this.shortTextRate;
        int hashCode11 = (hashCode10 + (f10 == null ? 0 : f10.hashCode())) * 31;
        String str = this.hash;
        int hashCode12 = (hashCode11 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.carouselOffset;
        int hashCode13 = (hashCode12 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str2 = this.accessKey;
        int hashCode14 = (hashCode13 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.isDeleted;
        int hashCode15 = (hashCode14 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<WallWallpostAttachment> list2 = this.attachments;
        int hashCode16 = (hashCode15 + (list2 == null ? 0 : list2.hashCode())) * 31;
        WallPostCopyright wallPostCopyright = this.copyright;
        int hashCode17 = (hashCode16 + (wallPostCopyright == null ? 0 : wallPostCopyright.hashCode())) * 31;
        Integer num3 = this.date;
        int hashCode18 = (hashCode17 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.edited;
        int hashCode19 = (hashCode18 + (num4 == null ? 0 : num4.hashCode())) * 31;
        UserId userId2 = this.fromId;
        int hashCode20 = (hashCode19 + (userId2 == null ? 0 : userId2.hashCode())) * 31;
        WallGeo wallGeo = this.geo;
        int hashCode21 = (hashCode20 + (wallGeo == null ? 0 : wallGeo.hashCode())) * 31;
        Integer num5 = this.f36158id;
        int hashCode22 = (hashCode21 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Boolean bool2 = this.isArchived;
        int hashCode23 = (hashCode22 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.isFavorite;
        int hashCode24 = (hashCode23 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        BaseLikesInfo baseLikesInfo = this.likes;
        int hashCode25 = (hashCode24 + (baseLikesInfo == null ? 0 : baseLikesInfo.hashCode())) * 31;
        UserId userId3 = this.ownerId;
        int hashCode26 = (hashCode25 + (userId3 == null ? 0 : userId3.hashCode())) * 31;
        Integer num6 = this.postId;
        int hashCode27 = (hashCode26 + (num6 == null ? 0 : num6.hashCode())) * 31;
        List<Integer> list3 = this.parentsStack;
        int hashCode28 = (hashCode27 + (list3 == null ? 0 : list3.hashCode())) * 31;
        WallPostSource wallPostSource = this.postSource;
        int hashCode29 = (hashCode28 + (wallPostSource == null ? 0 : wallPostSource.hashCode())) * 31;
        WallPostType wallPostType = this.postType;
        int hashCode30 = (hashCode29 + (wallPostType == null ? 0 : wallPostType.hashCode())) * 31;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        int hashCode31 = (hashCode30 + (baseRepostsInfo == null ? 0 : baseRepostsInfo.hashCode())) * 31;
        UserId userId4 = this.signerId;
        int hashCode32 = (hashCode31 + (userId4 == null ? 0 : userId4.hashCode())) * 31;
        String str3 = this.text;
        int hashCode33 = (hashCode32 + (str3 == null ? 0 : str3.hashCode())) * 31;
        WallViews wallViews = this.views;
        return hashCode33 + (wallViews != null ? wallViews.hashCode() : 0);
    }

    @Nullable
    public final Boolean isArchived() {
        return this.isArchived;
    }

    @Nullable
    public final Boolean isDeleted() {
        return this.isDeleted;
    }

    @Nullable
    public final Boolean isFavorite() {
        return this.isFavorite;
    }

    @Nullable
    public final Integer isPinned() {
        return this.isPinned;
    }

    @NotNull
    public String toString() {
        List<WallWallpostFull> list = this.copyHistory;
        BaseBoolInt baseBoolInt = this.canEdit;
        UserId userId = this.createdBy;
        BaseBoolInt baseBoolInt2 = this.canDelete;
        BaseBoolInt baseBoolInt3 = this.canPin;
        WallWallpostDonut wallWallpostDonut = this.donut;
        Integer num = this.isPinned;
        BaseCommentsInfo baseCommentsInfo = this.comments;
        BaseBoolInt baseBoolInt4 = this.markedAsAds;
        TopicId topicId = this.topicId;
        Float f10 = this.shortTextRate;
        String str = this.hash;
        Integer num2 = this.carouselOffset;
        String str2 = this.accessKey;
        Boolean bool = this.isDeleted;
        List<WallWallpostAttachment> list2 = this.attachments;
        WallPostCopyright wallPostCopyright = this.copyright;
        Integer num3 = this.date;
        Integer num4 = this.edited;
        UserId userId2 = this.fromId;
        WallGeo wallGeo = this.geo;
        Integer num5 = this.f36158id;
        Boolean bool2 = this.isArchived;
        Boolean bool3 = this.isFavorite;
        BaseLikesInfo baseLikesInfo = this.likes;
        UserId userId3 = this.ownerId;
        Integer num6 = this.postId;
        List<Integer> list3 = this.parentsStack;
        WallPostSource wallPostSource = this.postSource;
        WallPostType wallPostType = this.postType;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        UserId userId4 = this.signerId;
        String str3 = this.text;
        WallViews wallViews = this.views;
        return "WallWallpostFull(copyHistory=" + list + ", canEdit=" + baseBoolInt + ", createdBy=" + userId + ", canDelete=" + baseBoolInt2 + ", canPin=" + baseBoolInt3 + ", donut=" + wallWallpostDonut + ", isPinned=" + num + ", comments=" + baseCommentsInfo + ", markedAsAds=" + baseBoolInt4 + ", topicId=" + topicId + ", shortTextRate=" + f10 + ", hash=" + str + ", carouselOffset=" + num2 + ", accessKey=" + str2 + ", isDeleted=" + bool + ", attachments=" + list2 + ", copyright=" + wallPostCopyright + ", date=" + num3 + ", edited=" + num4 + ", fromId=" + userId2 + ", geo=" + wallGeo + ", id=" + num5 + ", isArchived=" + bool2 + ", isFavorite=" + bool3 + ", likes=" + baseLikesInfo + ", ownerId=" + userId3 + ", postId=" + num6 + ", parentsStack=" + list3 + ", postSource=" + wallPostSource + ", postType=" + wallPostType + ", reposts=" + baseRepostsInfo + ", signerId=" + userId4 + ", text=" + str3 + ", views=" + wallViews + ")";
    }

    public /* synthetic */ WallWallpostFull(List list, BaseBoolInt baseBoolInt, UserId userId, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, WallWallpostDonut wallWallpostDonut, Integer num, BaseCommentsInfo baseCommentsInfo, BaseBoolInt baseBoolInt4, TopicId topicId, Float f10, String str, Integer num2, String str2, Boolean bool, List list2, WallPostCopyright wallPostCopyright, Integer num3, Integer num4, UserId userId2, WallGeo wallGeo, Integer num5, Boolean bool2, Boolean bool3, BaseLikesInfo baseLikesInfo, UserId userId3, Integer num6, List list3, WallPostSource wallPostSource, WallPostType wallPostType, BaseRepostsInfo baseRepostsInfo, UserId userId4, String str3, WallViews wallViews, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : baseBoolInt, (i9 & 4) != 0 ? null : userId, (i9 & 8) != 0 ? null : baseBoolInt2, (i9 & 16) != 0 ? null : baseBoolInt3, (i9 & 32) != 0 ? null : wallWallpostDonut, (i9 & 64) != 0 ? null : num, (i9 & 128) != 0 ? null : baseCommentsInfo, (i9 & 256) != 0 ? null : baseBoolInt4, (i9 & 512) != 0 ? null : topicId, (i9 & 1024) != 0 ? null : f10, (i9 & 2048) != 0 ? null : str, (i9 & 4096) != 0 ? null : num2, (i9 & 8192) != 0 ? null : str2, (i9 & 16384) != 0 ? null : bool, (i9 & 32768) != 0 ? null : list2, (i9 & 65536) != 0 ? null : wallPostCopyright, (i9 & 131072) != 0 ? null : num3, (i9 & 262144) != 0 ? null : num4, (i9 & 524288) != 0 ? null : userId2, (i9 & 1048576) != 0 ? null : wallGeo, (i9 & 2097152) != 0 ? null : num5, (i9 & 4194304) != 0 ? null : bool2, (i9 & 8388608) != 0 ? null : bool3, (i9 & 16777216) != 0 ? null : baseLikesInfo, (i9 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? null : userId3, (i9 & 67108864) != 0 ? null : num6, (i9 & 134217728) != 0 ? null : list3, (i9 & 268435456) != 0 ? null : wallPostSource, (i9 & 536870912) != 0 ? null : wallPostType, (i9 & BasicMeasure.EXACTLY) != 0 ? null : baseRepostsInfo, (i9 & Integer.MIN_VALUE) != 0 ? null : userId4, (i10 & 1) != 0 ? null : str3, (i10 & 2) != 0 ? null : wallViews);
    }
}
