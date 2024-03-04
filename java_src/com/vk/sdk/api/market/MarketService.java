package com.vk.sdk.api.market;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.UserDataStore;
import com.google.gson.JsonElement;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.utils.Contants;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.market.MarketService;
import com.vk.sdk.api.market.dto.MarketAddAlbumResponse;
import com.vk.sdk.api.market.dto.MarketAddResponse;
import com.vk.sdk.api.market.dto.MarketEditOrderPaymentStatus;
import com.vk.sdk.api.market.dto.MarketGetAlbumByIdResponse;
import com.vk.sdk.api.market.dto.MarketGetAlbumsResponse;
import com.vk.sdk.api.market.dto.MarketGetByIdExtendedResponse;
import com.vk.sdk.api.market.dto.MarketGetByIdResponse;
import com.vk.sdk.api.market.dto.MarketGetCategoriesResponse;
import com.vk.sdk.api.market.dto.MarketGetCommentsResponse;
import com.vk.sdk.api.market.dto.MarketGetCommentsSort;
import com.vk.sdk.api.market.dto.MarketGetExtendedResponse;
import com.vk.sdk.api.market.dto.MarketGetGroupOrdersResponse;
import com.vk.sdk.api.market.dto.MarketGetOrderByIdResponse;
import com.vk.sdk.api.market.dto.MarketGetOrderItemsResponse;
import com.vk.sdk.api.market.dto.MarketGetOrdersExtendedResponse;
import com.vk.sdk.api.market.dto.MarketGetOrdersResponse;
import com.vk.sdk.api.market.dto.MarketGetResponse;
import com.vk.sdk.api.market.dto.MarketReportCommentReason;
import com.vk.sdk.api.market.dto.MarketReportReason;
import com.vk.sdk.api.market.dto.MarketSearchExtendedResponse;
import com.vk.sdk.api.market.dto.MarketSearchExtendedRev;
import com.vk.sdk.api.market.dto.MarketSearchExtendedSort;
import com.vk.sdk.api.market.dto.MarketSearchItemsSortBy;
import com.vk.sdk.api.market.dto.MarketSearchItemsSortDirection;
import com.vk.sdk.api.market.dto.MarketSearchResponse;
import com.vk.sdk.api.market.dto.MarketSearchRev;
import com.vk.sdk.api.market.dto.MarketSearchSort;
import com.vk.sdk.api.users.dto.UsersFields;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0090\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J»\u0001\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u001bJE\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\t2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\"J0\u0010#\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\f0\u00142\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\f0\u0014Jo\u0010'\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\f2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00142\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010/J\u001c\u00100\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\fJ\u001c\u00101\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u00020\fJ\u001c\u00103\u001a\b\u0012\u0004\u0012\u0002040\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00105\u001a\u00020\fJ{\u00106\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u00107JM\u00108\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\t2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u00109J:\u0010:\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00105\u001a\u00020\f2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0014J\u008d\u0001\u0010;\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010<\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\f2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010B2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010F\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010GJm\u0010H\u001a\b\u0012\u0004\u0012\u00020I0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010PJ\"\u0010Q\u001a\b\u0012\u0004\u0012\u00020R0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\f0\u0014J1\u0010S\u001a\b\u0012\u0004\u0012\u00020T0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010UJ\u001a\u0010V\u001a\b\u0012\u0004\u0012\u00020W0\u00042\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\t0\u0014J\u001a\u0010X\u001a\b\u0012\u0004\u0012\u00020Y0\u00042\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\t0\u0014J)\u0010Z\u001a\b\u0012\u0004\u0012\u00020[0\u00042\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\\Jo\u0010]\u001a\b\u0012\u0004\u0012\u00020^0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\f2\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010`\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010a\u001a\u0004\u0018\u00010b2\u0010\b\u0002\u0010c\u001a\n\u0012\u0004\u0012\u00020d\u0018\u00010\u0014¢\u0006\u0002\u0010eJm\u0010f\u001a\b\u0012\u0004\u0012\u00020g0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010PJ1\u0010h\u001a\b\u0012\u0004\u0012\u00020i0\u00042\u0006\u0010j\u001a\u00020\u00072\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010UJ \u0010k\u001a\b\u0012\u0004\u0012\u00020l0\u00042\u0006\u0010=\u001a\u00020\f2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u0007J=\u0010m\u001a\b\u0012\u0004\u0012\u00020n0\u00042\u0006\u0010=\u001a\u00020\f2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010oJA\u0010p\u001a\b\u0012\u0004\u0012\u00020q0\u00042\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010rJA\u0010s\u001a\b\u0012\u0004\u0012\u00020t0\u00042\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010rJ*\u0010u\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\f2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\f0\u0014J9\u0010v\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u00020\f2\n\b\u0002\u0010w\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010x\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010yJE\u0010z\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\f2\n\b\u0002\u00102\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010w\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010x\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010{J(\u0010|\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\f2\n\b\u0002\u0010}\u001a\u0004\u0018\u00010~J%\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00105\u001a\u00020\f2\u0007\u0010}\u001a\u00030\u0080\u0001J\u001d\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\fJ\u001d\u0010\u0082\u0001\u001a\b\u0012\u0004\u0012\u0002040\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00105\u001a\u00020\fJ \u0001\u0010\u0083\u0001\u001a\t\u0012\u0005\u0012\u00030\u0084\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010\u0085\u0001\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010\u0086\u0001\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010\u0087\u0001\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010a\u001a\u0005\u0018\u00010\u0088\u00012\f\b\u0002\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u00012\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010?\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00142\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u0011¢\u0006\u0003\u0010\u008b\u0001J \u0001\u0010\u008c\u0001\u001a\t\u0012\u0005\u0012\u00030\u008d\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010\u0085\u0001\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010\u0086\u0001\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010\u0087\u0001\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010a\u001a\u0005\u0018\u00010\u008e\u00012\f\b\u0002\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008f\u00012\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010?\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00142\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u0011¢\u0006\u0003\u0010\u0090\u0001J\u0091\u0001\u0010\u0091\u0001\u001a\t\u0012\u0005\u0012\u00030\u0084\u00010\u00042\u0007\u0010\u0085\u0001\u001a\u00020\t2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010\u0086\u0001\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010\u0087\u0001\u001a\u0004\u0018\u00010\f2\f\b\u0002\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\f\b\u0002\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u00012\u000b\b\u0002\u0010\u0096\u0001\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010\u0097\u0001\u001a\u0004\u0018\u00010\f¢\u0006\u0003\u0010\u0098\u0001¨\u0006\u0099\u0001"}, d2 = {"Lcom/vk/sdk/api/market/MarketService;", "", "()V", "marketAdd", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/market/dto/MarketAddResponse;", "ownerId", "Lcom/vk/dto/common/id/UserId;", "name", "", "description", "categoryId", "", InAppPurchaseMetaData.KEY_PRICE, "", "oldPrice", "deleted", "", "mainPhotoId", "photoIds", "", "url", "dimensionWidth", "dimensionHeight", "dimensionLength", Contants.Weight, "sku", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "marketAddAlbum", "Lcom/vk/sdk/api/market/dto/MarketAddAlbumResponse;", "title", "photoId", "mainAlbum", "isHidden", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "marketAddToAlbum", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "itemIds", "albumIds", "marketCreateComment", "itemId", "message", "attachments", "fromGroup", "replyToComment", "stickerId", TPDownloadProxyEnum.USER_GUID, "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "marketDelete", "marketDeleteAlbum", "albumId", "marketDeleteComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "commentId", "marketEdit", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "marketEditAlbum", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "marketEditComment", "marketEditOrder", Contants.USER_ID, "orderId", "merchantComment", "status", "trackNumber", "paymentStatus", "Lcom/vk/sdk/api/market/dto/MarketEditOrderPaymentStatus;", "deliveryPrice", "width", "length", "height", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/market/dto/MarketEditOrderPaymentStatus;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "marketGet", "Lcom/vk/sdk/api/market/dto/MarketGetResponse;", AnimatedPasterJsonConfig.CONFIG_COUNT, TypedValues.CycleType.S_WAVE_OFFSET, "dateFrom", "dateTo", "needVariants", "withDisabled", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "marketGetAlbumById", "Lcom/vk/sdk/api/market/dto/MarketGetAlbumByIdResponse;", "marketGetAlbums", "Lcom/vk/sdk/api/market/dto/MarketGetAlbumsResponse;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "marketGetById", "Lcom/vk/sdk/api/market/dto/MarketGetByIdResponse;", "marketGetByIdExtended", "Lcom/vk/sdk/api/market/dto/MarketGetByIdExtendedResponse;", "marketGetCategories", "Lcom/vk/sdk/api/market/dto/MarketGetCategoriesResponse;", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "marketGetComments", "Lcom/vk/sdk/api/market/dto/MarketGetCommentsResponse;", "needLikes", "startCommentId", "sort", "Lcom/vk/sdk/api/market/dto/MarketGetCommentsSort;", GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/users/dto/UsersFields;", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/market/dto/MarketGetCommentsSort;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "marketGetExtended", "Lcom/vk/sdk/api/market/dto/MarketGetExtendedResponse;", "marketGetGroupOrders", "Lcom/vk/sdk/api/market/dto/MarketGetGroupOrdersResponse;", "groupId", "marketGetOrderById", "Lcom/vk/sdk/api/market/dto/MarketGetOrderByIdResponse;", "marketGetOrderItems", "Lcom/vk/sdk/api/market/dto/MarketGetOrderItemsResponse;", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "marketGetOrders", "Lcom/vk/sdk/api/market/dto/MarketGetOrdersResponse;", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "marketGetOrdersExtended", "Lcom/vk/sdk/api/market/dto/MarketGetOrdersExtendedResponse;", "marketRemoveFromAlbum", "marketReorderAlbums", "before", "after", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "marketReorderItems", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "marketReport", "reason", "Lcom/vk/sdk/api/market/dto/MarketReportReason;", "marketReportComment", "Lcom/vk/sdk/api/market/dto/MarketReportCommentReason;", "marketRestore", "marketRestoreComment", "marketSearch", "Lcom/vk/sdk/api/market/dto/MarketSearchResponse;", "q", "priceFrom", "priceTo", "Lcom/vk/sdk/api/market/dto/MarketSearchSort;", "rev", "Lcom/vk/sdk/api/market/dto/MarketSearchRev;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/market/dto/MarketSearchSort;Lcom/vk/sdk/api/market/dto/MarketSearchRev;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "marketSearchExtended", "Lcom/vk/sdk/api/market/dto/MarketSearchExtendedResponse;", "Lcom/vk/sdk/api/market/dto/MarketSearchExtendedSort;", "Lcom/vk/sdk/api/market/dto/MarketSearchExtendedRev;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/market/dto/MarketSearchExtendedSort;Lcom/vk/sdk/api/market/dto/MarketSearchExtendedRev;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "marketSearchItems", "sortBy", "Lcom/vk/sdk/api/market/dto/MarketSearchItemsSortBy;", "sortDirection", "Lcom/vk/sdk/api/market/dto/MarketSearchItemsSortDirection;", UserDataStore.COUNTRY, "city", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/market/dto/MarketSearchItemsSortBy;Lcom/vk/sdk/api/market/dto/MarketSearchItemsSortDirection;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketAdd$lambda-0  reason: not valid java name */
    public static final MarketAddResponse m1088marketAdd$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketAddResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketAddResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketAddAlbum$lambda-13  reason: not valid java name */
    public static final MarketAddAlbumResponse m1089marketAddAlbum$lambda13(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketAddAlbumResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketAddAlbumResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketAddToAlbum$lambda-18  reason: not valid java name */
    public static final BaseOkResponse m1090marketAddToAlbum$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketCreateComment$lambda-20  reason: not valid java name */
    public static final Integer m1091marketCreateComment$lambda20(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketDelete$lambda-28  reason: not valid java name */
    public static final BaseOkResponse m1092marketDelete$lambda28(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketDeleteAlbum$lambda-30  reason: not valid java name */
    public static final BaseOkResponse m1093marketDeleteAlbum$lambda30(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketDeleteComment$lambda-32  reason: not valid java name */
    public static final BaseBoolInt m1094marketDeleteComment$lambda32(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketEdit$lambda-34  reason: not valid java name */
    public static final BaseOkResponse m1095marketEdit$lambda34(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketEditAlbum$lambda-41  reason: not valid java name */
    public static final BaseOkResponse m1096marketEditAlbum$lambda41(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest marketEditComment$default(MarketService marketService, UserId userId, int i9, String str, List list, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str = null;
        }
        if ((i10 & 8) != 0) {
            list = null;
        }
        return marketService.marketEditComment(userId, i9, str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketEditComment$lambda-46  reason: not valid java name */
    public static final BaseOkResponse m1097marketEditComment$lambda46(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketEditOrder$lambda-50  reason: not valid java name */
    public static final BaseOkResponse m1098marketEditOrder$lambda50(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGet$lambda-61  reason: not valid java name */
    public static final MarketGetResponse m1099marketGet$lambda61(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetAlbumById$lambda-79  reason: not valid java name */
    public static final MarketGetAlbumByIdResponse m1100marketGetAlbumById$lambda79(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetAlbumByIdResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetAlbumByIdResponse.class);
    }

    public static /* synthetic */ VKRequest marketGetAlbums$default(MarketService marketService, UserId userId, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        return marketService.marketGetAlbums(userId, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetAlbums$lambda-81  reason: not valid java name */
    public static final MarketGetAlbumsResponse m1101marketGetAlbums$lambda81(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetAlbumsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetAlbumsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetById$lambda-85  reason: not valid java name */
    public static final MarketGetByIdResponse m1102marketGetById$lambda85(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetByIdResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetByIdResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetByIdExtended$lambda-87  reason: not valid java name */
    public static final MarketGetByIdExtendedResponse m1103marketGetByIdExtended$lambda87(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetByIdExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetByIdExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest marketGetCategories$default(MarketService marketService, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        return marketService.marketGetCategories(num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetCategories$lambda-89  reason: not valid java name */
    public static final MarketGetCategoriesResponse m1104marketGetCategories$lambda89(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetCategoriesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetCategoriesResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetComments$lambda-93  reason: not valid java name */
    public static final MarketGetCommentsResponse m1105marketGetComments$lambda93(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetCommentsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetCommentsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetExtended$lambda-70  reason: not valid java name */
    public static final MarketGetExtendedResponse m1106marketGetExtended$lambda70(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest marketGetGroupOrders$default(MarketService marketService, UserId userId, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        return marketService.marketGetGroupOrders(userId, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetGroupOrders$lambda-102  reason: not valid java name */
    public static final MarketGetGroupOrdersResponse m1107marketGetGroupOrders$lambda102(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetGroupOrdersResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetGroupOrdersResponse.class);
    }

    public static /* synthetic */ VKRequest marketGetOrderById$default(MarketService marketService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return marketService.marketGetOrderById(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetOrderById$lambda-106  reason: not valid java name */
    public static final MarketGetOrderByIdResponse m1108marketGetOrderById$lambda106(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetOrderByIdResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetOrderByIdResponse.class);
    }

    public static /* synthetic */ VKRequest marketGetOrderItems$default(MarketService marketService, int i9, UserId userId, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            num2 = null;
        }
        return marketService.marketGetOrderItems(i9, userId, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetOrderItems$lambda-109  reason: not valid java name */
    public static final MarketGetOrderItemsResponse m1109marketGetOrderItems$lambda109(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetOrderItemsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetOrderItemsResponse.class);
    }

    public static /* synthetic */ VKRequest marketGetOrders$default(MarketService marketService, Integer num, Integer num2, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            str = null;
        }
        if ((i9 & 8) != 0) {
            str2 = null;
        }
        return marketService.marketGetOrders(num, num2, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetOrders$lambda-114  reason: not valid java name */
    public static final MarketGetOrdersResponse m1110marketGetOrders$lambda114(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetOrdersResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetOrdersResponse.class);
    }

    public static /* synthetic */ VKRequest marketGetOrdersExtended$default(MarketService marketService, Integer num, Integer num2, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            str = null;
        }
        if ((i9 & 8) != 0) {
            str2 = null;
        }
        return marketService.marketGetOrdersExtended(num, num2, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketGetOrdersExtended$lambda-120  reason: not valid java name */
    public static final MarketGetOrdersExtendedResponse m1111marketGetOrdersExtended$lambda120(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketGetOrdersExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketGetOrdersExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketRemoveFromAlbum$lambda-126  reason: not valid java name */
    public static final BaseOkResponse m1112marketRemoveFromAlbum$lambda126(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest marketReorderAlbums$default(MarketService marketService, UserId userId, int i9, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            num2 = null;
        }
        return marketService.marketReorderAlbums(userId, i9, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketReorderAlbums$lambda-128  reason: not valid java name */
    public static final BaseOkResponse m1113marketReorderAlbums$lambda128(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketReorderItems$lambda-132  reason: not valid java name */
    public static final BaseOkResponse m1114marketReorderItems$lambda132(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest marketReport$default(MarketService marketService, UserId userId, int i9, MarketReportReason marketReportReason, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            marketReportReason = null;
        }
        return marketService.marketReport(userId, i9, marketReportReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketReport$lambda-137  reason: not valid java name */
    public static final BaseOkResponse m1115marketReport$lambda137(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketReportComment$lambda-140  reason: not valid java name */
    public static final BaseOkResponse m1116marketReportComment$lambda140(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketRestore$lambda-142  reason: not valid java name */
    public static final BaseOkResponse m1117marketRestore$lambda142(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketRestoreComment$lambda-144  reason: not valid java name */
    public static final BaseBoolInt m1118marketRestoreComment$lambda144(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketSearch$lambda-146  reason: not valid java name */
    public static final MarketSearchResponse m1119marketSearch$lambda146(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketSearchResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketSearchExtended$lambda-158  reason: not valid java name */
    public static final MarketSearchExtendedResponse m1120marketSearchExtended$lambda158(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketSearchExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketSearchExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: marketSearchItems$lambda-170  reason: not valid java name */
    public static final MarketSearchResponse m1121marketSearchItems$lambda170(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (MarketSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) MarketSearchResponse.class);
    }

    @NotNull
    public final VKRequest<MarketAddResponse> marketAdd(@NotNull UserId ownerId, @NotNull String name, @NotNull String description, int i9, @Nullable Float f10, @Nullable Float f11, @Nullable Boolean bool, @Nullable Integer num, @Nullable List<Integer> list, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        NewApiRequest newApiRequest = new NewApiRequest("market.add", new ApiResponseParser() { // from class: if.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketAddResponse m1088marketAdd$lambda0;
                m1088marketAdd$lambda0 = MarketService.m1088marketAdd$lambda0(jsonElement);
                return m1088marketAdd$lambda0;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("name", name, 4, 100);
        NewApiRequest.addParam$default(newApiRequest, "description", description, 10, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "category_id", i9, 0, 0, 8, (Object) null);
        if (f10 != null) {
            NewApiRequest.addParam$default(newApiRequest, InAppPurchaseMetaData.KEY_PRICE, f10.floatValue(), 0.0d, 0.0d, 8, (Object) null);
        }
        if (f11 != null) {
            NewApiRequest.addParam$default(newApiRequest, "old_price", f11.floatValue(), 0.01d, 0.0d, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("deleted", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "main_photo_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (list != null) {
            newApiRequest.addParam("photo_ids", list);
        }
        if (str != null) {
            newApiRequest.addParam("url", str, 0, 320);
        }
        if (num2 != null) {
            newApiRequest.addParam("dimension_width", num2.intValue(), 0, BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
        }
        if (num3 != null) {
            newApiRequest.addParam("dimension_height", num3.intValue(), 0, BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
        }
        if (num4 != null) {
            newApiRequest.addParam("dimension_length", num4.intValue(), 0, BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
        }
        if (num5 != null) {
            newApiRequest.addParam(Contants.Weight, num5.intValue(), 0, 100000000);
        }
        if (str2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "sku", str2, 0, 50, 4, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketAddAlbumResponse> marketAddAlbum(@NotNull UserId ownerId, @NotNull String title, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("market.addAlbum", new ApiResponseParser() { // from class: if.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketAddAlbumResponse m1089marketAddAlbum$lambda13;
                m1089marketAddAlbum$lambda13 = MarketService.m1089marketAddAlbum$lambda13(jsonElement);
                return m1089marketAddAlbum$lambda13;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "title", title, 0, 128, 4, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "photo_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("main_album", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("is_hidden", bool2.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketAddToAlbum(@NotNull UserId ownerId, @NotNull List<Integer> itemIds, @NotNull List<Integer> albumIds) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(itemIds, "itemIds");
        Intrinsics.checkNotNullParameter(albumIds, "albumIds");
        NewApiRequest newApiRequest = new NewApiRequest("market.addToAlbum", new ApiResponseParser() { // from class: if.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1090marketAddToAlbum$lambda18;
                m1090marketAddToAlbum$lambda18 = MarketService.m1090marketAddToAlbum$lambda18(jsonElement);
                return m1090marketAddToAlbum$lambda18;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("item_ids", itemIds);
        newApiRequest.addParam("album_ids", albumIds);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> marketCreateComment(@NotNull UserId ownerId, int i9, @Nullable String str, @Nullable List<String> list, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.createComment", new ApiResponseParser() { // from class: if.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1091marketCreateComment$lambda20;
                m1091marketCreateComment$lambda20 = MarketService.m1091marketCreateComment$lambda20(jsonElement);
                return m1091marketCreateComment$lambda20;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
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
    public final VKRequest<BaseOkResponse> marketDelete(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.delete", new ApiResponseParser() { // from class: if.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1092marketDelete$lambda28;
                m1092marketDelete$lambda28 = MarketService.m1092marketDelete$lambda28(jsonElement);
                return m1092marketDelete$lambda28;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketDeleteAlbum(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.deleteAlbum", new ApiResponseParser() { // from class: if.u
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1093marketDeleteAlbum$lambda30;
                m1093marketDeleteAlbum$lambda30 = MarketService.m1093marketDeleteAlbum$lambda30(jsonElement);
                return m1093marketDeleteAlbum$lambda30;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "album_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> marketDeleteComment(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.deleteComment", new ApiResponseParser() { // from class: if.e0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1094marketDeleteComment$lambda32;
                m1094marketDeleteComment$lambda32 = MarketService.m1094marketDeleteComment$lambda32(jsonElement);
                return m1094marketDeleteComment$lambda32;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketEdit(@NotNull UserId ownerId, int i9, @NotNull String name, @NotNull String description, int i10, @Nullable Float f10, @Nullable Boolean bool, @Nullable Integer num, @Nullable List<Integer> list, @Nullable String str) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        NewApiRequest newApiRequest = new NewApiRequest("market.edit", new ApiResponseParser() { // from class: if.v
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1095marketEdit$lambda34;
                m1095marketEdit$lambda34 = MarketService.m1095marketEdit$lambda34(jsonElement);
                return m1095marketEdit$lambda34;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("name", name, 4, 100);
        NewApiRequest.addParam$default(newApiRequest, "description", description, 10, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "category_id", i10, 0, 0, 8, (Object) null);
        if (f10 != null) {
            NewApiRequest.addParam$default(newApiRequest, InAppPurchaseMetaData.KEY_PRICE, f10.floatValue(), 0.0d, 0.0d, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("deleted", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "main_photo_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (list != null) {
            newApiRequest.addParam("photo_ids", list);
        }
        if (str != null) {
            newApiRequest.addParam("url", str, 0, 320);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketEditAlbum(@NotNull UserId ownerId, int i9, @NotNull String title, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("market.editAlbum", new ApiResponseParser() { // from class: if.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1096marketEditAlbum$lambda41;
                m1096marketEditAlbum$lambda41 = MarketService.m1096marketEditAlbum$lambda41(jsonElement);
                return m1096marketEditAlbum$lambda41;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "album_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "title", title, 0, 128, 4, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "photo_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("main_album", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("is_hidden", bool2.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketEditComment(@NotNull UserId ownerId, int i9, @Nullable String str, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.editComment", new ApiResponseParser() { // from class: if.s
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1097marketEditComment$lambda46;
                m1097marketEditComment$lambda46 = MarketService.m1097marketEditComment$lambda46(jsonElement);
                return m1097marketEditComment$lambda46;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketEditOrder(@NotNull UserId userId, int i9, @Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable MarketEditOrderPaymentStatus marketEditOrderPaymentStatus, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("market.editOrder", new ApiResponseParser() { // from class: if.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1098marketEditOrder$lambda50;
                m1098marketEditOrder$lambda50 = MarketService.m1098marketEditOrder$lambda50(jsonElement);
                return m1098marketEditOrder$lambda50;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "order_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "merchant_comment", str, 0, 800, 4, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "status", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "track_number", str2, 0, 60, 4, (Object) null);
        }
        if (marketEditOrderPaymentStatus != null) {
            newApiRequest.addParam("payment_status", marketEditOrderPaymentStatus.getValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "delivery_price", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam("width", num3.intValue(), 0, BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
        }
        if (num4 != null) {
            newApiRequest.addParam("length", num4.intValue(), 0, BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
        }
        if (num5 != null) {
            newApiRequest.addParam("height", num5.intValue(), 0, BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
        }
        if (num6 != null) {
            newApiRequest.addParam(Contants.Weight, num6.intValue(), 0, 100000000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetResponse> marketGet(@NotNull UserId ownerId, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.get", new ApiResponseParser() { // from class: if.g0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetResponse m1099marketGet$lambda61;
                m1099marketGet$lambda61 = MarketService.m1099marketGet$lambda61(jsonElement);
                return m1099marketGet$lambda61;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "album_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("date_from", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("date_to", str2);
        }
        if (bool != null) {
            newApiRequest.addParam("need_variants", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("with_disabled", bool2.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetAlbumByIdResponse> marketGetAlbumById(@NotNull UserId ownerId, @NotNull List<Integer> albumIds) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(albumIds, "albumIds");
        NewApiRequest newApiRequest = new NewApiRequest("market.getAlbumById", new ApiResponseParser() { // from class: if.t
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetAlbumByIdResponse m1100marketGetAlbumById$lambda79;
                m1100marketGetAlbumById$lambda79 = MarketService.m1100marketGetAlbumById$lambda79(jsonElement);
                return m1100marketGetAlbumById$lambda79;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("album_ids", albumIds);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetAlbumsResponse> marketGetAlbums(@NotNull UserId ownerId, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.getAlbums", new ApiResponseParser() { // from class: if.a0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetAlbumsResponse m1101marketGetAlbums$lambda81;
                m1101marketGetAlbums$lambda81 = MarketService.m1101marketGetAlbums$lambda81(jsonElement);
                return m1101marketGetAlbums$lambda81;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetByIdResponse> marketGetById(@NotNull List<String> itemIds) {
        Intrinsics.checkNotNullParameter(itemIds, "itemIds");
        NewApiRequest newApiRequest = new NewApiRequest("market.getById", new ApiResponseParser() { // from class: if.z
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetByIdResponse m1102marketGetById$lambda85;
                m1102marketGetById$lambda85 = MarketService.m1102marketGetById$lambda85(jsonElement);
                return m1102marketGetById$lambda85;
            }
        });
        newApiRequest.addParam("item_ids", itemIds);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetByIdExtendedResponse> marketGetByIdExtended(@NotNull List<String> itemIds) {
        Intrinsics.checkNotNullParameter(itemIds, "itemIds");
        NewApiRequest newApiRequest = new NewApiRequest("market.getById", new ApiResponseParser() { // from class: if.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetByIdExtendedResponse m1103marketGetByIdExtended$lambda87;
                m1103marketGetByIdExtended$lambda87 = MarketService.m1103marketGetByIdExtended$lambda87(jsonElement);
                return m1103marketGetByIdExtended$lambda87;
            }
        });
        newApiRequest.addParam("item_ids", itemIds);
        newApiRequest.addParam("extended", true);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetCategoriesResponse> marketGetCategories(@Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("market.getCategories", new ApiResponseParser() { // from class: if.w
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetCategoriesResponse m1104marketGetCategories$lambda89;
                m1104marketGetCategories$lambda89 = MarketService.m1104marketGetCategories$lambda89(jsonElement);
                return m1104marketGetCategories$lambda89;
            }
        });
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 1000);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetCommentsResponse> marketGetComments(@NotNull UserId ownerId, int i9, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable MarketGetCommentsSort marketGetCommentsSort, @Nullable List<? extends UsersFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.getComments", new ApiResponseParser() { // from class: if.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetCommentsResponse m1105marketGetComments$lambda93;
                m1105marketGetComments$lambda93 = MarketService.m1105marketGetComments$lambda93(jsonElement);
                return m1105marketGetComments$lambda93;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("need_likes", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_comment_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 100);
        }
        if (marketGetCommentsSort != null) {
            newApiRequest.addParam("sort", marketGetCommentsSort.getValue());
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
    public final VKRequest<MarketGetExtendedResponse> marketGetExtended(@NotNull UserId ownerId, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.get", new ApiResponseParser() { // from class: if.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetExtendedResponse m1106marketGetExtended$lambda70;
                m1106marketGetExtended$lambda70 = MarketService.m1106marketGetExtended$lambda70(jsonElement);
                return m1106marketGetExtended$lambda70;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "album_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue(), 0, 0, 8, (Object) null);
        }
        newApiRequest.addParam("extended", true);
        if (str != null) {
            newApiRequest.addParam("date_from", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("date_to", str2);
        }
        if (bool != null) {
            newApiRequest.addParam("need_variants", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("with_disabled", bool2.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetGroupOrdersResponse> marketGetGroupOrders(@NotNull UserId groupId, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("market.getGroupOrders", new ApiResponseParser() { // from class: if.b0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetGroupOrdersResponse m1107marketGetGroupOrders$lambda102;
                m1107marketGetGroupOrders$lambda102 = MarketService.m1107marketGetGroupOrders$lambda102(jsonElement);
                return m1107marketGetGroupOrders$lambda102;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 1, 50);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetOrderByIdResponse> marketGetOrderById(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("market.getOrderById", new ApiResponseParser() { // from class: if.h0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetOrderByIdResponse m1108marketGetOrderById$lambda106;
                m1108marketGetOrderById$lambda106 = MarketService.m1108marketGetOrderById$lambda106(jsonElement);
                return m1108marketGetOrderById$lambda106;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "order_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetOrderItemsResponse> marketGetOrderItems(int i9, @Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("market.getOrderItems", new ApiResponseParser() { // from class: if.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetOrderItemsResponse m1109marketGetOrderItems$lambda109;
                m1109marketGetOrderItems$lambda109 = MarketService.m1109marketGetOrderItems$lambda109(jsonElement);
                return m1109marketGetOrderItems$lambda109;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "order_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetOrdersResponse> marketGetOrders(@Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2) {
        NewApiRequest newApiRequest = new NewApiRequest("market.getOrders", new ApiResponseParser() { // from class: if.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetOrdersResponse m1110marketGetOrders$lambda114;
                m1110marketGetOrders$lambda114 = MarketService.m1110marketGetOrders$lambda114(jsonElement);
                return m1110marketGetOrders$lambda114;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 10);
        }
        if (str != null) {
            newApiRequest.addParam("date_from", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("date_to", str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketGetOrdersExtendedResponse> marketGetOrdersExtended(@Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2) {
        NewApiRequest newApiRequest = new NewApiRequest("market.getOrders", new ApiResponseParser() { // from class: if.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketGetOrdersExtendedResponse m1111marketGetOrdersExtended$lambda120;
                m1111marketGetOrdersExtended$lambda120 = MarketService.m1111marketGetOrdersExtended$lambda120(jsonElement);
                return m1111marketGetOrdersExtended$lambda120;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 10);
        }
        newApiRequest.addParam("extended", true);
        if (str != null) {
            newApiRequest.addParam("date_from", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("date_to", str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketRemoveFromAlbum(@NotNull UserId ownerId, int i9, @NotNull List<Integer> albumIds) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(albumIds, "albumIds");
        NewApiRequest newApiRequest = new NewApiRequest("market.removeFromAlbum", new ApiResponseParser() { // from class: if.x
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1112marketRemoveFromAlbum$lambda126;
                m1112marketRemoveFromAlbum$lambda126 = MarketService.m1112marketRemoveFromAlbum$lambda126(jsonElement);
                return m1112marketRemoveFromAlbum$lambda126;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("album_ids", albumIds);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketReorderAlbums(@NotNull UserId ownerId, int i9, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.reorderAlbums", new ApiResponseParser() { // from class: if.d0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1113marketReorderAlbums$lambda128;
                m1113marketReorderAlbums$lambda128 = MarketService.m1113marketReorderAlbums$lambda128(jsonElement);
                return m1113marketReorderAlbums$lambda128;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("album_id", i9);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "before", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "after", num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketReorderItems(@NotNull UserId ownerId, int i9, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.reorderItems", new ApiResponseParser() { // from class: if.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1114marketReorderItems$lambda132;
                m1114marketReorderItems$lambda132 = MarketService.m1114marketReorderItems$lambda132(jsonElement);
                return m1114marketReorderItems$lambda132;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        if (num != null) {
            newApiRequest.addParam("album_id", num.intValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "before", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "after", num3.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketReport(@NotNull UserId ownerId, int i9, @Nullable MarketReportReason marketReportReason) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.report", new ApiResponseParser() { // from class: if.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1115marketReport$lambda137;
                m1115marketReport$lambda137 = MarketService.m1115marketReport$lambda137(jsonElement);
                return m1115marketReport$lambda137;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        if (marketReportReason != null) {
            newApiRequest.addParam("reason", marketReportReason.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketReportComment(@NotNull UserId ownerId, int i9, @NotNull MarketReportCommentReason reason) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(reason, "reason");
        NewApiRequest newApiRequest = new NewApiRequest("market.reportComment", new ApiResponseParser() { // from class: if.c0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1116marketReportComment$lambda140;
                m1116marketReportComment$lambda140 = MarketService.m1116marketReportComment$lambda140(jsonElement);
                return m1116marketReportComment$lambda140;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("reason", reason.getValue());
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> marketRestore(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.restore", new ApiResponseParser() { // from class: if.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1117marketRestore$lambda142;
                m1117marketRestore$lambda142 = MarketService.m1117marketRestore$lambda142(jsonElement);
                return m1117marketRestore$lambda142;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> marketRestoreComment(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.restoreComment", new ApiResponseParser() { // from class: if.f0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1118marketRestoreComment$lambda144;
                m1118marketRestoreComment$lambda144 = MarketService.m1118marketRestoreComment$lambda144(jsonElement);
                return m1118marketRestoreComment$lambda144;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketSearchResponse> marketSearch(@NotNull UserId ownerId, @Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable MarketSearchSort marketSearchSort, @Nullable MarketSearchRev marketSearchRev, @Nullable Integer num4, @Nullable Integer num5, @Nullable List<Integer> list, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.search", new ApiResponseParser() { // from class: if.y
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketSearchResponse m1119marketSearch$lambda146;
                m1119marketSearch$lambda146 = MarketService.m1119marketSearch$lambda146(jsonElement);
                return m1119marketSearch$lambda146;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "album_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "price_from", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "price_to", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (marketSearchSort != null) {
            newApiRequest.addParam("sort", marketSearchSort.getValue());
        }
        if (marketSearchRev != null) {
            newApiRequest.addParam("rev", marketSearchRev.getValue());
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (num5 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num5.intValue(), 0, 200);
        }
        if (list != null) {
            newApiRequest.addParam("status", list);
        }
        if (bool != null) {
            newApiRequest.addParam("need_variants", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketSearchExtendedResponse> marketSearchExtended(@NotNull UserId ownerId, @Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable MarketSearchExtendedSort marketSearchExtendedSort, @Nullable MarketSearchExtendedRev marketSearchExtendedRev, @Nullable Integer num4, @Nullable Integer num5, @Nullable List<Integer> list, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("market.search", new ApiResponseParser() { // from class: if.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketSearchExtendedResponse m1120marketSearchExtended$lambda158;
                m1120marketSearchExtended$lambda158 = MarketService.m1120marketSearchExtended$lambda158(jsonElement);
                return m1120marketSearchExtended$lambda158;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "album_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "price_from", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "price_to", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (marketSearchExtendedSort != null) {
            newApiRequest.addParam("sort", marketSearchExtendedSort.getValue());
        }
        if (marketSearchExtendedRev != null) {
            newApiRequest.addParam("rev", marketSearchExtendedRev.getValue());
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (num5 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num5.intValue(), 0, 200);
        }
        newApiRequest.addParam("extended", true);
        if (list != null) {
            newApiRequest.addParam("status", list);
        }
        if (bool != null) {
            newApiRequest.addParam("need_variants", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<MarketSearchResponse> marketSearchItems(@NotNull String q10, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable MarketSearchItemsSortBy marketSearchItemsSortBy, @Nullable MarketSearchItemsSortDirection marketSearchItemsSortDirection, @Nullable Integer num6, @Nullable Integer num7) {
        Intrinsics.checkNotNullParameter(q10, "q");
        NewApiRequest newApiRequest = new NewApiRequest("market.searchItems", new ApiResponseParser() { // from class: if.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                MarketSearchResponse m1121marketSearchItems$lambda170;
                m1121marketSearchItems$lambda170 = MarketService.m1121marketSearchItems$lambda170(jsonElement);
                return m1121marketSearchItems$lambda170;
            }
        });
        newApiRequest.addParam("q", q10);
        if (num != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 300);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "category_id", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, "price_from", num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (num5 != null) {
            NewApiRequest.addParam$default(newApiRequest, "price_to", num5.intValue(), 0, 0, 8, (Object) null);
        }
        if (marketSearchItemsSortBy != null) {
            newApiRequest.addParam("sort_by", marketSearchItemsSortBy.getValue());
        }
        if (marketSearchItemsSortDirection != null) {
            newApiRequest.addParam("sort_direction", marketSearchItemsSortDirection.getValue());
        }
        if (num6 != null) {
            NewApiRequest.addParam$default(newApiRequest, UserDataStore.COUNTRY, num6.intValue(), 0, 0, 8, (Object) null);
        }
        if (num7 != null) {
            NewApiRequest.addParam$default(newApiRequest, "city", num7.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }
}
