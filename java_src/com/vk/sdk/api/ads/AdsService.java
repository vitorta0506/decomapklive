package com.vk.sdk.api.ads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.GraphRequest;
import com.facebook.appevents.UserDataStore;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.ugc.UGCTransitionRules;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.ads.dto.AdsAccount;
import com.vk.sdk.api.ads.dto.AdsAd;
import com.vk.sdk.api.ads.dto.AdsAdLayout;
import com.vk.sdk.api.ads.dto.AdsCampaign;
import com.vk.sdk.api.ads.dto.AdsCheckLinkLinkType;
import com.vk.sdk.api.ads.dto.AdsClient;
import com.vk.sdk.api.ads.dto.AdsCreateAdStatus;
import com.vk.sdk.api.ads.dto.AdsCreateCampaignStatus;
import com.vk.sdk.api.ads.dto.AdsCreateTargetGroupResponse;
import com.vk.sdk.api.ads.dto.AdsDemoStats;
import com.vk.sdk.api.ads.dto.AdsFloodStats;
import com.vk.sdk.api.ads.dto.AdsGetCampaignsFields;
import com.vk.sdk.api.ads.dto.AdsGetCategoriesResponse;
import com.vk.sdk.api.ads.dto.AdsGetDemographicsIdsType;
import com.vk.sdk.api.ads.dto.AdsGetDemographicsPeriod;
import com.vk.sdk.api.ads.dto.AdsGetLookalikeRequestsResponse;
import com.vk.sdk.api.ads.dto.AdsGetMusiciansResponse;
import com.vk.sdk.api.ads.dto.AdsGetPostsReachIdsType;
import com.vk.sdk.api.ads.dto.AdsGetStatisticsIdsType;
import com.vk.sdk.api.ads.dto.AdsGetStatisticsPeriod;
import com.vk.sdk.api.ads.dto.AdsGetStatisticsStatsFields;
import com.vk.sdk.api.ads.dto.AdsGetSuggestionsLang;
import com.vk.sdk.api.ads.dto.AdsGetSuggestionsSection;
import com.vk.sdk.api.ads.dto.AdsGetTargetingStatsAdFormat;
import com.vk.sdk.api.ads.dto.AdsGetUploadURLAdFormat;
import com.vk.sdk.api.ads.dto.AdsLinkStatus;
import com.vk.sdk.api.ads.dto.AdsPromotedPostReach;
import com.vk.sdk.api.ads.dto.AdsRejectReason;
import com.vk.sdk.api.ads.dto.AdsStats;
import com.vk.sdk.api.ads.dto.AdsTargSettings;
import com.vk.sdk.api.ads.dto.AdsTargStats;
import com.vk.sdk.api.ads.dto.AdsTargSuggestions;
import com.vk.sdk.api.ads.dto.AdsTargetGroup;
import com.vk.sdk.api.ads.dto.AdsUpdateOfficeUsersResult;
import com.vk.sdk.api.ads.dto.AdsUserSpecification;
import com.vk.sdk.api.ads.dto.AdsUserSpecificationCutted;
import com.vk.sdk.api.ads.dto.AdsUsers;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000²\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ5\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0012J\"\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0010J\"\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0010J\"\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0010J9\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00102\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u001dJM\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010$JA\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010(J\"\u0010)\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0010J\"\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0010J\"\u0010,\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0010J-\u0010-\u001a\b\u0012\u0004\u0012\u00020.0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u00100J-\u00101\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u00100J\u0012\u00102\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002030\t0\u0004Js\u00104\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002050\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010<Js\u0010=\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020>0\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010?Jg\u0010@\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020A0\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010BJ\u0014\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0006\u001a\u00020\u0007JU\u0010D\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020E0\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00102\u0010\b\u0002\u0010F\u001a\n\u0012\u0004\u0012\u00020G\u0018\u00010\t¢\u0006\u0002\u0010HJ\u0018\u0010I\u001a\b\u0012\u0004\u0012\u00020J0\u00042\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\u0010J\u001a\u0010L\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020M0\t0\u00042\u0006\u0010\u0006\u001a\u00020\u0007JB\u0010N\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020O0\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010P\u001a\u00020Q2\u0006\u0010*\u001a\u00020\u00102\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u00102\u0006\u0010U\u001a\u00020\u0010J\u0014\u0010V\u001a\b\u0012\u0004\u0012\u00020W0\u00042\u0006\u0010\u0006\u001a\u00020\u0007JU\u0010X\u001a\b\u0012\u0004\u0012\u00020Y0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010Z\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\\J\u0014\u0010]\u001a\b\u0012\u0004\u0012\u00020^0\u00042\u0006\u0010_\u001a\u00020\u0010J\u001a\u0010`\u001a\b\u0012\u0004\u0012\u00020^0\u00042\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070\tJ\u001a\u0010a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020b0\t0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J*\u0010c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020d0\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010P\u001a\u00020e2\u0006\u0010*\u001a\u00020\u0010J\u001c\u0010f\u001a\b\u0012\u0004\u0012\u00020g0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010h\u001a\u00020\u0007JT\u0010i\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020j0\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010P\u001a\u00020k2\u0006\u0010*\u001a\u00020\u00102\u0006\u0010R\u001a\u00020l2\u0006\u0010T\u001a\u00020\u00102\u0006\u0010U\u001a\u00020\u00102\u0010\b\u0002\u0010m\u001a\n\u0012\u0004\u0012\u00020n\u0018\u00010\tJ[\u0010o\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020p0\t0\u00042\u0006\u0010q\u001a\u00020r2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010s\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010u\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010K\u001a\u0004\u0018\u00010v¢\u0006\u0002\u0010wJ+\u0010x\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020y0\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010zJ%\u0010{\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010zJ®\u0001\u0010|\u001a\b\u0012\u0004\u0012\u00020}0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010~\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010h\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010\u007f\u001a\u0005\u0018\u00010\u0080\u00012\u000b\b\u0002\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00102\u000b\b\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00102\u000b\b\u0002\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00102\u000b\b\u0002\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00102\u000b\b\u0002\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00102\u000b\b\u0002\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00052\u000b\b\u0002\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0088\u0001J)\u0010\u0089\u0001\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\u0007\u0010\u007f\u001a\u00030\u008a\u00012\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u008c\u0001J\r\u0010\u008d\u0001\u001a\b\u0012\u0004\u0012\u00020\u00100\u0004J8\u0010\u008e\u0001\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0007\u0010\u008f\u0001\u001a\u00020\u00102\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0090\u0001J\u001d\u0010\u0091\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0010J8\u0010\u0092\u0001\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0007\u0010\u008f\u0001\u001a\u00020\u00102\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0090\u0001J9\u0010\u0093\u0001\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0007\u0010\u0094\u0001\u001a\u00020\u00072\u0007\u0010\u0095\u0001\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0096\u0001J<\u0010\u0097\u0001\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0099\u0001J#\u0010\u009a\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0010J\u001d\u0010\u009b\u0001\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0010J\u001d\u0010\u009c\u0001\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0010J+\u0010\u009d\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009e\u00010\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\r\u0010\b\u001a\t\u0012\u0005\u0012\u00030\u009f\u00010\tJc\u0010 \u0001\u001a\b\u0012\u0004\u0012\u00020.0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0010¢\u0006\u0003\u0010¡\u0001JK\u0010¢\u0001\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0010¢\u0006\u0003\u0010£\u0001¨\u0006¤\u0001"}, d2 = {"Lcom/vk/sdk/api/ads/AdsService;", "", "()V", "adsAddOfficeUsers", "Lcom/vk/api/sdk/requests/VKRequest;", "", "accountId", "", "data", "", "Lcom/vk/sdk/api/ads/dto/AdsUserSpecificationCutted;", "adsCheckLink", "Lcom/vk/sdk/api/ads/dto/AdsLinkStatus;", "linkType", "Lcom/vk/sdk/api/ads/dto/AdsCheckLinkLinkType;", "linkUrl", "", "campaignId", "(ILcom/vk/sdk/api/ads/dto/AdsCheckLinkLinkType;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsCreateAds", "Lcom/vk/sdk/api/ads/dto/AdsCreateAdStatus;", "adsCreateCampaigns", "Lcom/vk/sdk/api/ads/dto/AdsCreateCampaignStatus;", "adsCreateClients", "adsCreateLookalikeRequest", "", "sourceType", "clientId", "retargetingGroupId", "(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "adsCreateTargetGroup", "Lcom/vk/sdk/api/ads/dto/AdsCreateTargetGroupResponse;", "name", "lifetime", "targetPixelId", "targetPixelRules", "(ILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "adsCreateTargetPixel", "categoryId", "domain", "(ILjava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "adsDeleteAds", "ids", "adsDeleteCampaigns", "adsDeleteClients", "adsDeleteTargetGroup", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "targetGroupId", "(IILjava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsDeleteTargetPixel", "adsGetAccounts", "Lcom/vk/sdk/api/ads/dto/AdsAccount;", "adsGetAds", "Lcom/vk/sdk/api/ads/dto/AdsAd;", "adIds", "campaignIds", "includeDeleted", "onlyDeleted", "limit", TypedValues.CycleType.S_WAVE_OFFSET, "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsGetAdsLayout", "Lcom/vk/sdk/api/ads/dto/AdsAdLayout;", "(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsGetAdsTargeting", "Lcom/vk/sdk/api/ads/dto/AdsTargSettings;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsGetBudget", "adsGetCampaigns", "Lcom/vk/sdk/api/ads/dto/AdsCampaign;", GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/ads/dto/AdsGetCampaignsFields;", "(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "adsGetCategories", "Lcom/vk/sdk/api/ads/dto/AdsGetCategoriesResponse;", VKApiCodes.PARAM_LANG, "adsGetClients", "Lcom/vk/sdk/api/ads/dto/AdsClient;", "adsGetDemographics", "Lcom/vk/sdk/api/ads/dto/AdsDemoStats;", "idsType", "Lcom/vk/sdk/api/ads/dto/AdsGetDemographicsIdsType;", "period", "Lcom/vk/sdk/api/ads/dto/AdsGetDemographicsPeriod;", "dateFrom", "dateTo", "adsGetFloodStats", "Lcom/vk/sdk/api/ads/dto/AdsFloodStats;", "adsGetLookalikeRequests", "Lcom/vk/sdk/api/ads/dto/AdsGetLookalikeRequestsResponse;", "requestsIds", "sortBy", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "adsGetMusicians", "Lcom/vk/sdk/api/ads/dto/AdsGetMusiciansResponse;", "artistName", "adsGetMusiciansByIds", "adsGetOfficeUsers", "Lcom/vk/sdk/api/ads/dto/AdsUsers;", "adsGetPostsReach", "Lcom/vk/sdk/api/ads/dto/AdsPromotedPostReach;", "Lcom/vk/sdk/api/ads/dto/AdsGetPostsReachIdsType;", "adsGetRejectionReason", "Lcom/vk/sdk/api/ads/dto/AdsRejectReason;", "adId", "adsGetStatistics", "Lcom/vk/sdk/api/ads/dto/AdsStats;", "Lcom/vk/sdk/api/ads/dto/AdsGetStatisticsIdsType;", "Lcom/vk/sdk/api/ads/dto/AdsGetStatisticsPeriod;", "statsFields", "Lcom/vk/sdk/api/ads/dto/AdsGetStatisticsStatsFields;", "adsGetSuggestions", "Lcom/vk/sdk/api/ads/dto/AdsTargSuggestions;", "section", "Lcom/vk/sdk/api/ads/dto/AdsGetSuggestionsSection;", "q", UserDataStore.COUNTRY, "cities", "Lcom/vk/sdk/api/ads/dto/AdsGetSuggestionsLang;", "(Lcom/vk/sdk/api/ads/dto/AdsGetSuggestionsSection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/ads/dto/AdsGetSuggestionsLang;)Lcom/vk/api/sdk/requests/VKRequest;", "adsGetTargetGroups", "Lcom/vk/sdk/api/ads/dto/AdsTargetGroup;", "(ILjava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsGetTargetPixels", "adsGetTargetingStats", "Lcom/vk/sdk/api/ads/dto/AdsTargStats;", "criteria", "adFormat", "Lcom/vk/sdk/api/ads/dto/AdsGetTargetingStatsAdFormat;", "adPlatform", "adPlatformNoWall", "adPlatformNoAdNetwork", "publisherPlatforms", "linkDomain", "needPrecise", "impressionsLimitPeriod", "(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/ads/dto/AdsGetTargetingStatsAdFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsGetUploadURL", "Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;", RemoteMessageConst.Notification.ICON, "(Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsGetVideoUploadURL", "adsImportTargetContacts", "contacts", "(IILjava/lang/String;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsRemoveOfficeUsers", "adsRemoveTargetContacts", "adsSaveLookalikeRequestResult", "requestId", "level", "(IIILjava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsShareTargetGroup", "shareWithClientId", "(IILjava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "adsUpdateAds", "adsUpdateCampaigns", "adsUpdateClients", "adsUpdateOfficeUsers", "Lcom/vk/sdk/api/ads/dto/AdsUpdateOfficeUsersResult;", "Lcom/vk/sdk/api/ads/dto/AdsUserSpecification;", "adsUpdateTargetGroup", "(IILjava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "adsUpdateTargetPixel", "(IILjava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsAddOfficeUsers$lambda-0  reason: not valid java name */
    public static final Boolean m864adsAddOfficeUsers$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Boolean) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Boolean.TYPE);
    }

    public static /* synthetic */ VKRequest adsCheckLink$default(AdsService adsService, int i9, AdsCheckLinkLinkType adsCheckLinkLinkType, String str, Integer num, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            num = null;
        }
        return adsService.adsCheckLink(i9, adsCheckLinkLinkType, str, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsCheckLink$lambda-2  reason: not valid java name */
    public static final AdsLinkStatus m865adsCheckLink$lambda2(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AdsLinkStatus) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AdsLinkStatus.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsCreateAds$lambda-5  reason: not valid java name */
    public static final List m866adsCreateAds$lambda5(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsCreateAdStatus>>() { // from class: com.vk.sdk.api.ads.AdsService$adsCreateAds$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsCreateCampaigns$lambda-7  reason: not valid java name */
    public static final List m867adsCreateCampaigns$lambda7(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsCreateCampaignStatus>>() { // from class: com.vk.sdk.api.ads.AdsService$adsCreateCampaigns$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsCreateClients$lambda-9  reason: not valid java name */
    public static final List m868adsCreateClients$lambda9(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends Integer>>() { // from class: com.vk.sdk.api.ads.AdsService$adsCreateClients$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest adsCreateLookalikeRequest$default(AdsService adsService, int i9, String str, Integer num, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            str2 = null;
        }
        return adsService.adsCreateLookalikeRequest(i9, str, num, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsCreateLookalikeRequest$lambda-11  reason: not valid java name */
    public static final Unit m869adsCreateLookalikeRequest$lambda11(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsCreateTargetGroup$lambda-15  reason: not valid java name */
    public static final AdsCreateTargetGroupResponse m870adsCreateTargetGroup$lambda15(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AdsCreateTargetGroupResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AdsCreateTargetGroupResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsCreateTargetPixel$lambda-20  reason: not valid java name */
    public static final Unit m871adsCreateTargetPixel$lambda20(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsDeleteAds$lambda-24  reason: not valid java name */
    public static final List m872adsDeleteAds$lambda24(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends Integer>>() { // from class: com.vk.sdk.api.ads.AdsService$adsDeleteAds$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsDeleteCampaigns$lambda-26  reason: not valid java name */
    public static final List m873adsDeleteCampaigns$lambda26(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends Integer>>() { // from class: com.vk.sdk.api.ads.AdsService$adsDeleteCampaigns$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsDeleteClients$lambda-28  reason: not valid java name */
    public static final List m874adsDeleteClients$lambda28(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends Integer>>() { // from class: com.vk.sdk.api.ads.AdsService$adsDeleteClients$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest adsDeleteTargetGroup$default(AdsService adsService, int i9, int i10, Integer num, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num = null;
        }
        return adsService.adsDeleteTargetGroup(i9, i10, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsDeleteTargetGroup$lambda-30  reason: not valid java name */
    public static final BaseOkResponse m875adsDeleteTargetGroup$lambda30(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest adsDeleteTargetPixel$default(AdsService adsService, int i9, int i10, Integer num, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num = null;
        }
        return adsService.adsDeleteTargetPixel(i9, i10, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsDeleteTargetPixel$lambda-33  reason: not valid java name */
    public static final Unit m876adsDeleteTargetPixel$lambda33(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetAccounts$lambda-36  reason: not valid java name */
    public static final List m877adsGetAccounts$lambda36(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsAccount>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetAccounts$1$typeToken$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…sAccount>>(it, typeToken)");
        return (List) fromJson;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetAds$lambda-37  reason: not valid java name */
    public static final List m878adsGetAds$lambda37(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsAd>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetAds$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetAdsLayout$lambda-46  reason: not valid java name */
    public static final List m879adsGetAdsLayout$lambda46(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsAdLayout>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetAdsLayout$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetAdsTargeting$lambda-55  reason: not valid java name */
    public static final List m880adsGetAdsTargeting$lambda55(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsTargSettings>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetAdsTargeting$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetBudget$lambda-63  reason: not valid java name */
    public static final Integer m881adsGetBudget$lambda63(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetCampaigns$lambda-65  reason: not valid java name */
    public static final List m882adsGetCampaigns$lambda65(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsCampaign>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetCampaigns$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest adsGetCategories$default(AdsService adsService, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        return adsService.adsGetCategories(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetCategories$lambda-72  reason: not valid java name */
    public static final AdsGetCategoriesResponse m883adsGetCategories$lambda72(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AdsGetCategoriesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AdsGetCategoriesResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetClients$lambda-75  reason: not valid java name */
    public static final List m884adsGetClients$lambda75(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsClient>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetClients$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetDemographics$lambda-77  reason: not valid java name */
    public static final List m885adsGetDemographics$lambda77(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsDemoStats>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetDemographics$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetFloodStats$lambda-79  reason: not valid java name */
    public static final AdsFloodStats m886adsGetFloodStats$lambda79(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AdsFloodStats) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AdsFloodStats.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetLookalikeRequests$lambda-81  reason: not valid java name */
    public static final AdsGetLookalikeRequestsResponse m887adsGetLookalikeRequests$lambda81(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AdsGetLookalikeRequestsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AdsGetLookalikeRequestsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetMusicians$lambda-88  reason: not valid java name */
    public static final AdsGetMusiciansResponse m888adsGetMusicians$lambda88(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AdsGetMusiciansResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AdsGetMusiciansResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetMusiciansByIds$lambda-90  reason: not valid java name */
    public static final AdsGetMusiciansResponse m889adsGetMusiciansByIds$lambda90(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AdsGetMusiciansResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AdsGetMusiciansResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetOfficeUsers$lambda-92  reason: not valid java name */
    public static final List m890adsGetOfficeUsers$lambda92(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsUsers>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetOfficeUsers$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetPostsReach$lambda-94  reason: not valid java name */
    public static final List m891adsGetPostsReach$lambda94(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsPromotedPostReach>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetPostsReach$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetRejectionReason$lambda-96  reason: not valid java name */
    public static final AdsRejectReason m892adsGetRejectionReason$lambda96(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AdsRejectReason) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AdsRejectReason.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetStatistics$lambda-98  reason: not valid java name */
    public static final List m893adsGetStatistics$lambda98(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsStats>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetStatistics$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetSuggestions$lambda-102  reason: not valid java name */
    public static final List m894adsGetSuggestions$lambda102(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsTargSuggestions>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetSuggestions$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest adsGetTargetGroups$default(AdsService adsService, int i9, Integer num, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        return adsService.adsGetTargetGroups(i9, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetTargetGroups$lambda-109  reason: not valid java name */
    public static final List m895adsGetTargetGroups$lambda109(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsTargetGroup>>() { // from class: com.vk.sdk.api.ads.AdsService$adsGetTargetGroups$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest adsGetTargetPixels$default(AdsService adsService, int i9, Integer num, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        return adsService.adsGetTargetPixels(i9, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetTargetPixels$lambda-112  reason: not valid java name */
    public static final Unit m896adsGetTargetPixels$lambda112(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetTargetingStats$lambda-115  reason: not valid java name */
    public static final AdsTargStats m897adsGetTargetingStats$lambda115(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AdsTargStats) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AdsTargStats.class);
    }

    public static /* synthetic */ VKRequest adsGetUploadURL$default(AdsService adsService, AdsGetUploadURLAdFormat adsGetUploadURLAdFormat, Integer num, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        return adsService.adsGetUploadURL(adsGetUploadURLAdFormat, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetUploadURL$lambda-128  reason: not valid java name */
    public static final String m898adsGetUploadURL$lambda128(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (String) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) String.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsGetVideoUploadURL$lambda-131  reason: not valid java name */
    public static final String m899adsGetVideoUploadURL$lambda131(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) String.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson(it, String::class.java)");
        return (String) fromJson;
    }

    public static /* synthetic */ VKRequest adsImportTargetContacts$default(AdsService adsService, int i9, int i10, String str, Integer num, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            num = null;
        }
        return adsService.adsImportTargetContacts(i9, i10, str, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsImportTargetContacts$lambda-132  reason: not valid java name */
    public static final Integer m900adsImportTargetContacts$lambda132(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsRemoveOfficeUsers$lambda-135  reason: not valid java name */
    public static final Boolean m901adsRemoveOfficeUsers$lambda135(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Boolean) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Boolean.TYPE);
    }

    public static /* synthetic */ VKRequest adsRemoveTargetContacts$default(AdsService adsService, int i9, int i10, String str, Integer num, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            num = null;
        }
        return adsService.adsRemoveTargetContacts(i9, i10, str, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsRemoveTargetContacts$lambda-137  reason: not valid java name */
    public static final Unit m902adsRemoveTargetContacts$lambda137(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public static /* synthetic */ VKRequest adsSaveLookalikeRequestResult$default(AdsService adsService, int i9, int i10, int i11, Integer num, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            num = null;
        }
        return adsService.adsSaveLookalikeRequestResult(i9, i10, i11, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsSaveLookalikeRequestResult$lambda-140  reason: not valid java name */
    public static final Unit m903adsSaveLookalikeRequestResult$lambda140(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public static /* synthetic */ VKRequest adsShareTargetGroup$default(AdsService adsService, int i9, int i10, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num = null;
        }
        if ((i11 & 8) != 0) {
            num2 = null;
        }
        return adsService.adsShareTargetGroup(i9, i10, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsShareTargetGroup$lambda-143  reason: not valid java name */
    public static final Unit m904adsShareTargetGroup$lambda143(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsUpdateAds$lambda-147  reason: not valid java name */
    public static final List m905adsUpdateAds$lambda147(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends Integer>>() { // from class: com.vk.sdk.api.ads.AdsService$adsUpdateAds$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsUpdateCampaigns$lambda-149  reason: not valid java name */
    public static final Integer m906adsUpdateCampaigns$lambda149(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsUpdateClients$lambda-151  reason: not valid java name */
    public static final Integer m907adsUpdateClients$lambda151(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsUpdateOfficeUsers$lambda-153  reason: not valid java name */
    public static final List m908adsUpdateOfficeUsers$lambda153(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AdsUpdateOfficeUsersResult>>() { // from class: com.vk.sdk.api.ads.AdsService$adsUpdateOfficeUsers$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsUpdateTargetGroup$lambda-155  reason: not valid java name */
    public static final BaseOkResponse m909adsUpdateTargetGroup$lambda155(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adsUpdateTargetPixel$lambda-161  reason: not valid java name */
    public static final Unit m910adsUpdateTargetPixel$lambda161(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    @NotNull
    public final VKRequest<Boolean> adsAddOfficeUsers(int i9, @NotNull List<AdsUserSpecificationCutted> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        NewApiRequest newApiRequest = new NewApiRequest("ads.addOfficeUsers", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Boolean m864adsAddOfficeUsers$lambda0;
                m864adsAddOfficeUsers$lambda0 = AdsService.m864adsAddOfficeUsers$lambda0(jsonElement);
                return m864adsAddOfficeUsers$lambda0;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("data", GsonHolder.INSTANCE.getGson().toJson(data));
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AdsLinkStatus> adsCheckLink(int i9, @NotNull AdsCheckLinkLinkType linkType, @NotNull String linkUrl, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(linkType, "linkType");
        Intrinsics.checkNotNullParameter(linkUrl, "linkUrl");
        NewApiRequest newApiRequest = new NewApiRequest("ads.checkLink", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.u
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AdsLinkStatus m865adsCheckLink$lambda2;
                m865adsCheckLink$lambda2 = AdsService.m865adsCheckLink$lambda2(jsonElement);
                return m865adsCheckLink$lambda2;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("link_type", linkType.getValue());
        newApiRequest.addParam("link_url", linkUrl);
        if (num != null) {
            newApiRequest.addParam("campaign_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsCreateAdStatus>> adsCreateAds(int i9, @NotNull String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        NewApiRequest newApiRequest = new NewApiRequest("ads.createAds", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.q0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m866adsCreateAds$lambda5;
                m866adsCreateAds$lambda5 = AdsService.m866adsCreateAds$lambda5(jsonElement);
                return m866adsCreateAds$lambda5;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("data", data);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsCreateCampaignStatus>> adsCreateCampaigns(int i9, @NotNull String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        NewApiRequest newApiRequest = new NewApiRequest("ads.createCampaigns", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.o0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m867adsCreateCampaigns$lambda7;
                m867adsCreateCampaigns$lambda7 = AdsService.m867adsCreateCampaigns$lambda7(jsonElement);
                return m867adsCreateCampaigns$lambda7;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("data", data);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<Integer>> adsCreateClients(int i9, @NotNull String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        NewApiRequest newApiRequest = new NewApiRequest("ads.createClients", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.t0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m868adsCreateClients$lambda9;
                m868adsCreateClients$lambda9 = AdsService.m868adsCreateClients$lambda9(jsonElement);
                return m868adsCreateClients$lambda9;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("data", data);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Unit> adsCreateLookalikeRequest(int i9, @NotNull String sourceType, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(sourceType, "sourceType");
        NewApiRequest newApiRequest = new NewApiRequest("ads.createLookalikeRequest", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.u0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m869adsCreateLookalikeRequest$lambda11;
                m869adsCreateLookalikeRequest$lambda11 = AdsService.m869adsCreateLookalikeRequest$lambda11(jsonElement);
                return m869adsCreateLookalikeRequest$lambda11;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("source_type", sourceType);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("retargeting_group_id", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AdsCreateTargetGroupResponse> adsCreateTargetGroup(int i9, @NotNull String name, int i10, @Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        NewApiRequest newApiRequest = new NewApiRequest("ads.createTargetGroup", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.w
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AdsCreateTargetGroupResponse m870adsCreateTargetGroup$lambda15;
                m870adsCreateTargetGroup$lambda15 = AdsService.m870adsCreateTargetGroup$lambda15(jsonElement);
                return m870adsCreateTargetGroup$lambda15;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("name", name);
        newApiRequest.addParam("lifetime", i10, 1, UGCTransitionRules.DEFAULT_IMAGE_WIDTH);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam("target_pixel_id", num2.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("target_pixel_rules", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Unit> adsCreateTargetPixel(int i9, @NotNull String name, int i10, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        NewApiRequest newApiRequest = new NewApiRequest("ads.createTargetPixel", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.x
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m871adsCreateTargetPixel$lambda20;
                m871adsCreateTargetPixel$lambda20 = AdsService.m871adsCreateTargetPixel$lambda20(jsonElement);
                return m871adsCreateTargetPixel$lambda20;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("name", name);
        newApiRequest.addParam("category_id", i10);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("domain", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<Integer>> adsDeleteAds(int i9, @NotNull String ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        NewApiRequest newApiRequest = new NewApiRequest("ads.deleteAds", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.b0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m872adsDeleteAds$lambda24;
                m872adsDeleteAds$lambda24 = AdsService.m872adsDeleteAds$lambda24(jsonElement);
                return m872adsDeleteAds$lambda24;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("ids", ids);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<Integer>> adsDeleteCampaigns(int i9, @NotNull String ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        NewApiRequest newApiRequest = new NewApiRequest("ads.deleteCampaigns", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m873adsDeleteCampaigns$lambda26;
                m873adsDeleteCampaigns$lambda26 = AdsService.m873adsDeleteCampaigns$lambda26(jsonElement);
                return m873adsDeleteCampaigns$lambda26;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("ids", ids);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<Integer>> adsDeleteClients(int i9, @NotNull String ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        NewApiRequest newApiRequest = new NewApiRequest("ads.deleteClients", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.p0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m874adsDeleteClients$lambda28;
                m874adsDeleteClients$lambda28 = AdsService.m874adsDeleteClients$lambda28(jsonElement);
                return m874adsDeleteClients$lambda28;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("ids", ids);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> adsDeleteTargetGroup(int i9, int i10, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.deleteTargetGroup", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.z
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m875adsDeleteTargetGroup$lambda30;
                m875adsDeleteTargetGroup$lambda30 = AdsService.m875adsDeleteTargetGroup$lambda30(jsonElement);
                return m875adsDeleteTargetGroup$lambda30;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("target_group_id", i10);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Unit> adsDeleteTargetPixel(int i9, int i10, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.deleteTargetPixel", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m876adsDeleteTargetPixel$lambda33;
                m876adsDeleteTargetPixel$lambda33 = AdsService.m876adsDeleteTargetPixel$lambda33(jsonElement);
                return m876adsDeleteTargetPixel$lambda33;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("target_pixel_id", i10);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsAccount>> adsGetAccounts() {
        return new NewApiRequest("ads.getAccounts", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.s0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m877adsGetAccounts$lambda36;
                m877adsGetAccounts$lambda36 = AdsService.m877adsGetAccounts$lambda36(jsonElement);
                return m877adsGetAccounts$lambda36;
            }
        });
    }

    @NotNull
    public final VKRequest<List<AdsAd>> adsGetAds(int i9, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getAds", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m878adsGetAds$lambda37;
                m878adsGetAds$lambda37 = AdsService.m878adsGetAds$lambda37(jsonElement);
                return m878adsGetAds$lambda37;
            }
        });
        newApiRequest.addParam("account_id", i9);
        if (str != null) {
            newApiRequest.addParam("ad_ids", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("campaign_ids", str2);
        }
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (bool != null) {
            newApiRequest.addParam("include_deleted", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("only_deleted", bool2.booleanValue());
        }
        if (num2 != null) {
            newApiRequest.addParam("limit", num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsAdLayout>> adsGetAdsLayout(int i9, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable String str, @Nullable String str2, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getAdsLayout", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m879adsGetAdsLayout$lambda46;
                m879adsGetAdsLayout$lambda46 = AdsService.m879adsGetAdsLayout$lambda46(jsonElement);
                return m879adsGetAdsLayout$lambda46;
            }
        });
        newApiRequest.addParam("account_id", i9);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (bool != null) {
            newApiRequest.addParam("include_deleted", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("only_deleted", bool2.booleanValue());
        }
        if (str != null) {
            newApiRequest.addParam("campaign_ids", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("ad_ids", str2);
        }
        if (num2 != null) {
            newApiRequest.addParam("limit", num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsTargSettings>> adsGetAdsTargeting(int i9, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Boolean bool, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getAdsTargeting", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m880adsGetAdsTargeting$lambda55;
                m880adsGetAdsTargeting$lambda55 = AdsService.m880adsGetAdsTargeting$lambda55(jsonElement);
                return m880adsGetAdsTargeting$lambda55;
            }
        });
        newApiRequest.addParam("account_id", i9);
        if (str != null) {
            newApiRequest.addParam("ad_ids", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("campaign_ids", str2);
        }
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (bool != null) {
            newApiRequest.addParam("include_deleted", bool.booleanValue());
        }
        if (num2 != null) {
            newApiRequest.addParam("limit", num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> adsGetBudget(int i9) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getBudget", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.e0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m881adsGetBudget$lambda63;
                m881adsGetBudget$lambda63 = AdsService.m881adsGetBudget$lambda63(jsonElement);
                return m881adsGetBudget$lambda63;
            }
        });
        newApiRequest.addParam("account_id", i9);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsCampaign>> adsGetCampaigns(int i9, @Nullable Integer num, @Nullable Boolean bool, @Nullable String str, @Nullable List<? extends AdsGetCampaignsFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("ads.getCampaigns", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.v
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m882adsGetCampaigns$lambda65;
                m882adsGetCampaigns$lambda65 = AdsService.m882adsGetCampaigns$lambda65(jsonElement);
                return m882adsGetCampaigns$lambda65;
            }
        });
        newApiRequest.addParam("account_id", i9);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (bool != null) {
            newApiRequest.addParam("include_deleted", bool.booleanValue());
        }
        if (str != null) {
            newApiRequest.addParam("campaign_ids", str);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (AdsGetCampaignsFields adsGetCampaignsFields : list) {
                arrayList.add(adsGetCampaignsFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AdsGetCategoriesResponse> adsGetCategories(@Nullable String str) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getCategories", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AdsGetCategoriesResponse m883adsGetCategories$lambda72;
                m883adsGetCategories$lambda72 = AdsService.m883adsGetCategories$lambda72(jsonElement);
                return m883adsGetCategories$lambda72;
            }
        });
        if (str != null) {
            newApiRequest.addParam(VKApiCodes.PARAM_LANG, str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsClient>> adsGetClients(int i9) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getClients", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m884adsGetClients$lambda75;
                m884adsGetClients$lambda75 = AdsService.m884adsGetClients$lambda75(jsonElement);
                return m884adsGetClients$lambda75;
            }
        });
        newApiRequest.addParam("account_id", i9);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsDemoStats>> adsGetDemographics(int i9, @NotNull AdsGetDemographicsIdsType idsType, @NotNull String ids, @NotNull AdsGetDemographicsPeriod period, @NotNull String dateFrom, @NotNull String dateTo) {
        Intrinsics.checkNotNullParameter(idsType, "idsType");
        Intrinsics.checkNotNullParameter(ids, "ids");
        Intrinsics.checkNotNullParameter(period, "period");
        Intrinsics.checkNotNullParameter(dateFrom, "dateFrom");
        Intrinsics.checkNotNullParameter(dateTo, "dateTo");
        NewApiRequest newApiRequest = new NewApiRequest("ads.getDemographics", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.h0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m885adsGetDemographics$lambda77;
                m885adsGetDemographics$lambda77 = AdsService.m885adsGetDemographics$lambda77(jsonElement);
                return m885adsGetDemographics$lambda77;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("ids_type", idsType.getValue());
        newApiRequest.addParam("ids", ids);
        newApiRequest.addParam("period", period.getValue());
        newApiRequest.addParam("date_from", dateFrom);
        newApiRequest.addParam("date_to", dateTo);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AdsFloodStats> adsGetFloodStats(int i9) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getFloodStats", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AdsFloodStats m886adsGetFloodStats$lambda79;
                m886adsGetFloodStats$lambda79 = AdsService.m886adsGetFloodStats$lambda79(jsonElement);
                return m886adsGetFloodStats$lambda79;
            }
        });
        newApiRequest.addParam("account_id", i9);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AdsGetLookalikeRequestsResponse> adsGetLookalikeRequests(int i9, @Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getLookalikeRequests", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AdsGetLookalikeRequestsResponse m887adsGetLookalikeRequests$lambda81;
                m887adsGetLookalikeRequests$lambda81 = AdsService.m887adsGetLookalikeRequests$lambda81(jsonElement);
                return m887adsGetLookalikeRequests$lambda81;
            }
        });
        newApiRequest.addParam("account_id", i9);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("requests_ids", str);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam("limit", num3.intValue(), 0, 200);
        }
        if (str2 != null) {
            newApiRequest.addParam("sort_by", str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AdsGetMusiciansResponse> adsGetMusicians(@NotNull String artistName) {
        Intrinsics.checkNotNullParameter(artistName, "artistName");
        NewApiRequest newApiRequest = new NewApiRequest("ads.getMusicians", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.a0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AdsGetMusiciansResponse m888adsGetMusicians$lambda88;
                m888adsGetMusicians$lambda88 = AdsService.m888adsGetMusicians$lambda88(jsonElement);
                return m888adsGetMusicians$lambda88;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "artist_name", artistName, 3, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AdsGetMusiciansResponse> adsGetMusiciansByIds(@NotNull List<Integer> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        NewApiRequest newApiRequest = new NewApiRequest("ads.getMusiciansByIds", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AdsGetMusiciansResponse m889adsGetMusiciansByIds$lambda90;
                m889adsGetMusiciansByIds$lambda90 = AdsService.m889adsGetMusiciansByIds$lambda90(jsonElement);
                return m889adsGetMusiciansByIds$lambda90;
            }
        });
        newApiRequest.addParam("ids", ids);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsUsers>> adsGetOfficeUsers(int i9) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getOfficeUsers", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m890adsGetOfficeUsers$lambda92;
                m890adsGetOfficeUsers$lambda92 = AdsService.m890adsGetOfficeUsers$lambda92(jsonElement);
                return m890adsGetOfficeUsers$lambda92;
            }
        });
        newApiRequest.addParam("account_id", i9);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsPromotedPostReach>> adsGetPostsReach(int i9, @NotNull AdsGetPostsReachIdsType idsType, @NotNull String ids) {
        Intrinsics.checkNotNullParameter(idsType, "idsType");
        Intrinsics.checkNotNullParameter(ids, "ids");
        NewApiRequest newApiRequest = new NewApiRequest("ads.getPostsReach", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.k0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m891adsGetPostsReach$lambda94;
                m891adsGetPostsReach$lambda94 = AdsService.m891adsGetPostsReach$lambda94(jsonElement);
                return m891adsGetPostsReach$lambda94;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("ids_type", idsType.getValue());
        newApiRequest.addParam("ids", ids);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AdsRejectReason> adsGetRejectionReason(int i9, int i10) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getRejectionReason", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AdsRejectReason m892adsGetRejectionReason$lambda96;
                m892adsGetRejectionReason$lambda96 = AdsService.m892adsGetRejectionReason$lambda96(jsonElement);
                return m892adsGetRejectionReason$lambda96;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("ad_id", i10);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsStats>> adsGetStatistics(int i9, @NotNull AdsGetStatisticsIdsType idsType, @NotNull String ids, @NotNull AdsGetStatisticsPeriod period, @NotNull String dateFrom, @NotNull String dateTo, @Nullable List<? extends AdsGetStatisticsStatsFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(idsType, "idsType");
        Intrinsics.checkNotNullParameter(ids, "ids");
        Intrinsics.checkNotNullParameter(period, "period");
        Intrinsics.checkNotNullParameter(dateFrom, "dateFrom");
        Intrinsics.checkNotNullParameter(dateTo, "dateTo");
        NewApiRequest newApiRequest = new NewApiRequest("ads.getStatistics", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.d0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m893adsGetStatistics$lambda98;
                m893adsGetStatistics$lambda98 = AdsService.m893adsGetStatistics$lambda98(jsonElement);
                return m893adsGetStatistics$lambda98;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("ids_type", idsType.getValue());
        newApiRequest.addParam("ids", ids);
        newApiRequest.addParam("period", period.getValue());
        newApiRequest.addParam("date_from", dateFrom);
        newApiRequest.addParam("date_to", dateTo);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (AdsGetStatisticsStatsFields adsGetStatisticsStatsFields : list) {
                arrayList.add(adsGetStatisticsStatsFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam("stats_fields", (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsTargSuggestions>> adsGetSuggestions(@NotNull AdsGetSuggestionsSection section, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable AdsGetSuggestionsLang adsGetSuggestionsLang) {
        Intrinsics.checkNotNullParameter(section, "section");
        NewApiRequest newApiRequest = new NewApiRequest("ads.getSuggestions", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.m0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m894adsGetSuggestions$lambda102;
                m894adsGetSuggestions$lambda102 = AdsService.m894adsGetSuggestions$lambda102(jsonElement);
                return m894adsGetSuggestions$lambda102;
            }
        });
        newApiRequest.addParam("section", section.getValue());
        if (str != null) {
            newApiRequest.addParam("ids", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("q", str2);
        }
        if (num != null) {
            newApiRequest.addParam(UserDataStore.COUNTRY, num.intValue());
        }
        if (str3 != null) {
            newApiRequest.addParam("cities", str3);
        }
        if (adsGetSuggestionsLang != null) {
            newApiRequest.addParam(VKApiCodes.PARAM_LANG, adsGetSuggestionsLang.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsTargetGroup>> adsGetTargetGroups(int i9, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getTargetGroups", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m895adsGetTargetGroups$lambda109;
                m895adsGetTargetGroups$lambda109 = AdsService.m895adsGetTargetGroups$lambda109(jsonElement);
                return m895adsGetTargetGroups$lambda109;
            }
        });
        newApiRequest.addParam("account_id", i9);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Unit> adsGetTargetPixels(int i9, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.getTargetPixels", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.y
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m896adsGetTargetPixels$lambda112;
                m896adsGetTargetPixels$lambda112 = AdsService.m896adsGetTargetPixels$lambda112(jsonElement);
                return m896adsGetTargetPixels$lambda112;
            }
        });
        newApiRequest.addParam("account_id", i9);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AdsTargStats> adsGetTargetingStats(int i9, @NotNull String linkUrl, @Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable AdsGetTargetingStatsAdFormat adsGetTargetingStatsAdFormat, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Boolean bool, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(linkUrl, "linkUrl");
        NewApiRequest newApiRequest = new NewApiRequest("ads.getTargetingStats", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.c0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AdsTargStats m897adsGetTargetingStats$lambda115;
                m897adsGetTargetingStats$lambda115 = AdsService.m897adsGetTargetingStats$lambda115(jsonElement);
                return m897adsGetTargetingStats$lambda115;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("link_url", linkUrl);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("criteria", str);
        }
        if (num2 != null) {
            newApiRequest.addParam("ad_id", num2.intValue());
        }
        if (adsGetTargetingStatsAdFormat != null) {
            newApiRequest.addParam("ad_format", adsGetTargetingStatsAdFormat.getValue());
        }
        if (str2 != null) {
            newApiRequest.addParam("ad_platform", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("ad_platform_no_wall", str3);
        }
        if (str4 != null) {
            newApiRequest.addParam("ad_platform_no_ad_network", str4);
        }
        if (str5 != null) {
            newApiRequest.addParam("publisher_platforms", str5);
        }
        if (str6 != null) {
            newApiRequest.addParam("link_domain", str6);
        }
        if (bool != null) {
            newApiRequest.addParam("need_precise", bool.booleanValue());
        }
        if (num3 != null) {
            newApiRequest.addParam("impressions_limit_period", num3.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<String> adsGetUploadURL(@NotNull AdsGetUploadURLAdFormat adFormat, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        NewApiRequest newApiRequest = new NewApiRequest("ads.getUploadURL", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                String m898adsGetUploadURL$lambda128;
                m898adsGetUploadURL$lambda128 = AdsService.m898adsGetUploadURL$lambda128(jsonElement);
                return m898adsGetUploadURL$lambda128;
            }
        });
        newApiRequest.addParam("ad_format", adFormat.getValue());
        if (num != null) {
            newApiRequest.addParam(RemoteMessageConst.Notification.ICON, num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<String> adsGetVideoUploadURL() {
        return new NewApiRequest("ads.getVideoUploadURL", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                String m899adsGetVideoUploadURL$lambda131;
                m899adsGetVideoUploadURL$lambda131 = AdsService.m899adsGetVideoUploadURL$lambda131(jsonElement);
                return m899adsGetVideoUploadURL$lambda131;
            }
        });
    }

    @NotNull
    public final VKRequest<Integer> adsImportTargetContacts(int i9, int i10, @NotNull String contacts, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(contacts, "contacts");
        NewApiRequest newApiRequest = new NewApiRequest("ads.importTargetContacts", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.g0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m900adsImportTargetContacts$lambda132;
                m900adsImportTargetContacts$lambda132 = AdsService.m900adsImportTargetContacts$lambda132(jsonElement);
                return m900adsImportTargetContacts$lambda132;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("target_group_id", i10);
        newApiRequest.addParam("contacts", contacts);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Boolean> adsRemoveOfficeUsers(int i9, @NotNull String ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        NewApiRequest newApiRequest = new NewApiRequest("ads.removeOfficeUsers", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.s
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Boolean m901adsRemoveOfficeUsers$lambda135;
                m901adsRemoveOfficeUsers$lambda135 = AdsService.m901adsRemoveOfficeUsers$lambda135(jsonElement);
                return m901adsRemoveOfficeUsers$lambda135;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("ids", ids);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Unit> adsRemoveTargetContacts(int i9, int i10, @NotNull String contacts, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(contacts, "contacts");
        NewApiRequest newApiRequest = new NewApiRequest("ads.removeTargetContacts", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m902adsRemoveTargetContacts$lambda137;
                m902adsRemoveTargetContacts$lambda137 = AdsService.m902adsRemoveTargetContacts$lambda137(jsonElement);
                return m902adsRemoveTargetContacts$lambda137;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("target_group_id", i10);
        newApiRequest.addParam("contacts", contacts);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Unit> adsSaveLookalikeRequestResult(int i9, int i10, int i11, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.saveLookalikeRequestResult", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.l0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m903adsSaveLookalikeRequestResult$lambda140;
                m903adsSaveLookalikeRequestResult$lambda140 = AdsService.m903adsSaveLookalikeRequestResult$lambda140(jsonElement);
                return m903adsSaveLookalikeRequestResult$lambda140;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("request_id", i10);
        newApiRequest.addParam("level", i11);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Unit> adsShareTargetGroup(int i9, int i10, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("ads.shareTargetGroup", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.r0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m904adsShareTargetGroup$lambda143;
                m904adsShareTargetGroup$lambda143 = AdsService.m904adsShareTargetGroup$lambda143(jsonElement);
                return m904adsShareTargetGroup$lambda143;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("target_group_id", i10);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam("share_with_client_id", num2.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<Integer>> adsUpdateAds(int i9, @NotNull String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        NewApiRequest newApiRequest = new NewApiRequest("ads.updateAds", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.n0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m905adsUpdateAds$lambda147;
                m905adsUpdateAds$lambda147 = AdsService.m905adsUpdateAds$lambda147(jsonElement);
                return m905adsUpdateAds$lambda147;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("data", data);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> adsUpdateCampaigns(int i9, @NotNull String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        NewApiRequest newApiRequest = new NewApiRequest("ads.updateCampaigns", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.f0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m906adsUpdateCampaigns$lambda149;
                m906adsUpdateCampaigns$lambda149 = AdsService.m906adsUpdateCampaigns$lambda149(jsonElement);
                return m906adsUpdateCampaigns$lambda149;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("data", data);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> adsUpdateClients(int i9, @NotNull String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        NewApiRequest newApiRequest = new NewApiRequest("ads.updateClients", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m907adsUpdateClients$lambda151;
                m907adsUpdateClients$lambda151 = AdsService.m907adsUpdateClients$lambda151(jsonElement);
                return m907adsUpdateClients$lambda151;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("data", data);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AdsUpdateOfficeUsersResult>> adsUpdateOfficeUsers(int i9, @NotNull List<AdsUserSpecification> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        NewApiRequest newApiRequest = new NewApiRequest("ads.updateOfficeUsers", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.t
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m908adsUpdateOfficeUsers$lambda153;
                m908adsUpdateOfficeUsers$lambda153 = AdsService.m908adsUpdateOfficeUsers$lambda153(jsonElement);
                return m908adsUpdateOfficeUsers$lambda153;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "account_id", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("data", GsonHolder.INSTANCE.getGson().toJson(data));
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> adsUpdateTargetGroup(int i9, int i10, @NotNull String name, int i11, @Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(name, "name");
        NewApiRequest newApiRequest = new NewApiRequest("ads.updateTargetGroup", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.i0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m909adsUpdateTargetGroup$lambda155;
                m909adsUpdateTargetGroup$lambda155 = AdsService.m909adsUpdateTargetGroup$lambda155(jsonElement);
                return m909adsUpdateTargetGroup$lambda155;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("target_group_id", i10);
        newApiRequest.addParam("name", name);
        newApiRequest.addParam("lifetime", i11, 1, UGCTransitionRules.DEFAULT_IMAGE_WIDTH);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("domain", str);
        }
        if (num2 != null) {
            newApiRequest.addParam("target_pixel_id", num2.intValue());
        }
        if (str2 != null) {
            newApiRequest.addParam("target_pixel_rules", str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Unit> adsUpdateTargetPixel(int i9, int i10, @NotNull String name, int i11, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        NewApiRequest newApiRequest = new NewApiRequest("ads.updateTargetPixel", new ApiResponseParser() { // from class: com.vk.sdk.api.ads.j0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m910adsUpdateTargetPixel$lambda161;
                m910adsUpdateTargetPixel$lambda161 = AdsService.m910adsUpdateTargetPixel$lambda161(jsonElement);
                return m910adsUpdateTargetPixel$lambda161;
            }
        });
        newApiRequest.addParam("account_id", i9);
        newApiRequest.addParam("target_pixel_id", i10);
        newApiRequest.addParam("name", name);
        newApiRequest.addParam("category_id", i11);
        if (num != null) {
            newApiRequest.addParam("client_id", num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("domain", str);
        }
        return newApiRequest;
    }
}
