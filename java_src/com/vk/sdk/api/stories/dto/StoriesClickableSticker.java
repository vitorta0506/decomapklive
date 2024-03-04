package com.vk.sdk.api.stories.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.BaseConfig;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.apps.dto.AppsAppMin;
import com.vk.sdk.api.audio.dto.AudioAudio;
import com.vk.sdk.api.base.dto.BaseLink;
import com.vk.sdk.api.market.dto.MarketMarketItem;
import com.vk.sdk.api.polls.dto.PollsPoll;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\bW\b\u0086\b\u0018\u00002\u00020\u0001:\u0003}~\u007fBÛ\u0002\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010)\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010-J\u000f\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010]\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u00105J\u000b\u0010^\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u00105J\u000b\u0010a\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u0010\u0010d\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u00105J\t\u0010e\u001a\u00020\u0006HÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010!HÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010h\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u00105J\u0010\u0010i\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u00105J\u000b\u0010j\u001a\u0004\u0018\u00010&HÆ\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010l\u001a\u0004\u0018\u00010)HÆ\u0003¢\u0006\u0002\u0010;J\u0010\u0010m\u001a\u0004\u0018\u00010)HÆ\u0003¢\u0006\u0002\u0010;J\u0010\u0010n\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u00105J\u000b\u0010o\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010p\u001a\u00020\bHÆ\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010s\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u0010\u0010v\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u00105Jê\u0002\u0010w\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010)2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010xJ\u0013\u0010y\u001a\u00020)2\b\u0010z\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010{\u001a\u00020\u0006HÖ\u0001J\t\u0010|\u001a\u00020\nHÖ\u0001R\u0018\u0010%\u001a\u0004\u0018\u00010&8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0018\u0010'\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00106\u001a\u0004\b4\u00105R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0018\u0010\"\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u00101R\u001a\u0010(\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010<\u001a\u0004\b:\u0010;R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u00101R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u001a\u0010*\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010<\u001a\u0004\b*\u0010;R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010AR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u00101R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00106\u001a\u0004\bG\u00105R\u0018\u0010 \u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u0010IR\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00106\u001a\u0004\bJ\u00105R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bK\u0010FR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bL\u00101R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bM\u00101R\u0018\u0010,\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u00101R\u001a\u0010+\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00106\u001a\u0004\bO\u00105R\u001a\u0010#\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00106\u001a\u0004\bP\u00105R\u001a\u0010$\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00106\u001a\u0004\bQ\u00105R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00106\u001a\u0004\bR\u00105R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bS\u0010TR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bU\u0010VR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u00101R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bX\u0010Y¨\u0006\u0080\u0001"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker;", "", "clickableArea", "", "Lcom/vk/sdk/api/stories/dto/StoriesClickableArea;", "id", "", "type", "Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Type;", ShareConstants.WEB_DIALOG_PARAM_HASHTAG, "", "linkObject", "Lcom/vk/sdk/api/base/dto/BaseLink;", "mention", "tooltipText", "ownerId", "Lcom/vk/dto/common/id/UserId;", "storyId", "question", "questionButton", "placeId", "marketItem", "Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "audio", "Lcom/vk/sdk/api/audio/dto/AudioAudio;", "audioStartTime", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Style;", "subtype", "Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Subtype;", "postOwnerId", ShareConstants.RESULT_POST_ID, "poll", "Lcom/vk/sdk/api/polls/dto/PollsPoll;", "color", "stickerId", "stickerPackId", PushConstants.EXTRA_APPLICATION_PENDING_INTENT, "Lcom/vk/sdk/api/apps/dto/AppsAppMin;", "appContext", "hasNewInteractions", "", "isBroadcastNotifyAllowed", "situationalThemeId", "situationalAppUrl", "(Ljava/util/List;ILcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Type;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLink;Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/market/dto/MarketMarketItem;Lcom/vk/sdk/api/audio/dto/AudioAudio;Ljava/lang/Integer;Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Style;Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Subtype;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Lcom/vk/sdk/api/polls/dto/PollsPoll;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/apps/dto/AppsAppMin;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V", "getApp", "()Lcom/vk/sdk/api/apps/dto/AppsAppMin;", "getAppContext", "()Ljava/lang/String;", "getAudio", "()Lcom/vk/sdk/api/audio/dto/AudioAudio;", "getAudioStartTime", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getClickableArea", "()Ljava/util/List;", "getColor", "getHasNewInteractions", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getHashtag", "getId", "()I", "getLinkObject", "()Lcom/vk/sdk/api/base/dto/BaseLink;", "getMarketItem", "()Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "getMention", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPlaceId", "getPoll", "()Lcom/vk/sdk/api/polls/dto/PollsPoll;", "getPostId", "getPostOwnerId", "getQuestion", "getQuestionButton", "getSituationalAppUrl", "getSituationalThemeId", "getStickerId", "getStickerPackId", "getStoryId", "getStyle", "()Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Style;", "getSubtype", "()Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Subtype;", "getTooltipText", "getType", "()Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Type;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/util/List;ILcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Type;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLink;Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/market/dto/MarketMarketItem;Lcom/vk/sdk/api/audio/dto/AudioAudio;Ljava/lang/Integer;Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Style;Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Subtype;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Lcom/vk/sdk/api/polls/dto/PollsPoll;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/apps/dto/AppsAppMin;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker;", "equals", "other", "hashCode", "toString", "Style", "Subtype", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesClickableSticker {
    @SerializedName(PushConstants.EXTRA_APPLICATION_PENDING_INTENT)
    @Nullable
    private final AppsAppMin app;
    @SerializedName("app_context")
    @Nullable
    private final String appContext;
    @SerializedName("audio")
    @Nullable
    private final AudioAudio audio;
    @SerializedName("audio_start_time")
    @Nullable
    private final Integer audioStartTime;
    @SerializedName("clickable_area")
    @NotNull
    private final List<StoriesClickableArea> clickableArea;
    @SerializedName("color")
    @Nullable
    private final String color;
    @SerializedName("has_new_interactions")
    @Nullable
    private final Boolean hasNewInteractions;
    @SerializedName(ShareConstants.WEB_DIALOG_PARAM_HASHTAG)
    @Nullable
    private final String hashtag;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36093id;
    @SerializedName("is_broadcast_notify_allowed")
    @Nullable
    private final Boolean isBroadcastNotifyAllowed;
    @SerializedName("link_object")
    @Nullable
    private final BaseLink linkObject;
    @SerializedName("market_item")
    @Nullable
    private final MarketMarketItem marketItem;
    @SerializedName("mention")
    @Nullable
    private final String mention;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("place_id")
    @Nullable
    private final Integer placeId;
    @SerializedName("poll")
    @Nullable
    private final PollsPoll poll;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;
    @SerializedName("post_owner_id")
    @Nullable
    private final UserId postOwnerId;
    @SerializedName("question")
    @Nullable
    private final String question;
    @SerializedName("question_button")
    @Nullable
    private final String questionButton;
    @SerializedName("situational_app_url")
    @Nullable
    private final String situationalAppUrl;
    @SerializedName("situational_theme_id")
    @Nullable
    private final Integer situationalThemeId;
    @SerializedName("sticker_id")
    @Nullable
    private final Integer stickerId;
    @SerializedName("sticker_pack_id")
    @Nullable
    private final Integer stickerPackId;
    @SerializedName("story_id")
    @Nullable
    private final Integer storyId;
    @SerializedName(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)
    @Nullable
    private final Style style;
    @SerializedName("subtype")
    @Nullable
    private final Subtype subtype;
    @SerializedName("tooltip_text")
    @Nullable
    private final String tooltipText;
    @SerializedName("type")
    @NotNull
    private final Type type;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Style;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "TRANSPARENT", "BLUE_GRADIENT", "RED_GRADIENT", "UNDERLINE", "BLUE", "GREEN", "WHITE", "QUESTION_REPLY", "LIGHT", "IMPRESSIVE", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Style {
        TRANSPARENT("transparent"),
        BLUE_GRADIENT("blue_gradient"),
        RED_GRADIENT("red_gradient"),
        UNDERLINE("underline"),
        BLUE("blue"),
        GREEN("green"),
        WHITE("white"),
        QUESTION_REPLY("question_reply"),
        LIGHT("light"),
        IMPRESSIVE("impressive");
        
        @NotNull
        private final String value;

        Style(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Subtype;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "MARKET_ITEM", "ALIEXPRESS_PRODUCT", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Subtype {
        MARKET_ITEM("market_item"),
        ALIEXPRESS_PRODUCT("aliexpress_product");
        
        @NotNull
        private final String value;

        Subtype(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", ShareConstants.HASHTAG, "MENTION", ShareConstants.CONTENT_URL, "QUESTION", ShareConstants.PLACE_ID, "MARKET_ITEM", "MUSIC", "STORY_REPLY", "OWNER", "POST", "POLL", "STICKER", GrsBaseInfo.CountryCodeSource.APP, "SITUATIONAL_THEME", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Type {
        HASHTAG(ShareConstants.WEB_DIALOG_PARAM_HASHTAG),
        MENTION("mention"),
        LINK("link"),
        QUESTION("question"),
        PLACE(BaseConfig.DB_TYPE_PLACE_NAME),
        MARKET_ITEM("market_item"),
        MUSIC(BaseConfig.DB_TYPE_MUSIC_NAME),
        STORY_REPLY("story_reply"),
        OWNER("owner"),
        POST("post"),
        POLL("poll"),
        STICKER("sticker"),
        APP(PushConstants.EXTRA_APPLICATION_PENDING_INTENT),
        SITUATIONAL_THEME("situational_theme");
        
        @NotNull
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public StoriesClickableSticker(@NotNull List<StoriesClickableArea> clickableArea, int i9, @NotNull Type type, @Nullable String str, @Nullable BaseLink baseLink, @Nullable String str2, @Nullable String str3, @Nullable UserId userId, @Nullable Integer num, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable MarketMarketItem marketMarketItem, @Nullable AudioAudio audioAudio, @Nullable Integer num3, @Nullable Style style, @Nullable Subtype subtype, @Nullable UserId userId2, @Nullable Integer num4, @Nullable PollsPoll pollsPoll, @Nullable String str6, @Nullable Integer num5, @Nullable Integer num6, @Nullable AppsAppMin appsAppMin, @Nullable String str7, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num7, @Nullable String str8) {
        Intrinsics.checkNotNullParameter(clickableArea, "clickableArea");
        Intrinsics.checkNotNullParameter(type, "type");
        this.clickableArea = clickableArea;
        this.f36093id = i9;
        this.type = type;
        this.hashtag = str;
        this.linkObject = baseLink;
        this.mention = str2;
        this.tooltipText = str3;
        this.ownerId = userId;
        this.storyId = num;
        this.question = str4;
        this.questionButton = str5;
        this.placeId = num2;
        this.marketItem = marketMarketItem;
        this.audio = audioAudio;
        this.audioStartTime = num3;
        this.style = style;
        this.subtype = subtype;
        this.postOwnerId = userId2;
        this.postId = num4;
        this.poll = pollsPoll;
        this.color = str6;
        this.stickerId = num5;
        this.stickerPackId = num6;
        this.app = appsAppMin;
        this.appContext = str7;
        this.hasNewInteractions = bool;
        this.isBroadcastNotifyAllowed = bool2;
        this.situationalThemeId = num7;
        this.situationalAppUrl = str8;
    }

    @NotNull
    public final List<StoriesClickableArea> component1() {
        return this.clickableArea;
    }

    @Nullable
    public final String component10() {
        return this.question;
    }

    @Nullable
    public final String component11() {
        return this.questionButton;
    }

    @Nullable
    public final Integer component12() {
        return this.placeId;
    }

    @Nullable
    public final MarketMarketItem component13() {
        return this.marketItem;
    }

    @Nullable
    public final AudioAudio component14() {
        return this.audio;
    }

    @Nullable
    public final Integer component15() {
        return this.audioStartTime;
    }

    @Nullable
    public final Style component16() {
        return this.style;
    }

    @Nullable
    public final Subtype component17() {
        return this.subtype;
    }

    @Nullable
    public final UserId component18() {
        return this.postOwnerId;
    }

    @Nullable
    public final Integer component19() {
        return this.postId;
    }

    public final int component2() {
        return this.f36093id;
    }

    @Nullable
    public final PollsPoll component20() {
        return this.poll;
    }

    @Nullable
    public final String component21() {
        return this.color;
    }

    @Nullable
    public final Integer component22() {
        return this.stickerId;
    }

    @Nullable
    public final Integer component23() {
        return this.stickerPackId;
    }

    @Nullable
    public final AppsAppMin component24() {
        return this.app;
    }

    @Nullable
    public final String component25() {
        return this.appContext;
    }

    @Nullable
    public final Boolean component26() {
        return this.hasNewInteractions;
    }

    @Nullable
    public final Boolean component27() {
        return this.isBroadcastNotifyAllowed;
    }

    @Nullable
    public final Integer component28() {
        return this.situationalThemeId;
    }

    @Nullable
    public final String component29() {
        return this.situationalAppUrl;
    }

    @NotNull
    public final Type component3() {
        return this.type;
    }

    @Nullable
    public final String component4() {
        return this.hashtag;
    }

    @Nullable
    public final BaseLink component5() {
        return this.linkObject;
    }

    @Nullable
    public final String component6() {
        return this.mention;
    }

    @Nullable
    public final String component7() {
        return this.tooltipText;
    }

    @Nullable
    public final UserId component8() {
        return this.ownerId;
    }

    @Nullable
    public final Integer component9() {
        return this.storyId;
    }

    @NotNull
    public final StoriesClickableSticker copy(@NotNull List<StoriesClickableArea> clickableArea, int i9, @NotNull Type type, @Nullable String str, @Nullable BaseLink baseLink, @Nullable String str2, @Nullable String str3, @Nullable UserId userId, @Nullable Integer num, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable MarketMarketItem marketMarketItem, @Nullable AudioAudio audioAudio, @Nullable Integer num3, @Nullable Style style, @Nullable Subtype subtype, @Nullable UserId userId2, @Nullable Integer num4, @Nullable PollsPoll pollsPoll, @Nullable String str6, @Nullable Integer num5, @Nullable Integer num6, @Nullable AppsAppMin appsAppMin, @Nullable String str7, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num7, @Nullable String str8) {
        Intrinsics.checkNotNullParameter(clickableArea, "clickableArea");
        Intrinsics.checkNotNullParameter(type, "type");
        return new StoriesClickableSticker(clickableArea, i9, type, str, baseLink, str2, str3, userId, num, str4, str5, num2, marketMarketItem, audioAudio, num3, style, subtype, userId2, num4, pollsPoll, str6, num5, num6, appsAppMin, str7, bool, bool2, num7, str8);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesClickableSticker) {
            StoriesClickableSticker storiesClickableSticker = (StoriesClickableSticker) obj;
            return Intrinsics.areEqual(this.clickableArea, storiesClickableSticker.clickableArea) && this.f36093id == storiesClickableSticker.f36093id && this.type == storiesClickableSticker.type && Intrinsics.areEqual(this.hashtag, storiesClickableSticker.hashtag) && Intrinsics.areEqual(this.linkObject, storiesClickableSticker.linkObject) && Intrinsics.areEqual(this.mention, storiesClickableSticker.mention) && Intrinsics.areEqual(this.tooltipText, storiesClickableSticker.tooltipText) && Intrinsics.areEqual(this.ownerId, storiesClickableSticker.ownerId) && Intrinsics.areEqual(this.storyId, storiesClickableSticker.storyId) && Intrinsics.areEqual(this.question, storiesClickableSticker.question) && Intrinsics.areEqual(this.questionButton, storiesClickableSticker.questionButton) && Intrinsics.areEqual(this.placeId, storiesClickableSticker.placeId) && Intrinsics.areEqual(this.marketItem, storiesClickableSticker.marketItem) && Intrinsics.areEqual(this.audio, storiesClickableSticker.audio) && Intrinsics.areEqual(this.audioStartTime, storiesClickableSticker.audioStartTime) && this.style == storiesClickableSticker.style && this.subtype == storiesClickableSticker.subtype && Intrinsics.areEqual(this.postOwnerId, storiesClickableSticker.postOwnerId) && Intrinsics.areEqual(this.postId, storiesClickableSticker.postId) && Intrinsics.areEqual(this.poll, storiesClickableSticker.poll) && Intrinsics.areEqual(this.color, storiesClickableSticker.color) && Intrinsics.areEqual(this.stickerId, storiesClickableSticker.stickerId) && Intrinsics.areEqual(this.stickerPackId, storiesClickableSticker.stickerPackId) && Intrinsics.areEqual(this.app, storiesClickableSticker.app) && Intrinsics.areEqual(this.appContext, storiesClickableSticker.appContext) && Intrinsics.areEqual(this.hasNewInteractions, storiesClickableSticker.hasNewInteractions) && Intrinsics.areEqual(this.isBroadcastNotifyAllowed, storiesClickableSticker.isBroadcastNotifyAllowed) && Intrinsics.areEqual(this.situationalThemeId, storiesClickableSticker.situationalThemeId) && Intrinsics.areEqual(this.situationalAppUrl, storiesClickableSticker.situationalAppUrl);
        }
        return false;
    }

    @Nullable
    public final AppsAppMin getApp() {
        return this.app;
    }

    @Nullable
    public final String getAppContext() {
        return this.appContext;
    }

    @Nullable
    public final AudioAudio getAudio() {
        return this.audio;
    }

    @Nullable
    public final Integer getAudioStartTime() {
        return this.audioStartTime;
    }

    @NotNull
    public final List<StoriesClickableArea> getClickableArea() {
        return this.clickableArea;
    }

    @Nullable
    public final String getColor() {
        return this.color;
    }

    @Nullable
    public final Boolean getHasNewInteractions() {
        return this.hasNewInteractions;
    }

    @Nullable
    public final String getHashtag() {
        return this.hashtag;
    }

    public final int getId() {
        return this.f36093id;
    }

    @Nullable
    public final BaseLink getLinkObject() {
        return this.linkObject;
    }

    @Nullable
    public final MarketMarketItem getMarketItem() {
        return this.marketItem;
    }

    @Nullable
    public final String getMention() {
        return this.mention;
    }

    @Nullable
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final Integer getPlaceId() {
        return this.placeId;
    }

    @Nullable
    public final PollsPoll getPoll() {
        return this.poll;
    }

    @Nullable
    public final Integer getPostId() {
        return this.postId;
    }

    @Nullable
    public final UserId getPostOwnerId() {
        return this.postOwnerId;
    }

    @Nullable
    public final String getQuestion() {
        return this.question;
    }

    @Nullable
    public final String getQuestionButton() {
        return this.questionButton;
    }

    @Nullable
    public final String getSituationalAppUrl() {
        return this.situationalAppUrl;
    }

    @Nullable
    public final Integer getSituationalThemeId() {
        return this.situationalThemeId;
    }

    @Nullable
    public final Integer getStickerId() {
        return this.stickerId;
    }

    @Nullable
    public final Integer getStickerPackId() {
        return this.stickerPackId;
    }

    @Nullable
    public final Integer getStoryId() {
        return this.storyId;
    }

    @Nullable
    public final Style getStyle() {
        return this.style;
    }

    @Nullable
    public final Subtype getSubtype() {
        return this.subtype;
    }

    @Nullable
    public final String getTooltipText() {
        return this.tooltipText;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((((this.clickableArea.hashCode() * 31) + this.f36093id) * 31) + this.type.hashCode()) * 31;
        String str = this.hashtag;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        BaseLink baseLink = this.linkObject;
        int hashCode3 = (hashCode2 + (baseLink == null ? 0 : baseLink.hashCode())) * 31;
        String str2 = this.mention;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.tooltipText;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        UserId userId = this.ownerId;
        int hashCode6 = (hashCode5 + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num = this.storyId;
        int hashCode7 = (hashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.question;
        int hashCode8 = (hashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.questionButton;
        int hashCode9 = (hashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num2 = this.placeId;
        int hashCode10 = (hashCode9 + (num2 == null ? 0 : num2.hashCode())) * 31;
        MarketMarketItem marketMarketItem = this.marketItem;
        int hashCode11 = (hashCode10 + (marketMarketItem == null ? 0 : marketMarketItem.hashCode())) * 31;
        AudioAudio audioAudio = this.audio;
        int hashCode12 = (hashCode11 + (audioAudio == null ? 0 : audioAudio.hashCode())) * 31;
        Integer num3 = this.audioStartTime;
        int hashCode13 = (hashCode12 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Style style = this.style;
        int hashCode14 = (hashCode13 + (style == null ? 0 : style.hashCode())) * 31;
        Subtype subtype = this.subtype;
        int hashCode15 = (hashCode14 + (subtype == null ? 0 : subtype.hashCode())) * 31;
        UserId userId2 = this.postOwnerId;
        int hashCode16 = (hashCode15 + (userId2 == null ? 0 : userId2.hashCode())) * 31;
        Integer num4 = this.postId;
        int hashCode17 = (hashCode16 + (num4 == null ? 0 : num4.hashCode())) * 31;
        PollsPoll pollsPoll = this.poll;
        int hashCode18 = (hashCode17 + (pollsPoll == null ? 0 : pollsPoll.hashCode())) * 31;
        String str6 = this.color;
        int hashCode19 = (hashCode18 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num5 = this.stickerId;
        int hashCode20 = (hashCode19 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.stickerPackId;
        int hashCode21 = (hashCode20 + (num6 == null ? 0 : num6.hashCode())) * 31;
        AppsAppMin appsAppMin = this.app;
        int hashCode22 = (hashCode21 + (appsAppMin == null ? 0 : appsAppMin.hashCode())) * 31;
        String str7 = this.appContext;
        int hashCode23 = (hashCode22 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Boolean bool = this.hasNewInteractions;
        int hashCode24 = (hashCode23 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.isBroadcastNotifyAllowed;
        int hashCode25 = (hashCode24 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num7 = this.situationalThemeId;
        int hashCode26 = (hashCode25 + (num7 == null ? 0 : num7.hashCode())) * 31;
        String str8 = this.situationalAppUrl;
        return hashCode26 + (str8 != null ? str8.hashCode() : 0);
    }

    @Nullable
    public final Boolean isBroadcastNotifyAllowed() {
        return this.isBroadcastNotifyAllowed;
    }

    @NotNull
    public String toString() {
        List<StoriesClickableArea> list = this.clickableArea;
        int i9 = this.f36093id;
        Type type = this.type;
        String str = this.hashtag;
        BaseLink baseLink = this.linkObject;
        String str2 = this.mention;
        String str3 = this.tooltipText;
        UserId userId = this.ownerId;
        Integer num = this.storyId;
        String str4 = this.question;
        String str5 = this.questionButton;
        Integer num2 = this.placeId;
        MarketMarketItem marketMarketItem = this.marketItem;
        AudioAudio audioAudio = this.audio;
        Integer num3 = this.audioStartTime;
        Style style = this.style;
        Subtype subtype = this.subtype;
        UserId userId2 = this.postOwnerId;
        Integer num4 = this.postId;
        PollsPoll pollsPoll = this.poll;
        String str6 = this.color;
        Integer num5 = this.stickerId;
        Integer num6 = this.stickerPackId;
        AppsAppMin appsAppMin = this.app;
        String str7 = this.appContext;
        Boolean bool = this.hasNewInteractions;
        Boolean bool2 = this.isBroadcastNotifyAllowed;
        Integer num7 = this.situationalThemeId;
        String str8 = this.situationalAppUrl;
        return "StoriesClickableSticker(clickableArea=" + list + ", id=" + i9 + ", type=" + type + ", hashtag=" + str + ", linkObject=" + baseLink + ", mention=" + str2 + ", tooltipText=" + str3 + ", ownerId=" + userId + ", storyId=" + num + ", question=" + str4 + ", questionButton=" + str5 + ", placeId=" + num2 + ", marketItem=" + marketMarketItem + ", audio=" + audioAudio + ", audioStartTime=" + num3 + ", style=" + style + ", subtype=" + subtype + ", postOwnerId=" + userId2 + ", postId=" + num4 + ", poll=" + pollsPoll + ", color=" + str6 + ", stickerId=" + num5 + ", stickerPackId=" + num6 + ", app=" + appsAppMin + ", appContext=" + str7 + ", hasNewInteractions=" + bool + ", isBroadcastNotifyAllowed=" + bool2 + ", situationalThemeId=" + num7 + ", situationalAppUrl=" + str8 + ")";
    }

    public /* synthetic */ StoriesClickableSticker(List list, int i9, Type type, String str, BaseLink baseLink, String str2, String str3, UserId userId, Integer num, String str4, String str5, Integer num2, MarketMarketItem marketMarketItem, AudioAudio audioAudio, Integer num3, Style style, Subtype subtype, UserId userId2, Integer num4, PollsPoll pollsPoll, String str6, Integer num5, Integer num6, AppsAppMin appsAppMin, String str7, Boolean bool, Boolean bool2, Integer num7, String str8, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, i9, type, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : baseLink, (i10 & 32) != 0 ? null : str2, (i10 & 64) != 0 ? null : str3, (i10 & 128) != 0 ? null : userId, (i10 & 256) != 0 ? null : num, (i10 & 512) != 0 ? null : str4, (i10 & 1024) != 0 ? null : str5, (i10 & 2048) != 0 ? null : num2, (i10 & 4096) != 0 ? null : marketMarketItem, (i10 & 8192) != 0 ? null : audioAudio, (i10 & 16384) != 0 ? null : num3, (32768 & i10) != 0 ? null : style, (65536 & i10) != 0 ? null : subtype, (131072 & i10) != 0 ? null : userId2, (262144 & i10) != 0 ? null : num4, (524288 & i10) != 0 ? null : pollsPoll, (1048576 & i10) != 0 ? null : str6, (2097152 & i10) != 0 ? null : num5, (4194304 & i10) != 0 ? null : num6, (8388608 & i10) != 0 ? null : appsAppMin, (16777216 & i10) != 0 ? null : str7, (33554432 & i10) != 0 ? null : bool, (67108864 & i10) != 0 ? null : bool2, (134217728 & i10) != 0 ? null : num7, (i10 & 268435456) != 0 ? null : str8);
    }
}
