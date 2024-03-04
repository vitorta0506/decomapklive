package com.vk.sdk.api.wall;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.GraphRequest;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.huawei.hms.actions.SearchIntents;
import com.huawei.hms.api.ConnectionResult;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.base.dto.BaseUserGroupFields;
import com.vk.sdk.api.wall.dto.WallCreateCommentResponse;
import com.vk.sdk.api.wall.dto.WallEditResponse;
import com.vk.sdk.api.wall.dto.WallEditTopicId;
import com.vk.sdk.api.wall.dto.WallGetByIdExtendedResponse;
import com.vk.sdk.api.wall.dto.WallGetCommentExtendedResponse;
import com.vk.sdk.api.wall.dto.WallGetCommentResponse;
import com.vk.sdk.api.wall.dto.WallGetCommentsExtendedResponse;
import com.vk.sdk.api.wall.dto.WallGetCommentsExtendedSort;
import com.vk.sdk.api.wall.dto.WallGetCommentsResponse;
import com.vk.sdk.api.wall.dto.WallGetCommentsSort;
import com.vk.sdk.api.wall.dto.WallGetExtendedResponse;
import com.vk.sdk.api.wall.dto.WallGetRepostsResponse;
import com.vk.sdk.api.wall.dto.WallGetResponse;
import com.vk.sdk.api.wall.dto.WallPostAdsStealthResponse;
import com.vk.sdk.api.wall.dto.WallPostResponse;
import com.vk.sdk.api.wall.dto.WallPostTopicId;
import com.vk.sdk.api.wall.dto.WallReportCommentReason;
import com.vk.sdk.api.wall.dto.WallReportPostReason;
import com.vk.sdk.api.wall.dto.WallRepostResponse;
import com.vk.sdk.api.wall.dto.WallSearchExtendedResponse;
import com.vk.sdk.api.wall.dto.WallSearchResponse;
import com.vk.sdk.api.wall.dto.WallWallpostFull;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000î\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJs\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0016J)\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0019J \u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\u0006\u0010\u001b\u001a\u00020\f2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nJ÷\u0001\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00042\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00132\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/¢\u0006\u0002\u00100J£\u0001\u00101\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00132\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\f2\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u00106J>\u00107\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\u0006\u0010\u001b\u001a\u00020\f2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013J_\u00108\u001a\b\u0012\u0004\u0012\u0002090\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u0013¢\u0006\u0002\u0010@JC\u0010A\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020B0\u00130\u00042\f\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00070\u00132\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u0013¢\u0006\u0002\u0010EJ=\u0010F\u001a\b\u0012\u0004\u0012\u00020G0\u00042\f\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00070\u00132\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u0013¢\u0006\u0002\u0010EJ2\u0010H\u001a\b\u0012\u0004\u0012\u00020I0\u00042\u0006\u0010\u001b\u001a\u00020\f2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u0013J2\u0010J\u001a\b\u0012\u0004\u0012\u00020K0\u00042\u0006\u0010\u001b\u001a\u00020\f2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u0013J\u009b\u0001\u0010L\u001a\b\u0012\u0004\u0012\u00020M0\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010P\u001a\u0004\u0018\u00010Q2\n\b\u0002\u0010R\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u00132\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010TJ\u009b\u0001\u0010U\u001a\b\u0012\u0004\u0012\u00020V0\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010P\u001a\u0004\u0018\u00010W2\n\b\u0002\u0010R\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u00132\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010XJ_\u0010Y\u001a\b\u0012\u0004\u0012\u00020Z0\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u0013¢\u0006\u0002\u0010@JA\u0010[\u001a\b\u0012\u0004\u0012\u00020\\0\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010]J\u001c\u0010^\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ \u0010_\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nJû\u0001\u0010`\u001a\b\u0012\u0004\u0012\u00020a0\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00132\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010b\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010.\u001a\u0004\u0018\u00010c¢\u0006\u0002\u0010dJ£\u0001\u0010e\u001a\b\u0012\u0004\u0012\u00020f0\u00042\u0006\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00132\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010gJ(\u0010h\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\f2\n\b\u0002\u0010i\u001a\u0004\u0018\u00010jJ(\u0010k\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010i\u001a\u0004\u0018\u00010lJI\u0010m\u001a\b\u0012\u0004\u0012\u00020n0\u00042\u0006\u0010o\u001a\u00020\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010p\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010b\u001a\u0004\u0018\u00010\u001f¢\u0006\u0002\u0010qJ)\u0010r\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0019J \u0010s\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\u0006\u0010\u001b\u001a\u00020\f2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nJk\u0010t\u001a\b\u0012\u0004\u0012\u00020u0\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010v\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010w\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u0013¢\u0006\u0002\u0010xJk\u0010y\u001a\b\u0012\u0004\u0012\u00020z0\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010v\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010w\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u0013¢\u0006\u0002\u0010xJ \u0010{\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¨\u0006|"}, d2 = {"Lcom/vk/sdk/api/wall/WallService;", "", "()V", "wallCheckCopyrightLink", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "link", "", "wallCloseComments", "ownerId", "Lcom/vk/dto/common/id/UserId;", ShareConstants.RESULT_POST_ID, "", "wallCreateComment", "Lcom/vk/sdk/api/wall/dto/WallCreateCommentResponse;", "fromGroup", "message", "replyToComment", "attachments", "", "stickerId", TPDownloadProxyEnum.USER_GUID, "(ILcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "wallDelete", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "wallDeleteComment", "commentId", "wallEdit", "Lcom/vk/sdk/api/wall/dto/WallEditResponse;", "friendsOnly", "", "services", "signed", "publishDate", "lat", "", "long", "placeId", "markAsAds", "closeComments", "donutPaidDuration", "posterBkgId", "posterBkgOwnerId", "posterBkgAccessHash", "copyright", "topicId", "Lcom/vk/sdk/api/wall/dto/WallEditTopicId;", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/wall/dto/WallEditTopicId;)Lcom/vk/api/sdk/requests/VKRequest;", "wallEditAdsStealth", "linkButton", "linkTitle", "linkImage", "linkVideo", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "wallEditComment", "wallGet", "Lcom/vk/sdk/api/wall/dto/WallGetResponse;", "domain", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "filter", GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "wallGetById", "Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "posts", "copyHistoryDepth", "(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "wallGetByIdExtended", "Lcom/vk/sdk/api/wall/dto/WallGetByIdExtendedResponse;", "wallGetComment", "Lcom/vk/sdk/api/wall/dto/WallGetCommentResponse;", "wallGetCommentExtended", "Lcom/vk/sdk/api/wall/dto/WallGetCommentExtendedResponse;", "wallGetComments", "Lcom/vk/sdk/api/wall/dto/WallGetCommentsResponse;", "needLikes", "startCommentId", "sort", "Lcom/vk/sdk/api/wall/dto/WallGetCommentsSort;", "previewLength", "threadItemsCount", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/wall/dto/WallGetCommentsSort;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "wallGetCommentsExtended", "Lcom/vk/sdk/api/wall/dto/WallGetCommentsExtendedResponse;", "Lcom/vk/sdk/api/wall/dto/WallGetCommentsExtendedSort;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/wall/dto/WallGetCommentsExtendedSort;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "wallGetExtended", "Lcom/vk/sdk/api/wall/dto/WallGetExtendedResponse;", "wallGetReposts", "Lcom/vk/sdk/api/wall/dto/WallGetRepostsResponse;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "wallOpenComments", "wallPin", "wallPost", "Lcom/vk/sdk/api/wall/dto/WallPostResponse;", "muteNotifications", "Lcom/vk/sdk/api/wall/dto/WallPostTopicId;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vk/sdk/api/wall/dto/WallPostTopicId;)Lcom/vk/api/sdk/requests/VKRequest;", "wallPostAdsStealth", "Lcom/vk/sdk/api/wall/dto/WallPostAdsStealthResponse;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "wallReportComment", "reason", "Lcom/vk/sdk/api/wall/dto/WallReportCommentReason;", "wallReportPost", "Lcom/vk/sdk/api/wall/dto/WallReportPostReason;", "wallRepost", "Lcom/vk/sdk/api/wall/dto/WallRepostResponse;", "objectValue", "groupId", "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "wallRestore", "wallRestoreComment", "wallSearch", "Lcom/vk/sdk/api/wall/dto/WallSearchResponse;", SearchIntents.EXTRA_QUERY, "ownersOnly", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "wallSearchExtended", "Lcom/vk/sdk/api/wall/dto/WallSearchExtendedResponse;", "wallUnpin", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallCheckCopyrightLink$lambda-0  reason: not valid java name */
    public static final BaseBoolInt m1371wallCheckCopyrightLink$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallCloseComments$lambda-2  reason: not valid java name */
    public static final BaseBoolInt m1372wallCloseComments$lambda2(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallCreateComment$lambda-4  reason: not valid java name */
    public static final WallCreateCommentResponse m1373wallCreateComment$lambda4(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallCreateCommentResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallCreateCommentResponse.class);
    }

    public static /* synthetic */ VKRequest wallDelete$default(WallService wallService, UserId userId, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        return wallService.wallDelete(userId, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallDelete$lambda-13  reason: not valid java name */
    public static final BaseOkResponse m1374wallDelete$lambda13(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest wallDeleteComment$default(WallService wallService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return wallService.wallDeleteComment(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallDeleteComment$lambda-17  reason: not valid java name */
    public static final BaseOkResponse m1375wallDeleteComment$lambda17(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallEdit$lambda-20  reason: not valid java name */
    public static final WallEditResponse m1376wallEdit$lambda20(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallEditResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallEditResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallEditAdsStealth$lambda-40  reason: not valid java name */
    public static final BaseOkResponse m1377wallEditAdsStealth$lambda40(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallEditComment$default(WallService wallService, int i9, UserId userId, String str, List list, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            str = null;
        }
        if ((i10 & 8) != 0) {
            list = null;
        }
        return wallService.wallEditComment(i9, userId, str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallEditComment$lambda-53  reason: not valid java name */
    public static final BaseOkResponse m1378wallEditComment$lambda53(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallGet$default(WallService wallService, UserId userId, String str, Integer num, Integer num2, String str2, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            str2 = null;
        }
        if ((i9 & 32) != 0) {
            list = null;
        }
        return wallService.wallGet(userId, str, num, num2, str2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallGet$lambda-58  reason: not valid java name */
    public static final WallGetResponse m1379wallGet$lambda58(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallGetResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallGetById$default(WallService wallService, List list, Integer num, List list2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            list2 = null;
        }
        return wallService.wallGetById(list, num, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallGetById$lambda-76  reason: not valid java name */
    public static final List m1380wallGetById$lambda76(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends WallWallpostFull>>() { // from class: com.vk.sdk.api.wall.WallService$wallGetById$1$typeToken$1
        }.getType());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallGetByIdExtended$default(WallService wallService, List list, Integer num, List list2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            list2 = null;
        }
        return wallService.wallGetByIdExtended(list, num, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallGetByIdExtended$lambda-81  reason: not valid java name */
    public static final WallGetByIdExtendedResponse m1381wallGetByIdExtended$lambda81(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallGetByIdExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallGetByIdExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallGetComment$default(WallService wallService, int i9, UserId userId, List list, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            list = null;
        }
        return wallService.wallGetComment(i9, userId, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallGetComment$lambda-86  reason: not valid java name */
    public static final WallGetCommentResponse m1382wallGetComment$lambda86(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallGetCommentResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallGetCommentResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallGetCommentExtended$default(WallService wallService, int i9, UserId userId, List list, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            list = null;
        }
        return wallService.wallGetCommentExtended(i9, userId, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallGetCommentExtended$lambda-91  reason: not valid java name */
    public static final WallGetCommentExtendedResponse m1383wallGetCommentExtended$lambda91(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallGetCommentExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallGetCommentExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallGetComments$default(WallService wallService, UserId userId, Integer num, Boolean bool, Integer num2, Integer num3, Integer num4, WallGetCommentsSort wallGetCommentsSort, Integer num5, List list, Integer num6, Integer num7, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            num3 = null;
        }
        if ((i9 & 32) != 0) {
            num4 = null;
        }
        if ((i9 & 64) != 0) {
            wallGetCommentsSort = null;
        }
        if ((i9 & 128) != 0) {
            num5 = null;
        }
        if ((i9 & 256) != 0) {
            list = null;
        }
        if ((i9 & 512) != 0) {
            num6 = null;
        }
        if ((i9 & 1024) != 0) {
            num7 = null;
        }
        return wallService.wallGetComments(userId, num, bool, num2, num3, num4, wallGetCommentsSort, num5, list, num6, num7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallGetComments$lambda-96  reason: not valid java name */
    public static final WallGetCommentsResponse m1384wallGetComments$lambda96(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallGetCommentsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallGetCommentsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallGetCommentsExtended$default(WallService wallService, UserId userId, Integer num, Boolean bool, Integer num2, Integer num3, Integer num4, WallGetCommentsExtendedSort wallGetCommentsExtendedSort, Integer num5, List list, Integer num6, Integer num7, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            num3 = null;
        }
        if ((i9 & 32) != 0) {
            num4 = null;
        }
        if ((i9 & 64) != 0) {
            wallGetCommentsExtendedSort = null;
        }
        if ((i9 & 128) != 0) {
            num5 = null;
        }
        if ((i9 & 256) != 0) {
            list = null;
        }
        if ((i9 & 512) != 0) {
            num6 = null;
        }
        if ((i9 & 1024) != 0) {
            num7 = null;
        }
        return wallService.wallGetCommentsExtended(userId, num, bool, num2, num3, num4, wallGetCommentsExtendedSort, num5, list, num6, num7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallGetCommentsExtended$lambda-110  reason: not valid java name */
    public static final WallGetCommentsExtendedResponse m1385wallGetCommentsExtended$lambda110(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallGetCommentsExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallGetCommentsExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallGetExtended$default(WallService wallService, UserId userId, String str, Integer num, Integer num2, String str2, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            str2 = null;
        }
        if ((i9 & 32) != 0) {
            list = null;
        }
        return wallService.wallGetExtended(userId, str, num, num2, str2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallGetExtended$lambda-67  reason: not valid java name */
    public static final WallGetExtendedResponse m1386wallGetExtended$lambda67(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallGetExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallGetExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest wallGetReposts$default(WallService wallService, UserId userId, Integer num, Integer num2, Integer num3, int i9, Object obj) {
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
            num3 = null;
        }
        return wallService.wallGetReposts(userId, num, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallGetReposts$lambda-124  reason: not valid java name */
    public static final WallGetRepostsResponse m1387wallGetReposts$lambda124(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallGetRepostsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallGetRepostsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallOpenComments$lambda-130  reason: not valid java name */
    public static final BaseBoolInt m1388wallOpenComments$lambda130(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    public static /* synthetic */ VKRequest wallPin$default(WallService wallService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return wallService.wallPin(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallPin$lambda-132  reason: not valid java name */
    public static final BaseOkResponse m1389wallPin$lambda132(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallPost$lambda-135  reason: not valid java name */
    public static final WallPostResponse m1390wallPost$lambda135(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallPostResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallPostResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallPostAdsStealth$lambda-156  reason: not valid java name */
    public static final WallPostAdsStealthResponse m1391wallPostAdsStealth$lambda156(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallPostAdsStealthResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallPostAdsStealthResponse.class);
    }

    public static /* synthetic */ VKRequest wallReportComment$default(WallService wallService, UserId userId, int i9, WallReportCommentReason wallReportCommentReason, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            wallReportCommentReason = null;
        }
        return wallService.wallReportComment(userId, i9, wallReportCommentReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallReportComment$lambda-169  reason: not valid java name */
    public static final BaseOkResponse m1392wallReportComment$lambda169(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest wallReportPost$default(WallService wallService, UserId userId, int i9, WallReportPostReason wallReportPostReason, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            wallReportPostReason = null;
        }
        return wallService.wallReportPost(userId, i9, wallReportPostReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallReportPost$lambda-172  reason: not valid java name */
    public static final BaseOkResponse m1393wallReportPost$lambda172(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallRepost$lambda-175  reason: not valid java name */
    public static final WallRepostResponse m1394wallRepost$lambda175(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallRepostResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallRepostResponse.class);
    }

    public static /* synthetic */ VKRequest wallRestore$default(WallService wallService, UserId userId, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        return wallService.wallRestore(userId, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallRestore$lambda-181  reason: not valid java name */
    public static final BaseOkResponse m1395wallRestore$lambda181(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest wallRestoreComment$default(WallService wallService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return wallService.wallRestoreComment(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallRestoreComment$lambda-185  reason: not valid java name */
    public static final BaseOkResponse m1396wallRestoreComment$lambda185(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallSearch$default(WallService wallService, UserId userId, String str, String str2, Boolean bool, Integer num, Integer num2, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            str2 = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        if ((i9 & 16) != 0) {
            num = null;
        }
        if ((i9 & 32) != 0) {
            num2 = null;
        }
        if ((i9 & 64) != 0) {
            list = null;
        }
        return wallService.wallSearch(userId, str, str2, bool, num, num2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallSearch$lambda-188  reason: not valid java name */
    public static final WallSearchResponse m1397wallSearch$lambda188(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallSearchResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest wallSearchExtended$default(WallService wallService, UserId userId, String str, String str2, Boolean bool, Integer num, Integer num2, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            str2 = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        if ((i9 & 16) != 0) {
            num = null;
        }
        if ((i9 & 32) != 0) {
            num2 = null;
        }
        if ((i9 & 64) != 0) {
            list = null;
        }
        return wallService.wallSearchExtended(userId, str, str2, bool, num, num2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallSearchExtended$lambda-198  reason: not valid java name */
    public static final WallSearchExtendedResponse m1398wallSearchExtended$lambda198(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WallSearchExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WallSearchExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest wallUnpin$default(WallService wallService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return wallService.wallUnpin(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wallUnpin$lambda-208  reason: not valid java name */
    public static final BaseOkResponse m1399wallUnpin$lambda208(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<BaseBoolInt> wallCheckCopyrightLink(@NotNull String link) {
        Intrinsics.checkNotNullParameter(link, "link");
        NewApiRequest newApiRequest = new NewApiRequest("wall.checkCopyrightLink", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1371wallCheckCopyrightLink$lambda0;
                m1371wallCheckCopyrightLink$lambda0 = WallService.m1371wallCheckCopyrightLink$lambda0(jsonElement);
                return m1371wallCheckCopyrightLink$lambda0;
            }
        });
        newApiRequest.addParam("link", link);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> wallCloseComments(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("wall.closeComments", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1372wallCloseComments$lambda2;
                m1372wallCloseComments$lambda2 = WallService.m1372wallCloseComments$lambda2(jsonElement);
                return m1372wallCloseComments$lambda2;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallCreateCommentResponse> wallCreateComment(int i9, @Nullable UserId userId, @Nullable UserId userId2, @Nullable String str, @Nullable Integer num, @Nullable List<String> list, @Nullable Integer num2, @Nullable String str2) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.createComment", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallCreateCommentResponse m1373wallCreateComment$lambda4;
                m1373wallCreateComment$lambda4 = WallService.m1373wallCreateComment$lambda4(jsonElement);
                return m1373wallCreateComment$lambda4;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (userId2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "from_group", userId2, 0L, 0L, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (num != null) {
            newApiRequest.addParam("reply_to_comment", num.intValue());
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
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
    public final VKRequest<BaseOkResponse> wallDelete(@Nullable UserId userId, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.delete", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1374wallDelete$lambda13;
                m1374wallDelete$lambda13 = WallService.m1374wallDelete$lambda13(jsonElement);
                return m1374wallDelete$lambda13;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, num.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> wallDeleteComment(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.deleteComment", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.u
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1375wallDeleteComment$lambda17;
                m1375wallDeleteComment$lambda17 = WallService.m1375wallDeleteComment$lambda17(jsonElement);
                return m1375wallDeleteComment$lambda17;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallEditResponse> wallEdit(int i9, @Nullable UserId userId, @Nullable Boolean bool, @Nullable String str, @Nullable List<String> list, @Nullable String str2, @Nullable Boolean bool2, @Nullable Integer num, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable String str3, @Nullable String str4, @Nullable WallEditTopicId wallEditTopicId) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.edit", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.x
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallEditResponse m1376wallEdit$lambda20;
                m1376wallEdit$lambda20 = WallService.m1376wallEdit$lambda20(jsonElement);
                return m1376wallEdit$lambda20;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("friends_only", bool.booleanValue());
        }
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        if (str2 != null) {
            newApiRequest.addParam("services", str2);
        }
        if (bool2 != null) {
            newApiRequest.addParam("signed", bool2.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "publish_date", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (f10 != null) {
            newApiRequest.addParam("lat", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("long", f11.floatValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "place_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool3 != null) {
            newApiRequest.addParam("mark_as_ads", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("close_comments", bool4.booleanValue());
        }
        if (num3 != null) {
            newApiRequest.addParam("donut_paid_duration", num3.intValue());
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, "poster_bkg_id", num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (num5 != null) {
            newApiRequest.addParam("poster_bkg_owner_id", num5.intValue());
        }
        if (str3 != null) {
            newApiRequest.addParam("poster_bkg_access_hash", str3);
        }
        if (str4 != null) {
            newApiRequest.addParam("copyright", str4);
        }
        if (wallEditTopicId != null) {
            newApiRequest.addParam("topic_id", wallEditTopicId.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> wallEditAdsStealth(int i9, @Nullable UserId userId, @Nullable String str, @Nullable List<String> list, @Nullable Boolean bool, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.editAdsStealth", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1377wallEditAdsStealth$lambda40;
                m1377wallEditAdsStealth$lambda40 = WallService.m1377wallEditAdsStealth$lambda40(jsonElement);
                return m1377wallEditAdsStealth$lambda40;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, i9, 0, 0, 8, (Object) null);
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
            newApiRequest.addParam("signed", bool.booleanValue());
        }
        if (f10 != null) {
            newApiRequest.addParam("lat", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("long", f11.floatValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "place_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            newApiRequest.addParam("link_button", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("link_title", str3);
        }
        if (str4 != null) {
            newApiRequest.addParam("link_image", str4);
        }
        if (str5 != null) {
            newApiRequest.addParam("link_video", str5);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> wallEditComment(int i9, @Nullable UserId userId, @Nullable String str, @Nullable List<String> list) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.editComment", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1378wallEditComment$lambda53;
                m1378wallEditComment$lambda53 = WallService.m1378wallEditComment$lambda53(jsonElement);
                return m1378wallEditComment$lambda53;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
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
    public final VKRequest<WallGetResponse> wallGet(@Nullable UserId userId, @Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable String str2, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("wall.get", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallGetResponse m1379wallGet$lambda58;
                m1379wallGet$lambda58 = WallService.m1379wallGet$lambda58(jsonElement);
                return m1379wallGet$lambda58;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("domain", str);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            newApiRequest.addParam("filter", str2);
        }
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<WallWallpostFull>> wallGetById(@NotNull List<String> posts, @Nullable Integer num, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(posts, "posts");
        NewApiRequest newApiRequest = new NewApiRequest("wall.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.b0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1380wallGetById$lambda76;
                m1380wallGetById$lambda76 = WallService.m1380wallGetById$lambda76(jsonElement);
                return m1380wallGetById$lambda76;
            }
        });
        newApiRequest.addParam("posts", posts);
        if (num != null) {
            newApiRequest.addParam("copy_history_depth", num.intValue());
        }
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallGetByIdExtendedResponse> wallGetByIdExtended(@NotNull List<String> posts, @Nullable Integer num, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(posts, "posts");
        NewApiRequest newApiRequest = new NewApiRequest("wall.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.c0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallGetByIdExtendedResponse m1381wallGetByIdExtended$lambda81;
                m1381wallGetByIdExtended$lambda81 = WallService.m1381wallGetByIdExtended$lambda81(jsonElement);
                return m1381wallGetByIdExtended$lambda81;
            }
        });
        newApiRequest.addParam("posts", posts);
        newApiRequest.addParam("extended", true);
        if (num != null) {
            newApiRequest.addParam("copy_history_depth", num.intValue());
        }
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallGetCommentResponse> wallGetComment(int i9, @Nullable UserId userId, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("wall.getComment", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallGetCommentResponse m1382wallGetComment$lambda86;
                m1382wallGetComment$lambda86 = WallService.m1382wallGetComment$lambda86(jsonElement);
                return m1382wallGetComment$lambda86;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallGetCommentExtendedResponse> wallGetCommentExtended(int i9, @Nullable UserId userId, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("wall.getComment", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallGetCommentExtendedResponse m1383wallGetCommentExtended$lambda91;
                m1383wallGetCommentExtended$lambda91 = WallService.m1383wallGetCommentExtended$lambda91(jsonElement);
                return m1383wallGetCommentExtended$lambda91;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallGetCommentsResponse> wallGetComments(@Nullable UserId userId, @Nullable Integer num, @Nullable Boolean bool, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable WallGetCommentsSort wallGetCommentsSort, @Nullable Integer num5, @Nullable List<? extends BaseUserGroupFields> list, @Nullable Integer num6, @Nullable Integer num7) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("wall.getComments", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallGetCommentsResponse m1384wallGetComments$lambda96;
                m1384wallGetComments$lambda96 = WallService.m1384wallGetComments$lambda96(jsonElement);
                return m1384wallGetComments$lambda96;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("need_likes", bool.booleanValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_comment_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue());
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (wallGetCommentsSort != null) {
            newApiRequest.addParam("sort", wallGetCommentsSort.getValue());
        }
        if (num5 != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num5.intValue(), 0, 0, 8, (Object) null);
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
        if (num6 != null) {
            NewApiRequest.addParam$default(newApiRequest, "comment_id", num6.intValue(), 0, 0, 8, (Object) null);
        }
        if (num7 != null) {
            newApiRequest.addParam("thread_items_count", num7.intValue(), 0, 10);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallGetCommentsExtendedResponse> wallGetCommentsExtended(@Nullable UserId userId, @Nullable Integer num, @Nullable Boolean bool, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable WallGetCommentsExtendedSort wallGetCommentsExtendedSort, @Nullable Integer num5, @Nullable List<? extends BaseUserGroupFields> list, @Nullable Integer num6, @Nullable Integer num7) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("wall.getComments", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.s
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallGetCommentsExtendedResponse m1385wallGetCommentsExtended$lambda110;
                m1385wallGetCommentsExtended$lambda110 = WallService.m1385wallGetCommentsExtended$lambda110(jsonElement);
                return m1385wallGetCommentsExtended$lambda110;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("need_likes", bool.booleanValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_comment_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue());
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (wallGetCommentsExtendedSort != null) {
            newApiRequest.addParam("sort", wallGetCommentsExtendedSort.getValue());
        }
        if (num5 != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num5.intValue(), 0, 0, 8, (Object) null);
        }
        newApiRequest.addParam("extended", true);
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
        if (num6 != null) {
            NewApiRequest.addParam$default(newApiRequest, "comment_id", num6.intValue(), 0, 0, 8, (Object) null);
        }
        if (num7 != null) {
            newApiRequest.addParam("thread_items_count", num7.intValue(), 0, 10);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallGetExtendedResponse> wallGetExtended(@Nullable UserId userId, @Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable String str2, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("wall.get", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.w
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallGetExtendedResponse m1386wallGetExtended$lambda67;
                m1386wallGetExtended$lambda67 = WallService.m1386wallGetExtended$lambda67(jsonElement);
                return m1386wallGetExtended$lambda67;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("domain", str);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            newApiRequest.addParam("filter", str2);
        }
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallGetRepostsResponse> wallGetReposts(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.getReposts", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.y
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallGetRepostsResponse m1387wallGetReposts$lambda124;
                m1387wallGetReposts$lambda124 = WallService.m1387wallGetReposts$lambda124(jsonElement);
                return m1387wallGetReposts$lambda124;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> wallOpenComments(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("wall.openComments", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1388wallOpenComments$lambda130;
                m1388wallOpenComments$lambda130 = WallService.m1388wallOpenComments$lambda130(jsonElement);
                return m1388wallOpenComments$lambda130;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> wallPin(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.pin", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1389wallPin$lambda132;
                m1389wallPin$lambda132 = WallService.m1389wallPin$lambda132(jsonElement);
                return m1389wallPin$lambda132;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallPostResponse> wallPost(@Nullable UserId userId, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable String str, @Nullable List<String> list, @Nullable String str2, @Nullable Boolean bool3, @Nullable Integer num, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str3, @Nullable Boolean bool4, @Nullable Boolean bool5, @Nullable Integer num4, @Nullable Boolean bool6, @Nullable String str4, @Nullable WallPostTopicId wallPostTopicId) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.post", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallPostResponse m1390wallPost$lambda135;
                m1390wallPost$lambda135 = WallService.m1390wallPost$lambda135(jsonElement);
                return m1390wallPost$lambda135;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("friends_only", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("from_group", bool2.booleanValue());
        }
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        if (str2 != null) {
            newApiRequest.addParam("services", str2);
        }
        if (bool3 != null) {
            newApiRequest.addParam("signed", bool3.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "publish_date", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (f10 != null) {
            newApiRequest.addParam("lat", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("long", f11.floatValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "place_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (str3 != null) {
            newApiRequest.addParam(TPDownloadProxyEnum.USER_GUID, str3);
        }
        if (bool4 != null) {
            newApiRequest.addParam("mark_as_ads", bool4.booleanValue());
        }
        if (bool5 != null) {
            newApiRequest.addParam("close_comments", bool5.booleanValue());
        }
        if (num4 != null) {
            newApiRequest.addParam("donut_paid_duration", num4.intValue());
        }
        if (bool6 != null) {
            newApiRequest.addParam("mute_notifications", bool6.booleanValue());
        }
        if (str4 != null) {
            newApiRequest.addParam("copyright", str4);
        }
        if (wallPostTopicId != null) {
            newApiRequest.addParam("topic_id", wallPostTopicId.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallPostAdsStealthResponse> wallPostAdsStealth(@NotNull UserId ownerId, @Nullable String str, @Nullable List<String> list, @Nullable Boolean bool, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("wall.postAdsStealth", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.v
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallPostAdsStealthResponse m1391wallPostAdsStealth$lambda156;
                m1391wallPostAdsStealth$lambda156 = WallService.m1391wallPostAdsStealth$lambda156(jsonElement);
                return m1391wallPostAdsStealth$lambda156;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        if (bool != null) {
            newApiRequest.addParam("signed", bool.booleanValue());
        }
        if (f10 != null) {
            newApiRequest.addParam("lat", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("long", f11.floatValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "place_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            newApiRequest.addParam(TPDownloadProxyEnum.USER_GUID, str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("link_button", str3);
        }
        if (str4 != null) {
            newApiRequest.addParam("link_title", str4);
        }
        if (str5 != null) {
            newApiRequest.addParam("link_image", str5);
        }
        if (str6 != null) {
            newApiRequest.addParam("link_video", str6);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> wallReportComment(@NotNull UserId ownerId, int i9, @Nullable WallReportCommentReason wallReportCommentReason) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("wall.reportComment", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1392wallReportComment$lambda169;
                m1392wallReportComment$lambda169 = WallService.m1392wallReportComment$lambda169(jsonElement);
                return m1392wallReportComment$lambda169;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        if (wallReportCommentReason != null) {
            newApiRequest.addParam("reason", wallReportCommentReason.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> wallReportPost(@NotNull UserId ownerId, int i9, @Nullable WallReportPostReason wallReportPostReason) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("wall.reportPost", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1393wallReportPost$lambda172;
                m1393wallReportPost$lambda172 = WallService.m1393wallReportPost$lambda172(jsonElement);
                return m1393wallReportPost$lambda172;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, i9, 0, 0, 8, (Object) null);
        if (wallReportPostReason != null) {
            newApiRequest.addParam("reason", wallReportPostReason.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallRepostResponse> wallRepost(@NotNull String objectValue, @Nullable String str, @Nullable UserId userId, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(objectValue, "objectValue");
        NewApiRequest newApiRequest = new NewApiRequest("wall.repost", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallRepostResponse m1394wallRepost$lambda175;
                m1394wallRepost$lambda175 = WallService.m1394wallRepost$lambda175(jsonElement);
                return m1394wallRepost$lambda175;
            }
        });
        newApiRequest.addParam("object", objectValue);
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("mark_as_ads", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("mute_notifications", bool2.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> wallRestore(@Nullable UserId userId, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.restore", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.t
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1395wallRestore$lambda181;
                m1395wallRestore$lambda181 = WallService.m1395wallRestore$lambda181(jsonElement);
                return m1395wallRestore$lambda181;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, num.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> wallRestoreComment(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.restoreComment", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.z
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1396wallRestoreComment$lambda185;
                m1396wallRestoreComment$lambda185 = WallService.m1396wallRestoreComment$lambda185(jsonElement);
                return m1396wallRestoreComment$lambda185;
            }
        });
        newApiRequest.addParam("comment_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallSearchResponse> wallSearch(@Nullable UserId userId, @Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("wall.search", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.a0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallSearchResponse m1397wallSearch$lambda188;
                m1397wallSearch$lambda188 = WallService.m1397wallSearch$lambda188(jsonElement);
                return m1397wallSearch$lambda188;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("domain", str);
        }
        if (str2 != null) {
            NewApiRequest.addParam$default(newApiRequest, SearchIntents.EXTRA_QUERY, str2, 0, (int) ConnectionResult.NETWORK_ERROR, 4, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("owners_only", bool.booleanValue());
        }
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 100);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WallSearchExtendedResponse> wallSearchExtended(@Nullable UserId userId, @Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("wall.search", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WallSearchExtendedResponse m1398wallSearchExtended$lambda198;
                m1398wallSearchExtended$lambda198 = WallService.m1398wallSearchExtended$lambda198(jsonElement);
                return m1398wallSearchExtended$lambda198;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("domain", str);
        }
        if (str2 != null) {
            NewApiRequest.addParam$default(newApiRequest, SearchIntents.EXTRA_QUERY, str2, 0, (int) ConnectionResult.NETWORK_ERROR, 4, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("owners_only", bool.booleanValue());
        }
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 100);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> wallUnpin(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("wall.unpin", new ApiResponseParser() { // from class: com.vk.sdk.api.wall.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1399wallUnpin$lambda208;
                m1399wallUnpin$lambda208 = WallService.m1399wallUnpin$lambda208(jsonElement);
                return m1399wallUnpin$lambda208;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }
}
