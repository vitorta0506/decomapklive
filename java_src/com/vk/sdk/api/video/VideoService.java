package com.vk.sdk.api.video;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.GraphRequest;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.utils.TCConstants;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.video.dto.VideoAddAlbumPrivacy;
import com.vk.sdk.api.video.dto.VideoAddAlbumResponse;
import com.vk.sdk.api.video.dto.VideoEditAlbumPrivacy;
import com.vk.sdk.api.video.dto.VideoGetAlbumsByVideoExtendedResponse;
import com.vk.sdk.api.video.dto.VideoGetAlbumsExtendedResponse;
import com.vk.sdk.api.video.dto.VideoGetAlbumsResponse;
import com.vk.sdk.api.video.dto.VideoGetCommentsExtendedResponse;
import com.vk.sdk.api.video.dto.VideoGetCommentsExtendedSort;
import com.vk.sdk.api.video.dto.VideoGetCommentsResponse;
import com.vk.sdk.api.video.dto.VideoGetCommentsSort;
import com.vk.sdk.api.video.dto.VideoGetResponse;
import com.vk.sdk.api.video.dto.VideoReportCommentReason;
import com.vk.sdk.api.video.dto.VideoReportReason;
import com.vk.sdk.api.video.dto.VideoSaveResult;
import com.vk.sdk.api.video.dto.VideoSearchExtendedFilters;
import com.vk.sdk.api.video.dto.VideoSearchExtendedResponse;
import com.vk.sdk.api.video.dto.VideoSearchExtendedSort;
import com.vk.sdk.api.video.dto.VideoSearchFilters;
import com.vk.sdk.api.video.dto.VideoSearchResponse;
import com.vk.sdk.api.video.dto.VideoSearchSort;
import com.vk.sdk.api.video.dto.VideoVideoAlbumFull;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tJ6\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011JK\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0011¢\u0006\u0002\u0010\u0016Js\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00112\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u001fJ,\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tJ \u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0014\u001a\u00020\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\tJ \u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010#\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tJy\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u000f2\u0010\b\u0002\u0010'\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00112\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00112\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010+J:\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010\u0011J>\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010#\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0011Je\u0010/\u001a\b\u0012\u0004\u0012\u0002000\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u00101\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00104\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0011¢\u0006\u0002\u00105J \u00106\u001a\b\u0012\u0004\u0012\u0002070\u00042\u0006\u0010\u0014\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tJA\u00108\u001a\b\u0012\u0004\u0012\u0002090\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010;J.\u0010<\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00110\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tJ(\u0010=\u001a\b\u0012\u0004\u0012\u00020>0\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tJA\u0010?\u001a\b\u0012\u0004\u0012\u00020@0\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010;Js\u0010A\u001a\b\u0012\u0004\u0012\u00020B0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010E\u001a\u0004\u0018\u00010F2\u0010\b\u0002\u00104\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0011¢\u0006\u0002\u0010GJs\u0010H\u001a\b\u0012\u0004\u0012\u00020I0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010E\u001a\u0004\u0018\u00010J2\u0010\b\u0002\u00104\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0011¢\u0006\u0002\u0010KJK\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0011¢\u0006\u0002\u0010\u0016J=\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0014\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010PJi\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010R\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010T\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010U\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010VJ@\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010X\u001a\u0004\u0018\u00010Y2\n\b\u0002\u0010Z\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\u000fJ(\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u00072\n\b\u0002\u0010X\u001a\u0004\u0018\u00010]J \u0010^\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tJ \u0010_\u001a\b\u0012\u0004\u0012\u00020`0\u00042\u0006\u0010#\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tJ\u00ad\u0001\u0010a\u001a\b\u0012\u0004\u0012\u00020b0\u00042\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010c\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010d\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010e\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010f\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010'\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00112\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00112\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010g\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010hJ\u009b\u0001\u0010i\u001a\b\u0012\u0004\u0012\u00020j0\u00042\n\b\u0002\u0010k\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010l2\n\b\u0002\u0010m\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010n\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010\u001b2\u0010\b\u0002\u0010p\u001a\n\u0012\u0004\u0012\u00020q\u0018\u00010\u00112\n\b\u0002\u0010r\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010s\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010uJ\u009b\u0001\u0010v\u001a\b\u0012\u0004\u0012\u00020w0\u00042\n\b\u0002\u0010k\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010x2\n\b\u0002\u0010m\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010n\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010\u001b2\u0010\b\u0002\u0010p\u001a\n\u0012\u0004\u0012\u00020y\u0018\u00010\u00112\n\b\u0002\u0010r\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010s\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010z¨\u0006{"}, d2 = {"Lcom/vk/sdk/api/video/VideoService;", "", "()V", "videoAdd", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "videoId", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "targetId", "videoAddAlbum", "Lcom/vk/sdk/api/video/dto/VideoAddAlbumResponse;", "groupId", "title", "", ShareConstants.WEB_DIALOG_PARAM_PRIVACY, "", "Lcom/vk/sdk/api/video/dto/VideoAddAlbumPrivacy;", "videoAddToAlbum", "albumId", "albumIds", "(Lcom/vk/dto/common/id/UserId;ILcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "videoCreateComment", "message", "attachments", "fromGroup", "", "replyToComment", "stickerId", TPDownloadProxyEnum.USER_GUID, "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "videoDelete", "videoDeleteAlbum", "videoDeleteComment", "commentId", "videoEdit", "name", "desc", "privacyView", "privacyComment", "noComments", "repeat", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "videoEditAlbum", "Lcom/vk/sdk/api/video/dto/VideoEditAlbumPrivacy;", "videoEditComment", "videoGet", "Lcom/vk/sdk/api/video/dto/VideoGetResponse;", "videos", AnimatedPasterJsonConfig.CONFIG_COUNT, TypedValues.CycleType.S_WAVE_OFFSET, GraphRequest.FIELDS_PARAM, "(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "videoGetAlbumById", "Lcom/vk/sdk/api/video/dto/VideoVideoAlbumFull;", "videoGetAlbums", "Lcom/vk/sdk/api/video/dto/VideoGetAlbumsResponse;", "needSystem", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "videoGetAlbumsByVideo", "videoGetAlbumsByVideoExtended", "Lcom/vk/sdk/api/video/dto/VideoGetAlbumsByVideoExtendedResponse;", "videoGetAlbumsExtended", "Lcom/vk/sdk/api/video/dto/VideoGetAlbumsExtendedResponse;", "videoGetComments", "Lcom/vk/sdk/api/video/dto/VideoGetCommentsResponse;", "needLikes", "startCommentId", "sort", "Lcom/vk/sdk/api/video/dto/VideoGetCommentsSort;", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/video/dto/VideoGetCommentsSort;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "videoGetCommentsExtended", "Lcom/vk/sdk/api/video/dto/VideoGetCommentsExtendedResponse;", "Lcom/vk/sdk/api/video/dto/VideoGetCommentsExtendedSort;", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/video/dto/VideoGetCommentsExtendedSort;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "videoRemoveFromAlbum", "videoReorderAlbums", "before", "after", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "videoReorderVideos", "beforeOwnerId", "beforeVideoId", "afterOwnerId", "afterVideoId", "(Lcom/vk/dto/common/id/UserId;ILcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "videoReport", "reason", "Lcom/vk/sdk/api/video/dto/VideoReportReason;", "comment", "searchQuery", "videoReportComment", "Lcom/vk/sdk/api/video/dto/VideoReportCommentReason;", "videoRestore", "videoRestoreComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "videoSave", "Lcom/vk/sdk/api/video/dto/VideoSaveResult;", "description", "isPrivate", "wallpost", "link", "compression", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "videoSearch", "Lcom/vk/sdk/api/video/dto/VideoSearchResponse;", "q", "Lcom/vk/sdk/api/video/dto/VideoSearchSort;", "hd", "adult", "live", ShareConstants.WEB_DIALOG_PARAM_FILTERS, "Lcom/vk/sdk/api/video/dto/VideoSearchFilters;", "searchOwn", "longer", "shorter", "(Ljava/lang/String;Lcom/vk/sdk/api/video/dto/VideoSearchSort;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "videoSearchExtended", "Lcom/vk/sdk/api/video/dto/VideoSearchExtendedResponse;", "Lcom/vk/sdk/api/video/dto/VideoSearchExtendedSort;", "Lcom/vk/sdk/api/video/dto/VideoSearchExtendedFilters;", "(Ljava/lang/String;Lcom/vk/sdk/api/video/dto/VideoSearchExtendedSort;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoService {
    public static /* synthetic */ VKRequest videoAdd$default(VideoService videoService, int i9, UserId userId, UserId userId2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId2 = null;
        }
        return videoService.videoAdd(i9, userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoAdd$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m1343videoAdd$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest videoAddAlbum$default(VideoService videoService, UserId userId, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        return videoService.videoAddAlbum(userId, str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoAddAlbum$lambda-3  reason: not valid java name */
    public static final VideoAddAlbumResponse m1344videoAddAlbum$lambda3(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoAddAlbumResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoAddAlbumResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoAddToAlbum$lambda-9  reason: not valid java name */
    public static final BaseOkResponse m1345videoAddToAlbum$lambda9(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoCreateComment$lambda-14  reason: not valid java name */
    public static final Integer m1346videoCreateComment$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    public static /* synthetic */ VKRequest videoDelete$default(VideoService videoService, int i9, UserId userId, UserId userId2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            userId2 = null;
        }
        return videoService.videoDelete(i9, userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoDelete$lambda-23  reason: not valid java name */
    public static final BaseOkResponse m1347videoDelete$lambda23(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest videoDeleteAlbum$default(VideoService videoService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return videoService.videoDeleteAlbum(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoDeleteAlbum$lambda-27  reason: not valid java name */
    public static final BaseOkResponse m1348videoDeleteAlbum$lambda27(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest videoDeleteComment$default(VideoService videoService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return videoService.videoDeleteComment(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoDeleteComment$lambda-30  reason: not valid java name */
    public static final BaseOkResponse m1349videoDeleteComment$lambda30(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoEdit$lambda-33  reason: not valid java name */
    public static final BaseOkResponse m1350videoEdit$lambda33(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest videoEditAlbum$default(VideoService videoService, int i9, String str, UserId userId, List list, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId = null;
        }
        if ((i10 & 8) != 0) {
            list = null;
        }
        return videoService.videoEditAlbum(i9, str, userId, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoEditAlbum$lambda-42  reason: not valid java name */
    public static final BaseOkResponse m1351videoEditAlbum$lambda42(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest videoEditComment$default(VideoService videoService, int i9, UserId userId, String str, List list, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            str = null;
        }
        if ((i10 & 8) != 0) {
            list = null;
        }
        return videoService.videoEditComment(i9, userId, str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoEditComment$lambda-47  reason: not valid java name */
    public static final BaseOkResponse m1352videoEditComment$lambda47(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest videoGet$default(VideoService videoService, UserId userId, List list, Integer num, Integer num2, Integer num3, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            num3 = null;
        }
        if ((i9 & 32) != 0) {
            list2 = null;
        }
        return videoService.videoGet(userId, list, num, num2, num3, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoGet$lambda-52  reason: not valid java name */
    public static final VideoGetResponse m1353videoGet$lambda52(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoGetResponse.class);
    }

    public static /* synthetic */ VKRequest videoGetAlbumById$default(VideoService videoService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return videoService.videoGetAlbumById(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoGetAlbumById$lambda-60  reason: not valid java name */
    public static final VideoVideoAlbumFull m1354videoGetAlbumById$lambda60(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoVideoAlbumFull) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoVideoAlbumFull.class);
    }

    public static /* synthetic */ VKRequest videoGetAlbums$default(VideoService videoService, UserId userId, Integer num, Integer num2, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        return videoService.videoGetAlbums(userId, num, num2, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoGetAlbums$lambda-63  reason: not valid java name */
    public static final VideoGetAlbumsResponse m1355videoGetAlbums$lambda63(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoGetAlbumsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoGetAlbumsResponse.class);
    }

    public static /* synthetic */ VKRequest videoGetAlbumsByVideo$default(VideoService videoService, UserId userId, int i9, UserId userId2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId2 = null;
        }
        return videoService.videoGetAlbumsByVideo(userId, i9, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoGetAlbumsByVideo$lambda-75  reason: not valid java name */
    public static final List m1356videoGetAlbumsByVideo$lambda75(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends Integer>>() { // from class: com.vk.sdk.api.video.VideoService$videoGetAlbumsByVideo$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest videoGetAlbumsByVideoExtended$default(VideoService videoService, UserId userId, int i9, UserId userId2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId2 = null;
        }
        return videoService.videoGetAlbumsByVideoExtended(userId, i9, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoGetAlbumsByVideoExtended$lambda-78  reason: not valid java name */
    public static final VideoGetAlbumsByVideoExtendedResponse m1357videoGetAlbumsByVideoExtended$lambda78(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoGetAlbumsByVideoExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoGetAlbumsByVideoExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest videoGetAlbumsExtended$default(VideoService videoService, UserId userId, Integer num, Integer num2, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        return videoService.videoGetAlbumsExtended(userId, num, num2, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoGetAlbumsExtended$lambda-69  reason: not valid java name */
    public static final VideoGetAlbumsExtendedResponse m1358videoGetAlbumsExtended$lambda69(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoGetAlbumsExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoGetAlbumsExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoGetComments$lambda-81  reason: not valid java name */
    public static final VideoGetCommentsResponse m1359videoGetComments$lambda81(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoGetCommentsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoGetCommentsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoGetCommentsExtended$lambda-90  reason: not valid java name */
    public static final VideoGetCommentsExtendedResponse m1360videoGetCommentsExtended$lambda90(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoGetCommentsExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoGetCommentsExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoRemoveFromAlbum$lambda-99  reason: not valid java name */
    public static final BaseOkResponse m1361videoRemoveFromAlbum$lambda99(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest videoReorderAlbums$default(VideoService videoService, int i9, UserId userId, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            num2 = null;
        }
        return videoService.videoReorderAlbums(i9, userId, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoReorderAlbums$lambda-104  reason: not valid java name */
    public static final BaseOkResponse m1362videoReorderAlbums$lambda104(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoReorderVideos$lambda-109  reason: not valid java name */
    public static final BaseOkResponse m1363videoReorderVideos$lambda109(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoReport$lambda-117  reason: not valid java name */
    public static final BaseOkResponse m1364videoReport$lambda117(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest videoReportComment$default(VideoService videoService, UserId userId, int i9, VideoReportCommentReason videoReportCommentReason, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            videoReportCommentReason = null;
        }
        return videoService.videoReportComment(userId, i9, videoReportCommentReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoReportComment$lambda-122  reason: not valid java name */
    public static final BaseOkResponse m1365videoReportComment$lambda122(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest videoRestore$default(VideoService videoService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return videoService.videoRestore(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoRestore$lambda-125  reason: not valid java name */
    public static final BaseOkResponse m1366videoRestore$lambda125(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest videoRestoreComment$default(VideoService videoService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return videoService.videoRestoreComment(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoRestoreComment$lambda-128  reason: not valid java name */
    public static final BaseBoolInt m1367videoRestoreComment$lambda128(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest videoSave$default(VideoService videoService, String str, String str2, Boolean bool, Boolean bool2, String str3, UserId userId, Integer num, List list, List list2, Boolean bool3, Boolean bool4, Boolean bool5, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        if ((i9 & 8) != 0) {
            bool2 = null;
        }
        if ((i9 & 16) != 0) {
            str3 = null;
        }
        if ((i9 & 32) != 0) {
            userId = null;
        }
        if ((i9 & 64) != 0) {
            num = null;
        }
        if ((i9 & 128) != 0) {
            list = null;
        }
        if ((i9 & 256) != 0) {
            list2 = null;
        }
        if ((i9 & 512) != 0) {
            bool3 = null;
        }
        if ((i9 & 1024) != 0) {
            bool4 = null;
        }
        if ((i9 & 2048) != 0) {
            bool5 = null;
        }
        return videoService.videoSave(str, str2, bool, bool2, str3, userId, num, list, list2, bool3, bool4, bool5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoSave$lambda-131  reason: not valid java name */
    public static final VideoSaveResult m1368videoSave$lambda131(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoSaveResult) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoSaveResult.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest videoSearch$default(VideoService videoService, String str, VideoSearchSort videoSearchSort, Integer num, Boolean bool, Boolean bool2, List list, Boolean bool3, Integer num2, Integer num3, Integer num4, Integer num5, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            videoSearchSort = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        if ((i9 & 16) != 0) {
            bool2 = null;
        }
        if ((i9 & 32) != 0) {
            list = null;
        }
        if ((i9 & 64) != 0) {
            bool3 = null;
        }
        if ((i9 & 128) != 0) {
            num2 = null;
        }
        if ((i9 & 256) != 0) {
            num3 = null;
        }
        if ((i9 & 512) != 0) {
            num4 = null;
        }
        if ((i9 & 1024) != 0) {
            num5 = null;
        }
        return videoService.videoSearch(str, videoSearchSort, num, bool, bool2, list, bool3, num2, num3, num4, num5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoSearch$lambda-145  reason: not valid java name */
    public static final VideoSearchResponse m1369videoSearch$lambda145(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoSearchResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest videoSearchExtended$default(VideoService videoService, String str, VideoSearchExtendedSort videoSearchExtendedSort, Integer num, Boolean bool, Boolean bool2, List list, Boolean bool3, Integer num2, Integer num3, Integer num4, Integer num5, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            videoSearchExtendedSort = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        if ((i9 & 16) != 0) {
            bool2 = null;
        }
        if ((i9 & 32) != 0) {
            list = null;
        }
        if ((i9 & 64) != 0) {
            bool3 = null;
        }
        if ((i9 & 128) != 0) {
            num2 = null;
        }
        if ((i9 & 256) != 0) {
            num3 = null;
        }
        if ((i9 & 512) != 0) {
            num4 = null;
        }
        if ((i9 & 1024) != 0) {
            num5 = null;
        }
        return videoService.videoSearchExtended(str, videoSearchExtendedSort, num, bool, bool2, list, bool3, num2, num3, num4, num5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoSearchExtended$lambda-159  reason: not valid java name */
    public static final VideoSearchExtendedResponse m1370videoSearchExtended$lambda159(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (VideoSearchExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) VideoSearchExtendedResponse.class);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoAdd(int i9, @NotNull UserId ownerId, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("video.add", new ApiResponseParser() { // from class: com.vk.sdk.api.video.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1343videoAdd$lambda0;
                m1343videoAdd$lambda0 = VideoService.m1343videoAdd$lambda0(jsonElement);
                return m1343videoAdd$lambda0;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("owner_id", ownerId);
        if (userId != null) {
            newApiRequest.addParam("target_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoAddAlbumResponse> videoAddAlbum(@Nullable UserId userId, @Nullable String str, @Nullable List<? extends VideoAddAlbumPrivacy> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("video.addAlbum", new ApiResponseParser() { // from class: com.vk.sdk.api.video.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoAddAlbumResponse m1344videoAddAlbum$lambda3;
                m1344videoAddAlbum$lambda3 = VideoService.m1344videoAddAlbum$lambda3(jsonElement);
                return m1344videoAddAlbum$lambda3;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("title", str);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (VideoAddAlbumPrivacy videoAddAlbumPrivacy : list) {
                arrayList.add(videoAddAlbumPrivacy.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(ShareConstants.WEB_DIALOG_PARAM_PRIVACY, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoAddToAlbum(@NotNull UserId ownerId, int i9, @Nullable UserId userId, @Nullable Integer num, @Nullable List<Integer> list) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("video.addToAlbum", new ApiResponseParser() { // from class: com.vk.sdk.api.video.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1345videoAddToAlbum$lambda9;
                m1345videoAddToAlbum$lambda9 = VideoService.m1345videoAddToAlbum$lambda9(jsonElement);
                return m1345videoAddToAlbum$lambda9;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("target_id", userId);
        }
        if (num != null) {
            newApiRequest.addParam("album_id", num.intValue());
        }
        if (list != null) {
            newApiRequest.addParam("album_ids", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> videoCreateComment(int i9, @Nullable UserId userId, @Nullable String str, @Nullable List<String> list, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable String str2) {
        NewApiRequest newApiRequest = new NewApiRequest("video.createComment", new ApiResponseParser() { // from class: com.vk.sdk.api.video.v
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1346videoCreateComment$lambda14;
                m1346videoCreateComment$lambda14 = VideoService.m1346videoCreateComment$lambda14(jsonElement);
                return m1346videoCreateComment$lambda14;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        if (bool != null) {
            newApiRequest.addParam("from_group", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "reply_to_comment", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "sticker_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            newApiRequest.addParam(TPDownloadProxyEnum.USER_GUID, str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoDelete(int i9, @Nullable UserId userId, @Nullable UserId userId2) {
        NewApiRequest newApiRequest = new NewApiRequest("video.delete", new ApiResponseParser() { // from class: com.vk.sdk.api.video.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1347videoDelete$lambda23;
                m1347videoDelete$lambda23 = VideoService.m1347videoDelete$lambda23(jsonElement);
                return m1347videoDelete$lambda23;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (userId2 != null) {
            newApiRequest.addParam("target_id", userId2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoDeleteAlbum(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("video.deleteAlbum", new ApiResponseParser() { // from class: com.vk.sdk.api.video.y
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1348videoDeleteAlbum$lambda27;
                m1348videoDeleteAlbum$lambda27 = VideoService.m1348videoDeleteAlbum$lambda27(jsonElement);
                return m1348videoDeleteAlbum$lambda27;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "album_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoDeleteComment(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("video.deleteComment", new ApiResponseParser() { // from class: com.vk.sdk.api.video.w
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1349videoDeleteComment$lambda30;
                m1349videoDeleteComment$lambda30 = VideoService.m1349videoDeleteComment$lambda30(jsonElement);
                return m1349videoDeleteComment$lambda30;
            }
        });
        newApiRequest.addParam("comment_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoEdit(int i9, @Nullable UserId userId, @Nullable String str, @Nullable String str2, @Nullable List<String> list, @Nullable List<String> list2, @Nullable Boolean bool, @Nullable Boolean bool2) {
        NewApiRequest newApiRequest = new NewApiRequest("video.edit", new ApiResponseParser() { // from class: com.vk.sdk.api.video.a0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1350videoEdit$lambda33;
                m1350videoEdit$lambda33 = VideoService.m1350videoEdit$lambda33(jsonElement);
                return m1350videoEdit$lambda33;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("name", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("desc", str2);
        }
        if (list != null) {
            newApiRequest.addParam("privacy_view", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("privacy_comment", list2);
        }
        if (bool != null) {
            newApiRequest.addParam("no_comments", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("repeat", bool2.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoEditAlbum(int i9, @NotNull String title, @Nullable UserId userId, @Nullable List<? extends VideoEditAlbumPrivacy> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("video.editAlbum", new ApiResponseParser() { // from class: com.vk.sdk.api.video.b0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1351videoEditAlbum$lambda42;
                m1351videoEditAlbum$lambda42 = VideoService.m1351videoEditAlbum$lambda42(jsonElement);
                return m1351videoEditAlbum$lambda42;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "album_id", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("title", title);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (VideoEditAlbumPrivacy videoEditAlbumPrivacy : list) {
                arrayList.add(videoEditAlbumPrivacy.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(ShareConstants.WEB_DIALOG_PARAM_PRIVACY, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoEditComment(int i9, @Nullable UserId userId, @Nullable String str, @Nullable List<String> list) {
        NewApiRequest newApiRequest = new NewApiRequest("video.editComment", new ApiResponseParser() { // from class: com.vk.sdk.api.video.t
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1352videoEditComment$lambda47;
                m1352videoEditComment$lambda47 = VideoService.m1352videoEditComment$lambda47(jsonElement);
                return m1352videoEditComment$lambda47;
            }
        });
        newApiRequest.addParam("comment_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoGetResponse> videoGet(@Nullable UserId userId, @Nullable List<String> list, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<String> list2) {
        NewApiRequest newApiRequest = new NewApiRequest("video.get", new ApiResponseParser() { // from class: com.vk.sdk.api.video.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoGetResponse m1353videoGet$lambda52;
                m1353videoGet$lambda52 = VideoService.m1353videoGet$lambda52(jsonElement);
                return m1353videoGet$lambda52;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (list != null) {
            newApiRequest.addParam("videos", list);
        }
        if (num != null) {
            newApiRequest.addParam("album_id", num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (list2 != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoVideoAlbumFull> videoGetAlbumById(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("video.getAlbumById", new ApiResponseParser() { // from class: com.vk.sdk.api.video.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoVideoAlbumFull m1354videoGetAlbumById$lambda60;
                m1354videoGetAlbumById$lambda60 = VideoService.m1354videoGetAlbumById$lambda60(jsonElement);
                return m1354videoGetAlbumById$lambda60;
            }
        });
        newApiRequest.addParam("album_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoGetAlbumsResponse> videoGetAlbums(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("video.getAlbums", new ApiResponseParser() { // from class: com.vk.sdk.api.video.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoGetAlbumsResponse m1355videoGetAlbums$lambda63;
                m1355videoGetAlbums$lambda63 = VideoService.m1355videoGetAlbums$lambda63(jsonElement);
                return m1355videoGetAlbums$lambda63;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        if (bool != null) {
            newApiRequest.addParam("need_system", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<Integer>> videoGetAlbumsByVideo(@NotNull UserId ownerId, int i9, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("video.getAlbumsByVideo", new ApiResponseParser() { // from class: com.vk.sdk.api.video.z
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1356videoGetAlbumsByVideo$lambda75;
                m1356videoGetAlbumsByVideo$lambda75 = VideoService.m1356videoGetAlbumsByVideo$lambda75(jsonElement);
                return m1356videoGetAlbumsByVideo$lambda75;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("target_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoGetAlbumsByVideoExtendedResponse> videoGetAlbumsByVideoExtended(@NotNull UserId ownerId, int i9, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("video.getAlbumsByVideo", new ApiResponseParser() { // from class: com.vk.sdk.api.video.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoGetAlbumsByVideoExtendedResponse m1357videoGetAlbumsByVideoExtended$lambda78;
                m1357videoGetAlbumsByVideoExtended$lambda78 = VideoService.m1357videoGetAlbumsByVideoExtended$lambda78(jsonElement);
                return m1357videoGetAlbumsByVideoExtended$lambda78;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("target_id", userId);
        }
        newApiRequest.addParam("extended", true);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoGetAlbumsExtendedResponse> videoGetAlbumsExtended(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("video.getAlbums", new ApiResponseParser() { // from class: com.vk.sdk.api.video.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoGetAlbumsExtendedResponse m1358videoGetAlbumsExtended$lambda69;
                m1358videoGetAlbumsExtended$lambda69 = VideoService.m1358videoGetAlbumsExtended$lambda69(jsonElement);
                return m1358videoGetAlbumsExtended$lambda69;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        newApiRequest.addParam("extended", true);
        if (bool != null) {
            newApiRequest.addParam("need_system", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoGetCommentsResponse> videoGetComments(int i9, @Nullable UserId userId, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable VideoGetCommentsSort videoGetCommentsSort, @Nullable List<String> list) {
        NewApiRequest newApiRequest = new NewApiRequest("video.getComments", new ApiResponseParser() { // from class: com.vk.sdk.api.video.x
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoGetCommentsResponse m1359videoGetComments$lambda81;
                m1359videoGetComments$lambda81 = VideoService.m1359videoGetComments$lambda81(jsonElement);
                return m1359videoGetComments$lambda81;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("need_likes", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_comment_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 100);
        }
        if (videoGetCommentsSort != null) {
            newApiRequest.addParam("sort", videoGetCommentsSort.getValue());
        }
        if (list != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoGetCommentsExtendedResponse> videoGetCommentsExtended(int i9, @Nullable UserId userId, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable VideoGetCommentsExtendedSort videoGetCommentsExtendedSort, @Nullable List<String> list) {
        NewApiRequest newApiRequest = new NewApiRequest("video.getComments", new ApiResponseParser() { // from class: com.vk.sdk.api.video.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoGetCommentsExtendedResponse m1360videoGetCommentsExtended$lambda90;
                m1360videoGetCommentsExtended$lambda90 = VideoService.m1360videoGetCommentsExtended$lambda90(jsonElement);
                return m1360videoGetCommentsExtended$lambda90;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("need_likes", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_comment_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 100);
        }
        if (videoGetCommentsExtendedSort != null) {
            newApiRequest.addParam("sort", videoGetCommentsExtendedSort.getValue());
        }
        newApiRequest.addParam("extended", true);
        if (list != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoRemoveFromAlbum(@NotNull UserId ownerId, int i9, @Nullable UserId userId, @Nullable Integer num, @Nullable List<Integer> list) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("video.removeFromAlbum", new ApiResponseParser() { // from class: com.vk.sdk.api.video.s
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1361videoRemoveFromAlbum$lambda99;
                m1361videoRemoveFromAlbum$lambda99 = VideoService.m1361videoRemoveFromAlbum$lambda99(jsonElement);
                return m1361videoRemoveFromAlbum$lambda99;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("target_id", userId);
        }
        if (num != null) {
            newApiRequest.addParam("album_id", num.intValue());
        }
        if (list != null) {
            newApiRequest.addParam("album_ids", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoReorderAlbums(int i9, @Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("video.reorderAlbums", new ApiResponseParser() { // from class: com.vk.sdk.api.video.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1362videoReorderAlbums$lambda104;
                m1362videoReorderAlbums$lambda104 = VideoService.m1362videoReorderAlbums$lambda104(jsonElement);
                return m1362videoReorderAlbums$lambda104;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "album_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "before", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "after", num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoReorderVideos(@NotNull UserId ownerId, int i9, @Nullable UserId userId, @Nullable Integer num, @Nullable UserId userId2, @Nullable Integer num2, @Nullable UserId userId3, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("video.reorderVideos", new ApiResponseParser() { // from class: com.vk.sdk.api.video.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1363videoReorderVideos$lambda109;
                m1363videoReorderVideos$lambda109 = VideoService.m1363videoReorderVideos$lambda109(jsonElement);
                return m1363videoReorderVideos$lambda109;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("target_id", userId);
        }
        if (num != null) {
            newApiRequest.addParam("album_id", num.intValue());
        }
        if (userId2 != null) {
            newApiRequest.addParam("before_owner_id", userId2);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "before_video_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (userId3 != null) {
            newApiRequest.addParam("after_owner_id", userId3);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "after_video_id", num3.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoReport(@NotNull UserId ownerId, int i9, @Nullable VideoReportReason videoReportReason, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("video.report", new ApiResponseParser() { // from class: com.vk.sdk.api.video.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1364videoReport$lambda117;
                m1364videoReport$lambda117 = VideoService.m1364videoReport$lambda117(jsonElement);
                return m1364videoReport$lambda117;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (videoReportReason != null) {
            newApiRequest.addParam("reason", videoReportReason.getValue());
        }
        if (str != null) {
            newApiRequest.addParam("comment", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("search_query", str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoReportComment(@NotNull UserId ownerId, int i9, @Nullable VideoReportCommentReason videoReportCommentReason) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("video.reportComment", new ApiResponseParser() { // from class: com.vk.sdk.api.video.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1365videoReportComment$lambda122;
                m1365videoReportComment$lambda122 = VideoService.m1365videoReportComment$lambda122(jsonElement);
                return m1365videoReportComment$lambda122;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        if (videoReportCommentReason != null) {
            newApiRequest.addParam("reason", videoReportCommentReason.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> videoRestore(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("video.restore", new ApiResponseParser() { // from class: com.vk.sdk.api.video.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1366videoRestore$lambda125;
                m1366videoRestore$lambda125 = VideoService.m1366videoRestore$lambda125(jsonElement);
                return m1366videoRestore$lambda125;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, TCConstants.PLAYER_VIDEO_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> videoRestoreComment(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("video.restoreComment", new ApiResponseParser() { // from class: com.vk.sdk.api.video.u
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1367videoRestoreComment$lambda128;
                m1367videoRestoreComment$lambda128 = VideoService.m1367videoRestoreComment$lambda128(jsonElement);
                return m1367videoRestoreComment$lambda128;
            }
        });
        newApiRequest.addParam("comment_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoSaveResult> videoSave(@Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable String str3, @Nullable UserId userId, @Nullable Integer num, @Nullable List<String> list, @Nullable List<String> list2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Boolean bool5) {
        NewApiRequest newApiRequest = new NewApiRequest("video.save", new ApiResponseParser() { // from class: com.vk.sdk.api.video.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoSaveResult m1368videoSave$lambda131;
                m1368videoSave$lambda131 = VideoService.m1368videoSave$lambda131(jsonElement);
                return m1368videoSave$lambda131;
            }
        });
        if (str != null) {
            newApiRequest.addParam("name", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("description", str2);
        }
        if (bool != null) {
            newApiRequest.addParam("is_private", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("wallpost", bool2.booleanValue());
        }
        if (str3 != null) {
            newApiRequest.addParam("link", str3);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "album_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (list != null) {
            newApiRequest.addParam("privacy_view", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("privacy_comment", list2);
        }
        if (bool3 != null) {
            newApiRequest.addParam("no_comments", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("repeat", bool4.booleanValue());
        }
        if (bool5 != null) {
            newApiRequest.addParam("compression", bool5.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoSearchResponse> videoSearch(@Nullable String str, @Nullable VideoSearchSort videoSearchSort, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable List<? extends VideoSearchFilters> list, @Nullable Boolean bool3, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("video.search", new ApiResponseParser() { // from class: com.vk.sdk.api.video.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoSearchResponse m1369videoSearch$lambda145;
                m1369videoSearch$lambda145 = VideoService.m1369videoSearch$lambda145(jsonElement);
                return m1369videoSearch$lambda145;
            }
        });
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (videoSearchSort != null) {
            newApiRequest.addParam("sort", videoSearchSort.getValue());
        }
        if (num != null) {
            newApiRequest.addParam("hd", num.intValue());
        }
        if (bool != null) {
            newApiRequest.addParam("adult", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("live", bool2.booleanValue());
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (VideoSearchFilters videoSearchFilters : list) {
                arrayList.add(videoSearchFilters.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(ShareConstants.WEB_DIALOG_PARAM_FILTERS, (Iterable<?>) arrayList);
        }
        if (bool3 != null) {
            newApiRequest.addParam("search_own", bool3.booleanValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "longer", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, "shorter", num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (num5 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num5.intValue(), 0, 200);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<VideoSearchExtendedResponse> videoSearchExtended(@Nullable String str, @Nullable VideoSearchExtendedSort videoSearchExtendedSort, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable List<? extends VideoSearchExtendedFilters> list, @Nullable Boolean bool3, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("video.search", new ApiResponseParser() { // from class: com.vk.sdk.api.video.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                VideoSearchExtendedResponse m1370videoSearchExtended$lambda159;
                m1370videoSearchExtended$lambda159 = VideoService.m1370videoSearchExtended$lambda159(jsonElement);
                return m1370videoSearchExtended$lambda159;
            }
        });
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (videoSearchExtendedSort != null) {
            newApiRequest.addParam("sort", videoSearchExtendedSort.getValue());
        }
        if (num != null) {
            newApiRequest.addParam("hd", num.intValue());
        }
        if (bool != null) {
            newApiRequest.addParam("adult", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("live", bool2.booleanValue());
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (VideoSearchExtendedFilters videoSearchExtendedFilters : list) {
                arrayList.add(videoSearchExtendedFilters.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(ShareConstants.WEB_DIALOG_PARAM_FILTERS, (Iterable<?>) arrayList);
        }
        if (bool3 != null) {
            newApiRequest.addParam("search_own", bool3.booleanValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "longer", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, "shorter", num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (num5 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num5.intValue(), 0, 200);
        }
        newApiRequest.addParam("extended", true);
        return newApiRequest;
    }
}
