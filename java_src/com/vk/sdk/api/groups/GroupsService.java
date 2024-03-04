package com.vk.sdk.api.groups;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.ServerProtocol;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.unity3d.ads.metadata.PlayerMetaData;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.addresses.dto.AddressesFields;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.base.dto.BaseUserGroupFields;
import com.vk.sdk.api.groups.dto.GroupsAddAddressWorkInfoStatus;
import com.vk.sdk.api.groups.dto.GroupsAddCallbackServerResponse;
import com.vk.sdk.api.groups.dto.GroupsAddress;
import com.vk.sdk.api.groups.dto.GroupsCallbackSettings;
import com.vk.sdk.api.groups.dto.GroupsCreateSubtype;
import com.vk.sdk.api.groups.dto.GroupsCreateType;
import com.vk.sdk.api.groups.dto.GroupsEditAddressWorkInfoStatus;
import com.vk.sdk.api.groups.dto.GroupsEditAgeLimits;
import com.vk.sdk.api.groups.dto.GroupsFields;
import com.vk.sdk.api.groups.dto.GroupsFilter;
import com.vk.sdk.api.groups.dto.GroupsGetAddressesResponse;
import com.vk.sdk.api.groups.dto.GroupsGetBannedResponse;
import com.vk.sdk.api.groups.dto.GroupsGetCallbackConfirmationCodeResponse;
import com.vk.sdk.api.groups.dto.GroupsGetCallbackServersResponse;
import com.vk.sdk.api.groups.dto.GroupsGetCatalogInfoExtendedResponse;
import com.vk.sdk.api.groups.dto.GroupsGetCatalogInfoResponse;
import com.vk.sdk.api.groups.dto.GroupsGetCatalogResponse;
import com.vk.sdk.api.groups.dto.GroupsGetInvitedUsersNameCase;
import com.vk.sdk.api.groups.dto.GroupsGetInvitedUsersResponse;
import com.vk.sdk.api.groups.dto.GroupsGetInvitesExtendedResponse;
import com.vk.sdk.api.groups.dto.GroupsGetInvitesResponse;
import com.vk.sdk.api.groups.dto.GroupsGetMembersFieldsResponse;
import com.vk.sdk.api.groups.dto.GroupsGetMembersFilter;
import com.vk.sdk.api.groups.dto.GroupsGetMembersSort;
import com.vk.sdk.api.groups.dto.GroupsGetObjectExtendedResponse;
import com.vk.sdk.api.groups.dto.GroupsGetRequestsFieldsResponse;
import com.vk.sdk.api.groups.dto.GroupsGetResponse;
import com.vk.sdk.api.groups.dto.GroupsGetSettingsResponse;
import com.vk.sdk.api.groups.dto.GroupsGetTokenPermissionsResponse;
import com.vk.sdk.api.groups.dto.GroupsGroup;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.groups.dto.GroupsGroupTag;
import com.vk.sdk.api.groups.dto.GroupsLinksItem;
import com.vk.sdk.api.groups.dto.GroupsLongPollServer;
import com.vk.sdk.api.groups.dto.GroupsLongPollSettings;
import com.vk.sdk.api.groups.dto.GroupsSearchResponse;
import com.vk.sdk.api.groups.dto.GroupsSearchSort;
import com.vk.sdk.api.groups.dto.GroupsSearchType;
import com.vk.sdk.api.groups.dto.GroupsTagAddTagColor;
import com.vk.sdk.api.groups.dto.GroupsTagBindAct;
import com.vk.sdk.api.groups.dto.GroupsToggleMarketState;
import com.vk.sdk.api.users.dto.UsersFields;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0086\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bE\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0091\u0001\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010\u0019J0\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\tJ(\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\t2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\tJ\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007JU\u0010%\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010+JU\u0010,\u001a\b\u0012\u0004\u0012\u00020-0\u00042\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010/\u001a\u0004\u0018\u0001002\n\b\u0002\u00101\u001a\u0004\u0018\u00010\f2\n\b\u0002\u00102\u001a\u0004\u0018\u00010\f2\n\b\u0002\u00103\u001a\u0004\u0018\u000104¢\u0006\u0002\u00105J\u001c\u00106\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00107\u001a\u00020\fJ\u001c\u00108\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00109\u001a\u00020\fJ\u001c\u0010:\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\fJ\u0014\u0010<\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J»\u0004\u0010=\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010F\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00101\u001a\u0004\u0018\u00010\f2\n\b\u0002\u00102\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010P\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010R\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010T\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010U\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010V\u001a\u0004\u0018\u00010W2\n\b\u0002\u0010X\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010Y\u001a\u0004\u0018\u00010\u00182\u0010\b\u0002\u0010Z\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010[2\u0010\b\u0002\u0010\\\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010[2\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010`\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010a\u001a\u0004\u0018\u00010\u00182\u0010\b\u0002\u0010b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010[2\n\b\u0002\u0010c\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010d\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010e\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010f\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010gJ±\u0001\u0010h\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00107\u001a\u00020\f2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010i2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010jJ8\u0010k\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00109\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\tJ(\u0010l\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\tJ]\u0010m\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\n\b\u0002\u0010n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010p\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010q\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010sJ\u0014\u0010t\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u0007JY\u0010u\u001a\b\u0012\u0004\u0012\u00020v0\u00042\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010w\u001a\n\u0012\u0004\u0012\u00020x\u0018\u00010[2\u0010\b\u0002\u0010y\u001a\n\u0012\u0004\u0012\u00020z\u0018\u00010[2\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010}Jp\u0010~\u001a\b\u0012\u0004\u0012\u00020\u007f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0011\b\u0002\u0010\u0080\u0001\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010[2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\f2\u0011\b\u0002\u0010y\u001a\u000b\u0012\u0005\u0012\u00030\u0081\u0001\u0018\u00010[¢\u0006\u0003\u0010\u0082\u0001JS\u0010\u0083\u0001\u001a\t\u0012\u0005\u0012\u00030\u0084\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\f2\u0011\b\u0002\u0010y\u001a\u000b\u0012\u0005\u0012\u00030\u0085\u0001\u0018\u00010[2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0086\u0001JE\u0010\u0087\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0088\u00010[0\u00042\u0011\b\u0002\u0010\u0089\u0001\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010[2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010y\u001a\n\u0012\u0004\u0012\u00020z\u0018\u00010[J\u0016\u0010\u008a\u0001\u001a\t\u0012\u0005\u0012\u00030\u008b\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007J)\u0010\u008c\u0001\u001a\t\u0012\u0005\u0012\u00030\u008d\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0011\b\u0002\u0010\u008e\u0001\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010[J(\u0010\u008f\u0001\u001a\t\u0012\u0005\u0012\u00030\u0090\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u00109\u001a\u0004\u0018\u00010\f¢\u0006\u0003\u0010\u0091\u0001J.\u0010\u0092\u0001\u001a\t\u0012\u0005\u0012\u00030\u0093\u00010\u00042\u000b\b\u0002\u0010\u0094\u0001\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010\u0095\u0001\u001a\u0004\u0018\u00010\f¢\u0006\u0003\u0010\u0096\u0001J!\u0010\u0097\u0001\u001a\t\u0012\u0005\u0012\u00030\u0098\u00010\u00042\u000b\b\u0002\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0018¢\u0006\u0003\u0010\u009a\u0001J!\u0010\u009b\u0001\u001a\t\u0012\u0005\u0012\u00030\u009c\u00010\u00042\u000b\b\u0002\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0018¢\u0006\u0003\u0010\u009a\u0001J[\u0010\u009d\u0001\u001a\t\u0012\u0005\u0012\u00030\u009e\u00010\u00042\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010w\u001a\n\u0012\u0004\u0012\u00020x\u0018\u00010[2\u0010\b\u0002\u0010y\u001a\n\u0012\u0004\u0012\u00020z\u0018\u00010[2\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010}JU\u0010\u009f\u0001\u001a\t\u0012\u0005\u0012\u00030 \u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\f2\u0011\b\u0002\u0010y\u001a\u000b\u0012\u0005\u0012\u00030¡\u0001\u0018\u00010[2\f\b\u0002\u0010¢\u0001\u001a\u0005\u0018\u00010£\u0001¢\u0006\u0003\u0010¤\u0001J,\u0010¥\u0001\u001a\t\u0012\u0005\u0012\u00030¦\u00010\u00042\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\f¢\u0006\u0003\u0010\u0096\u0001J,\u0010§\u0001\u001a\t\u0012\u0005\u0012\u00030¨\u00010\u00042\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\f¢\u0006\u0003\u0010\u0096\u0001J\u0016\u0010©\u0001\u001a\t\u0012\u0005\u0012\u00030ª\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010«\u0001\u001a\t\u0012\u0005\u0012\u00030¬\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007Jf\u0010\u00ad\u0001\u001a\t\u0012\u0005\u0012\u00030®\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\t2\f\b\u0002\u0010¯\u0001\u001a\u0005\u0018\u00010°\u00012\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\f2\u0011\b\u0002\u0010y\u001a\u000b\u0012\u0005\u0012\u00030¡\u0001\u0018\u00010[2\u000b\b\u0002\u0010w\u001a\u0005\u0018\u00010±\u0001¢\u0006\u0003\u0010²\u0001J\u0016\u0010³\u0001\u001a\t\u0012\u0005\u0012\u00030´\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007JG\u0010µ\u0001\u001a\t\u0012\u0005\u0012\u00030¶\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\f2\u0011\b\u0002\u0010y\u001a\u000b\u0012\u0005\u0012\u00030¡\u0001\u0018\u00010[¢\u0006\u0003\u0010·\u0001J\u0016\u0010¸\u0001\u001a\t\u0012\u0005\u0012\u00030¹\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u001c\u0010º\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030»\u00010[0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010¼\u0001\u001a\t\u0012\u0005\u0012\u00030½\u00010\u0004J\u001d\u0010¾\u0001\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007J5\u0010¿\u0001\u001a\t\u0012\u0005\u0012\u00030À\u00010\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\u0011\b\u0002\u0010Á\u0001\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010[J&\u0010Â\u0001\u001a\b\u0012\u0004\u0012\u00020#0\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010Ã\u0001\u001a\u0004\u0018\u00010\tJ\u0015\u0010Ä\u0001\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u001d\u0010Å\u0001\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007J0\u0010Æ\u0001\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\f2\u000b\b\u0002\u0010Ç\u0001\u001a\u0004\u0018\u00010\f¢\u0006\u0003\u0010È\u0001J\u0081\u0001\u0010É\u0001\u001a\t\u0012\u0005\u0012\u00030Ê\u00010\u00042\u0007\u0010Ë\u0001\u001a\u00020\t2\u000b\b\u0002\u0010/\u001a\u0005\u0018\u00010Ì\u00012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010Í\u0001\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010X\u001a\u0004\u0018\u00010\u00182\f\b\u0002\u0010¯\u0001\u001a\u0005\u0018\u00010Î\u00012\n\b\u0002\u0010{\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010|\u001a\u0004\u0018\u00010\f¢\u0006\u0003\u0010Ï\u0001JØ\u0005\u0010Ð\u0001\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u00109\u001a\u0004\u0018\u00010\f2\u000b\b\u0002\u0010Ñ\u0001\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010Ò\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ó\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Õ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ö\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010×\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ø\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ù\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ú\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Û\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ü\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ý\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Þ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ß\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010à\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010á\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010â\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ã\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ä\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010å\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010æ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ç\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010è\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010é\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ê\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ë\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ì\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010í\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010î\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ï\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ð\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ñ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ò\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ó\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ô\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010õ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ö\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010÷\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ø\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ù\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ú\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010û\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ü\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ý\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010þ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ÿ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0080\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0081\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0082\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0083\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0084\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u0018¢\u0006\u0003\u0010\u0086\u0002J²\u0005\u0010\u0087\u0002\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u000b\b\u0002\u0010\u0088\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ñ\u0001\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010Ò\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ó\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ö\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Õ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010×\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ø\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ù\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ú\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Û\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ü\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Ý\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010Þ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ß\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010à\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010á\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010â\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ã\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ä\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010å\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010æ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ç\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010è\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010é\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ê\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ë\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ì\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010í\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010î\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ï\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ð\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ó\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ô\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010õ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ö\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010÷\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ø\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ù\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ú\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ü\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ý\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010þ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010ÿ\u0001\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0080\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0081\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0082\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0083\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0084\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u0018¢\u0006\u0003\u0010\u0089\u0002JN\u0010\u008a\u0002\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u008b\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u008c\u0002\u001a\u0004\u0018\u00010\u00182\u000b\b\u0002\u0010\u008d\u0002\u001a\u0004\u0018\u00010\u0018¢\u0006\u0003\u0010\u008e\u0002J+\u0010\u008f\u0002\u001a\t\u0012\u0005\u0012\u00030À\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\u000b\b\u0002\u0010\u0090\u0002\u001a\u0004\u0018\u00010\tJ-\u0010\u0091\u0002\u001a\t\u0012\u0005\u0012\u00030À\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0007\u0010\u0092\u0002\u001a\u00020\t2\f\b\u0002\u0010\u0093\u0002\u001a\u0005\u0018\u00010\u0094\u0002J1\u0010\u0095\u0002\u001a\t\u0012\u0005\u0012\u00030À\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0007\u0010\u0096\u0002\u001a\u00020\f2\u0006\u0010$\u001a\u00020\u00072\b\u0010\u0097\u0002\u001a\u00030\u0098\u0002J\u001f\u0010\u0099\u0002\u001a\t\u0012\u0005\u0012\u00030À\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0007\u0010\u0096\u0002\u001a\u00020\fJ(\u0010\u009a\u0002\u001a\t\u0012\u0005\u0012\u00030À\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0007\u0010\u0096\u0002\u001a\u00020\f2\u0007\u0010\u0092\u0002\u001a\u00020\tJ,\u0010\u009b\u0002\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\u009c\u0002\u001a\u00030\u009d\u00022\u000b\b\u0002\u0010\u009e\u0002\u001a\u0004\u0018\u00010\tJ!\u0010\u009f\u0002\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007¨\u0006 \u0002"}, d2 = {"Lcom/vk/sdk/api/groups/GroupsService;", "", "()V", "groupsAddAddress", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/groups/dto/GroupsAddress;", "groupId", "Lcom/vk/dto/common/id/UserId;", "title", "", IntegrityManager.INTEGRITY_TYPE_ADDRESS, "countryId", "", "cityId", "latitude", "", "longitude", "additionalAddress", "metroId", "phone", "workInfoStatus", "Lcom/vk/sdk/api/groups/dto/GroupsAddAddressWorkInfoStatus;", "timetable", "isMainAddress", "", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;IIFFLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsAddAddressWorkInfoStatus;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsAddCallbackServer", "Lcom/vk/sdk/api/groups/dto/GroupsAddCallbackServerResponse;", "url", "secretKey", "groupsAddLink", "Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;", "link", ViewHierarchyConstants.TEXT_KEY, "groupsApproveRequest", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", Contants.USER_ID, "groupsBan", "ownerId", "endDate", "reason", "comment", "commentVisible", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsCreate", "Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "description", "type", "Lcom/vk/sdk/api/groups/dto/GroupsCreateType;", "publicCategory", "publicSubcategory", "subtype", "Lcom/vk/sdk/api/groups/dto/GroupsCreateSubtype;", "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsCreateType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsCreateSubtype;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsDeleteAddress", "addressId", "groupsDeleteCallbackServer", "serverId", "groupsDeleteLink", "linkId", "groupsDisableOnline", "groupsEdit", "screenName", "access", "website", "subject", "email", "rss", "eventStartDate", "eventFinishDate", "eventGroupId", "publicDate", "wall", "topics", "photos", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "audio", "links", "events", "places", "contacts", "docs", "wiki", "messages", "articles", "addresses", "ageLimits", "Lcom/vk/sdk/api/groups/dto/GroupsEditAgeLimits;", "market", "marketComments", "marketCountry", "", "marketCity", "marketCurrency", "marketContact", "marketWiki", "obsceneFilter", "obsceneStopwords", "obsceneWords", "mainSection", "secondarySection", UserDataStore.COUNTRY, "city", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsEditAgeLimits;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsEditAddress", "Lcom/vk/sdk/api/groups/dto/GroupsEditAddressWorkInfoStatus;", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsEditAddressWorkInfoStatus;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsEditCallbackServer", "groupsEditLink", "groupsEditManager", "role", "isContact", "contactPosition", "contactPhone", "contactEmail", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsEnableOnline", "groupsGet", "Lcom/vk/sdk/api/groups/dto/GroupsGetResponse;", "filter", "Lcom/vk/sdk/api/groups/dto/GroupsFilter;", GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/groups/dto/GroupsFields;", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsGetAddresses", "Lcom/vk/sdk/api/groups/dto/GroupsGetAddressesResponse;", "addressIds", "Lcom/vk/sdk/api/addresses/dto/AddressesFields;", "(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsGetBanned", "Lcom/vk/sdk/api/groups/dto/GroupsGetBannedResponse;", "Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsGetById", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "groupIds", "groupsGetCallbackConfirmationCode", "Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackConfirmationCodeResponse;", "groupsGetCallbackServers", "Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackServersResponse;", "serverIds", "groupsGetCallbackSettings", "Lcom/vk/sdk/api/groups/dto/GroupsCallbackSettings;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsGetCatalog", "Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogResponse;", "categoryId", "subcategoryId", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsGetCatalogInfo", "Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoResponse;", "subcategories", "(Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsGetCatalogInfoExtended", "Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoExtendedResponse;", "groupsGetExtended", "Lcom/vk/sdk/api/groups/dto/GroupsGetObjectExtendedResponse;", "groupsGetInvitedUsers", "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersResponse;", "Lcom/vk/sdk/api/users/dto/UsersFields;", "nameCase", "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersNameCase;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersNameCase;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsGetInvites", "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesResponse;", "groupsGetInvitesExtended", "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesExtendedResponse;", "groupsGetLongPollServer", "Lcom/vk/sdk/api/groups/dto/GroupsLongPollServer;", "groupsGetLongPollSettings", "Lcom/vk/sdk/api/groups/dto/GroupsLongPollSettings;", "groupsGetMembers", "Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFieldsResponse;", "sort", "Lcom/vk/sdk/api/groups/dto/GroupsGetMembersSort;", "Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFilter;", "(Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGetMembersSort;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFilter;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsGetOnlineStatus", "", "groupsGetRequests", "Lcom/vk/sdk/api/groups/dto/GroupsGetRequestsFieldsResponse;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsGetSettings", "Lcom/vk/sdk/api/groups/dto/GroupsGetSettingsResponse;", "groupsGetTagList", "Lcom/vk/sdk/api/groups/dto/GroupsGroupTag;", "groupsGetTokenPermissions", "Lcom/vk/sdk/api/groups/dto/GroupsGetTokenPermissionsResponse;", "groupsInvite", "groupsIsMember", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "userIds", "groupsJoin", "notSure", "groupsLeave", "groupsRemoveUser", "groupsReorderLink", "after", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsSearch", "Lcom/vk/sdk/api/groups/dto/GroupsSearchResponse;", "q", "Lcom/vk/sdk/api/groups/dto/GroupsSearchType;", "future", "Lcom/vk/sdk/api/groups/dto/GroupsSearchSort;", "(Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsSearchType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsSearchSort;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsSetCallbackSettings", "apiVersion", "messageNew", "messageReply", "messageAllow", "messageEdit", "messageDeny", "messageTypingState", "photoNew", "audioNew", "videoNew", "wallReplyNew", "wallReplyEdit", "wallReplyDelete", "wallReplyRestore", "wallPostNew", "wallRepost", "boardPostNew", "boardPostEdit", "boardPostRestore", "boardPostDelete", "photoCommentNew", "photoCommentEdit", "photoCommentDelete", "photoCommentRestore", "videoCommentNew", "videoCommentEdit", "videoCommentDelete", "videoCommentRestore", "marketCommentNew", "marketCommentEdit", "marketCommentDelete", "marketCommentRestore", "marketOrderNew", "marketOrderEdit", "pollVoteNew", "groupJoin", "groupLeave", "groupChangeSettings", "groupChangePhoto", "groupOfficersEdit", "userBlock", "userUnblock", "leadFormsNew", "likeAdd", "likeRemove", "messageEvent", "donutSubscriptionCreate", "donutSubscriptionProlonged", "donutSubscriptionCancelled", "donutSubscriptionPriceChanged", "donutSubscriptionExpired", "donutMoneyWithdraw", "donutMoneyWithdrawError", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsSetLongPollSettings", "enabled", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsSetSettings", "botsCapabilities", "botsStartButton", "botsAddToChat", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "groupsSetUserNote", "note", "groupsTagAdd", "tagName", "tagColor", "Lcom/vk/sdk/api/groups/dto/GroupsTagAddTagColor;", "groupsTagBind", "tagId", "act", "Lcom/vk/sdk/api/groups/dto/GroupsTagBindAct;", "groupsTagDelete", "groupsTagUpdate", "groupsToggleMarket", ServerProtocol.DIALOG_PARAM_STATE, "Lcom/vk/sdk/api/groups/dto/GroupsToggleMarketState;", "ref", "groupsUnban", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GroupsService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsAddAddress$lambda-0  reason: not valid java name */
    public static final GroupsAddress m1021groupsAddAddress$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsAddress) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsAddress.class);
    }

    public static /* synthetic */ VKRequest groupsAddCallbackServer$default(GroupsService groupsService, UserId userId, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 8) != 0) {
            str3 = null;
        }
        return groupsService.groupsAddCallbackServer(userId, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsAddCallbackServer$lambda-8  reason: not valid java name */
    public static final GroupsAddCallbackServerResponse m1022groupsAddCallbackServer$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsAddCallbackServerResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsAddCallbackServerResponse.class);
    }

    public static /* synthetic */ VKRequest groupsAddLink$default(GroupsService groupsService, UserId userId, String str, String str2, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            str2 = null;
        }
        return groupsService.groupsAddLink(userId, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsAddLink$lambda-11  reason: not valid java name */
    public static final GroupsLinksItem m1023groupsAddLink$lambda11(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsLinksItem) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsLinksItem.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsApproveRequest$lambda-14  reason: not valid java name */
    public static final BaseOkResponse m1024groupsApproveRequest$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsBan$lambda-16  reason: not valid java name */
    public static final BaseOkResponse m1025groupsBan$lambda16(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsCreate$lambda-23  reason: not valid java name */
    public static final GroupsGroup m1026groupsCreate$lambda23(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGroup) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGroup.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsDeleteAddress$lambda-30  reason: not valid java name */
    public static final BaseOkResponse m1027groupsDeleteAddress$lambda30(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsDeleteCallbackServer$lambda-32  reason: not valid java name */
    public static final BaseOkResponse m1028groupsDeleteCallbackServer$lambda32(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsDeleteLink$lambda-34  reason: not valid java name */
    public static final BaseOkResponse m1029groupsDeleteLink$lambda34(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsDisableOnline$lambda-36  reason: not valid java name */
    public static final BaseOkResponse m1030groupsDisableOnline$lambda36(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsEdit$lambda-38  reason: not valid java name */
    public static final BaseOkResponse m1031groupsEdit$lambda38(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsEditAddress$lambda-84  reason: not valid java name */
    public static final GroupsAddress m1032groupsEditAddress$lambda84(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsAddress) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsAddress.class);
    }

    public static /* synthetic */ VKRequest groupsEditCallbackServer$default(GroupsService groupsService, UserId userId, int i9, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            str3 = null;
        }
        return groupsService.groupsEditCallbackServer(userId, i9, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsEditCallbackServer$lambda-98  reason: not valid java name */
    public static final BaseOkResponse m1033groupsEditCallbackServer$lambda98(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest groupsEditLink$default(GroupsService groupsService, UserId userId, int i9, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str = null;
        }
        return groupsService.groupsEditLink(userId, i9, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsEditLink$lambda-101  reason: not valid java name */
    public static final BaseOkResponse m1034groupsEditLink$lambda101(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsEditManager$lambda-104  reason: not valid java name */
    public static final BaseOkResponse m1035groupsEditManager$lambda104(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsEnableOnline$lambda-111  reason: not valid java name */
    public static final BaseOkResponse m1036groupsEnableOnline$lambda111(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest groupsGet$default(GroupsService groupsService, UserId userId, List list, List list2, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            list2 = null;
        }
        if ((i9 & 8) != 0) {
            num = null;
        }
        if ((i9 & 16) != 0) {
            num2 = null;
        }
        return groupsService.groupsGet(userId, list, list2, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGet$lambda-113  reason: not valid java name */
    public static final GroupsGetResponse m1037groupsGet$lambda113(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetAddresses$lambda-131  reason: not valid java name */
    public static final GroupsGetAddressesResponse m1038groupsGetAddresses$lambda131(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetAddressesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetAddressesResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetBanned$lambda-140  reason: not valid java name */
    public static final GroupsGetBannedResponse m1039groupsGetBanned$lambda140(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetBannedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetBannedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest groupsGetById$default(GroupsService groupsService, List list, UserId userId, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            userId = null;
        }
        if ((i9 & 4) != 0) {
            list2 = null;
        }
        return groupsService.groupsGetById(list, userId, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetById$lambda-147  reason: not valid java name */
    public static final List m1040groupsGetById$lambda147(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends GroupsGroupFull>>() { // from class: com.vk.sdk.api.groups.GroupsService$groupsGetById$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetCallbackConfirmationCode$lambda-153  reason: not valid java name */
    public static final GroupsGetCallbackConfirmationCodeResponse m1041groupsGetCallbackConfirmationCode$lambda153(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetCallbackConfirmationCodeResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetCallbackConfirmationCodeResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest groupsGetCallbackServers$default(GroupsService groupsService, UserId userId, List list, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            list = null;
        }
        return groupsService.groupsGetCallbackServers(userId, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetCallbackServers$lambda-155  reason: not valid java name */
    public static final GroupsGetCallbackServersResponse m1042groupsGetCallbackServers$lambda155(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetCallbackServersResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetCallbackServersResponse.class);
    }

    public static /* synthetic */ VKRequest groupsGetCallbackSettings$default(GroupsService groupsService, UserId userId, Integer num, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        return groupsService.groupsGetCallbackSettings(userId, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetCallbackSettings$lambda-158  reason: not valid java name */
    public static final GroupsCallbackSettings m1043groupsGetCallbackSettings$lambda158(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsCallbackSettings) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsCallbackSettings.class);
    }

    public static /* synthetic */ VKRequest groupsGetCatalog$default(GroupsService groupsService, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        return groupsService.groupsGetCatalog(num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetCatalog$lambda-161  reason: not valid java name */
    public static final GroupsGetCatalogResponse m1044groupsGetCatalog$lambda161(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetCatalogResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetCatalogResponse.class);
    }

    public static /* synthetic */ VKRequest groupsGetCatalogInfo$default(GroupsService groupsService, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            bool = null;
        }
        return groupsService.groupsGetCatalogInfo(bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetCatalogInfo$lambda-165  reason: not valid java name */
    public static final GroupsGetCatalogInfoResponse m1045groupsGetCatalogInfo$lambda165(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetCatalogInfoResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetCatalogInfoResponse.class);
    }

    public static /* synthetic */ VKRequest groupsGetCatalogInfoExtended$default(GroupsService groupsService, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            bool = null;
        }
        return groupsService.groupsGetCatalogInfoExtended(bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetCatalogInfoExtended$lambda-168  reason: not valid java name */
    public static final GroupsGetCatalogInfoExtendedResponse m1046groupsGetCatalogInfoExtended$lambda168(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetCatalogInfoExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetCatalogInfoExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest groupsGetExtended$default(GroupsService groupsService, UserId userId, List list, List list2, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            list2 = null;
        }
        if ((i9 & 8) != 0) {
            num = null;
        }
        if ((i9 & 16) != 0) {
            num2 = null;
        }
        return groupsService.groupsGetExtended(userId, list, list2, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetExtended$lambda-122  reason: not valid java name */
    public static final GroupsGetObjectExtendedResponse m1047groupsGetExtended$lambda122(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetObjectExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetObjectExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetInvitedUsers$lambda-171  reason: not valid java name */
    public static final GroupsGetInvitedUsersResponse m1048groupsGetInvitedUsers$lambda171(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetInvitedUsersResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetInvitedUsersResponse.class);
    }

    public static /* synthetic */ VKRequest groupsGetInvites$default(GroupsService groupsService, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        return groupsService.groupsGetInvites(num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetInvites$lambda-178  reason: not valid java name */
    public static final GroupsGetInvitesResponse m1049groupsGetInvites$lambda178(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetInvitesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetInvitesResponse.class);
    }

    public static /* synthetic */ VKRequest groupsGetInvitesExtended$default(GroupsService groupsService, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        return groupsService.groupsGetInvitesExtended(num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetInvitesExtended$lambda-182  reason: not valid java name */
    public static final GroupsGetInvitesExtendedResponse m1050groupsGetInvitesExtended$lambda182(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetInvitesExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetInvitesExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetLongPollServer$lambda-186  reason: not valid java name */
    public static final GroupsLongPollServer m1051groupsGetLongPollServer$lambda186(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsLongPollServer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsLongPollServer.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetLongPollSettings$lambda-188  reason: not valid java name */
    public static final GroupsLongPollSettings m1052groupsGetLongPollSettings$lambda188(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsLongPollSettings) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsLongPollSettings.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest groupsGetMembers$default(GroupsService groupsService, String str, GroupsGetMembersSort groupsGetMembersSort, Integer num, Integer num2, List list, GroupsGetMembersFilter groupsGetMembersFilter, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            groupsGetMembersSort = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            list = null;
        }
        if ((i9 & 32) != 0) {
            groupsGetMembersFilter = null;
        }
        return groupsService.groupsGetMembers(str, groupsGetMembersSort, num, num2, list, groupsGetMembersFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetMembers$lambda-190  reason: not valid java name */
    public static final GroupsGetMembersFieldsResponse m1053groupsGetMembers$lambda190(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetMembersFieldsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetMembersFieldsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetOnlineStatus$lambda-199  reason: not valid java name */
    public static final Unit m1054groupsGetOnlineStatus$lambda199(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest groupsGetRequests$default(GroupsService groupsService, UserId userId, Integer num, Integer num2, List list, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        return groupsService.groupsGetRequests(userId, num, num2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetRequests$lambda-201  reason: not valid java name */
    public static final GroupsGetRequestsFieldsResponse m1055groupsGetRequests$lambda201(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetRequestsFieldsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetRequestsFieldsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetSettings$lambda-207  reason: not valid java name */
    public static final GroupsGetSettingsResponse m1056groupsGetSettings$lambda207(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetSettingsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetSettingsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetTagList$lambda-209  reason: not valid java name */
    public static final List m1057groupsGetTagList$lambda209(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends GroupsGroupTag>>() { // from class: com.vk.sdk.api.groups.GroupsService$groupsGetTagList$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsGetTokenPermissions$lambda-211  reason: not valid java name */
    public static final GroupsGetTokenPermissionsResponse m1058groupsGetTokenPermissions$lambda211(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetTokenPermissionsResponse.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…ionsResponse::class.java)");
        return (GroupsGetTokenPermissionsResponse) fromJson;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsInvite$lambda-212  reason: not valid java name */
    public static final BaseOkResponse m1059groupsInvite$lambda212(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest groupsIsMember$default(GroupsService groupsService, String str, UserId userId, List list, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            userId = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        return groupsService.groupsIsMember(str, userId, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsIsMember$lambda-214  reason: not valid java name */
    public static final BaseBoolInt m1060groupsIsMember$lambda214(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    public static /* synthetic */ VKRequest groupsJoin$default(GroupsService groupsService, UserId userId, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        return groupsService.groupsJoin(userId, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsJoin$lambda-218  reason: not valid java name */
    public static final BaseOkResponse m1061groupsJoin$lambda218(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsLeave$lambda-222  reason: not valid java name */
    public static final BaseOkResponse m1062groupsLeave$lambda222(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsRemoveUser$lambda-224  reason: not valid java name */
    public static final BaseOkResponse m1063groupsRemoveUser$lambda224(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest groupsReorderLink$default(GroupsService groupsService, UserId userId, int i9, Integer num, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            num = null;
        }
        return groupsService.groupsReorderLink(userId, i9, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsReorderLink$lambda-226  reason: not valid java name */
    public static final BaseOkResponse m1064groupsReorderLink$lambda226(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsSearch$lambda-229  reason: not valid java name */
    public static final GroupsSearchResponse m1065groupsSearch$lambda229(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsSearchResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsSetCallbackSettings$lambda-239  reason: not valid java name */
    public static final BaseOkResponse m1066groupsSetCallbackSettings$lambda239(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsSetLongPollSettings$lambda-295  reason: not valid java name */
    public static final BaseOkResponse m1067groupsSetLongPollSettings$lambda295(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsSetSettings$lambda-348  reason: not valid java name */
    public static final BaseOkResponse m1068groupsSetSettings$lambda348(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest groupsSetUserNote$default(GroupsService groupsService, UserId userId, UserId userId2, String str, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            str = null;
        }
        return groupsService.groupsSetUserNote(userId, userId2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsSetUserNote$lambda-354  reason: not valid java name */
    public static final BaseBoolInt m1069groupsSetUserNote$lambda354(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    public static /* synthetic */ VKRequest groupsTagAdd$default(GroupsService groupsService, UserId userId, String str, GroupsTagAddTagColor groupsTagAddTagColor, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            groupsTagAddTagColor = null;
        }
        return groupsService.groupsTagAdd(userId, str, groupsTagAddTagColor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsTagAdd$lambda-357  reason: not valid java name */
    public static final BaseBoolInt m1070groupsTagAdd$lambda357(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsTagBind$lambda-360  reason: not valid java name */
    public static final BaseBoolInt m1071groupsTagBind$lambda360(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsTagDelete$lambda-362  reason: not valid java name */
    public static final BaseBoolInt m1072groupsTagDelete$lambda362(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsTagUpdate$lambda-364  reason: not valid java name */
    public static final BaseBoolInt m1073groupsTagUpdate$lambda364(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    public static /* synthetic */ VKRequest groupsToggleMarket$default(GroupsService groupsService, UserId userId, GroupsToggleMarketState groupsToggleMarketState, String str, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            str = null;
        }
        return groupsService.groupsToggleMarket(userId, groupsToggleMarketState, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsToggleMarket$lambda-366  reason: not valid java name */
    public static final BaseOkResponse m1074groupsToggleMarket$lambda366(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest groupsUnban$default(GroupsService groupsService, UserId userId, UserId userId2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            userId2 = null;
        }
        return groupsService.groupsUnban(userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: groupsUnban$lambda-369  reason: not valid java name */
    public static final BaseOkResponse m1075groupsUnban$lambda369(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<GroupsAddress> groupsAddAddress(@NotNull UserId groupId, @NotNull String title, @NotNull String address, int i9, int i10, float f10, float f11, @Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable GroupsAddAddressWorkInfoStatus groupsAddAddressWorkInfoStatus, @Nullable String str3, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(address, "address");
        NewApiRequest newApiRequest = new NewApiRequest("groups.addAddress", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.p0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsAddress m1021groupsAddAddress$lambda0;
                m1021groupsAddAddress$lambda0 = GroupsService.m1021groupsAddAddress$lambda0(jsonElement);
                return m1021groupsAddAddress$lambda0;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "title", title, 0, 255, 4, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, IntegrityManager.INTEGRITY_TYPE_ADDRESS, address, 0, 255, 4, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "country_id", i9, 1, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "city_id", i10, 1, 0, 8, (Object) null);
        newApiRequest.addParam("latitude", f10, -90.0d, 90.0d);
        newApiRequest.addParam("longitude", f11, -180.0d, 180.0d);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "additional_address", str, 0, 400, 4, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "metro_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            newApiRequest.addParam("phone", str2);
        }
        if (groupsAddAddressWorkInfoStatus != null) {
            newApiRequest.addParam("work_info_status", groupsAddAddressWorkInfoStatus.getValue());
        }
        if (str3 != null) {
            newApiRequest.addParam("timetable", str3);
        }
        if (bool != null) {
            newApiRequest.addParam("is_main_address", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsAddCallbackServerResponse> groupsAddCallbackServer(@NotNull UserId groupId, @NotNull String url, @NotNull String title, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("groups.addCallbackServer", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.f0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsAddCallbackServerResponse m1022groupsAddCallbackServer$lambda8;
                m1022groupsAddCallbackServer$lambda8 = GroupsService.m1022groupsAddCallbackServer$lambda8(jsonElement);
                return m1022groupsAddCallbackServer$lambda8;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        newApiRequest.addParam("url", url);
        NewApiRequest.addParam$default(newApiRequest, "title", title, 0, 14, 4, (Object) null);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "secret_key", str, 0, 50, 4, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsLinksItem> groupsAddLink(@NotNull UserId groupId, @NotNull String link, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(link, "link");
        NewApiRequest newApiRequest = new NewApiRequest("groups.addLink", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.w
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsLinksItem m1023groupsAddLink$lambda11;
                m1023groupsAddLink$lambda11 = GroupsService.m1023groupsAddLink$lambda11(jsonElement);
                return m1023groupsAddLink$lambda11;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        newApiRequest.addParam("link", link);
        if (str != null) {
            newApiRequest.addParam(ViewHierarchyConstants.TEXT_KEY, str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsApproveRequest(@NotNull UserId groupId, @NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.approveRequest", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.m0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1024groupsApproveRequest$lambda14;
                m1024groupsApproveRequest$lambda14 = GroupsService.m1024groupsApproveRequest$lambda14(jsonElement);
                return m1024groupsApproveRequest$lambda14;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsBan(@NotNull UserId groupId, @Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.ban", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1025groupsBan$lambda16;
                m1025groupsBan$lambda16 = GroupsService.m1025groupsBan$lambda16(jsonElement);
                return m1025groupsBan$lambda16;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_date", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "reason", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("comment", str);
        }
        if (bool != null) {
            newApiRequest.addParam("comment_visible", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGroup> groupsCreate(@NotNull String title, @Nullable String str, @Nullable GroupsCreateType groupsCreateType, @Nullable Integer num, @Nullable Integer num2, @Nullable GroupsCreateSubtype groupsCreateSubtype) {
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("groups.create", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.x
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGroup m1026groupsCreate$lambda23;
                m1026groupsCreate$lambda23 = GroupsService.m1026groupsCreate$lambda23(jsonElement);
                return m1026groupsCreate$lambda23;
            }
        });
        newApiRequest.addParam("title", title);
        if (str != null) {
            newApiRequest.addParam("description", str);
        }
        if (groupsCreateType != null) {
            newApiRequest.addParam("type", groupsCreateType.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "public_category", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "public_subcategory", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (groupsCreateSubtype != null) {
            newApiRequest.addParam("subtype", groupsCreateSubtype.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsDeleteAddress(@NotNull UserId groupId, int i9) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.deleteAddress", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.g0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1027groupsDeleteAddress$lambda30;
                m1027groupsDeleteAddress$lambda30 = GroupsService.m1027groupsDeleteAddress$lambda30(jsonElement);
                return m1027groupsDeleteAddress$lambda30;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "address_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsDeleteCallbackServer(@NotNull UserId groupId, int i9) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.deleteCallbackServer", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1028groupsDeleteCallbackServer$lambda32;
                m1028groupsDeleteCallbackServer$lambda32 = GroupsService.m1028groupsDeleteCallbackServer$lambda32(jsonElement);
                return m1028groupsDeleteCallbackServer$lambda32;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, PlayerMetaData.KEY_SERVER_ID, i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsDeleteLink(@NotNull UserId groupId, int i9) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.deleteLink", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.u
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1029groupsDeleteLink$lambda34;
                m1029groupsDeleteLink$lambda34 = GroupsService.m1029groupsDeleteLink$lambda34(jsonElement);
                return m1029groupsDeleteLink$lambda34;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "link_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsDisableOnline(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.disableOnline", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1030groupsDisableOnline$lambda36;
                m1030groupsDisableOnline$lambda36 = GroupsService.m1030groupsDisableOnline$lambda36(jsonElement);
                return m1030groupsDisableOnline$lambda36;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsEdit(@NotNull UserId groupId, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable Integer num2, @Nullable Integer num3, @Nullable UserId userId, @Nullable Integer num4, @Nullable Integer num5, @Nullable String str9, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Integer num11, @Nullable Integer num12, @Nullable Boolean bool5, @Nullable Boolean bool6, @Nullable Boolean bool7, @Nullable GroupsEditAgeLimits groupsEditAgeLimits, @Nullable Boolean bool8, @Nullable Boolean bool9, @Nullable List<Integer> list, @Nullable List<Integer> list2, @Nullable Integer num13, @Nullable Integer num14, @Nullable Integer num15, @Nullable Boolean bool10, @Nullable Boolean bool11, @Nullable List<String> list3, @Nullable Integer num16, @Nullable Integer num17, @Nullable Integer num18, @Nullable Integer num19) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.edit", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1031groupsEdit$lambda38;
                m1031groupsEdit$lambda38 = GroupsService.m1031groupsEdit$lambda38(jsonElement);
                return m1031groupsEdit$lambda38;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("title", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("description", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("screen_name", str3);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "access", num.intValue(), 0, 0, 8, (Object) null);
            Unit unit = Unit.INSTANCE;
        }
        if (str4 != null) {
            newApiRequest.addParam("website", str4);
        }
        if (str5 != null) {
            newApiRequest.addParam("subject", str5);
        }
        if (str6 != null) {
            newApiRequest.addParam("email", str6);
        }
        if (str7 != null) {
            newApiRequest.addParam("phone", str7);
        }
        if (str8 != null) {
            newApiRequest.addParam("rss", str8);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "event_start_date", num2.intValue(), 0, 0, 8, (Object) null);
            Unit unit2 = Unit.INSTANCE;
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "event_finish_date", num3.intValue(), 0, 0, 8, (Object) null);
            Unit unit3 = Unit.INSTANCE;
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "event_group_id", userId, 0L, 0L, 8, (Object) null);
            Unit unit4 = Unit.INSTANCE;
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, "public_category", num4.intValue(), 0, 0, 8, (Object) null);
            Unit unit5 = Unit.INSTANCE;
        }
        if (num5 != null) {
            NewApiRequest.addParam$default(newApiRequest, "public_subcategory", num5.intValue(), 0, 0, 8, (Object) null);
            Unit unit6 = Unit.INSTANCE;
        }
        if (str9 != null) {
            newApiRequest.addParam("public_date", str9);
        }
        if (num6 != null) {
            NewApiRequest.addParam$default(newApiRequest, "wall", num6.intValue(), 0, 0, 8, (Object) null);
            Unit unit7 = Unit.INSTANCE;
        }
        if (num7 != null) {
            NewApiRequest.addParam$default(newApiRequest, "topics", num7.intValue(), 0, 0, 8, (Object) null);
            Unit unit8 = Unit.INSTANCE;
        }
        if (num8 != null) {
            NewApiRequest.addParam$default(newApiRequest, "photos", num8.intValue(), 0, 0, 8, (Object) null);
            Unit unit9 = Unit.INSTANCE;
        }
        if (num9 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, num9.intValue(), 0, 0, 8, (Object) null);
            Unit unit10 = Unit.INSTANCE;
        }
        if (num10 != null) {
            NewApiRequest.addParam$default(newApiRequest, "audio", num10.intValue(), 0, 0, 8, (Object) null);
            Unit unit11 = Unit.INSTANCE;
        }
        if (bool != null) {
            newApiRequest.addParam("links", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("events", bool2.booleanValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("places", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("contacts", bool4.booleanValue());
        }
        if (num11 != null) {
            NewApiRequest.addParam$default(newApiRequest, "docs", num11.intValue(), 0, 0, 8, (Object) null);
            Unit unit12 = Unit.INSTANCE;
        }
        if (num12 != null) {
            NewApiRequest.addParam$default(newApiRequest, "wiki", num12.intValue(), 0, 0, 8, (Object) null);
            Unit unit13 = Unit.INSTANCE;
        }
        if (bool5 != null) {
            newApiRequest.addParam("messages", bool5.booleanValue());
        }
        if (bool6 != null) {
            newApiRequest.addParam("articles", bool6.booleanValue());
        }
        if (bool7 != null) {
            newApiRequest.addParam("addresses", bool7.booleanValue());
        }
        if (groupsEditAgeLimits != null) {
            newApiRequest.addParam("age_limits", groupsEditAgeLimits.getValue());
        }
        if (bool8 != null) {
            newApiRequest.addParam("market", bool8.booleanValue());
        }
        if (bool9 != null) {
            newApiRequest.addParam("market_comments", bool9.booleanValue());
        }
        if (list != null) {
            newApiRequest.addParam("market_country", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("market_city", list2);
        }
        if (num13 != null) {
            NewApiRequest.addParam$default(newApiRequest, "market_currency", num13.intValue(), 0, 0, 8, (Object) null);
            Unit unit14 = Unit.INSTANCE;
        }
        if (num14 != null) {
            NewApiRequest.addParam$default(newApiRequest, "market_contact", num14.intValue(), 0, 0, 8, (Object) null);
            Unit unit15 = Unit.INSTANCE;
        }
        if (num15 != null) {
            NewApiRequest.addParam$default(newApiRequest, "market_wiki", num15.intValue(), 0, 0, 8, (Object) null);
            Unit unit16 = Unit.INSTANCE;
        }
        if (bool10 != null) {
            newApiRequest.addParam("obscene_filter", bool10.booleanValue());
        }
        if (bool11 != null) {
            newApiRequest.addParam("obscene_stopwords", bool11.booleanValue());
        }
        if (list3 != null) {
            newApiRequest.addParam("obscene_words", list3);
        }
        if (num16 != null) {
            NewApiRequest.addParam$default(newApiRequest, "main_section", num16.intValue(), 0, 0, 8, (Object) null);
            Unit unit17 = Unit.INSTANCE;
        }
        if (num17 != null) {
            NewApiRequest.addParam$default(newApiRequest, "secondary_section", num17.intValue(), 0, 0, 8, (Object) null);
            Unit unit18 = Unit.INSTANCE;
        }
        if (num18 != null) {
            NewApiRequest.addParam$default(newApiRequest, UserDataStore.COUNTRY, num18.intValue(), 0, 0, 8, (Object) null);
            Unit unit19 = Unit.INSTANCE;
        }
        if (num19 != null) {
            NewApiRequest.addParam$default(newApiRequest, "city", num19.intValue(), 0, 0, 8, (Object) null);
            Unit unit20 = Unit.INSTANCE;
        }
        Unit unit21 = Unit.INSTANCE;
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsAddress> groupsEditAddress(@NotNull UserId groupId, int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Float f10, @Nullable Float f11, @Nullable String str4, @Nullable GroupsEditAddressWorkInfoStatus groupsEditAddressWorkInfoStatus, @Nullable String str5, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.editAddress", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.y
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsAddress m1032groupsEditAddress$lambda84;
                m1032groupsEditAddress$lambda84 = GroupsService.m1032groupsEditAddress$lambda84(jsonElement);
                return m1032groupsEditAddress$lambda84;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "address_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "title", str, 0, 255, 4, (Object) null);
        }
        if (str2 != null) {
            NewApiRequest.addParam$default(newApiRequest, IntegrityManager.INTEGRITY_TYPE_ADDRESS, str2, 0, 255, 4, (Object) null);
        }
        if (str3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "additional_address", str3, 0, 400, 4, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "country_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "city_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "metro_id", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (f10 != null) {
            newApiRequest.addParam("latitude", f10.floatValue(), -90.0d, 90.0d);
        }
        if (f11 != null) {
            newApiRequest.addParam("longitude", f11.floatValue(), -180.0d, 180.0d);
        }
        if (str4 != null) {
            newApiRequest.addParam("phone", str4);
        }
        if (groupsEditAddressWorkInfoStatus != null) {
            newApiRequest.addParam("work_info_status", groupsEditAddressWorkInfoStatus.getValue());
        }
        if (str5 != null) {
            newApiRequest.addParam("timetable", str5);
        }
        if (bool != null) {
            newApiRequest.addParam("is_main_address", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsEditCallbackServer(@NotNull UserId groupId, int i9, @NotNull String url, @NotNull String title, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("groups.editCallbackServer", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1033groupsEditCallbackServer$lambda98;
                m1033groupsEditCallbackServer$lambda98 = GroupsService.m1033groupsEditCallbackServer$lambda98(jsonElement);
                return m1033groupsEditCallbackServer$lambda98;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, PlayerMetaData.KEY_SERVER_ID, i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("url", url);
        NewApiRequest.addParam$default(newApiRequest, "title", title, 0, 14, 4, (Object) null);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "secret_key", str, 0, 50, 4, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsEditLink(@NotNull UserId groupId, int i9, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.editLink", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1034groupsEditLink$lambda101;
                m1034groupsEditLink$lambda101 = GroupsService.m1034groupsEditLink$lambda101(jsonElement);
                return m1034groupsEditLink$lambda101;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "link_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam(ViewHierarchyConstants.TEXT_KEY, str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsEditManager(@NotNull UserId groupId, @NotNull UserId userId, @Nullable String str, @Nullable Boolean bool, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.editManager", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.b1
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1035groupsEditManager$lambda104;
                m1035groupsEditManager$lambda104 = GroupsService.m1035groupsEditManager$lambda104(jsonElement);
                return m1035groupsEditManager$lambda104;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("role", str);
        }
        if (bool != null) {
            newApiRequest.addParam("is_contact", bool.booleanValue());
        }
        if (str2 != null) {
            newApiRequest.addParam("contact_position", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("contact_phone", str3);
        }
        if (str4 != null) {
            newApiRequest.addParam("contact_email", str4);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsEnableOnline(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.enableOnline", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.v0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1036groupsEnableOnline$lambda111;
                m1036groupsEnableOnline$lambda111 = GroupsService.m1036groupsEnableOnline$lambda111(jsonElement);
                return m1036groupsEnableOnline$lambda111;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetResponse> groupsGet(@Nullable UserId userId, @Nullable List<? extends GroupsFilter> list, @Nullable List<? extends GroupsFields> list2, @Nullable Integer num, @Nullable Integer num2) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        NewApiRequest newApiRequest = new NewApiRequest("groups.get", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.c0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetResponse m1037groupsGet$lambda113;
                m1037groupsGet$lambda113 = GroupsService.m1037groupsGet$lambda113(jsonElement);
                return m1037groupsGet$lambda113;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        }
        ArrayList arrayList2 = null;
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (GroupsFilter groupsFilter : list) {
                arrayList.add(groupsFilter.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam("filter", (Iterable<?>) arrayList);
        }
        if (list2 != null) {
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (GroupsFields groupsFields : list2) {
                arrayList2.add(groupsFields.getValue());
            }
        }
        if (arrayList2 != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList2);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetAddressesResponse> groupsGetAddresses(@NotNull UserId groupId, @Nullable List<Integer> list, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends AddressesFields> list2) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getAddresses", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.r0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetAddressesResponse m1038groupsGetAddresses$lambda131;
                m1038groupsGetAddresses$lambda131 = GroupsService.m1038groupsGetAddresses$lambda131(jsonElement);
                return m1038groupsGetAddresses$lambda131;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (list != null) {
            newApiRequest.addParam("address_ids", list);
        }
        if (f10 != null) {
            newApiRequest.addParam("latitude", f10.floatValue(), -90.0d, 90.0d);
        }
        if (f11 != null) {
            newApiRequest.addParam("longitude", f11.floatValue(), -180.0d, 180.0d);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (list2 == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (AddressesFields addressesFields : list2) {
                arrayList.add(addressesFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetBannedResponse> groupsGetBanned(@NotNull UserId groupId, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends BaseUserGroupFields> list, @Nullable UserId userId) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getBanned", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.h0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetBannedResponse m1039groupsGetBanned$lambda140;
                m1039groupsGetBanned$lambda140 = GroupsService.m1039groupsGetBanned$lambda140(jsonElement);
                return m1039groupsGetBanned$lambda140;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
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
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<GroupsGroupFull>> groupsGetById(@Nullable List<UserId> list, @Nullable UserId userId, @Nullable List<? extends GroupsFields> list2) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("groups.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.d0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1040groupsGetById$lambda147;
                m1040groupsGetById$lambda147 = GroupsService.m1040groupsGetById$lambda147(jsonElement);
                return m1040groupsGetById$lambda147;
            }
        });
        if (list != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_ids", list, 0L, 0L, 12, (Object) null);
        }
        if (userId != null) {
            newApiRequest.addParam("group_id", userId);
        }
        if (list2 == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (GroupsFields groupsFields : list2) {
                arrayList.add(groupsFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetCallbackConfirmationCodeResponse> groupsGetCallbackConfirmationCode(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getCallbackConfirmationCode", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.a0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetCallbackConfirmationCodeResponse m1041groupsGetCallbackConfirmationCode$lambda153;
                m1041groupsGetCallbackConfirmationCode$lambda153 = GroupsService.m1041groupsGetCallbackConfirmationCode$lambda153(jsonElement);
                return m1041groupsGetCallbackConfirmationCode$lambda153;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetCallbackServersResponse> groupsGetCallbackServers(@NotNull UserId groupId, @Nullable List<Integer> list) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getCallbackServers", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetCallbackServersResponse m1042groupsGetCallbackServers$lambda155;
                m1042groupsGetCallbackServers$lambda155 = GroupsService.m1042groupsGetCallbackServers$lambda155(jsonElement);
                return m1042groupsGetCallbackServers$lambda155;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (list != null) {
            newApiRequest.addParam("server_ids", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsCallbackSettings> groupsGetCallbackSettings(@NotNull UserId groupId, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getCallbackSettings", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsCallbackSettings m1043groupsGetCallbackSettings$lambda158;
                m1043groupsGetCallbackSettings$lambda158 = GroupsService.m1043groupsGetCallbackSettings$lambda158(jsonElement);
                return m1043groupsGetCallbackSettings$lambda158;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, PlayerMetaData.KEY_SERVER_ID, num.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetCatalogResponse> groupsGetCatalog(@Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("groups.getCatalog", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetCatalogResponse m1044groupsGetCatalog$lambda161;
                m1044groupsGetCatalog$lambda161 = GroupsService.m1044groupsGetCatalog$lambda161(jsonElement);
                return m1044groupsGetCatalog$lambda161;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "category_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam("subcategory_id", num2.intValue(), 0, 99);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetCatalogInfoResponse> groupsGetCatalogInfo(@Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("groups.getCatalogInfo", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.l0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetCatalogInfoResponse m1045groupsGetCatalogInfo$lambda165;
                m1045groupsGetCatalogInfo$lambda165 = GroupsService.m1045groupsGetCatalogInfo$lambda165(jsonElement);
                return m1045groupsGetCatalogInfo$lambda165;
            }
        });
        if (bool != null) {
            newApiRequest.addParam("subcategories", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetCatalogInfoExtendedResponse> groupsGetCatalogInfoExtended(@Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("groups.getCatalogInfo", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.s
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetCatalogInfoExtendedResponse m1046groupsGetCatalogInfoExtended$lambda168;
                m1046groupsGetCatalogInfoExtended$lambda168 = GroupsService.m1046groupsGetCatalogInfoExtended$lambda168(jsonElement);
                return m1046groupsGetCatalogInfoExtended$lambda168;
            }
        });
        newApiRequest.addParam("extended", true);
        if (bool != null) {
            newApiRequest.addParam("subcategories", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetObjectExtendedResponse> groupsGetExtended(@Nullable UserId userId, @Nullable List<? extends GroupsFilter> list, @Nullable List<? extends GroupsFields> list2, @Nullable Integer num, @Nullable Integer num2) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        NewApiRequest newApiRequest = new NewApiRequest("groups.get", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.s0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetObjectExtendedResponse m1047groupsGetExtended$lambda122;
                m1047groupsGetExtended$lambda122 = GroupsService.m1047groupsGetExtended$lambda122(jsonElement);
                return m1047groupsGetExtended$lambda122;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        }
        newApiRequest.addParam("extended", true);
        ArrayList arrayList2 = null;
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (GroupsFilter groupsFilter : list) {
                arrayList.add(groupsFilter.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam("filter", (Iterable<?>) arrayList);
        }
        if (list2 != null) {
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (GroupsFields groupsFields : list2) {
                arrayList2.add(groupsFields.getValue());
            }
        }
        if (arrayList2 != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList2);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetInvitedUsersResponse> groupsGetInvitedUsers(@NotNull UserId groupId, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends UsersFields> list, @Nullable GroupsGetInvitedUsersNameCase groupsGetInvitedUsersNameCase) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getInvitedUsers", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.w0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetInvitedUsersResponse m1048groupsGetInvitedUsers$lambda171;
                m1048groupsGetInvitedUsers$lambda171 = GroupsService.m1048groupsGetInvitedUsers$lambda171(jsonElement);
                return m1048groupsGetInvitedUsers$lambda171;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
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
        if (groupsGetInvitedUsersNameCase != null) {
            newApiRequest.addParam("name_case", groupsGetInvitedUsersNameCase.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetInvitesResponse> groupsGetInvites(@Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("groups.getInvites", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.v
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetInvitesResponse m1049groupsGetInvites$lambda178;
                m1049groupsGetInvites$lambda178 = GroupsService.m1049groupsGetInvites$lambda178(jsonElement);
                return m1049groupsGetInvites$lambda178;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetInvitesExtendedResponse> groupsGetInvitesExtended(@Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("groups.getInvites", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetInvitesExtendedResponse m1050groupsGetInvitesExtended$lambda182;
                m1050groupsGetInvitesExtended$lambda182 = GroupsService.m1050groupsGetInvitesExtended$lambda182(jsonElement);
                return m1050groupsGetInvitesExtended$lambda182;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
        }
        newApiRequest.addParam("extended", true);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsLongPollServer> groupsGetLongPollServer(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getLongPollServer", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.j0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsLongPollServer m1051groupsGetLongPollServer$lambda186;
                m1051groupsGetLongPollServer$lambda186 = GroupsService.m1051groupsGetLongPollServer$lambda186(jsonElement);
                return m1051groupsGetLongPollServer$lambda186;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsLongPollSettings> groupsGetLongPollSettings(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getLongPollSettings", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.z0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsLongPollSettings m1052groupsGetLongPollSettings$lambda188;
                m1052groupsGetLongPollSettings$lambda188 = GroupsService.m1052groupsGetLongPollSettings$lambda188(jsonElement);
                return m1052groupsGetLongPollSettings$lambda188;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetMembersFieldsResponse> groupsGetMembers(@Nullable String str, @Nullable GroupsGetMembersSort groupsGetMembersSort, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends UsersFields> list, @Nullable GroupsGetMembersFilter groupsGetMembersFilter) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("groups.getMembers", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetMembersFieldsResponse m1053groupsGetMembers$lambda190;
                m1053groupsGetMembers$lambda190 = GroupsService.m1053groupsGetMembers$lambda190(jsonElement);
                return m1053groupsGetMembers$lambda190;
            }
        });
        if (str != null) {
            newApiRequest.addParam("group_id", str);
        }
        if (groupsGetMembersSort != null) {
            newApiRequest.addParam("sort", groupsGetMembersSort.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
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
        if (groupsGetMembersFilter != null) {
            newApiRequest.addParam("filter", groupsGetMembersFilter.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Unit> groupsGetOnlineStatus(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getOnlineStatus", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m1054groupsGetOnlineStatus$lambda199;
                m1054groupsGetOnlineStatus$lambda199 = GroupsService.m1054groupsGetOnlineStatus$lambda199(jsonElement);
                return m1054groupsGetOnlineStatus$lambda199;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetRequestsFieldsResponse> groupsGetRequests(@NotNull UserId groupId, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends UsersFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getRequests", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.k0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetRequestsFieldsResponse m1055groupsGetRequests$lambda201;
                m1055groupsGetRequests$lambda201 = GroupsService.m1055groupsGetRequests$lambda201(jsonElement);
                return m1055groupsGetRequests$lambda201;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
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
    public final VKRequest<GroupsGetSettingsResponse> groupsGetSettings(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getSettings", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.o0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetSettingsResponse m1056groupsGetSettings$lambda207;
                m1056groupsGetSettings$lambda207 = GroupsService.m1056groupsGetSettings$lambda207(jsonElement);
                return m1056groupsGetSettings$lambda207;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<GroupsGroupTag>> groupsGetTagList(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.getTagList", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1057groupsGetTagList$lambda209;
                m1057groupsGetTagList$lambda209 = GroupsService.m1057groupsGetTagList$lambda209(jsonElement);
                return m1057groupsGetTagList$lambda209;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsGetTokenPermissionsResponse> groupsGetTokenPermissions() {
        return new NewApiRequest("groups.getTokenPermissions", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.x0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetTokenPermissionsResponse m1058groupsGetTokenPermissions$lambda211;
                m1058groupsGetTokenPermissions$lambda211 = GroupsService.m1058groupsGetTokenPermissions$lambda211(jsonElement);
                return m1058groupsGetTokenPermissions$lambda211;
            }
        });
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsInvite(@NotNull UserId groupId, @NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.invite", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.i0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1059groupsInvite$lambda212;
                m1059groupsInvite$lambda212 = GroupsService.m1059groupsInvite$lambda212(jsonElement);
                return m1059groupsInvite$lambda212;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> groupsIsMember(@NotNull String groupId, @Nullable UserId userId, @Nullable List<UserId> list) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.isMember", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1060groupsIsMember$lambda214;
                m1060groupsIsMember$lambda214 = GroupsService.m1060groupsIsMember$lambda214(jsonElement);
                return m1060groupsIsMember$lambda214;
            }
        });
        newApiRequest.addParam("group_id", groupId);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (list != null) {
            NewApiRequest.addParam$default(newApiRequest, "user_ids", list, 0L, 0L, 12, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsJoin(@Nullable UserId userId, @Nullable String str) {
        NewApiRequest newApiRequest = new NewApiRequest("groups.join", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1061groupsJoin$lambda218;
                m1061groupsJoin$lambda218 = GroupsService.m1061groupsJoin$lambda218(jsonElement);
                return m1061groupsJoin$lambda218;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 1L, 0L, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("not_sure", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsLeave(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.leave", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1062groupsLeave$lambda222;
                m1062groupsLeave$lambda222 = GroupsService.m1062groupsLeave$lambda222(jsonElement);
                return m1062groupsLeave$lambda222;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsRemoveUser(@NotNull UserId groupId, @NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.removeUser", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.q0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1063groupsRemoveUser$lambda224;
                m1063groupsRemoveUser$lambda224 = GroupsService.m1063groupsRemoveUser$lambda224(jsonElement);
                return m1063groupsRemoveUser$lambda224;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsReorderLink(@NotNull UserId groupId, int i9, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.reorderLink", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.y0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1064groupsReorderLink$lambda226;
                m1064groupsReorderLink$lambda226 = GroupsService.m1064groupsReorderLink$lambda226(jsonElement);
                return m1064groupsReorderLink$lambda226;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "link_id", i9, 0, 0, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "after", num.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<GroupsSearchResponse> groupsSearch(@NotNull String q10, @Nullable GroupsSearchType groupsSearchType, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable GroupsSearchSort groupsSearchSort, @Nullable Integer num3, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(q10, "q");
        NewApiRequest newApiRequest = new NewApiRequest("groups.search", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.u0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsSearchResponse m1065groupsSearch$lambda229;
                m1065groupsSearch$lambda229 = GroupsService.m1065groupsSearch$lambda229(jsonElement);
                return m1065groupsSearch$lambda229;
            }
        });
        newApiRequest.addParam("q", q10);
        if (groupsSearchType != null) {
            newApiRequest.addParam("type", groupsSearchType.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "country_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "city_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("future", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("market", bool2.booleanValue());
        }
        if (groupsSearchSort != null) {
            newApiRequest.addParam("sort", groupsSearchSort.getValue());
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num4.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsSetCallbackSettings(@NotNull UserId groupId, @Nullable Integer num, @Nullable String str, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Boolean bool5, @Nullable Boolean bool6, @Nullable Boolean bool7, @Nullable Boolean bool8, @Nullable Boolean bool9, @Nullable Boolean bool10, @Nullable Boolean bool11, @Nullable Boolean bool12, @Nullable Boolean bool13, @Nullable Boolean bool14, @Nullable Boolean bool15, @Nullable Boolean bool16, @Nullable Boolean bool17, @Nullable Boolean bool18, @Nullable Boolean bool19, @Nullable Boolean bool20, @Nullable Boolean bool21, @Nullable Boolean bool22, @Nullable Boolean bool23, @Nullable Boolean bool24, @Nullable Boolean bool25, @Nullable Boolean bool26, @Nullable Boolean bool27, @Nullable Boolean bool28, @Nullable Boolean bool29, @Nullable Boolean bool30, @Nullable Boolean bool31, @Nullable Boolean bool32, @Nullable Boolean bool33, @Nullable Boolean bool34, @Nullable Boolean bool35, @Nullable Boolean bool36, @Nullable Boolean bool37, @Nullable Boolean bool38, @Nullable Boolean bool39, @Nullable Boolean bool40, @Nullable Boolean bool41, @Nullable Boolean bool42, @Nullable Boolean bool43, @Nullable Boolean bool44, @Nullable Boolean bool45, @Nullable Boolean bool46, @Nullable Boolean bool47, @Nullable Boolean bool48, @Nullable Boolean bool49, @Nullable Boolean bool50, @Nullable Boolean bool51, @Nullable Boolean bool52) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.setCallbackSettings", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.t
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1066groupsSetCallbackSettings$lambda239;
                m1066groupsSetCallbackSettings$lambda239 = GroupsService.m1066groupsSetCallbackSettings$lambda239(jsonElement);
                return m1066groupsSetCallbackSettings$lambda239;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, PlayerMetaData.KEY_SERVER_ID, num.intValue(), 0, 0, 8, (Object) null);
            Unit unit = Unit.INSTANCE;
        }
        if (str != null) {
            newApiRequest.addParam("api_version", str);
        }
        if (bool != null) {
            newApiRequest.addParam("message_new", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("message_reply", bool2.booleanValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("message_allow", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("message_edit", bool4.booleanValue());
        }
        if (bool5 != null) {
            newApiRequest.addParam("message_deny", bool5.booleanValue());
        }
        if (bool6 != null) {
            newApiRequest.addParam("message_typing_state", bool6.booleanValue());
        }
        if (bool7 != null) {
            newApiRequest.addParam("photo_new", bool7.booleanValue());
        }
        if (bool8 != null) {
            newApiRequest.addParam("audio_new", bool8.booleanValue());
        }
        if (bool9 != null) {
            newApiRequest.addParam("video_new", bool9.booleanValue());
        }
        if (bool10 != null) {
            newApiRequest.addParam("wall_reply_new", bool10.booleanValue());
        }
        if (bool11 != null) {
            newApiRequest.addParam("wall_reply_edit", bool11.booleanValue());
        }
        if (bool12 != null) {
            newApiRequest.addParam("wall_reply_delete", bool12.booleanValue());
        }
        if (bool13 != null) {
            newApiRequest.addParam("wall_reply_restore", bool13.booleanValue());
        }
        if (bool14 != null) {
            newApiRequest.addParam("wall_post_new", bool14.booleanValue());
        }
        if (bool15 != null) {
            newApiRequest.addParam("wall_repost", bool15.booleanValue());
        }
        if (bool16 != null) {
            newApiRequest.addParam("board_post_new", bool16.booleanValue());
        }
        if (bool17 != null) {
            newApiRequest.addParam("board_post_edit", bool17.booleanValue());
        }
        if (bool18 != null) {
            newApiRequest.addParam("board_post_restore", bool18.booleanValue());
        }
        if (bool19 != null) {
            newApiRequest.addParam("board_post_delete", bool19.booleanValue());
        }
        if (bool20 != null) {
            newApiRequest.addParam("photo_comment_new", bool20.booleanValue());
        }
        if (bool21 != null) {
            newApiRequest.addParam("photo_comment_edit", bool21.booleanValue());
        }
        if (bool22 != null) {
            newApiRequest.addParam("photo_comment_delete", bool22.booleanValue());
        }
        if (bool23 != null) {
            newApiRequest.addParam("photo_comment_restore", bool23.booleanValue());
        }
        if (bool24 != null) {
            newApiRequest.addParam("video_comment_new", bool24.booleanValue());
        }
        if (bool25 != null) {
            newApiRequest.addParam("video_comment_edit", bool25.booleanValue());
        }
        if (bool26 != null) {
            newApiRequest.addParam("video_comment_delete", bool26.booleanValue());
        }
        if (bool27 != null) {
            newApiRequest.addParam("video_comment_restore", bool27.booleanValue());
        }
        if (bool28 != null) {
            newApiRequest.addParam("market_comment_new", bool28.booleanValue());
        }
        if (bool29 != null) {
            newApiRequest.addParam("market_comment_edit", bool29.booleanValue());
        }
        if (bool30 != null) {
            newApiRequest.addParam("market_comment_delete", bool30.booleanValue());
        }
        if (bool31 != null) {
            newApiRequest.addParam("market_comment_restore", bool31.booleanValue());
        }
        if (bool32 != null) {
            newApiRequest.addParam("market_order_new", bool32.booleanValue());
        }
        if (bool33 != null) {
            newApiRequest.addParam("market_order_edit", bool33.booleanValue());
        }
        if (bool34 != null) {
            newApiRequest.addParam("poll_vote_new", bool34.booleanValue());
        }
        if (bool35 != null) {
            newApiRequest.addParam("group_join", bool35.booleanValue());
        }
        if (bool36 != null) {
            newApiRequest.addParam("group_leave", bool36.booleanValue());
        }
        if (bool37 != null) {
            newApiRequest.addParam("group_change_settings", bool37.booleanValue());
        }
        if (bool38 != null) {
            newApiRequest.addParam("group_change_photo", bool38.booleanValue());
        }
        if (bool39 != null) {
            newApiRequest.addParam("group_officers_edit", bool39.booleanValue());
        }
        if (bool40 != null) {
            newApiRequest.addParam("user_block", bool40.booleanValue());
        }
        if (bool41 != null) {
            newApiRequest.addParam("user_unblock", bool41.booleanValue());
        }
        if (bool42 != null) {
            newApiRequest.addParam("lead_forms_new", bool42.booleanValue());
        }
        if (bool43 != null) {
            newApiRequest.addParam("like_add", bool43.booleanValue());
        }
        if (bool44 != null) {
            newApiRequest.addParam("like_remove", bool44.booleanValue());
        }
        if (bool45 != null) {
            newApiRequest.addParam("message_event", bool45.booleanValue());
        }
        if (bool46 != null) {
            newApiRequest.addParam("donut_subscription_create", bool46.booleanValue());
        }
        if (bool47 != null) {
            newApiRequest.addParam("donut_subscription_prolonged", bool47.booleanValue());
        }
        if (bool48 != null) {
            newApiRequest.addParam("donut_subscription_cancelled", bool48.booleanValue());
        }
        if (bool49 != null) {
            newApiRequest.addParam("donut_subscription_price_changed", bool49.booleanValue());
        }
        if (bool50 != null) {
            newApiRequest.addParam("donut_subscription_expired", bool50.booleanValue());
        }
        if (bool51 != null) {
            newApiRequest.addParam("donut_money_withdraw", bool51.booleanValue());
        }
        if (bool52 != null) {
            newApiRequest.addParam("donut_money_withdraw_error", bool52.booleanValue());
            Unit unit2 = Unit.INSTANCE;
        }
        Unit unit3 = Unit.INSTANCE;
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsSetLongPollSettings(@NotNull UserId groupId, @Nullable Boolean bool, @Nullable String str, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Boolean bool5, @Nullable Boolean bool6, @Nullable Boolean bool7, @Nullable Boolean bool8, @Nullable Boolean bool9, @Nullable Boolean bool10, @Nullable Boolean bool11, @Nullable Boolean bool12, @Nullable Boolean bool13, @Nullable Boolean bool14, @Nullable Boolean bool15, @Nullable Boolean bool16, @Nullable Boolean bool17, @Nullable Boolean bool18, @Nullable Boolean bool19, @Nullable Boolean bool20, @Nullable Boolean bool21, @Nullable Boolean bool22, @Nullable Boolean bool23, @Nullable Boolean bool24, @Nullable Boolean bool25, @Nullable Boolean bool26, @Nullable Boolean bool27, @Nullable Boolean bool28, @Nullable Boolean bool29, @Nullable Boolean bool30, @Nullable Boolean bool31, @Nullable Boolean bool32, @Nullable Boolean bool33, @Nullable Boolean bool34, @Nullable Boolean bool35, @Nullable Boolean bool36, @Nullable Boolean bool37, @Nullable Boolean bool38, @Nullable Boolean bool39, @Nullable Boolean bool40, @Nullable Boolean bool41, @Nullable Boolean bool42, @Nullable Boolean bool43, @Nullable Boolean bool44, @Nullable Boolean bool45, @Nullable Boolean bool46, @Nullable Boolean bool47, @Nullable Boolean bool48, @Nullable Boolean bool49, @Nullable Boolean bool50) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.setLongPollSettings", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.e0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1067groupsSetLongPollSettings$lambda295;
                m1067groupsSetLongPollSettings$lambda295 = GroupsService.m1067groupsSetLongPollSettings$lambda295(jsonElement);
                return m1067groupsSetLongPollSettings$lambda295;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("enabled", bool.booleanValue());
        }
        if (str != null) {
            newApiRequest.addParam("api_version", str);
        }
        if (bool2 != null) {
            newApiRequest.addParam("message_new", bool2.booleanValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("message_reply", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("message_allow", bool4.booleanValue());
        }
        if (bool5 != null) {
            newApiRequest.addParam("message_deny", bool5.booleanValue());
        }
        if (bool6 != null) {
            newApiRequest.addParam("message_edit", bool6.booleanValue());
        }
        if (bool7 != null) {
            newApiRequest.addParam("message_typing_state", bool7.booleanValue());
        }
        if (bool8 != null) {
            newApiRequest.addParam("photo_new", bool8.booleanValue());
        }
        if (bool9 != null) {
            newApiRequest.addParam("audio_new", bool9.booleanValue());
        }
        if (bool10 != null) {
            newApiRequest.addParam("video_new", bool10.booleanValue());
        }
        if (bool11 != null) {
            newApiRequest.addParam("wall_reply_new", bool11.booleanValue());
        }
        if (bool12 != null) {
            newApiRequest.addParam("wall_reply_edit", bool12.booleanValue());
        }
        if (bool13 != null) {
            newApiRequest.addParam("wall_reply_delete", bool13.booleanValue());
        }
        if (bool14 != null) {
            newApiRequest.addParam("wall_reply_restore", bool14.booleanValue());
        }
        if (bool15 != null) {
            newApiRequest.addParam("wall_post_new", bool15.booleanValue());
        }
        if (bool16 != null) {
            newApiRequest.addParam("wall_repost", bool16.booleanValue());
        }
        if (bool17 != null) {
            newApiRequest.addParam("board_post_new", bool17.booleanValue());
        }
        if (bool18 != null) {
            newApiRequest.addParam("board_post_edit", bool18.booleanValue());
        }
        if (bool19 != null) {
            newApiRequest.addParam("board_post_restore", bool19.booleanValue());
        }
        if (bool20 != null) {
            newApiRequest.addParam("board_post_delete", bool20.booleanValue());
        }
        if (bool21 != null) {
            newApiRequest.addParam("photo_comment_new", bool21.booleanValue());
        }
        if (bool22 != null) {
            newApiRequest.addParam("photo_comment_edit", bool22.booleanValue());
        }
        if (bool23 != null) {
            newApiRequest.addParam("photo_comment_delete", bool23.booleanValue());
        }
        if (bool24 != null) {
            newApiRequest.addParam("photo_comment_restore", bool24.booleanValue());
        }
        if (bool25 != null) {
            newApiRequest.addParam("video_comment_new", bool25.booleanValue());
        }
        if (bool26 != null) {
            newApiRequest.addParam("video_comment_edit", bool26.booleanValue());
        }
        if (bool27 != null) {
            newApiRequest.addParam("video_comment_delete", bool27.booleanValue());
        }
        if (bool28 != null) {
            newApiRequest.addParam("video_comment_restore", bool28.booleanValue());
        }
        if (bool29 != null) {
            newApiRequest.addParam("market_comment_new", bool29.booleanValue());
        }
        if (bool30 != null) {
            newApiRequest.addParam("market_comment_edit", bool30.booleanValue());
        }
        if (bool31 != null) {
            newApiRequest.addParam("market_comment_delete", bool31.booleanValue());
        }
        if (bool32 != null) {
            newApiRequest.addParam("market_comment_restore", bool32.booleanValue());
        }
        if (bool33 != null) {
            newApiRequest.addParam("poll_vote_new", bool33.booleanValue());
        }
        if (bool34 != null) {
            newApiRequest.addParam("group_join", bool34.booleanValue());
        }
        if (bool35 != null) {
            newApiRequest.addParam("group_leave", bool35.booleanValue());
        }
        if (bool36 != null) {
            newApiRequest.addParam("group_change_settings", bool36.booleanValue());
        }
        if (bool37 != null) {
            newApiRequest.addParam("group_change_photo", bool37.booleanValue());
        }
        if (bool38 != null) {
            newApiRequest.addParam("group_officers_edit", bool38.booleanValue());
        }
        if (bool39 != null) {
            newApiRequest.addParam("user_block", bool39.booleanValue());
        }
        if (bool40 != null) {
            newApiRequest.addParam("user_unblock", bool40.booleanValue());
        }
        if (bool41 != null) {
            newApiRequest.addParam("like_add", bool41.booleanValue());
        }
        if (bool42 != null) {
            newApiRequest.addParam("like_remove", bool42.booleanValue());
        }
        if (bool43 != null) {
            newApiRequest.addParam("message_event", bool43.booleanValue());
        }
        if (bool44 != null) {
            newApiRequest.addParam("donut_subscription_create", bool44.booleanValue());
        }
        if (bool45 != null) {
            newApiRequest.addParam("donut_subscription_prolonged", bool45.booleanValue());
        }
        if (bool46 != null) {
            newApiRequest.addParam("donut_subscription_cancelled", bool46.booleanValue());
        }
        if (bool47 != null) {
            newApiRequest.addParam("donut_subscription_price_changed", bool47.booleanValue());
        }
        if (bool48 != null) {
            newApiRequest.addParam("donut_subscription_expired", bool48.booleanValue());
        }
        if (bool49 != null) {
            newApiRequest.addParam("donut_money_withdraw", bool49.booleanValue());
        }
        if (bool50 != null) {
            newApiRequest.addParam("donut_money_withdraw_error", bool50.booleanValue());
            Unit unit = Unit.INSTANCE;
        }
        Unit unit2 = Unit.INSTANCE;
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsSetSettings(@NotNull UserId groupId, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.setSettings", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.n0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1068groupsSetSettings$lambda348;
                m1068groupsSetSettings$lambda348 = GroupsService.m1068groupsSetSettings$lambda348(jsonElement);
                return m1068groupsSetSettings$lambda348;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("messages", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("bots_capabilities", bool2.booleanValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("bots_start_button", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("bots_add_to_chat", bool4.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> groupsSetUserNote(@NotNull UserId groupId, @NotNull UserId userId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.setUserNote", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1069groupsSetUserNote$lambda354;
                m1069groupsSetUserNote$lambda354 = GroupsService.m1069groupsSetUserNote$lambda354(jsonElement);
                return m1069groupsSetUserNote$lambda354;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "note", str, 0, 96, 4, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> groupsTagAdd(@NotNull UserId groupId, @NotNull String tagName, @Nullable GroupsTagAddTagColor groupsTagAddTagColor) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(tagName, "tagName");
        NewApiRequest newApiRequest = new NewApiRequest("groups.tagAdd", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.b0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1070groupsTagAdd$lambda357;
                m1070groupsTagAdd$lambda357 = GroupsService.m1070groupsTagAdd$lambda357(jsonElement);
                return m1070groupsTagAdd$lambda357;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, PushConstants.SUB_TAGS_STATUS_NAME, tagName, 0, 20, 4, (Object) null);
        if (groupsTagAddTagColor != null) {
            newApiRequest.addParam("tag_color", groupsTagAddTagColor.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> groupsTagBind(@NotNull UserId groupId, int i9, @NotNull UserId userId, @NotNull GroupsTagBindAct act) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(act, "act");
        NewApiRequest newApiRequest = new NewApiRequest("groups.tagBind", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.z
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1071groupsTagBind$lambda360;
                m1071groupsTagBind$lambda360 = GroupsService.m1071groupsTagBind$lambda360(jsonElement);
                return m1071groupsTagBind$lambda360;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, PushConstants.SUB_TAGS_STATUS_ID, i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam(AccessToken.USER_ID_KEY, userId, 1L, 2000000000L);
        newApiRequest.addParam("act", act.getValue());
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> groupsTagDelete(@NotNull UserId groupId, int i9) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.tagDelete", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.c1
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1072groupsTagDelete$lambda362;
                m1072groupsTagDelete$lambda362 = GroupsService.m1072groupsTagDelete$lambda362(jsonElement);
                return m1072groupsTagDelete$lambda362;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, PushConstants.SUB_TAGS_STATUS_ID, i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> groupsTagUpdate(@NotNull UserId groupId, int i9, @NotNull String tagName) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(tagName, "tagName");
        NewApiRequest newApiRequest = new NewApiRequest("groups.tagUpdate", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1073groupsTagUpdate$lambda364;
                m1073groupsTagUpdate$lambda364 = GroupsService.m1073groupsTagUpdate$lambda364(jsonElement);
                return m1073groupsTagUpdate$lambda364;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, PushConstants.SUB_TAGS_STATUS_ID, i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, PushConstants.SUB_TAGS_STATUS_NAME, tagName, 0, 20, 4, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsToggleMarket(@NotNull UserId groupId, @NotNull GroupsToggleMarketState state, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(state, "state");
        NewApiRequest newApiRequest = new NewApiRequest("groups.toggleMarket", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.a1
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1074groupsToggleMarket$lambda366;
                m1074groupsToggleMarket$lambda366 = GroupsService.m1074groupsToggleMarket$lambda366(jsonElement);
                return m1074groupsToggleMarket$lambda366;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        newApiRequest.addParam(ServerProtocol.DIALOG_PARAM_STATE, state.getValue());
        if (str != null) {
            newApiRequest.addParam("ref", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> groupsUnban(@NotNull UserId groupId, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("groups.unban", new ApiResponseParser() { // from class: com.vk.sdk.api.groups.t0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1075groupsUnban$lambda369;
                m1075groupsUnban$lambda369 = GroupsService.m1075groupsUnban$lambda369(jsonElement);
                return m1075groupsUnban$lambda369;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }
}
