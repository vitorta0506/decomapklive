package com.vk.sdk.api.stories.dto;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import com.vk.sdk.api.video.dto.VideoVideo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bZ\b\u0086\b\u0018\u00002\u00020\u0001Bñ\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0000\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010,J\t\u0010Y\u001a\u00020\u0003HÆ\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u0010\u0010[\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u0010\u0010\\\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00108J\u0010\u0010]\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00108J\u000b\u0010^\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0000HÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u0010\u0010b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u000b\u0010c\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\t\u0010d\u001a\u00020\u0005HÆ\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010 HÆ\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\"HÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010$HÆ\u0003J\u0010\u0010j\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u000b\u0010k\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010l\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010m\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u000b\u0010n\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010p\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u0010\u0010q\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00108J\u000b\u0010r\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010s\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010u\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00108J\u000b\u0010v\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\tHÆ\u0003Jþ\u0002\u0010x\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010yJ\u0013\u0010z\u001a\u00020\r2\b\u0010{\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010|\u001a\u00020\u0003HÖ\u0001J\t\u0010}\u001a\u00020\u0007HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u001a\u0010*\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\b/\u00100R\u0018\u0010&\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0018\u0010'\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00103R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00103R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00103R\u001a\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00109\u001a\u0004\b7\u00108R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u00103R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u00103R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u00103R\u001a\u0010+\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00109\u001a\u0004\b=\u00108R\u0018\u0010!\u001a\u0004\u0018\u00010\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\b@\u00100R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\bA\u00100R\u0018\u0010)\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010.R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010DR\u001a\u0010\u0012\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00109\u001a\u0004\b\u0012\u00108R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00109\u001a\u0004\b\u0013\u00108R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u001a\u0010(\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\bG\u00100R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u0010IR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00008\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bL\u0010.R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\bM\u00100R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\bN\u00100R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010PR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010RR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bS\u00103R\u0018\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bT\u0010UR\u0018\u0010#\u001a\u0004\u0018\u00010$8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bV\u0010WR\u001a\u0010%\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\bX\u00100¨\u0006~"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesStory;", "", "id", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "accessKey", "", "canComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "canReply", "canSee", "canLike", "", "canShare", "canHide", "date", "expiresAt", "isDeleted", "isExpired", "link", "Lcom/vk/sdk/api/stories/dto/StoriesStoryLink;", "parentStory", "parentStoryAccessKey", "parentStoryId", "parentStoryOwnerId", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "replies", "Lcom/vk/sdk/api/stories/dto/StoriesReplies;", "seen", "type", "Lcom/vk/sdk/api/stories/dto/StoriesStoryType;", "clickableStickers", "Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/video/dto/VideoVideo;", AdUnitActivity.EXTRA_VIEWS, "canAsk", "canAskAnonymous", "narrativesCount", "firstNarrativeTitle", "birthdayWishUserId", "canUseInNarrative", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/stories/dto/StoriesStoryLink;Lcom/vk/sdk/api/stories/dto/StoriesStory;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Lcom/vk/sdk/api/stories/dto/StoriesReplies;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/stories/dto/StoriesStoryType;Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;Lcom/vk/sdk/api/video/dto/VideoVideo;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "getAccessKey", "()Ljava/lang/String;", "getBirthdayWishUserId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCanAsk", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCanAskAnonymous", "getCanComment", "getCanHide", "getCanLike", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCanReply", "getCanSee", "getCanShare", "getCanUseInNarrative", "getClickableStickers", "()Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;", "getDate", "getExpiresAt", "getFirstNarrativeTitle", "getId", "()I", "getLink", "()Lcom/vk/sdk/api/stories/dto/StoriesStoryLink;", "getNarrativesCount", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getParentStory", "()Lcom/vk/sdk/api/stories/dto/StoriesStory;", "getParentStoryAccessKey", "getParentStoryId", "getParentStoryOwnerId", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getReplies", "()Lcom/vk/sdk/api/stories/dto/StoriesReplies;", "getSeen", "getType", "()Lcom/vk/sdk/api/stories/dto/StoriesStoryType;", "getVideo", "()Lcom/vk/sdk/api/video/dto/VideoVideo;", "getViews", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/stories/dto/StoriesStoryLink;Lcom/vk/sdk/api/stories/dto/StoriesStory;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Lcom/vk/sdk/api/stories/dto/StoriesReplies;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/stories/dto/StoriesStoryType;Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;Lcom/vk/sdk/api/video/dto/VideoVideo;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/sdk/api/stories/dto/StoriesStory;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesStory {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("birthday_wish_user_id")
    @Nullable
    private final Integer birthdayWishUserId;
    @SerializedName("can_ask")
    @Nullable
    private final BaseBoolInt canAsk;
    @SerializedName("can_ask_anonymous")
    @Nullable
    private final BaseBoolInt canAskAnonymous;
    @SerializedName("can_comment")
    @Nullable
    private final BaseBoolInt canComment;
    @SerializedName("can_hide")
    @Nullable
    private final BaseBoolInt canHide;
    @SerializedName("can_like")
    @Nullable
    private final Boolean canLike;
    @SerializedName("can_reply")
    @Nullable
    private final BaseBoolInt canReply;
    @SerializedName("can_see")
    @Nullable
    private final BaseBoolInt canSee;
    @SerializedName("can_share")
    @Nullable
    private final BaseBoolInt canShare;
    @SerializedName("can_use_in_narrative")
    @Nullable
    private final Boolean canUseInNarrative;
    @SerializedName("clickable_stickers")
    @Nullable
    private final StoriesClickableStickers clickableStickers;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("expires_at")
    @Nullable
    private final Integer expiresAt;
    @SerializedName("first_narrative_title")
    @Nullable
    private final String firstNarrativeTitle;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36095id;
    @SerializedName("is_deleted")
    @Nullable
    private final Boolean isDeleted;
    @SerializedName("is_expired")
    @Nullable
    private final Boolean isExpired;
    @SerializedName("link")
    @Nullable
    private final StoriesStoryLink link;
    @SerializedName("narratives_count")
    @Nullable
    private final Integer narrativesCount;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("parent_story")
    @Nullable
    private final StoriesStory parentStory;
    @SerializedName("parent_story_access_key")
    @Nullable
    private final String parentStoryAccessKey;
    @SerializedName("parent_story_id")
    @Nullable
    private final Integer parentStoryId;
    @SerializedName("parent_story_owner_id")
    @Nullable
    private final Integer parentStoryOwnerId;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("replies")
    @Nullable
    private final StoriesReplies replies;
    @SerializedName("seen")
    @Nullable
    private final BaseBoolInt seen;
    @SerializedName("type")
    @Nullable
    private final StoriesStoryType type;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final VideoVideo video;
    @SerializedName(AdUnitActivity.EXTRA_VIEWS)
    @Nullable
    private final Integer views;

    public StoriesStory(int i9, @NotNull UserId ownerId, @Nullable String str, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable Boolean bool, @Nullable BaseBoolInt baseBoolInt4, @Nullable BaseBoolInt baseBoolInt5, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable StoriesStoryLink storiesStoryLink, @Nullable StoriesStory storiesStory, @Nullable String str2, @Nullable Integer num3, @Nullable Integer num4, @Nullable PhotosPhoto photosPhoto, @Nullable StoriesReplies storiesReplies, @Nullable BaseBoolInt baseBoolInt6, @Nullable StoriesStoryType storiesStoryType, @Nullable StoriesClickableStickers storiesClickableStickers, @Nullable VideoVideo videoVideo, @Nullable Integer num5, @Nullable BaseBoolInt baseBoolInt7, @Nullable BaseBoolInt baseBoolInt8, @Nullable Integer num6, @Nullable String str3, @Nullable Integer num7, @Nullable Boolean bool4) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        this.f36095id = i9;
        this.ownerId = ownerId;
        this.accessKey = str;
        this.canComment = baseBoolInt;
        this.canReply = baseBoolInt2;
        this.canSee = baseBoolInt3;
        this.canLike = bool;
        this.canShare = baseBoolInt4;
        this.canHide = baseBoolInt5;
        this.date = num;
        this.expiresAt = num2;
        this.isDeleted = bool2;
        this.isExpired = bool3;
        this.link = storiesStoryLink;
        this.parentStory = storiesStory;
        this.parentStoryAccessKey = str2;
        this.parentStoryId = num3;
        this.parentStoryOwnerId = num4;
        this.photo = photosPhoto;
        this.replies = storiesReplies;
        this.seen = baseBoolInt6;
        this.type = storiesStoryType;
        this.clickableStickers = storiesClickableStickers;
        this.video = videoVideo;
        this.views = num5;
        this.canAsk = baseBoolInt7;
        this.canAskAnonymous = baseBoolInt8;
        this.narrativesCount = num6;
        this.firstNarrativeTitle = str3;
        this.birthdayWishUserId = num7;
        this.canUseInNarrative = bool4;
    }

    public final int component1() {
        return this.f36095id;
    }

    @Nullable
    public final Integer component10() {
        return this.date;
    }

    @Nullable
    public final Integer component11() {
        return this.expiresAt;
    }

    @Nullable
    public final Boolean component12() {
        return this.isDeleted;
    }

    @Nullable
    public final Boolean component13() {
        return this.isExpired;
    }

    @Nullable
    public final StoriesStoryLink component14() {
        return this.link;
    }

    @Nullable
    public final StoriesStory component15() {
        return this.parentStory;
    }

    @Nullable
    public final String component16() {
        return this.parentStoryAccessKey;
    }

    @Nullable
    public final Integer component17() {
        return this.parentStoryId;
    }

    @Nullable
    public final Integer component18() {
        return this.parentStoryOwnerId;
    }

    @Nullable
    public final PhotosPhoto component19() {
        return this.photo;
    }

    @NotNull
    public final UserId component2() {
        return this.ownerId;
    }

    @Nullable
    public final StoriesReplies component20() {
        return this.replies;
    }

    @Nullable
    public final BaseBoolInt component21() {
        return this.seen;
    }

    @Nullable
    public final StoriesStoryType component22() {
        return this.type;
    }

    @Nullable
    public final StoriesClickableStickers component23() {
        return this.clickableStickers;
    }

    @Nullable
    public final VideoVideo component24() {
        return this.video;
    }

    @Nullable
    public final Integer component25() {
        return this.views;
    }

    @Nullable
    public final BaseBoolInt component26() {
        return this.canAsk;
    }

    @Nullable
    public final BaseBoolInt component27() {
        return this.canAskAnonymous;
    }

    @Nullable
    public final Integer component28() {
        return this.narrativesCount;
    }

    @Nullable
    public final String component29() {
        return this.firstNarrativeTitle;
    }

    @Nullable
    public final String component3() {
        return this.accessKey;
    }

    @Nullable
    public final Integer component30() {
        return this.birthdayWishUserId;
    }

    @Nullable
    public final Boolean component31() {
        return this.canUseInNarrative;
    }

    @Nullable
    public final BaseBoolInt component4() {
        return this.canComment;
    }

    @Nullable
    public final BaseBoolInt component5() {
        return this.canReply;
    }

    @Nullable
    public final BaseBoolInt component6() {
        return this.canSee;
    }

    @Nullable
    public final Boolean component7() {
        return this.canLike;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.canShare;
    }

    @Nullable
    public final BaseBoolInt component9() {
        return this.canHide;
    }

    @NotNull
    public final StoriesStory copy(int i9, @NotNull UserId ownerId, @Nullable String str, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable Boolean bool, @Nullable BaseBoolInt baseBoolInt4, @Nullable BaseBoolInt baseBoolInt5, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable StoriesStoryLink storiesStoryLink, @Nullable StoriesStory storiesStory, @Nullable String str2, @Nullable Integer num3, @Nullable Integer num4, @Nullable PhotosPhoto photosPhoto, @Nullable StoriesReplies storiesReplies, @Nullable BaseBoolInt baseBoolInt6, @Nullable StoriesStoryType storiesStoryType, @Nullable StoriesClickableStickers storiesClickableStickers, @Nullable VideoVideo videoVideo, @Nullable Integer num5, @Nullable BaseBoolInt baseBoolInt7, @Nullable BaseBoolInt baseBoolInt8, @Nullable Integer num6, @Nullable String str3, @Nullable Integer num7, @Nullable Boolean bool4) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        return new StoriesStory(i9, ownerId, str, baseBoolInt, baseBoolInt2, baseBoolInt3, bool, baseBoolInt4, baseBoolInt5, num, num2, bool2, bool3, storiesStoryLink, storiesStory, str2, num3, num4, photosPhoto, storiesReplies, baseBoolInt6, storiesStoryType, storiesClickableStickers, videoVideo, num5, baseBoolInt7, baseBoolInt8, num6, str3, num7, bool4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesStory) {
            StoriesStory storiesStory = (StoriesStory) obj;
            return this.f36095id == storiesStory.f36095id && Intrinsics.areEqual(this.ownerId, storiesStory.ownerId) && Intrinsics.areEqual(this.accessKey, storiesStory.accessKey) && this.canComment == storiesStory.canComment && this.canReply == storiesStory.canReply && this.canSee == storiesStory.canSee && Intrinsics.areEqual(this.canLike, storiesStory.canLike) && this.canShare == storiesStory.canShare && this.canHide == storiesStory.canHide && Intrinsics.areEqual(this.date, storiesStory.date) && Intrinsics.areEqual(this.expiresAt, storiesStory.expiresAt) && Intrinsics.areEqual(this.isDeleted, storiesStory.isDeleted) && Intrinsics.areEqual(this.isExpired, storiesStory.isExpired) && Intrinsics.areEqual(this.link, storiesStory.link) && Intrinsics.areEqual(this.parentStory, storiesStory.parentStory) && Intrinsics.areEqual(this.parentStoryAccessKey, storiesStory.parentStoryAccessKey) && Intrinsics.areEqual(this.parentStoryId, storiesStory.parentStoryId) && Intrinsics.areEqual(this.parentStoryOwnerId, storiesStory.parentStoryOwnerId) && Intrinsics.areEqual(this.photo, storiesStory.photo) && Intrinsics.areEqual(this.replies, storiesStory.replies) && this.seen == storiesStory.seen && this.type == storiesStory.type && Intrinsics.areEqual(this.clickableStickers, storiesStory.clickableStickers) && Intrinsics.areEqual(this.video, storiesStory.video) && Intrinsics.areEqual(this.views, storiesStory.views) && this.canAsk == storiesStory.canAsk && this.canAskAnonymous == storiesStory.canAskAnonymous && Intrinsics.areEqual(this.narrativesCount, storiesStory.narrativesCount) && Intrinsics.areEqual(this.firstNarrativeTitle, storiesStory.firstNarrativeTitle) && Intrinsics.areEqual(this.birthdayWishUserId, storiesStory.birthdayWishUserId) && Intrinsics.areEqual(this.canUseInNarrative, storiesStory.canUseInNarrative);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final Integer getBirthdayWishUserId() {
        return this.birthdayWishUserId;
    }

    @Nullable
    public final BaseBoolInt getCanAsk() {
        return this.canAsk;
    }

    @Nullable
    public final BaseBoolInt getCanAskAnonymous() {
        return this.canAskAnonymous;
    }

    @Nullable
    public final BaseBoolInt getCanComment() {
        return this.canComment;
    }

    @Nullable
    public final BaseBoolInt getCanHide() {
        return this.canHide;
    }

    @Nullable
    public final Boolean getCanLike() {
        return this.canLike;
    }

    @Nullable
    public final BaseBoolInt getCanReply() {
        return this.canReply;
    }

    @Nullable
    public final BaseBoolInt getCanSee() {
        return this.canSee;
    }

    @Nullable
    public final BaseBoolInt getCanShare() {
        return this.canShare;
    }

    @Nullable
    public final Boolean getCanUseInNarrative() {
        return this.canUseInNarrative;
    }

    @Nullable
    public final StoriesClickableStickers getClickableStickers() {
        return this.clickableStickers;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final Integer getExpiresAt() {
        return this.expiresAt;
    }

    @Nullable
    public final String getFirstNarrativeTitle() {
        return this.firstNarrativeTitle;
    }

    public final int getId() {
        return this.f36095id;
    }

    @Nullable
    public final StoriesStoryLink getLink() {
        return this.link;
    }

    @Nullable
    public final Integer getNarrativesCount() {
        return this.narrativesCount;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final StoriesStory getParentStory() {
        return this.parentStory;
    }

    @Nullable
    public final String getParentStoryAccessKey() {
        return this.parentStoryAccessKey;
    }

    @Nullable
    public final Integer getParentStoryId() {
        return this.parentStoryId;
    }

    @Nullable
    public final Integer getParentStoryOwnerId() {
        return this.parentStoryOwnerId;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final StoriesReplies getReplies() {
        return this.replies;
    }

    @Nullable
    public final BaseBoolInt getSeen() {
        return this.seen;
    }

    @Nullable
    public final StoriesStoryType getType() {
        return this.type;
    }

    @Nullable
    public final VideoVideo getVideo() {
        return this.video;
    }

    @Nullable
    public final Integer getViews() {
        return this.views;
    }

    public int hashCode() {
        int hashCode = ((this.f36095id * 31) + this.ownerId.hashCode()) * 31;
        String str = this.accessKey;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canComment;
        int hashCode3 = (hashCode2 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.canReply;
        int hashCode4 = (hashCode3 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.canSee;
        int hashCode5 = (hashCode4 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        Boolean bool = this.canLike;
        int hashCode6 = (hashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        BaseBoolInt baseBoolInt4 = this.canShare;
        int hashCode7 = (hashCode6 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
        BaseBoolInt baseBoolInt5 = this.canHide;
        int hashCode8 = (hashCode7 + (baseBoolInt5 == null ? 0 : baseBoolInt5.hashCode())) * 31;
        Integer num = this.date;
        int hashCode9 = (hashCode8 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.expiresAt;
        int hashCode10 = (hashCode9 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool2 = this.isDeleted;
        int hashCode11 = (hashCode10 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.isExpired;
        int hashCode12 = (hashCode11 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        StoriesStoryLink storiesStoryLink = this.link;
        int hashCode13 = (hashCode12 + (storiesStoryLink == null ? 0 : storiesStoryLink.hashCode())) * 31;
        StoriesStory storiesStory = this.parentStory;
        int hashCode14 = (hashCode13 + (storiesStory == null ? 0 : storiesStory.hashCode())) * 31;
        String str2 = this.parentStoryAccessKey;
        int hashCode15 = (hashCode14 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num3 = this.parentStoryId;
        int hashCode16 = (hashCode15 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.parentStoryOwnerId;
        int hashCode17 = (hashCode16 + (num4 == null ? 0 : num4.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        int hashCode18 = (hashCode17 + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        StoriesReplies storiesReplies = this.replies;
        int hashCode19 = (hashCode18 + (storiesReplies == null ? 0 : storiesReplies.hashCode())) * 31;
        BaseBoolInt baseBoolInt6 = this.seen;
        int hashCode20 = (hashCode19 + (baseBoolInt6 == null ? 0 : baseBoolInt6.hashCode())) * 31;
        StoriesStoryType storiesStoryType = this.type;
        int hashCode21 = (hashCode20 + (storiesStoryType == null ? 0 : storiesStoryType.hashCode())) * 31;
        StoriesClickableStickers storiesClickableStickers = this.clickableStickers;
        int hashCode22 = (hashCode21 + (storiesClickableStickers == null ? 0 : storiesClickableStickers.hashCode())) * 31;
        VideoVideo videoVideo = this.video;
        int hashCode23 = (hashCode22 + (videoVideo == null ? 0 : videoVideo.hashCode())) * 31;
        Integer num5 = this.views;
        int hashCode24 = (hashCode23 + (num5 == null ? 0 : num5.hashCode())) * 31;
        BaseBoolInt baseBoolInt7 = this.canAsk;
        int hashCode25 = (hashCode24 + (baseBoolInt7 == null ? 0 : baseBoolInt7.hashCode())) * 31;
        BaseBoolInt baseBoolInt8 = this.canAskAnonymous;
        int hashCode26 = (hashCode25 + (baseBoolInt8 == null ? 0 : baseBoolInt8.hashCode())) * 31;
        Integer num6 = this.narrativesCount;
        int hashCode27 = (hashCode26 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str3 = this.firstNarrativeTitle;
        int hashCode28 = (hashCode27 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num7 = this.birthdayWishUserId;
        int hashCode29 = (hashCode28 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Boolean bool4 = this.canUseInNarrative;
        return hashCode29 + (bool4 != null ? bool4.hashCode() : 0);
    }

    @Nullable
    public final Boolean isDeleted() {
        return this.isDeleted;
    }

    @Nullable
    public final Boolean isExpired() {
        return this.isExpired;
    }

    @NotNull
    public String toString() {
        int i9 = this.f36095id;
        UserId userId = this.ownerId;
        String str = this.accessKey;
        BaseBoolInt baseBoolInt = this.canComment;
        BaseBoolInt baseBoolInt2 = this.canReply;
        BaseBoolInt baseBoolInt3 = this.canSee;
        Boolean bool = this.canLike;
        BaseBoolInt baseBoolInt4 = this.canShare;
        BaseBoolInt baseBoolInt5 = this.canHide;
        Integer num = this.date;
        Integer num2 = this.expiresAt;
        Boolean bool2 = this.isDeleted;
        Boolean bool3 = this.isExpired;
        StoriesStoryLink storiesStoryLink = this.link;
        StoriesStory storiesStory = this.parentStory;
        String str2 = this.parentStoryAccessKey;
        Integer num3 = this.parentStoryId;
        Integer num4 = this.parentStoryOwnerId;
        PhotosPhoto photosPhoto = this.photo;
        StoriesReplies storiesReplies = this.replies;
        BaseBoolInt baseBoolInt6 = this.seen;
        StoriesStoryType storiesStoryType = this.type;
        StoriesClickableStickers storiesClickableStickers = this.clickableStickers;
        VideoVideo videoVideo = this.video;
        Integer num5 = this.views;
        BaseBoolInt baseBoolInt7 = this.canAsk;
        BaseBoolInt baseBoolInt8 = this.canAskAnonymous;
        Integer num6 = this.narrativesCount;
        String str3 = this.firstNarrativeTitle;
        Integer num7 = this.birthdayWishUserId;
        Boolean bool4 = this.canUseInNarrative;
        return "StoriesStory(id=" + i9 + ", ownerId=" + userId + ", accessKey=" + str + ", canComment=" + baseBoolInt + ", canReply=" + baseBoolInt2 + ", canSee=" + baseBoolInt3 + ", canLike=" + bool + ", canShare=" + baseBoolInt4 + ", canHide=" + baseBoolInt5 + ", date=" + num + ", expiresAt=" + num2 + ", isDeleted=" + bool2 + ", isExpired=" + bool3 + ", link=" + storiesStoryLink + ", parentStory=" + storiesStory + ", parentStoryAccessKey=" + str2 + ", parentStoryId=" + num3 + ", parentStoryOwnerId=" + num4 + ", photo=" + photosPhoto + ", replies=" + storiesReplies + ", seen=" + baseBoolInt6 + ", type=" + storiesStoryType + ", clickableStickers=" + storiesClickableStickers + ", video=" + videoVideo + ", views=" + num5 + ", canAsk=" + baseBoolInt7 + ", canAskAnonymous=" + baseBoolInt8 + ", narrativesCount=" + num6 + ", firstNarrativeTitle=" + str3 + ", birthdayWishUserId=" + num7 + ", canUseInNarrative=" + bool4 + ")";
    }

    public /* synthetic */ StoriesStory(int i9, UserId userId, String str, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, Boolean bool, BaseBoolInt baseBoolInt4, BaseBoolInt baseBoolInt5, Integer num, Integer num2, Boolean bool2, Boolean bool3, StoriesStoryLink storiesStoryLink, StoriesStory storiesStory, String str2, Integer num3, Integer num4, PhotosPhoto photosPhoto, StoriesReplies storiesReplies, BaseBoolInt baseBoolInt6, StoriesStoryType storiesStoryType, StoriesClickableStickers storiesClickableStickers, VideoVideo videoVideo, Integer num5, BaseBoolInt baseBoolInt7, BaseBoolInt baseBoolInt8, Integer num6, String str3, Integer num7, Boolean bool4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, userId, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : baseBoolInt, (i10 & 16) != 0 ? null : baseBoolInt2, (i10 & 32) != 0 ? null : baseBoolInt3, (i10 & 64) != 0 ? null : bool, (i10 & 128) != 0 ? null : baseBoolInt4, (i10 & 256) != 0 ? null : baseBoolInt5, (i10 & 512) != 0 ? null : num, (i10 & 1024) != 0 ? null : num2, (i10 & 2048) != 0 ? null : bool2, (i10 & 4096) != 0 ? null : bool3, (i10 & 8192) != 0 ? null : storiesStoryLink, (i10 & 16384) != 0 ? null : storiesStory, (32768 & i10) != 0 ? null : str2, (65536 & i10) != 0 ? null : num3, (131072 & i10) != 0 ? null : num4, (262144 & i10) != 0 ? null : photosPhoto, (524288 & i10) != 0 ? null : storiesReplies, (1048576 & i10) != 0 ? null : baseBoolInt6, (2097152 & i10) != 0 ? null : storiesStoryType, (4194304 & i10) != 0 ? null : storiesClickableStickers, (8388608 & i10) != 0 ? null : videoVideo, (16777216 & i10) != 0 ? null : num5, (33554432 & i10) != 0 ? null : baseBoolInt7, (67108864 & i10) != 0 ? null : baseBoolInt8, (134217728 & i10) != 0 ? null : num6, (268435456 & i10) != 0 ? null : str3, (536870912 & i10) != 0 ? null : num7, (i10 & BasicMeasure.EXACTLY) != 0 ? null : bool4);
    }
}
