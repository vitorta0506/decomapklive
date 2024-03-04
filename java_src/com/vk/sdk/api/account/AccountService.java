package com.vk.sdk.api.account;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.google.gson.JsonElement;
import com.guochao.faceshow.utils.Contants;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.account.AccountService;
import com.vk.sdk.api.account.dto.AccountAccountCounters;
import com.vk.sdk.api.account.dto.AccountChangePasswordResponse;
import com.vk.sdk.api.account.dto.AccountGetActiveOffersResponse;
import com.vk.sdk.api.account.dto.AccountGetBannedResponse;
import com.vk.sdk.api.account.dto.AccountGetCountersFilter;
import com.vk.sdk.api.account.dto.AccountGetInfoFields;
import com.vk.sdk.api.account.dto.AccountInfo;
import com.vk.sdk.api.account.dto.AccountPushSettings;
import com.vk.sdk.api.account.dto.AccountSaveProfileInfoBdateVisibility;
import com.vk.sdk.api.account.dto.AccountSaveProfileInfoRelation;
import com.vk.sdk.api.account.dto.AccountSaveProfileInfoResponse;
import com.vk.sdk.api.account.dto.AccountSaveProfileInfoSex;
import com.vk.sdk.api.account.dto.AccountSetInfoName;
import com.vk.sdk.api.account.dto.AccountUserSettings;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007J8\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000bJ)\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0014J\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u00042\u0006\u0010\u0016\u001a\u00020\u0007J)\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0014J*\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00042\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007J\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u001cJ\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u0004J\u0018\u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u00042\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u000bJ]\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u000b2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.¢\u0006\u0002\u0010/J¹\u0001\u00100\u001a\b\u0012\u0004\u0012\u0002010\u00042\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u00107\u001a\u0004\u0018\u0001082\n\b\u0002\u00109\u001a\u0004\u0018\u00010:2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010>2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010CJ$\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010E\u001a\u0004\u0018\u00010F2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010\u000bJ\f\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u001d\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010J\u001a\u0004\u0018\u00010.¢\u0006\u0002\u0010KJ>\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010&\u001a\u00020\u000b2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\u000b2\u0010\b\u0002\u0010G\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001cJA\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010P\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010RJ\u0018\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007J)\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.¢\u0006\u0002\u0010U¨\u0006V"}, d2 = {"Lcom/vk/sdk/api/account/AccountService;", "", "()V", "accountBan", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "ownerId", "Lcom/vk/dto/common/id/UserId;", "accountChangePassword", "Lcom/vk/sdk/api/account/dto/AccountChangePasswordResponse;", "newPassword", "", "restoreSid", "changePasswordHash", "oldPassword", "accountGetActiveOffers", "Lcom/vk/sdk/api/account/dto/AccountGetActiveOffersResponse;", TypedValues.CycleType.S_WAVE_OFFSET, "", AnimatedPasterJsonConfig.CONFIG_COUNT, "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "accountGetAppPermissions", Contants.USER_ID, "accountGetBanned", "Lcom/vk/sdk/api/account/dto/AccountGetBannedResponse;", "accountGetCounters", "Lcom/vk/sdk/api/account/dto/AccountAccountCounters;", "filter", "", "Lcom/vk/sdk/api/account/dto/AccountGetCountersFilter;", "accountGetInfo", "Lcom/vk/sdk/api/account/dto/AccountInfo;", GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/account/dto/AccountGetInfoFields;", "accountGetProfileInfo", "Lcom/vk/sdk/api/account/dto/AccountUserSettings;", "accountGetPushSettings", "Lcom/vk/sdk/api/account/dto/AccountPushSettings;", "deviceId", "accountRegisterDevice", JThirdPlatFormInterface.KEY_TOKEN, "deviceModel", "deviceYear", "systemVersion", "settings", "sandbox", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "accountSaveProfileInfo", "Lcom/vk/sdk/api/account/dto/AccountSaveProfileInfoResponse;", "firstName", "lastName", "maidenName", "screenName", "cancelRequestId", "sex", "Lcom/vk/sdk/api/account/dto/AccountSaveProfileInfoSex;", "relation", "Lcom/vk/sdk/api/account/dto/AccountSaveProfileInfoRelation;", "relationPartnerId", "bdate", "bdateVisibility", "Lcom/vk/sdk/api/account/dto/AccountSaveProfileInfoBdateVisibility;", "homeTown", "countryId", "cityId", "status", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/account/dto/AccountSaveProfileInfoSex;Lcom/vk/sdk/api/account/dto/AccountSaveProfileInfoRelation;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/account/dto/AccountSaveProfileInfoBdateVisibility;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "accountSetInfo", "name", "Lcom/vk/sdk/api/account/dto/AccountSetInfoName;", "value", "accountSetOffline", "accountSetOnline", "voip", "(Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "accountSetPushSettings", "key", "accountSetSilenceMode", CrashHianalyticsData.TIME, "peerId", RemoteMessageConst.Notification.SOUND, "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "accountUnban", "accountUnregisterDevice", "(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class AccountService {
    public static /* synthetic */ VKRequest accountBan$default(AccountService accountService, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        return accountService.accountBan(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountBan$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m846accountBan$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest accountChangePassword$default(AccountService accountService, String str, String str2, String str3, String str4, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        if ((i9 & 4) != 0) {
            str3 = null;
        }
        if ((i9 & 8) != 0) {
            str4 = null;
        }
        return accountService.accountChangePassword(str, str2, str3, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountChangePassword$lambda-3  reason: not valid java name */
    public static final AccountChangePasswordResponse m847accountChangePassword$lambda3(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AccountChangePasswordResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AccountChangePasswordResponse.class);
    }

    public static /* synthetic */ VKRequest accountGetActiveOffers$default(AccountService accountService, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        return accountService.accountGetActiveOffers(num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountGetActiveOffers$lambda-8  reason: not valid java name */
    public static final AccountGetActiveOffersResponse m848accountGetActiveOffers$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AccountGetActiveOffersResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AccountGetActiveOffersResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountGetAppPermissions$lambda-12  reason: not valid java name */
    public static final Integer m849accountGetAppPermissions$lambda12(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    public static /* synthetic */ VKRequest accountGetBanned$default(AccountService accountService, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        return accountService.accountGetBanned(num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountGetBanned$lambda-14  reason: not valid java name */
    public static final AccountGetBannedResponse m850accountGetBanned$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AccountGetBannedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AccountGetBannedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest accountGetCounters$default(AccountService accountService, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            userId = null;
        }
        return accountService.accountGetCounters(list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountGetCounters$lambda-18  reason: not valid java name */
    public static final AccountAccountCounters m851accountGetCounters$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AccountAccountCounters) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AccountAccountCounters.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest accountGetInfo$default(AccountService accountService, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        return accountService.accountGetInfo(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountGetInfo$lambda-23  reason: not valid java name */
    public static final AccountInfo m852accountGetInfo$lambda23(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AccountInfo) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AccountInfo.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountGetProfileInfo$lambda-27  reason: not valid java name */
    public static final AccountUserSettings m853accountGetProfileInfo$lambda27(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AccountUserSettings.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…UserSettings::class.java)");
        return (AccountUserSettings) fromJson;
    }

    public static /* synthetic */ VKRequest accountGetPushSettings$default(AccountService accountService, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        return accountService.accountGetPushSettings(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountGetPushSettings$lambda-28  reason: not valid java name */
    public static final AccountPushSettings m854accountGetPushSettings$lambda28(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AccountPushSettings) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AccountPushSettings.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountRegisterDevice$lambda-31  reason: not valid java name */
    public static final BaseOkResponse m855accountRegisterDevice$lambda31(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountSaveProfileInfo$lambda-38  reason: not valid java name */
    public static final AccountSaveProfileInfoResponse m856accountSaveProfileInfo$lambda38(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AccountSaveProfileInfoResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AccountSaveProfileInfoResponse.class);
    }

    public static /* synthetic */ VKRequest accountSetInfo$default(AccountService accountService, AccountSetInfoName accountSetInfoName, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            accountSetInfoName = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        return accountService.accountSetInfo(accountSetInfoName, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountSetInfo$lambda-54  reason: not valid java name */
    public static final BaseOkResponse m857accountSetInfo$lambda54(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountSetOffline$lambda-58  reason: not valid java name */
    public static final BaseOkResponse m858accountSetOffline$lambda58(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…seOkResponse::class.java)");
        return (BaseOkResponse) fromJson;
    }

    public static /* synthetic */ VKRequest accountSetOnline$default(AccountService accountService, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            bool = null;
        }
        return accountService.accountSetOnline(bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountSetOnline$lambda-59  reason: not valid java name */
    public static final BaseOkResponse m859accountSetOnline$lambda59(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest accountSetPushSettings$default(AccountService accountService, String str, String str2, String str3, List list, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        if ((i9 & 4) != 0) {
            str3 = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        return accountService.accountSetPushSettings(str, str2, str3, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountSetPushSettings$lambda-62  reason: not valid java name */
    public static final BaseOkResponse m860accountSetPushSettings$lambda62(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest accountSetSilenceMode$default(AccountService accountService, String str, Integer num, Integer num2, Integer num3, int i9, Object obj) {
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
        return accountService.accountSetSilenceMode(str, num, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountSetSilenceMode$lambda-67  reason: not valid java name */
    public static final BaseOkResponse m861accountSetSilenceMode$lambda67(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest accountUnban$default(AccountService accountService, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        return accountService.accountUnban(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountUnban$lambda-73  reason: not valid java name */
    public static final BaseOkResponse m862accountUnban$lambda73(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest accountUnregisterDevice$default(AccountService accountService, String str, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            bool = null;
        }
        return accountService.accountUnregisterDevice(str, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: accountUnregisterDevice$lambda-76  reason: not valid java name */
    public static final BaseOkResponse m863accountUnregisterDevice$lambda76(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> accountBan(@Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("account.ban", new ApiResponseParser() { // from class: ye.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m846accountBan$lambda0;
                m846accountBan$lambda0 = AccountService.m846accountBan$lambda0(jsonElement);
                return m846accountBan$lambda0;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AccountChangePasswordResponse> accountChangePassword(@NotNull String newPassword, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        NewApiRequest newApiRequest = new NewApiRequest("account.changePassword", new ApiResponseParser() { // from class: ye.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AccountChangePasswordResponse m847accountChangePassword$lambda3;
                m847accountChangePassword$lambda3 = AccountService.m847accountChangePassword$lambda3(jsonElement);
                return m847accountChangePassword$lambda3;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "new_password", newPassword, 6, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("restore_sid", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("change_password_hash", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("old_password", str3);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AccountGetActiveOffersResponse> accountGetActiveOffers(@Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("account.getActiveOffers", new ApiResponseParser() { // from class: ye.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AccountGetActiveOffersResponse m848accountGetActiveOffers$lambda8;
                m848accountGetActiveOffers$lambda8 = AccountService.m848accountGetActiveOffers$lambda8(jsonElement);
                return m848accountGetActiveOffers$lambda8;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> accountGetAppPermissions(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("account.getAppPermissions", new ApiResponseParser() { // from class: ye.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m849accountGetAppPermissions$lambda12;
                m849accountGetAppPermissions$lambda12 = AccountService.m849accountGetAppPermissions$lambda12(jsonElement);
                return m849accountGetAppPermissions$lambda12;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AccountGetBannedResponse> accountGetBanned(@Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("account.getBanned", new ApiResponseParser() { // from class: ye.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AccountGetBannedResponse m850accountGetBanned$lambda14;
                m850accountGetBanned$lambda14 = AccountService.m850accountGetBanned$lambda14(jsonElement);
                return m850accountGetBanned$lambda14;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AccountAccountCounters> accountGetCounters(@Nullable List<? extends AccountGetCountersFilter> list, @Nullable UserId userId) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("account.getCounters", new ApiResponseParser() { // from class: ye.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AccountAccountCounters m851accountGetCounters$lambda18;
                m851accountGetCounters$lambda18 = AccountService.m851accountGetCounters$lambda18(jsonElement);
                return m851accountGetCounters$lambda18;
            }
        });
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (AccountGetCountersFilter accountGetCountersFilter : list) {
                arrayList2.add(accountGetCountersFilter.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam("filter", (Iterable<?>) arrayList);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AccountInfo> accountGetInfo(@Nullable List<? extends AccountGetInfoFields> list) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("account.getInfo", new ApiResponseParser() { // from class: ye.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AccountInfo m852accountGetInfo$lambda23;
                m852accountGetInfo$lambda23 = AccountService.m852accountGetInfo$lambda23(jsonElement);
                return m852accountGetInfo$lambda23;
            }
        });
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (AccountGetInfoFields accountGetInfoFields : list) {
                arrayList2.add(accountGetInfoFields.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AccountUserSettings> accountGetProfileInfo() {
        return new NewApiRequest("account.getProfileInfo", new ApiResponseParser() { // from class: ye.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AccountUserSettings m853accountGetProfileInfo$lambda27;
                m853accountGetProfileInfo$lambda27 = AccountService.m853accountGetProfileInfo$lambda27(jsonElement);
                return m853accountGetProfileInfo$lambda27;
            }
        });
    }

    @NotNull
    public final VKRequest<AccountPushSettings> accountGetPushSettings(@Nullable String str) {
        NewApiRequest newApiRequest = new NewApiRequest("account.getPushSettings", new ApiResponseParser() { // from class: ye.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AccountPushSettings m854accountGetPushSettings$lambda28;
                m854accountGetPushSettings$lambda28 = AccountService.m854accountGetPushSettings$lambda28(jsonElement);
                return m854accountGetPushSettings$lambda28;
            }
        });
        if (str != null) {
            newApiRequest.addParam("device_id", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> accountRegisterDevice(@NotNull String token, @NotNull String deviceId, @Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        NewApiRequest newApiRequest = new NewApiRequest("account.registerDevice", new ApiResponseParser() { // from class: ye.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m855accountRegisterDevice$lambda31;
                m855accountRegisterDevice$lambda31 = AccountService.m855accountRegisterDevice$lambda31(jsonElement);
                return m855accountRegisterDevice$lambda31;
            }
        });
        newApiRequest.addParam(JThirdPlatFormInterface.KEY_TOKEN, token);
        newApiRequest.addParam("device_id", deviceId);
        if (str != null) {
            newApiRequest.addParam(TPDownloadProxyEnum.USER_DEVICE_MODEL, str);
        }
        if (num != null) {
            newApiRequest.addParam("device_year", num.intValue());
        }
        if (str2 != null) {
            newApiRequest.addParam("system_version", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("settings", str3);
        }
        if (bool != null) {
            newApiRequest.addParam("sandbox", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AccountSaveProfileInfoResponse> accountSaveProfileInfo(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num, @Nullable AccountSaveProfileInfoSex accountSaveProfileInfoSex, @Nullable AccountSaveProfileInfoRelation accountSaveProfileInfoRelation, @Nullable UserId userId, @Nullable String str5, @Nullable AccountSaveProfileInfoBdateVisibility accountSaveProfileInfoBdateVisibility, @Nullable String str6, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str7) {
        NewApiRequest newApiRequest;
        NewApiRequest newApiRequest2 = new NewApiRequest("account.saveProfileInfo", new ApiResponseParser() { // from class: ye.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AccountSaveProfileInfoResponse m856accountSaveProfileInfo$lambda38;
                m856accountSaveProfileInfo$lambda38 = AccountService.m856accountSaveProfileInfo$lambda38(jsonElement);
                return m856accountSaveProfileInfo$lambda38;
            }
        });
        if (str != null) {
            newApiRequest2.addParam("first_name", str);
        }
        if (str2 != null) {
            newApiRequest2.addParam("last_name", str2);
        }
        if (str3 != null) {
            newApiRequest2.addParam("maiden_name", str3);
        }
        if (str4 != null) {
            newApiRequest2.addParam("screen_name", str4);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest2, "cancel_request_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (accountSaveProfileInfoSex != null) {
            newApiRequest2.addParam("sex", accountSaveProfileInfoSex.getValue());
        }
        if (accountSaveProfileInfoRelation != null) {
            newApiRequest2.addParam("relation", accountSaveProfileInfoRelation.getValue());
        }
        if (userId == null) {
            newApiRequest = newApiRequest2;
        } else {
            newApiRequest = newApiRequest2;
            NewApiRequest.addParam$default(newApiRequest2, "relation_partner_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (str5 != null) {
            newApiRequest.addParam("bdate", str5);
        }
        if (accountSaveProfileInfoBdateVisibility != null) {
            newApiRequest.addParam("bdate_visibility", accountSaveProfileInfoBdateVisibility.getValue());
        }
        if (str6 != null) {
            newApiRequest.addParam("home_town", str6);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "country_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "city_id", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (str7 != null) {
            newApiRequest.addParam("status", str7);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> accountSetInfo(@Nullable AccountSetInfoName accountSetInfoName, @Nullable String str) {
        NewApiRequest newApiRequest = new NewApiRequest("account.setInfo", new ApiResponseParser() { // from class: ye.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m857accountSetInfo$lambda54;
                m857accountSetInfo$lambda54 = AccountService.m857accountSetInfo$lambda54(jsonElement);
                return m857accountSetInfo$lambda54;
            }
        });
        if (accountSetInfoName != null) {
            newApiRequest.addParam("name", accountSetInfoName.getValue());
        }
        if (str != null) {
            newApiRequest.addParam("value", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> accountSetOffline() {
        return new NewApiRequest("account.setOffline", new ApiResponseParser() { // from class: ye.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m858accountSetOffline$lambda58;
                m858accountSetOffline$lambda58 = AccountService.m858accountSetOffline$lambda58(jsonElement);
                return m858accountSetOffline$lambda58;
            }
        });
    }

    @NotNull
    public final VKRequest<BaseOkResponse> accountSetOnline(@Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("account.setOnline", new ApiResponseParser() { // from class: ye.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m859accountSetOnline$lambda59;
                m859accountSetOnline$lambda59 = AccountService.m859accountSetOnline$lambda59(jsonElement);
                return m859accountSetOnline$lambda59;
            }
        });
        if (bool != null) {
            newApiRequest.addParam("voip", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> accountSetPushSettings(@NotNull String deviceId, @Nullable String str, @Nullable String str2, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        NewApiRequest newApiRequest = new NewApiRequest("account.setPushSettings", new ApiResponseParser() { // from class: ye.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m860accountSetPushSettings$lambda62;
                m860accountSetPushSettings$lambda62 = AccountService.m860accountSetPushSettings$lambda62(jsonElement);
                return m860accountSetPushSettings$lambda62;
            }
        });
        newApiRequest.addParam("device_id", deviceId);
        if (str != null) {
            newApiRequest.addParam("settings", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("key", str2);
        }
        if (list != null) {
            newApiRequest.addParam("value", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> accountSetSilenceMode(@Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("account.setSilenceMode", new ApiResponseParser() { // from class: ye.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m861accountSetSilenceMode$lambda67;
                m861accountSetSilenceMode$lambda67 = AccountService.m861accountSetSilenceMode$lambda67(jsonElement);
                return m861accountSetSilenceMode$lambda67;
            }
        });
        if (str != null) {
            newApiRequest.addParam("device_id", str);
        }
        if (num != null) {
            newApiRequest.addParam(CrashHianalyticsData.TIME, num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam("peer_id", num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam(RemoteMessageConst.Notification.SOUND, num3.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> accountUnban(@Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("account.unban", new ApiResponseParser() { // from class: ye.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m862accountUnban$lambda73;
                m862accountUnban$lambda73 = AccountService.m862accountUnban$lambda73(jsonElement);
                return m862accountUnban$lambda73;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> accountUnregisterDevice(@Nullable String str, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("account.unregisterDevice", new ApiResponseParser() { // from class: ye.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m863accountUnregisterDevice$lambda76;
                m863accountUnregisterDevice$lambda76 = AccountService.m863accountUnregisterDevice$lambda76(jsonElement);
                return m863accountUnregisterDevice$lambda76;
            }
        });
        if (str != null) {
            newApiRequest.addParam("device_id", str);
        }
        if (bool != null) {
            newApiRequest.addParam("sandbox", bool.booleanValue());
        }
        return newApiRequest;
    }
}
