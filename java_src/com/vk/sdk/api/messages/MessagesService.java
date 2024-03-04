package com.vk.sdk.api.messages;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.share.internal.ShareInternalUtility;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.utils.Contants;
import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.base.dto.BaseUserGroupFields;
import com.vk.sdk.api.messages.dto.MessagesDeleteChatPhotoResponse;
import com.vk.sdk.api.messages.dto.MessagesDeleteConversationResponse;
import com.vk.sdk.api.messages.dto.MessagesGetByConversationMessageIdExtendedResponse;
import com.vk.sdk.api.messages.dto.MessagesGetByConversationMessageIdResponse;
import com.vk.sdk.api.messages.dto.MessagesGetByIdExtendedResponse;
import com.vk.sdk.api.messages.dto.MessagesGetByIdResponse;
import com.vk.sdk.api.messages.dto.MessagesGetChatPreviewResponse;
import com.vk.sdk.api.messages.dto.MessagesGetConversationById;
import com.vk.sdk.api.messages.dto.MessagesGetConversationByIdExtended;
import com.vk.sdk.api.messages.dto.MessagesGetConversationMembers;
import com.vk.sdk.api.messages.dto.MessagesGetConversationsFilter;
import com.vk.sdk.api.messages.dto.MessagesGetConversationsResponse;
import com.vk.sdk.api.messages.dto.MessagesGetHistoryAttachmentsMediaType;
import com.vk.sdk.api.messages.dto.MessagesGetHistoryAttachmentsResponse;
import com.vk.sdk.api.messages.dto.MessagesGetHistoryExtendedResponse;
import com.vk.sdk.api.messages.dto.MessagesGetHistoryExtendedRev;
import com.vk.sdk.api.messages.dto.MessagesGetHistoryResponse;
import com.vk.sdk.api.messages.dto.MessagesGetHistoryRev;
import com.vk.sdk.api.messages.dto.MessagesGetImportantMessagesExtendedResponse;
import com.vk.sdk.api.messages.dto.MessagesGetImportantMessagesResponse;
import com.vk.sdk.api.messages.dto.MessagesGetIntentUsersIntent;
import com.vk.sdk.api.messages.dto.MessagesGetIntentUsersResponse;
import com.vk.sdk.api.messages.dto.MessagesGetInviteLinkResponse;
import com.vk.sdk.api.messages.dto.MessagesGetLongPollHistoryResponse;
import com.vk.sdk.api.messages.dto.MessagesIsMessagesFromGroupAllowedResponse;
import com.vk.sdk.api.messages.dto.MessagesJoinChatByInviteLinkResponse;
import com.vk.sdk.api.messages.dto.MessagesLastActivity;
import com.vk.sdk.api.messages.dto.MessagesLongpollParams;
import com.vk.sdk.api.messages.dto.MessagesPinnedMessage;
import com.vk.sdk.api.messages.dto.MessagesSearchConversationsExtendedResponse;
import com.vk.sdk.api.messages.dto.MessagesSearchConversationsResponse;
import com.vk.sdk.api.messages.dto.MessagesSearchExtendedResponse;
import com.vk.sdk.api.messages.dto.MessagesSearchResponse;
import com.vk.sdk.api.messages.dto.MessagesSendIntent;
import com.vk.sdk.api.messages.dto.MessagesSetActivityType;
import com.vk.sdk.api.messages.dto.MessagesSetChatPhotoResponse;
import com.vk.sdk.api.users.dto.UsersFields;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000Ü\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J1\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\r\u001a\u00020\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ6\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\tJe\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00122\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0012¢\u0006\u0002\u0010\u001bJ \u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\tJ5\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010 J\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\r\u001a\u00020\tJµ\u0001\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0019\u001a\u00020\u00072\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u00101J \u00102\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000fJ@\u00103\u001a\b\u0012\u0004\u0012\u0002040\u00042\u0006\u0010\u0019\u001a\u00020\u00072\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u00070\u00122\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\tJ@\u00108\u001a\b\u0012\u0004\u0012\u0002090\u00042\u0006\u0010\u0019\u001a\u00020\u00072\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u00070\u00122\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\tJI\u0010:\u001a\b\u0012\u0004\u0012\u00020;0\u00042\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u00122\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010=JI\u0010>\u001a\b\u0012\u0004\u0012\u00020?0\u00042\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u00122\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010=J;\u0010@\u001a\b\u0012\u0004\u0012\u00020A0\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u000f2\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u0012¢\u0006\u0002\u0010CJ2\u0010D\u001a\b\u0012\u0004\u0012\u00020E0\u00042\u0006\u0010\u0019\u001a\u00020\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\tJ_\u0010F\u001a\b\u0012\u0004\u0012\u00020G0\u00042\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010J\u001a\u0004\u0018\u00010K2\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u00020M\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010NJ8\u0010O\u001a\b\u0012\u0004\u0012\u00020P0\u00042\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00070\u00122\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u00020M\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\tJ8\u0010R\u001a\b\u0012\u0004\u0012\u00020S0\u00042\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00070\u00122\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u00020M\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\tJw\u0010T\u001a\b\u0012\u0004\u0012\u00020U0\u00042\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010V\u001a\u0004\u0018\u00010W2\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010XJ\u007f\u0010Y\u001a\b\u0012\u0004\u0012\u00020Z0\u00042\u0006\u0010\u0019\u001a\u00020\u00072\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\\2\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00172\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010`\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010aJw\u0010b\u001a\b\u0012\u0004\u0012\u00020c0\u00042\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010V\u001a\u0004\u0018\u00010d2\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010eJ_\u0010f\u001a\b\u0012\u0004\u0012\u00020g0\u00042\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u00020M\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010hJ_\u0010i\u001a\b\u0012\u0004\u0012\u00020j0\u00042\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u00020M\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010hJa\u0010k\u001a\b\u0012\u0004\u0012\u00020l0\u00042\u0006\u0010m\u001a\u00020n2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010p\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00122\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0012¢\u0006\u0002\u0010qJ1\u0010r\u001a\b\u0012\u0004\u0012\u00020s0\u00042\u0006\u0010\u0019\u001a\u00020\u00072\n\b\u0002\u0010t\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010uJ\u0014\u0010v\u001a\b\u0012\u0004\u0012\u00020w0\u00042\u0006\u0010\b\u001a\u00020\tJ«\u0001\u0010x\u001a\b\u0012\u0004\u0012\u00020y0\u00042\n\b\u0002\u0010z\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\u00172\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010}\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010~\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u007f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0017¢\u0006\u0003\u0010\u0083\u0001J:\u0010\u0084\u0001\u001a\t\u0012\u0005\u0012\u00030\u0085\u00010\u00042\u000b\b\u0002\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0087\u0001J\u001e\u0010\u0088\u0001\u001a\t\u0012\u0005\u0012\u00030\u0089\u00010\u00042\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\u008a\u0001\u001a\t\u0012\u0005\u0012\u00030\u008b\u00010\u00042\u0006\u0010B\u001a\u00020\u000fJ3\u0010\u008c\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0019\u001a\u00020\u00072\u000b\b\u0002\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010uJ8\u0010\u008e\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00120\u00042\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00122\u000b\b\u0002\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0090\u0001J3\u0010\u0091\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0019\u001a\u00020\u00072\u000b\b\u0002\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010uJV\u0010\u0092\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00122\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0017¢\u0006\u0003\u0010\u0094\u0001J4\u0010\u0095\u0001\u001a\t\u0012\u0005\u0012\u00030\u0096\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u00072\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0097\u0001J.\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010\u0099\u0001\u001a\u0004\u0018\u00010\tJ!\u0010\u009a\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010-\u001a\u00020\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\tJ|\u0010\u009b\u0001\u001a\t\u0012\u0005\u0012\u00030\u009c\u00010\u00042\u000b\b\u0002\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0003\u0010\u009f\u0001JK\u0010 \u0001\u001a\t\u0012\u0005\u0012\u00030¡\u00010\u00042\u000b\b\u0002\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0003\u0010¢\u0001JK\u0010£\u0001\u001a\t\u0012\u0005\u0012\u00030¤\u00010\u00042\u000b\b\u0002\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0003\u0010¢\u0001J|\u0010¥\u0001\u001a\t\u0012\u0005\u0012\u00030¦\u00010\u00042\u000b\b\u0002\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0003\u0010\u009f\u0001JÎ\u0002\u0010§\u0001\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010¨\u0001\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010Q\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00122\u000b\b\u0002\u0010©\u0001\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00122\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u000f2\u000b\b\u0002\u0010ª\u0001\u001a\u0004\u0018\u00010\u00072\u0011\b\u0002\u0010«\u0001\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00122\u000b\b\u0002\u0010¬\u0001\u001a\u0004\u0018\u00010\u000f2\u000b\b\u0002\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u000f2\u000b\b\u0002\u0010®\u0001\u001a\u0004\u0018\u00010\u000f2\u000b\b\u0002\u0010¯\u0001\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00172\u000b\b\u0002\u0010m\u001a\u0005\u0018\u00010°\u00012\n\b\u0002\u0010o\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010±\u0001J3\u0010²\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0007\u0010³\u0001\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00072\u000b\b\u0002\u0010´\u0001\u001a\u0004\u0018\u00010\u000fJE\u0010µ\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\f\b\u0002\u0010¶\u0001\u001a\u0005\u0018\u00010·\u00012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0003\u0010¸\u0001J\u0017\u0010¹\u0001\u001a\t\u0012\u0005\u0012\u00030º\u00010\u00042\u0007\u0010»\u0001\u001a\u00020\u000fJ!\u0010¼\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0019\u001a\u00020\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¨\u0006½\u0001"}, d2 = {"Lcom/vk/sdk/api/messages/MessagesService;", "", "()V", "messagesAddChatUser", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "chatId", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "visibleMessagesCount", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesAllowMessagesFromGroup", "groupId", "key", "", "messagesCreateChat", "userIds", "", "title", "messagesDelete", "messageIds", "spam", "", "deleteForAll", "peerId", "cmids", "(Ljava/util/List;Ljava/lang/Boolean;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesDeleteChatPhoto", "Lcom/vk/sdk/api/messages/dto/MessagesDeleteChatPhotoResponse;", "messagesDeleteConversation", "Lcom/vk/sdk/api/messages/dto/MessagesDeleteConversationResponse;", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesDenyMessagesFromGroup", "messagesEdit", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "message", "lat", "", "long", "attachment", "keepForwardMessages", "keepSnippets", "dontParseLinks", "disableMentions", "messageId", "conversationMessageId", "template", "keyboard", "(ILjava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesEditChat", "messagesGetByConversationMessageId", "Lcom/vk/sdk/api/messages/dto/MessagesGetByConversationMessageIdResponse;", "conversationMessageIds", GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/users/dto/UsersFields;", "messagesGetByConversationMessageIdExtended", "Lcom/vk/sdk/api/messages/dto/MessagesGetByConversationMessageIdExtendedResponse;", "messagesGetById", "Lcom/vk/sdk/api/messages/dto/MessagesGetByIdResponse;", "previewLength", "(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesGetByIdExtended", "Lcom/vk/sdk/api/messages/dto/MessagesGetByIdExtendedResponse;", "messagesGetChatPreview", "Lcom/vk/sdk/api/messages/dto/MessagesGetChatPreviewResponse;", "link", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesGetConversationMembers", "Lcom/vk/sdk/api/messages/dto/MessagesGetConversationMembers;", "messagesGetConversations", "Lcom/vk/sdk/api/messages/dto/MessagesGetConversationsResponse;", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "filter", "Lcom/vk/sdk/api/messages/dto/MessagesGetConversationsFilter;", "startMessageId", "Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/messages/dto/MessagesGetConversationsFilter;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesGetConversationsById", "Lcom/vk/sdk/api/messages/dto/MessagesGetConversationById;", "peerIds", "messagesGetConversationsByIdExtended", "Lcom/vk/sdk/api/messages/dto/MessagesGetConversationByIdExtended;", "messagesGetHistory", "Lcom/vk/sdk/api/messages/dto/MessagesGetHistoryResponse;", "rev", "Lcom/vk/sdk/api/messages/dto/MessagesGetHistoryRev;", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/messages/dto/MessagesGetHistoryRev;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesGetHistoryAttachments", "Lcom/vk/sdk/api/messages/dto/MessagesGetHistoryAttachmentsResponse;", "mediaType", "Lcom/vk/sdk/api/messages/dto/MessagesGetHistoryAttachmentsMediaType;", "startFrom", "photoSizes", "preserveOrder", "maxForwardsLevel", "(ILcom/vk/sdk/api/messages/dto/MessagesGetHistoryAttachmentsMediaType;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesGetHistoryExtended", "Lcom/vk/sdk/api/messages/dto/MessagesGetHistoryExtendedResponse;", "Lcom/vk/sdk/api/messages/dto/MessagesGetHistoryExtendedRev;", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/messages/dto/MessagesGetHistoryExtendedRev;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesGetImportantMessages", "Lcom/vk/sdk/api/messages/dto/MessagesGetImportantMessagesResponse;", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesGetImportantMessagesExtended", "Lcom/vk/sdk/api/messages/dto/MessagesGetImportantMessagesExtendedResponse;", "messagesGetIntentUsers", "Lcom/vk/sdk/api/messages/dto/MessagesGetIntentUsersResponse;", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "Lcom/vk/sdk/api/messages/dto/MessagesGetIntentUsersIntent;", "subscribeId", "nameCase", "(Lcom/vk/sdk/api/messages/dto/MessagesGetIntentUsersIntent;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesGetInviteLink", "Lcom/vk/sdk/api/messages/dto/MessagesGetInviteLinkResponse;", "reset", "(ILjava/lang/Boolean;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesGetLastActivity", "Lcom/vk/sdk/api/messages/dto/MessagesLastActivity;", "messagesGetLongPollHistory", "Lcom/vk/sdk/api/messages/dto/MessagesGetLongPollHistoryResponse;", TimeDisplaySetting.TIME_DISPLAY_SETTING, "pts", "onlines", "eventsLimit", "msgsLimit", "maxMsgId", "lpVersion", "lastN", "credentials", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesGetLongPollServer", "Lcom/vk/sdk/api/messages/dto/MessagesLongpollParams;", "needPts", "(Ljava/lang/Boolean;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesIsMessagesFromGroupAllowed", "Lcom/vk/sdk/api/messages/dto/MessagesIsMessagesFromGroupAllowedResponse;", "messagesJoinChatByInviteLink", "Lcom/vk/sdk/api/messages/dto/MessagesJoinChatByInviteLinkResponse;", "messagesMarkAsAnsweredConversation", "answered", "messagesMarkAsImportant", "important", "(Ljava/util/List;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesMarkAsImportantConversation", "messagesMarkAsRead", "markConversationAsRead", "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesPin", "Lcom/vk/sdk/api/messages/dto/MessagesPinnedMessage;", "(ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesRemoveChatUser", "memberId", "messagesRestore", "messagesSearch", "Lcom/vk/sdk/api/messages/dto/MessagesSearchResponse;", "q", "date", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesSearchConversations", "Lcom/vk/sdk/api/messages/dto/MessagesSearchConversationsResponse;", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesSearchConversationsExtended", "Lcom/vk/sdk/api/messages/dto/MessagesSearchConversationsExtendedResponse;", "messagesSearchExtended", "Lcom/vk/sdk/api/messages/dto/MessagesSearchExtendedResponse;", "messagesSend", "randomId", "domain", "replyTo", "forwardMessages", "forward", "stickerId", "payload", "contentSource", "Lcom/vk/sdk/api/messages/dto/MessagesSendIntent;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesSendIntent;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesSendMessageEventAnswer", "eventId", "eventData", "messagesSetActivity", "type", "Lcom/vk/sdk/api/messages/dto/MessagesSetActivityType;", "(Ljava/lang/Integer;Lcom/vk/sdk/api/messages/dto/MessagesSetActivityType;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "messagesSetChatPhoto", "Lcom/vk/sdk/api/messages/dto/MessagesSetChatPhotoResponse;", ShareInternalUtility.STAGING_PARAM, "messagesUnpin", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesService {
    public static /* synthetic */ VKRequest messagesAddChatUser$default(MessagesService messagesService, int i9, UserId userId, Integer num, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            num = null;
        }
        return messagesService.messagesAddChatUser(i9, userId, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesAddChatUser$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m1122messagesAddChatUser$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest messagesAllowMessagesFromGroup$default(MessagesService messagesService, UserId userId, String str, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str = null;
        }
        return messagesService.messagesAllowMessagesFromGroup(userId, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesAllowMessagesFromGroup$lambda-4  reason: not valid java name */
    public static final BaseOkResponse m1123messagesAllowMessagesFromGroup$lambda4(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesCreateChat$default(MessagesService messagesService, List list, String str, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            userId = null;
        }
        return messagesService.messagesCreateChat(list, str, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesCreateChat$lambda-7  reason: not valid java name */
    public static final Integer m1124messagesCreateChat$lambda7(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesDelete$default(MessagesService messagesService, List list, Boolean bool, UserId userId, Boolean bool2, Integer num, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            bool = null;
        }
        if ((i9 & 4) != 0) {
            userId = null;
        }
        if ((i9 & 8) != 0) {
            bool2 = null;
        }
        if ((i9 & 16) != 0) {
            num = null;
        }
        if ((i9 & 32) != 0) {
            list2 = null;
        }
        return messagesService.messagesDelete(list, bool, userId, bool2, num, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesDelete$lambda-12  reason: not valid java name */
    public static final Object m1125messagesDelete$lambda12(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Object.class);
    }

    public static /* synthetic */ VKRequest messagesDeleteChatPhoto$default(MessagesService messagesService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return messagesService.messagesDeleteChatPhoto(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesDeleteChatPhoto$lambda-20  reason: not valid java name */
    public static final MessagesDeleteChatPhotoResponse m1126messagesDeleteChatPhoto$lambda20(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesDeleteChatPhotoResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesDeleteChatPhotoResponse.class);
    }

    public static /* synthetic */ VKRequest messagesDeleteConversation$default(MessagesService messagesService, Integer num, Integer num2, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            userId = null;
        }
        return messagesService.messagesDeleteConversation(num, num2, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesDeleteConversation$lambda-23  reason: not valid java name */
    public static final MessagesDeleteConversationResponse m1127messagesDeleteConversation$lambda23(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesDeleteConversationResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesDeleteConversationResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesDenyMessagesFromGroup$lambda-28  reason: not valid java name */
    public static final BaseOkResponse m1128messagesDenyMessagesFromGroup$lambda28(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesEdit$lambda-30  reason: not valid java name */
    public static final BaseBoolInt m1129messagesEdit$lambda30(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    public static /* synthetic */ VKRequest messagesEditChat$default(MessagesService messagesService, int i9, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        return messagesService.messagesEditChat(i9, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesEditChat$lambda-45  reason: not valid java name */
    public static final BaseOkResponse m1130messagesEditChat$lambda45(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetByConversationMessageId$default(MessagesService messagesService, int i9, List list, List list2, UserId userId, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list2 = null;
        }
        if ((i10 & 8) != 0) {
            userId = null;
        }
        return messagesService.messagesGetByConversationMessageId(i9, list, list2, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetByConversationMessageId$lambda-48  reason: not valid java name */
    public static final MessagesGetByConversationMessageIdResponse m1131messagesGetByConversationMessageId$lambda48(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetByConversationMessageIdResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetByConversationMessageIdResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetByConversationMessageIdExtended$default(MessagesService messagesService, int i9, List list, List list2, UserId userId, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list2 = null;
        }
        if ((i10 & 8) != 0) {
            userId = null;
        }
        return messagesService.messagesGetByConversationMessageIdExtended(i9, list, list2, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetByConversationMessageIdExtended$lambda-53  reason: not valid java name */
    public static final MessagesGetByConversationMessageIdExtendedResponse m1132messagesGetByConversationMessageIdExtended$lambda53(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetByConversationMessageIdExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetByConversationMessageIdExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetById$default(MessagesService messagesService, List list, Integer num, List list2, UserId userId, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            list2 = null;
        }
        if ((i9 & 8) != 0) {
            userId = null;
        }
        return messagesService.messagesGetById(list, num, list2, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetById$lambda-58  reason: not valid java name */
    public static final MessagesGetByIdResponse m1133messagesGetById$lambda58(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetByIdResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetByIdResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetByIdExtended$default(MessagesService messagesService, List list, Integer num, List list2, UserId userId, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            list2 = null;
        }
        if ((i9 & 8) != 0) {
            userId = null;
        }
        return messagesService.messagesGetByIdExtended(list, num, list2, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetByIdExtended$lambda-64  reason: not valid java name */
    public static final MessagesGetByIdExtendedResponse m1134messagesGetByIdExtended$lambda64(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetByIdExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetByIdExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetChatPreview$default(MessagesService messagesService, Integer num, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        return messagesService.messagesGetChatPreview(num, str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetChatPreview$lambda-70  reason: not valid java name */
    public static final MessagesGetChatPreviewResponse m1135messagesGetChatPreview$lambda70(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetChatPreviewResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetChatPreviewResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetConversationMembers$default(MessagesService messagesService, int i9, List list, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            list = null;
        }
        if ((i10 & 4) != 0) {
            userId = null;
        }
        return messagesService.messagesGetConversationMembers(i9, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetConversationMembers$lambda-76  reason: not valid java name */
    public static final MessagesGetConversationMembers m1136messagesGetConversationMembers$lambda76(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetConversationMembers) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetConversationMembers.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetConversations$default(MessagesService messagesService, Integer num, Integer num2, MessagesGetConversationsFilter messagesGetConversationsFilter, Integer num3, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            messagesGetConversationsFilter = null;
        }
        if ((i9 & 8) != 0) {
            num3 = null;
        }
        if ((i9 & 16) != 0) {
            list = null;
        }
        if ((i9 & 32) != 0) {
            userId = null;
        }
        return messagesService.messagesGetConversations(num, num2, messagesGetConversationsFilter, num3, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetConversations$lambda-81  reason: not valid java name */
    public static final MessagesGetConversationsResponse m1137messagesGetConversations$lambda81(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetConversationsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetConversationsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetConversationsById$default(MessagesService messagesService, List list, List list2, UserId userId, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            list2 = null;
        }
        if ((i9 & 4) != 0) {
            userId = null;
        }
        return messagesService.messagesGetConversationsById(list, list2, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetConversationsById$lambda-90  reason: not valid java name */
    public static final MessagesGetConversationById m1138messagesGetConversationsById$lambda90(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetConversationById) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetConversationById.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetConversationsByIdExtended$default(MessagesService messagesService, List list, List list2, UserId userId, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            list2 = null;
        }
        if ((i9 & 4) != 0) {
            userId = null;
        }
        return messagesService.messagesGetConversationsByIdExtended(list, list2, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetConversationsByIdExtended$lambda-95  reason: not valid java name */
    public static final MessagesGetConversationByIdExtended m1139messagesGetConversationsByIdExtended$lambda95(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetConversationByIdExtended) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetConversationByIdExtended.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetHistory$default(MessagesService messagesService, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, MessagesGetHistoryRev messagesGetHistoryRev, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            num3 = null;
        }
        if ((i9 & 8) != 0) {
            num4 = null;
        }
        if ((i9 & 16) != 0) {
            num5 = null;
        }
        if ((i9 & 32) != 0) {
            messagesGetHistoryRev = null;
        }
        if ((i9 & 64) != 0) {
            list = null;
        }
        if ((i9 & 128) != 0) {
            userId = null;
        }
        return messagesService.messagesGetHistory(num, num2, num3, num4, num5, messagesGetHistoryRev, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetHistory$lambda-100  reason: not valid java name */
    public static final MessagesGetHistoryResponse m1140messagesGetHistory$lambda100(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetHistoryResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetHistoryResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetHistoryAttachments$lambda-122  reason: not valid java name */
    public static final MessagesGetHistoryAttachmentsResponse m1141messagesGetHistoryAttachments$lambda122(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetHistoryAttachmentsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetHistoryAttachmentsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetHistoryExtended$default(MessagesService messagesService, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, MessagesGetHistoryExtendedRev messagesGetHistoryExtendedRev, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            num3 = null;
        }
        if ((i9 & 8) != 0) {
            num4 = null;
        }
        if ((i9 & 16) != 0) {
            num5 = null;
        }
        if ((i9 & 32) != 0) {
            messagesGetHistoryExtendedRev = null;
        }
        if ((i9 & 64) != 0) {
            list = null;
        }
        if ((i9 & 128) != 0) {
            userId = null;
        }
        return messagesService.messagesGetHistoryExtended(num, num2, num3, num4, num5, messagesGetHistoryExtendedRev, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetHistoryExtended$lambda-111  reason: not valid java name */
    public static final MessagesGetHistoryExtendedResponse m1142messagesGetHistoryExtended$lambda111(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetHistoryExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetHistoryExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetImportantMessages$default(MessagesService messagesService, Integer num, Integer num2, Integer num3, Integer num4, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            num3 = null;
        }
        if ((i9 & 8) != 0) {
            num4 = null;
        }
        if ((i9 & 16) != 0) {
            list = null;
        }
        if ((i9 & 32) != 0) {
            userId = null;
        }
        return messagesService.messagesGetImportantMessages(num, num2, num3, num4, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetImportantMessages$lambda-133  reason: not valid java name */
    public static final MessagesGetImportantMessagesResponse m1143messagesGetImportantMessages$lambda133(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetImportantMessagesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetImportantMessagesResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetImportantMessagesExtended$default(MessagesService messagesService, Integer num, Integer num2, Integer num3, Integer num4, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            num3 = null;
        }
        if ((i9 & 8) != 0) {
            num4 = null;
        }
        if ((i9 & 16) != 0) {
            list = null;
        }
        if ((i9 & 32) != 0) {
            userId = null;
        }
        return messagesService.messagesGetImportantMessagesExtended(num, num2, num3, num4, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetImportantMessagesExtended$lambda-142  reason: not valid java name */
    public static final MessagesGetImportantMessagesExtendedResponse m1144messagesGetImportantMessagesExtended$lambda142(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetImportantMessagesExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetImportantMessagesExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetIntentUsers$lambda-151  reason: not valid java name */
    public static final MessagesGetIntentUsersResponse m1145messagesGetIntentUsers$lambda151(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetIntentUsersResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetIntentUsersResponse.class);
    }

    public static /* synthetic */ VKRequest messagesGetInviteLink$default(MessagesService messagesService, int i9, Boolean bool, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bool = null;
        }
        if ((i10 & 4) != 0) {
            userId = null;
        }
        return messagesService.messagesGetInviteLink(i9, bool, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetInviteLink$lambda-158  reason: not valid java name */
    public static final MessagesGetInviteLinkResponse m1146messagesGetInviteLink$lambda158(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetInviteLinkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetInviteLinkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetLastActivity$lambda-162  reason: not valid java name */
    public static final MessagesLastActivity m1147messagesGetLastActivity$lambda162(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesLastActivity) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesLastActivity.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesGetLongPollHistory$default(MessagesService messagesService, Integer num, Integer num2, Integer num3, Boolean bool, List list, Integer num4, Integer num5, Integer num6, UserId userId, Integer num7, Integer num8, Boolean bool2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            num3 = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        if ((i9 & 16) != 0) {
            list = null;
        }
        if ((i9 & 32) != 0) {
            num4 = null;
        }
        if ((i9 & 64) != 0) {
            num5 = null;
        }
        if ((i9 & 128) != 0) {
            num6 = null;
        }
        if ((i9 & 256) != 0) {
            userId = null;
        }
        if ((i9 & 512) != 0) {
            num7 = null;
        }
        if ((i9 & 1024) != 0) {
            num8 = null;
        }
        if ((i9 & 2048) != 0) {
            bool2 = null;
        }
        return messagesService.messagesGetLongPollHistory(num, num2, num3, bool, list, num4, num5, num6, userId, num7, num8, bool2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetLongPollHistory$lambda-164  reason: not valid java name */
    public static final MessagesGetLongPollHistoryResponse m1148messagesGetLongPollHistory$lambda164(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesGetLongPollHistoryResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesGetLongPollHistoryResponse.class);
    }

    public static /* synthetic */ VKRequest messagesGetLongPollServer$default(MessagesService messagesService, Boolean bool, UserId userId, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            bool = null;
        }
        if ((i9 & 2) != 0) {
            userId = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        return messagesService.messagesGetLongPollServer(bool, userId, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesGetLongPollServer$lambda-179  reason: not valid java name */
    public static final MessagesLongpollParams m1149messagesGetLongPollServer$lambda179(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesLongpollParams) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesLongpollParams.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesIsMessagesFromGroupAllowed$lambda-184  reason: not valid java name */
    public static final MessagesIsMessagesFromGroupAllowedResponse m1150messagesIsMessagesFromGroupAllowed$lambda184(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesIsMessagesFromGroupAllowedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesIsMessagesFromGroupAllowedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesJoinChatByInviteLink$lambda-186  reason: not valid java name */
    public static final MessagesJoinChatByInviteLinkResponse m1151messagesJoinChatByInviteLink$lambda186(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesJoinChatByInviteLinkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesJoinChatByInviteLinkResponse.class);
    }

    public static /* synthetic */ VKRequest messagesMarkAsAnsweredConversation$default(MessagesService messagesService, int i9, Boolean bool, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bool = null;
        }
        if ((i10 & 4) != 0) {
            userId = null;
        }
        return messagesService.messagesMarkAsAnsweredConversation(i9, bool, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesMarkAsAnsweredConversation$lambda-188  reason: not valid java name */
    public static final BaseOkResponse m1152messagesMarkAsAnsweredConversation$lambda188(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesMarkAsImportant$default(MessagesService messagesService, List list, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        return messagesService.messagesMarkAsImportant(list, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesMarkAsImportant$lambda-192  reason: not valid java name */
    public static final List m1153messagesMarkAsImportant$lambda192(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends Integer>>() { // from class: com.vk.sdk.api.messages.MessagesService$messagesMarkAsImportant$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest messagesMarkAsImportantConversation$default(MessagesService messagesService, int i9, Boolean bool, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bool = null;
        }
        if ((i10 & 4) != 0) {
            userId = null;
        }
        return messagesService.messagesMarkAsImportantConversation(i9, bool, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesMarkAsImportantConversation$lambda-196  reason: not valid java name */
    public static final BaseOkResponse m1154messagesMarkAsImportantConversation$lambda196(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesMarkAsRead$default(MessagesService messagesService, List list, Integer num, Integer num2, UserId userId, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            userId = null;
        }
        if ((i9 & 16) != 0) {
            bool = null;
        }
        return messagesService.messagesMarkAsRead(list, num, num2, userId, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesMarkAsRead$lambda-200  reason: not valid java name */
    public static final BaseOkResponse m1155messagesMarkAsRead$lambda200(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest messagesPin$default(MessagesService messagesService, int i9, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        return messagesService.messagesPin(i9, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesPin$lambda-207  reason: not valid java name */
    public static final MessagesPinnedMessage m1156messagesPin$lambda207(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesPinnedMessage) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesPinnedMessage.class);
    }

    public static /* synthetic */ VKRequest messagesRemoveChatUser$default(MessagesService messagesService, int i9, UserId userId, UserId userId2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            userId2 = null;
        }
        return messagesService.messagesRemoveChatUser(i9, userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesRemoveChatUser$lambda-211  reason: not valid java name */
    public static final BaseOkResponse m1157messagesRemoveChatUser$lambda211(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest messagesRestore$default(MessagesService messagesService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return messagesService.messagesRestore(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesRestore$lambda-215  reason: not valid java name */
    public static final BaseOkResponse m1158messagesRestore$lambda215(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesSearch$default(MessagesService messagesService, String str, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            num3 = null;
        }
        if ((i9 & 16) != 0) {
            num4 = null;
        }
        if ((i9 & 32) != 0) {
            num5 = null;
        }
        if ((i9 & 64) != 0) {
            list = null;
        }
        if ((i9 & 128) != 0) {
            userId = null;
        }
        return messagesService.messagesSearch(str, num, num2, num3, num4, num5, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesSearch$lambda-218  reason: not valid java name */
    public static final MessagesSearchResponse m1159messagesSearch$lambda218(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesSearchResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesSearchConversations$default(MessagesService messagesService, String str, Integer num, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        if ((i9 & 8) != 0) {
            userId = null;
        }
        return messagesService.messagesSearchConversations(str, num, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesSearchConversations$lambda-238  reason: not valid java name */
    public static final MessagesSearchConversationsResponse m1160messagesSearchConversations$lambda238(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesSearchConversationsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesSearchConversationsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesSearchConversationsExtended$default(MessagesService messagesService, String str, Integer num, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        if ((i9 & 8) != 0) {
            userId = null;
        }
        return messagesService.messagesSearchConversationsExtended(str, num, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesSearchConversationsExtended$lambda-245  reason: not valid java name */
    public static final MessagesSearchConversationsExtendedResponse m1161messagesSearchConversationsExtended$lambda245(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesSearchConversationsExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesSearchConversationsExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest messagesSearchExtended$default(MessagesService messagesService, String str, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            num3 = null;
        }
        if ((i9 & 16) != 0) {
            num4 = null;
        }
        if ((i9 & 32) != 0) {
            num5 = null;
        }
        if ((i9 & 64) != 0) {
            list = null;
        }
        if ((i9 & 128) != 0) {
            userId = null;
        }
        return messagesService.messagesSearchExtended(str, num, num2, num3, num4, num5, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesSearchExtended$lambda-228  reason: not valid java name */
    public static final MessagesSearchExtendedResponse m1162messagesSearchExtended$lambda228(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesSearchExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesSearchExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesSend$lambda-252  reason: not valid java name */
    public static final Integer m1163messagesSend$lambda252(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    public static /* synthetic */ VKRequest messagesSendMessageEventAnswer$default(MessagesService messagesService, String str, UserId userId, int i9, String str2, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            str2 = null;
        }
        return messagesService.messagesSendMessageEventAnswer(str, userId, i9, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesSendMessageEventAnswer$lambda-278  reason: not valid java name */
    public static final BaseOkResponse m1164messagesSendMessageEventAnswer$lambda278(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest messagesSetActivity$default(MessagesService messagesService, Integer num, MessagesSetActivityType messagesSetActivityType, Integer num2, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            messagesSetActivityType = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            userId = null;
        }
        return messagesService.messagesSetActivity(num, messagesSetActivityType, num2, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesSetActivity$lambda-281  reason: not valid java name */
    public static final BaseOkResponse m1165messagesSetActivity$lambda281(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesSetChatPhoto$lambda-287  reason: not valid java name */
    public static final MessagesSetChatPhotoResponse m1166messagesSetChatPhoto$lambda287(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MessagesSetChatPhotoResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MessagesSetChatPhotoResponse.class);
    }

    public static /* synthetic */ VKRequest messagesUnpin$default(MessagesService messagesService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return messagesService.messagesUnpin(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: messagesUnpin$lambda-289  reason: not valid java name */
    public static final BaseOkResponse m1167messagesUnpin$lambda289(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesAddChatUser(int i9, @Nullable UserId userId, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.addChatUser", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1122messagesAddChatUser$lambda0;
                m1122messagesAddChatUser$lambda0 = MessagesService.m1122messagesAddChatUser$lambda0(jsonElement);
                return m1122messagesAddChatUser$lambda0;
            }
        });
        newApiRequest.addParam("chat_id", i9, 0, 100000000);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            newApiRequest.addParam("visible_messages_count", num.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesAllowMessagesFromGroup(@NotNull UserId groupId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("messages.allowMessagesFromGroup", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.z
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1123messagesAllowMessagesFromGroup$lambda4;
                m1123messagesAllowMessagesFromGroup$lambda4 = MessagesService.m1123messagesAllowMessagesFromGroup$lambda4(jsonElement);
                return m1123messagesAllowMessagesFromGroup$lambda4;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "key", str, 0, 256, 4, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> messagesCreateChat(@Nullable List<UserId> list, @Nullable String str, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.createChat", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.i0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1124messagesCreateChat$lambda7;
                m1124messagesCreateChat$lambda7 = MessagesService.m1124messagesCreateChat$lambda7(jsonElement);
                return m1124messagesCreateChat$lambda7;
            }
        });
        if (list != null) {
            NewApiRequest.addParam$default(newApiRequest, "user_ids", list, 0L, 0L, 12, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("title", str);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Object> messagesDelete(@Nullable List<Integer> list, @Nullable Boolean bool, @Nullable UserId userId, @Nullable Boolean bool2, @Nullable Integer num, @Nullable List<Integer> list2) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.delete", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.f0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Object m1125messagesDelete$lambda12;
                m1125messagesDelete$lambda12 = MessagesService.m1125messagesDelete$lambda12(jsonElement);
                return m1125messagesDelete$lambda12;
            }
        });
        if (list != null) {
            newApiRequest.addParam("message_ids", list);
        }
        if (bool != null) {
            newApiRequest.addParam("spam", bool.booleanValue());
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (bool2 != null) {
            newApiRequest.addParam("delete_for_all", bool2.booleanValue());
        }
        if (num != null) {
            newApiRequest.addParam("peer_id", num.intValue());
        }
        if (list2 != null) {
            newApiRequest.addParam("cmids", list2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesDeleteChatPhotoResponse> messagesDeleteChatPhoto(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.deleteChatPhoto", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.s0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesDeleteChatPhotoResponse m1126messagesDeleteChatPhoto$lambda20;
                m1126messagesDeleteChatPhoto$lambda20 = MessagesService.m1126messagesDeleteChatPhoto$lambda20(jsonElement);
                return m1126messagesDeleteChatPhoto$lambda20;
            }
        });
        newApiRequest.addParam("chat_id", i9, 0, 100000000);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesDeleteConversationResponse> messagesDeleteConversation(@Nullable Integer num, @Nullable Integer num2, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.deleteConversation", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.c0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesDeleteConversationResponse m1127messagesDeleteConversation$lambda23;
                m1127messagesDeleteConversation$lambda23 = MessagesService.m1127messagesDeleteConversation$lambda23(jsonElement);
                return m1127messagesDeleteConversation$lambda23;
            }
        });
        if (num != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam("peer_id", num2.intValue());
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesDenyMessagesFromGroup(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("messages.denyMessagesFromGroup", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.d0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1128messagesDenyMessagesFromGroup$lambda28;
                m1128messagesDenyMessagesFromGroup$lambda28 = MessagesService.m1128messagesDenyMessagesFromGroup$lambda28(jsonElement);
                return m1128messagesDenyMessagesFromGroup$lambda28;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> messagesEdit(int i9, @Nullable String str, @Nullable Float f10, @Nullable Float f11, @Nullable String str2, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable UserId userId, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Integer num, @Nullable Integer num2, @Nullable String str3, @Nullable String str4) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.edit", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.q0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1129messagesEdit$lambda30;
                m1129messagesEdit$lambda30 = MessagesService.m1129messagesEdit$lambda30(jsonElement);
                return m1129messagesEdit$lambda30;
            }
        });
        newApiRequest.addParam("peer_id", i9);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "message", str, 0, (int) ConnectionResult.NETWORK_ERROR, 4, (Object) null);
        }
        if (f10 != null) {
            newApiRequest.addParam("lat", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("long", f11.floatValue());
        }
        if (str2 != null) {
            newApiRequest.addParam("attachment", str2);
        }
        if (bool != null) {
            newApiRequest.addParam("keep_forward_messages", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("keep_snippets", bool2.booleanValue());
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (bool3 != null) {
            newApiRequest.addParam("dont_parse_links", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("disable_mentions", bool4.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "message_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "conversation_message_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (str3 != null) {
            newApiRequest.addParam("template", str3);
        }
        if (str4 != null) {
            newApiRequest.addParam("keyboard", str4);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesEditChat(int i9, @Nullable String str) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.editChat", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.t0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1130messagesEditChat$lambda45;
                m1130messagesEditChat$lambda45 = MessagesService.m1130messagesEditChat$lambda45(jsonElement);
                return m1130messagesEditChat$lambda45;
            }
        });
        newApiRequest.addParam("chat_id", i9, 0, 100000000);
        if (str != null) {
            newApiRequest.addParam("title", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetByConversationMessageIdResponse> messagesGetByConversationMessageId(int i9, @NotNull List<Integer> conversationMessageIds, @Nullable List<? extends UsersFields> list, @Nullable UserId userId) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(conversationMessageIds, "conversationMessageIds");
        NewApiRequest newApiRequest = new NewApiRequest("messages.getByConversationMessageId", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.s
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetByConversationMessageIdResponse m1131messagesGetByConversationMessageId$lambda48;
                m1131messagesGetByConversationMessageId$lambda48 = MessagesService.m1131messagesGetByConversationMessageId$lambda48(jsonElement);
                return m1131messagesGetByConversationMessageId$lambda48;
            }
        });
        newApiRequest.addParam("peer_id", i9);
        newApiRequest.addParam("conversation_message_ids", conversationMessageIds);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetByConversationMessageIdExtendedResponse> messagesGetByConversationMessageIdExtended(int i9, @NotNull List<Integer> conversationMessageIds, @Nullable List<? extends UsersFields> list, @Nullable UserId userId) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(conversationMessageIds, "conversationMessageIds");
        NewApiRequest newApiRequest = new NewApiRequest("messages.getByConversationMessageId", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.v
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetByConversationMessageIdExtendedResponse m1132messagesGetByConversationMessageIdExtended$lambda53;
                m1132messagesGetByConversationMessageIdExtended$lambda53 = MessagesService.m1132messagesGetByConversationMessageIdExtended$lambda53(jsonElement);
                return m1132messagesGetByConversationMessageIdExtended$lambda53;
            }
        });
        newApiRequest.addParam("peer_id", i9);
        newApiRequest.addParam("conversation_message_ids", conversationMessageIds);
        newApiRequest.addParam("extended", true);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetByIdResponse> messagesGetById(@NotNull List<Integer> messageIds, @Nullable Integer num, @Nullable List<? extends UsersFields> list, @Nullable UserId userId) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        NewApiRequest newApiRequest = new NewApiRequest("messages.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetByIdResponse m1133messagesGetById$lambda58;
                m1133messagesGetById$lambda58 = MessagesService.m1133messagesGetById$lambda58(jsonElement);
                return m1133messagesGetById$lambda58;
            }
        });
        newApiRequest.addParam("message_ids", messageIds);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetByIdExtendedResponse> messagesGetByIdExtended(@NotNull List<Integer> messageIds, @Nullable Integer num, @Nullable List<? extends UsersFields> list, @Nullable UserId userId) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        NewApiRequest newApiRequest = new NewApiRequest("messages.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetByIdExtendedResponse m1134messagesGetByIdExtended$lambda64;
                m1134messagesGetByIdExtended$lambda64 = MessagesService.m1134messagesGetByIdExtended$lambda64(jsonElement);
                return m1134messagesGetByIdExtended$lambda64;
            }
        });
        newApiRequest.addParam("message_ids", messageIds);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num.intValue(), 0, 0, 8, (Object) null);
        }
        newApiRequest.addParam("extended", true);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetChatPreviewResponse> messagesGetChatPreview(@Nullable Integer num, @Nullable String str, @Nullable List<? extends UsersFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("messages.getChatPreview", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetChatPreviewResponse m1135messagesGetChatPreview$lambda70;
                m1135messagesGetChatPreview$lambda70 = MessagesService.m1135messagesGetChatPreview$lambda70(jsonElement);
                return m1135messagesGetChatPreview$lambda70;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "peer_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("link", str);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetConversationMembers> messagesGetConversationMembers(int i9, @Nullable List<? extends UsersFields> list, @Nullable UserId userId) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("messages.getConversationMembers", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetConversationMembers m1136messagesGetConversationMembers$lambda76;
                m1136messagesGetConversationMembers$lambda76 = MessagesService.m1136messagesGetConversationMembers$lambda76(jsonElement);
                return m1136messagesGetConversationMembers$lambda76;
            }
        });
        newApiRequest.addParam("peer_id", i9);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetConversationsResponse> messagesGetConversations(@Nullable Integer num, @Nullable Integer num2, @Nullable MessagesGetConversationsFilter messagesGetConversationsFilter, @Nullable Integer num3, @Nullable List<? extends BaseUserGroupFields> list, @Nullable UserId userId) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("messages.getConversations", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.k0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetConversationsResponse m1137messagesGetConversations$lambda81;
                m1137messagesGetConversations$lambda81 = MessagesService.m1137messagesGetConversations$lambda81(jsonElement);
                return m1137messagesGetConversations$lambda81;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
        }
        if (messagesGetConversationsFilter != null) {
            newApiRequest.addParam("filter", messagesGetConversationsFilter.getValue());
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_message_id", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (BaseUserGroupFields baseUserGroupFields : list) {
                arrayList2.add(baseUserGroupFields.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetConversationById> messagesGetConversationsById(@NotNull List<Integer> peerIds, @Nullable List<? extends BaseUserGroupFields> list, @Nullable UserId userId) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(peerIds, "peerIds");
        NewApiRequest newApiRequest = new NewApiRequest("messages.getConversationsById", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetConversationById m1138messagesGetConversationsById$lambda90;
                m1138messagesGetConversationsById$lambda90 = MessagesService.m1138messagesGetConversationsById$lambda90(jsonElement);
                return m1138messagesGetConversationsById$lambda90;
            }
        });
        newApiRequest.addParam("peer_ids", peerIds);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (BaseUserGroupFields baseUserGroupFields : list) {
                arrayList.add(baseUserGroupFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetConversationByIdExtended> messagesGetConversationsByIdExtended(@NotNull List<Integer> peerIds, @Nullable List<? extends BaseUserGroupFields> list, @Nullable UserId userId) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(peerIds, "peerIds");
        NewApiRequest newApiRequest = new NewApiRequest("messages.getConversationsById", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.l0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetConversationByIdExtended m1139messagesGetConversationsByIdExtended$lambda95;
                m1139messagesGetConversationsByIdExtended$lambda95 = MessagesService.m1139messagesGetConversationsByIdExtended$lambda95(jsonElement);
                return m1139messagesGetConversationsByIdExtended$lambda95;
            }
        });
        newApiRequest.addParam("peer_ids", peerIds);
        newApiRequest.addParam("extended", true);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (BaseUserGroupFields baseUserGroupFields : list) {
                arrayList.add(baseUserGroupFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetHistoryResponse> messagesGetHistory(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable MessagesGetHistoryRev messagesGetHistoryRev, @Nullable List<? extends UsersFields> list, @Nullable UserId userId) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("messages.getHistory", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.t
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetHistoryResponse m1140messagesGetHistory$lambda100;
                m1140messagesGetHistory$lambda100 = MessagesService.m1140messagesGetHistory$lambda100(jsonElement);
                return m1140messagesGetHistory$lambda100;
            }
        });
        if (num != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
        }
        if (num3 != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, num3.intValue());
        }
        if (num4 != null) {
            newApiRequest.addParam("peer_id", num4.intValue());
        }
        if (num5 != null) {
            newApiRequest.addParam("start_message_id", num5.intValue());
        }
        if (messagesGetHistoryRev != null) {
            newApiRequest.addParam("rev", messagesGetHistoryRev.getValue());
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList2.add(usersFields.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetHistoryAttachmentsResponse> messagesGetHistoryAttachments(int i9, @Nullable MessagesGetHistoryAttachmentsMediaType messagesGetHistoryAttachmentsMediaType, @Nullable String str, @Nullable Integer num, @Nullable Boolean bool, @Nullable List<? extends UsersFields> list, @Nullable UserId userId, @Nullable Boolean bool2, @Nullable Integer num2) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("messages.getHistoryAttachments", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetHistoryAttachmentsResponse m1141messagesGetHistoryAttachments$lambda122;
                m1141messagesGetHistoryAttachments$lambda122 = MessagesService.m1141messagesGetHistoryAttachments$lambda122(jsonElement);
                return m1141messagesGetHistoryAttachments$lambda122;
            }
        });
        newApiRequest.addParam("peer_id", i9);
        if (messagesGetHistoryAttachmentsMediaType != null) {
            newApiRequest.addParam("media_type", messagesGetHistoryAttachmentsMediaType.getValue());
        }
        if (str != null) {
            newApiRequest.addParam("start_from", str);
        }
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 200);
        }
        if (bool != null) {
            newApiRequest.addParam("photo_sizes", bool.booleanValue());
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (bool2 != null) {
            newApiRequest.addParam("preserve_order", bool2.booleanValue());
        }
        if (num2 != null) {
            newApiRequest.addParam("max_forwards_level", num2.intValue(), 0, 45);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetHistoryExtendedResponse> messagesGetHistoryExtended(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable MessagesGetHistoryExtendedRev messagesGetHistoryExtendedRev, @Nullable List<? extends UsersFields> list, @Nullable UserId userId) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("messages.getHistory", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.e0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetHistoryExtendedResponse m1142messagesGetHistoryExtended$lambda111;
                m1142messagesGetHistoryExtended$lambda111 = MessagesService.m1142messagesGetHistoryExtended$lambda111(jsonElement);
                return m1142messagesGetHistoryExtended$lambda111;
            }
        });
        if (num != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
        }
        if (num3 != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, num3.intValue());
        }
        if (num4 != null) {
            newApiRequest.addParam("peer_id", num4.intValue());
        }
        if (num5 != null) {
            newApiRequest.addParam("start_message_id", num5.intValue());
        }
        if (messagesGetHistoryExtendedRev != null) {
            newApiRequest.addParam("rev", messagesGetHistoryExtendedRev.getValue());
        }
        newApiRequest.addParam("extended", true);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList2.add(usersFields.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetImportantMessagesResponse> messagesGetImportantMessages(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable List<? extends BaseUserGroupFields> list, @Nullable UserId userId) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("messages.getImportantMessages", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetImportantMessagesResponse m1143messagesGetImportantMessages$lambda133;
                m1143messagesGetImportantMessages$lambda133 = MessagesService.m1143messagesGetImportantMessages$lambda133(jsonElement);
                return m1143messagesGetImportantMessages$lambda133;
            }
        });
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 200);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_message_id", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (BaseUserGroupFields baseUserGroupFields : list) {
                arrayList2.add(baseUserGroupFields.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetImportantMessagesExtendedResponse> messagesGetImportantMessagesExtended(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable List<? extends BaseUserGroupFields> list, @Nullable UserId userId) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("messages.getImportantMessages", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetImportantMessagesExtendedResponse m1144messagesGetImportantMessagesExtended$lambda142;
                m1144messagesGetImportantMessagesExtended$lambda142 = MessagesService.m1144messagesGetImportantMessagesExtended$lambda142(jsonElement);
                return m1144messagesGetImportantMessagesExtended$lambda142;
            }
        });
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 200);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_message_id", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (BaseUserGroupFields baseUserGroupFields : list) {
                arrayList2.add(baseUserGroupFields.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        newApiRequest.addParam("extended", true);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetIntentUsersResponse> messagesGetIntentUsers(@NotNull MessagesGetIntentUsersIntent intent, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<String> list, @Nullable List<String> list2) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        NewApiRequest newApiRequest = new NewApiRequest("messages.getIntentUsers", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.o0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetIntentUsersResponse m1145messagesGetIntentUsers$lambda151;
                m1145messagesGetIntentUsers$lambda151 = MessagesService.m1145messagesGetIntentUsers$lambda151(jsonElement);
                return m1145messagesGetIntentUsers$lambda151;
            }
        });
        newApiRequest.addParam(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, intent.getValue());
        if (num != null) {
            newApiRequest.addParam("subscribe_id", num.intValue(), 0, 100);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 200);
        }
        if (list != null) {
            newApiRequest.addParam("name_case", list);
        }
        if (list2 != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetInviteLinkResponse> messagesGetInviteLink(int i9, @Nullable Boolean bool, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.getInviteLink", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.r0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetInviteLinkResponse m1146messagesGetInviteLink$lambda158;
                m1146messagesGetInviteLink$lambda158 = MessagesService.m1146messagesGetInviteLink$lambda158(jsonElement);
                return m1146messagesGetInviteLink$lambda158;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "peer_id", i9, 0, 0, 8, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("reset", bool.booleanValue());
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesLastActivity> messagesGetLastActivity(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("messages.getLastActivity", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.b0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesLastActivity m1147messagesGetLastActivity$lambda162;
                m1147messagesGetLastActivity$lambda162 = MessagesService.m1147messagesGetLastActivity$lambda162(jsonElement);
                return m1147messagesGetLastActivity$lambda162;
            }
        });
        newApiRequest.addParam(AccessToken.USER_ID_KEY, userId);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesGetLongPollHistoryResponse> messagesGetLongPollHistory(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Boolean bool, @Nullable List<? extends UsersFields> list, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable UserId userId, @Nullable Integer num7, @Nullable Integer num8, @Nullable Boolean bool2) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("messages.getLongPollHistory", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesGetLongPollHistoryResponse m1148messagesGetLongPollHistory$lambda164;
                m1148messagesGetLongPollHistory$lambda164 = MessagesService.m1148messagesGetLongPollHistory$lambda164(jsonElement);
                return m1148messagesGetLongPollHistory$lambda164;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TimeDisplaySetting.TIME_DISPLAY_SETTING, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "pts", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("onlines", bool.booleanValue());
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList2.add(usersFields.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, "events_limit", num4.intValue(), 1000, 0, 8, (Object) null);
        }
        if (num5 != null) {
            NewApiRequest.addParam$default(newApiRequest, "msgs_limit", num5.intValue(), 200, 0, 8, (Object) null);
        }
        if (num6 != null) {
            NewApiRequest.addParam$default(newApiRequest, "max_msg_id", num6.intValue(), 0, 0, 8, (Object) null);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (num7 != null) {
            NewApiRequest.addParam$default(newApiRequest, "lp_version", num7.intValue(), 0, 0, 8, (Object) null);
        }
        if (num8 != null) {
            newApiRequest.addParam("last_n", num8.intValue(), 0, 2000);
        }
        if (bool2 != null) {
            newApiRequest.addParam("credentials", bool2.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesLongpollParams> messagesGetLongPollServer(@Nullable Boolean bool, @Nullable UserId userId, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.getLongPollServer", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.a0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesLongpollParams m1149messagesGetLongPollServer$lambda179;
                m1149messagesGetLongPollServer$lambda179 = MessagesService.m1149messagesGetLongPollServer$lambda179(jsonElement);
                return m1149messagesGetLongPollServer$lambda179;
            }
        });
        if (bool != null) {
            newApiRequest.addParam("need_pts", bool.booleanValue());
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "lp_version", num.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesIsMessagesFromGroupAllowedResponse> messagesIsMessagesFromGroupAllowed(@NotNull UserId groupId, @NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("messages.isMessagesFromGroupAllowed", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesIsMessagesFromGroupAllowedResponse m1150messagesIsMessagesFromGroupAllowed$lambda184;
                m1150messagesIsMessagesFromGroupAllowed$lambda184 = MessagesService.m1150messagesIsMessagesFromGroupAllowed$lambda184(jsonElement);
                return m1150messagesIsMessagesFromGroupAllowed$lambda184;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesJoinChatByInviteLinkResponse> messagesJoinChatByInviteLink(@NotNull String link) {
        Intrinsics.checkNotNullParameter(link, "link");
        NewApiRequest newApiRequest = new NewApiRequest("messages.joinChatByInviteLink", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesJoinChatByInviteLinkResponse m1151messagesJoinChatByInviteLink$lambda186;
                m1151messagesJoinChatByInviteLink$lambda186 = MessagesService.m1151messagesJoinChatByInviteLink$lambda186(jsonElement);
                return m1151messagesJoinChatByInviteLink$lambda186;
            }
        });
        newApiRequest.addParam("link", link);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesMarkAsAnsweredConversation(int i9, @Nullable Boolean bool, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.markAsAnsweredConversation", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1152messagesMarkAsAnsweredConversation$lambda188;
                m1152messagesMarkAsAnsweredConversation$lambda188 = MessagesService.m1152messagesMarkAsAnsweredConversation$lambda188(jsonElement);
                return m1152messagesMarkAsAnsweredConversation$lambda188;
            }
        });
        newApiRequest.addParam("peer_id", i9);
        if (bool != null) {
            newApiRequest.addParam("answered", bool.booleanValue());
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<Integer>> messagesMarkAsImportant(@Nullable List<Integer> list, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.markAsImportant", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1153messagesMarkAsImportant$lambda192;
                m1153messagesMarkAsImportant$lambda192 = MessagesService.m1153messagesMarkAsImportant$lambda192(jsonElement);
                return m1153messagesMarkAsImportant$lambda192;
            }
        });
        if (list != null) {
            newApiRequest.addParam("message_ids", list);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "important", num.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesMarkAsImportantConversation(int i9, @Nullable Boolean bool, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.markAsImportantConversation", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.g0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1154messagesMarkAsImportantConversation$lambda196;
                m1154messagesMarkAsImportantConversation$lambda196 = MessagesService.m1154messagesMarkAsImportantConversation$lambda196(jsonElement);
                return m1154messagesMarkAsImportantConversation$lambda196;
            }
        });
        newApiRequest.addParam("peer_id", i9);
        if (bool != null) {
            newApiRequest.addParam("important", bool.booleanValue());
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesMarkAsRead(@Nullable List<Integer> list, @Nullable Integer num, @Nullable Integer num2, @Nullable UserId userId, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.markAsRead", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1155messagesMarkAsRead$lambda200;
                m1155messagesMarkAsRead$lambda200 = MessagesService.m1155messagesMarkAsRead$lambda200(jsonElement);
                return m1155messagesMarkAsRead$lambda200;
            }
        });
        if (list != null) {
            newApiRequest.addParam("message_ids", list);
        }
        if (num != null) {
            newApiRequest.addParam("peer_id", num.intValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_message_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("mark_conversation_as_read", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesPinnedMessage> messagesPin(int i9, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.pin", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.h0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesPinnedMessage m1156messagesPin$lambda207;
                m1156messagesPin$lambda207 = MessagesService.m1156messagesPin$lambda207(jsonElement);
                return m1156messagesPin$lambda207;
            }
        });
        newApiRequest.addParam("peer_id", i9);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "message_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "conversation_message_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesRemoveChatUser(int i9, @Nullable UserId userId, @Nullable UserId userId2) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.removeChatUser", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1157messagesRemoveChatUser$lambda211;
                m1157messagesRemoveChatUser$lambda211 = MessagesService.m1157messagesRemoveChatUser$lambda211(jsonElement);
                return m1157messagesRemoveChatUser$lambda211;
            }
        });
        newApiRequest.addParam("chat_id", i9, 0, 100000000);
        if (userId != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, userId);
        }
        if (userId2 != null) {
            newApiRequest.addParam("member_id", userId2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesRestore(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.restore", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.x
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1158messagesRestore$lambda215;
                m1158messagesRestore$lambda215 = MessagesService.m1158messagesRestore$lambda215(jsonElement);
                return m1158messagesRestore$lambda215;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "message_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesSearchResponse> messagesSearch(@Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable List<String> list, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.search", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.w
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesSearchResponse m1159messagesSearch$lambda218;
                m1159messagesSearch$lambda218 = MessagesService.m1159messagesSearch$lambda218(jsonElement);
                return m1159messagesSearch$lambda218;
            }
        });
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "q", str, 0, (int) ConnectionResult.NETWORK_ERROR, 4, (Object) null);
        }
        if (num != null) {
            newApiRequest.addParam("peer_id", num.intValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "date", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (num5 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num5.intValue(), 0, 100);
        }
        if (list != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesSearchConversationsResponse> messagesSearchConversations(@Nullable String str, @Nullable Integer num, @Nullable List<? extends UsersFields> list, @Nullable UserId userId) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("messages.searchConversations", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesSearchConversationsResponse m1160messagesSearchConversations$lambda238;
                m1160messagesSearchConversations$lambda238 = MessagesService.m1160messagesSearchConversations$lambda238(jsonElement);
                return m1160messagesSearchConversations$lambda238;
            }
        });
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 1, 255);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesSearchConversationsExtendedResponse> messagesSearchConversationsExtended(@Nullable String str, @Nullable Integer num, @Nullable List<? extends UsersFields> list, @Nullable UserId userId) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("messages.searchConversations", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.j0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesSearchConversationsExtendedResponse m1161messagesSearchConversationsExtended$lambda245;
                m1161messagesSearchConversationsExtended$lambda245 = MessagesService.m1161messagesSearchConversationsExtended$lambda245(jsonElement);
                return m1161messagesSearchConversationsExtended$lambda245;
            }
        });
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 1, 255);
        }
        newApiRequest.addParam("extended", true);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesSearchExtendedResponse> messagesSearchExtended(@Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable List<String> list, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.search", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.m0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesSearchExtendedResponse m1162messagesSearchExtended$lambda228;
                m1162messagesSearchExtended$lambda228 = MessagesService.m1162messagesSearchExtended$lambda228(jsonElement);
                return m1162messagesSearchExtended$lambda228;
            }
        });
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "q", str, 0, (int) ConnectionResult.NETWORK_ERROR, 4, (Object) null);
        }
        if (num != null) {
            newApiRequest.addParam("peer_id", num.intValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "date", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (num5 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num5.intValue(), 0, 100);
        }
        newApiRequest.addParam("extended", true);
        if (list != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> messagesSend(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable List<Integer> list, @Nullable String str, @Nullable Integer num3, @Nullable List<UserId> list2, @Nullable String str2, @Nullable Float f10, @Nullable Float f11, @Nullable String str3, @Nullable Integer num4, @Nullable List<Integer> list3, @Nullable String str4, @Nullable Integer num5, @Nullable UserId userId2, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable MessagesSendIntent messagesSendIntent, @Nullable Integer num6) {
        NewApiRequest newApiRequest;
        NewApiRequest newApiRequest2 = new NewApiRequest("messages.send", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.y
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1163messagesSend$lambda252;
                m1163messagesSend$lambda252 = MessagesService.m1163messagesSend$lambda252(jsonElement);
                return m1163messagesSend$lambda252;
            }
        });
        if (userId != null) {
            newApiRequest2.addParam(AccessToken.USER_ID_KEY, userId);
        }
        if (num != null) {
            newApiRequest2.addParam("random_id", num.intValue());
        }
        if (num2 != null) {
            newApiRequest2.addParam("peer_id", num2.intValue());
        }
        if (list != null) {
            newApiRequest2.addParam("peer_ids", list);
        }
        if (str != null) {
            newApiRequest2.addParam("domain", str);
        }
        if (num3 != null) {
            newApiRequest2.addParam("chat_id", num3.intValue(), 0, 100000000);
            Unit unit = Unit.INSTANCE;
        }
        if (list2 == null) {
            newApiRequest = newApiRequest2;
        } else {
            newApiRequest = newApiRequest2;
            NewApiRequest.addParam$default(newApiRequest2, "user_ids", list2, 0L, 0L, 12, (Object) null);
            Unit unit2 = Unit.INSTANCE;
        }
        if (str2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "message", str2, 0, (int) ConnectionResult.NETWORK_ERROR, 4, (Object) null);
            Unit unit3 = Unit.INSTANCE;
        }
        if (f10 != null) {
            newApiRequest.addParam("lat", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("long", f11.floatValue());
        }
        if (str3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "attachment", str3, 0, (int) ConnectionResult.NETWORK_ERROR, 4, (Object) null);
            Unit unit4 = Unit.INSTANCE;
        }
        if (num4 != null) {
            newApiRequest.addParam("reply_to", num4.intValue());
        }
        if (list3 != null) {
            newApiRequest.addParam("forward_messages", list3);
        }
        if (str4 != null) {
            newApiRequest.addParam("forward", str4);
        }
        if (num5 != null) {
            NewApiRequest.addParam$default(newApiRequest, "sticker_id", num5.intValue(), 0, 0, 8, (Object) null);
            Unit unit5 = Unit.INSTANCE;
        }
        if (userId2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId2, 0L, 0L, 8, (Object) null);
            Unit unit6 = Unit.INSTANCE;
        }
        if (str5 != null) {
            newApiRequest.addParam("keyboard", str5);
        }
        if (str6 != null) {
            newApiRequest.addParam("template", str6);
        }
        if (str7 != null) {
            NewApiRequest.addParam$default(newApiRequest, "payload", str7, 0, 1000, 4, (Object) null);
            Unit unit7 = Unit.INSTANCE;
        }
        if (str8 != null) {
            newApiRequest.addParam("content_source", str8);
        }
        if (bool != null) {
            newApiRequest.addParam("dont_parse_links", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("disable_mentions", bool2.booleanValue());
        }
        if (messagesSendIntent != null) {
            newApiRequest.addParam(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, messagesSendIntent.getValue());
        }
        if (num6 != null) {
            newApiRequest.addParam("subscribe_id", num6.intValue(), 0, 100);
            Unit unit8 = Unit.INSTANCE;
        }
        Unit unit9 = Unit.INSTANCE;
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesSendMessageEventAnswer(@NotNull String eventId, @NotNull UserId userId, int i9, @Nullable String str) {
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("messages.sendMessageEventAnswer", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.u
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1164messagesSendMessageEventAnswer$lambda278;
                m1164messagesSendMessageEventAnswer$lambda278 = MessagesService.m1164messagesSendMessageEventAnswer$lambda278(jsonElement);
                return m1164messagesSendMessageEventAnswer$lambda278;
            }
        });
        newApiRequest.addParam("event_id", eventId);
        newApiRequest.addParam(AccessToken.USER_ID_KEY, userId);
        newApiRequest.addParam("peer_id", i9);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "event_data", str, 0, 1000, 4, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesSetActivity(@Nullable Integer num, @Nullable MessagesSetActivityType messagesSetActivityType, @Nullable Integer num2, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.setActivity", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.n0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1165messagesSetActivity$lambda281;
                m1165messagesSetActivity$lambda281 = MessagesService.m1165messagesSetActivity$lambda281(jsonElement);
                return m1165messagesSetActivity$lambda281;
            }
        });
        if (num != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, num.intValue());
        }
        if (messagesSetActivityType != null) {
            newApiRequest.addParam("type", messagesSetActivityType.getValue());
        }
        if (num2 != null) {
            newApiRequest.addParam("peer_id", num2.intValue());
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MessagesSetChatPhotoResponse> messagesSetChatPhoto(@NotNull String file) {
        Intrinsics.checkNotNullParameter(file, "file");
        NewApiRequest newApiRequest = new NewApiRequest("messages.setChatPhoto", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.p0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MessagesSetChatPhotoResponse m1166messagesSetChatPhoto$lambda287;
                m1166messagesSetChatPhoto$lambda287 = MessagesService.m1166messagesSetChatPhoto$lambda287(jsonElement);
                return m1166messagesSetChatPhoto$lambda287;
            }
        });
        newApiRequest.addParam(ShareInternalUtility.STAGING_PARAM, file);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> messagesUnpin(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("messages.unpin", new ApiResponseParser() { // from class: com.vk.sdk.api.messages.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1167messagesUnpin$lambda289;
                m1167messagesUnpin$lambda289 = MessagesService.m1167messagesUnpin$lambda289(jsonElement);
                return m1167messagesUnpin$lambda289;
            }
        });
        newApiRequest.addParam("peer_id", i9);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }
}
