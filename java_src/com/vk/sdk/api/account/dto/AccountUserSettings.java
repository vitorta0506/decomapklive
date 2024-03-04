package com.vk.sdk.api.account.dto;

import com.facebook.appevents.UserDataStore;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.audio.dto.AudioAudio;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseCity;
import com.vk.sdk.api.base.dto.BaseCountry;
import com.vk.sdk.api.base.dto.BaseSex;
import com.vk.sdk.api.users.dto.UsersPersonal;
import com.vk.sdk.api.users.dto.UsersUserConnections;
import com.vk.sdk.api.users.dto.UsersUserMin;
import com.vk.sdk.api.users.dto.UsersUserRelation;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bS\b\u0086\b\u0018\u00002\u00020\u0001Bá\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010&\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-\u0012\u0010\b\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010&¢\u0006\u0002\u0010/J\t\u0010]\u001a\u00020\u0003HÆ\u0003J\u0010\u0010^\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u00106J\u0010\u0010_\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u00106J\u000b\u0010`\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00103J\u000b\u0010c\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\t\u0010h\u001a\u00020\u0005HÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010 HÆ\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\"HÆ\u0003J\u000b\u0010l\u001a\u0004\u0018\u00010$HÆ\u0003J\u0011\u0010m\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010&HÆ\u0003J\u000b\u0010n\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010)HÆ\u0003J\u000b\u0010p\u001a\u0004\u0018\u00010+HÆ\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010-HÆ\u0003J\u0011\u0010r\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010&HÆ\u0003J\t\u0010s\u001a\u00020\u0005HÆ\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010u\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u00106J\u000b\u0010v\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010x\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00103J\u000b\u0010y\u001a\u0004\u0018\u00010\u0005HÆ\u0003Jð\u0002\u0010z\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010&2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-2\u0010\b\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010&HÆ\u0001¢\u0006\u0002\u0010{J\u0013\u0010|\u001a\u00020\t2\b\u0010}\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010~\u001a\u00020\rHÖ\u0001J\t\u0010\u007f\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00104\u001a\u0004\b2\u00103R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00107\u001a\u0004\b5\u00106R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u00101R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u00101R\u001a\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00104\u001a\u0004\b@\u00103R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u00101R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0018\u0010,\u001a\u0004\u0018\u00010-8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010ER\u001a\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00107\u001a\u0004\b\u0010\u00106R\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00107\u001a\u0004\b\b\u00106R\u001e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010&8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u00101R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bI\u00101R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bL\u0010MR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u00101R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u00101R\u0018\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bP\u0010QR\u0018\u0010!\u001a\u0004\u0018\u00010\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bR\u0010SR\u0018\u0010#\u001a\u0004\u0018\u00010$8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bT\u0010UR\u001e\u0010%\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010&8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bV\u0010GR\u0018\u0010'\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u00101R\u0018\u0010(\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bX\u0010YR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bZ\u00101R\u0018\u0010*\u001a\u0004\u0018\u00010+8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b[\u0010\\¨\u0006\u0080\u0001"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountUserSettings;", "", "id", "Lcom/vk/dto/common/id/UserId;", "homeTown", "", "status", "photo200", "isServiceAccount", "", "deactivated", "firstName", "hidden", "", "lastName", "canAccessClosed", "isClosed", "connections", "Lcom/vk/sdk/api/users/dto/UsersUserConnections;", "bdate", "bdateVisibility", "city", "Lcom/vk/sdk/api/base/dto/BaseCity;", UserDataStore.COUNTRY, "Lcom/vk/sdk/api/base/dto/BaseCountry;", "maidenName", "nameRequest", "Lcom/vk/sdk/api/account/dto/AccountNameRequest;", "personal", "Lcom/vk/sdk/api/users/dto/UsersPersonal;", "phone", "relation", "Lcom/vk/sdk/api/users/dto/UsersUserRelation;", "relationPartner", "Lcom/vk/sdk/api/users/dto/UsersUserMin;", "relationPending", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "relationRequests", "", "screenName", "sex", "Lcom/vk/sdk/api/base/dto/BaseSex;", "statusAudio", "Lcom/vk/sdk/api/audio/dto/AudioAudio;", "interests", "Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterests;", "languages", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/users/dto/UsersUserConnections;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseCity;Lcom/vk/sdk/api/base/dto/BaseCountry;Ljava/lang/String;Lcom/vk/sdk/api/account/dto/AccountNameRequest;Lcom/vk/sdk/api/users/dto/UsersPersonal;Ljava/lang/String;Lcom/vk/sdk/api/users/dto/UsersUserRelation;Lcom/vk/sdk/api/users/dto/UsersUserMin;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseSex;Lcom/vk/sdk/api/audio/dto/AudioAudio;Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterests;Ljava/util/List;)V", "getBdate", "()Ljava/lang/String;", "getBdateVisibility", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCanAccessClosed", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCity", "()Lcom/vk/sdk/api/base/dto/BaseCity;", "getConnections", "()Lcom/vk/sdk/api/users/dto/UsersUserConnections;", "getCountry", "()Lcom/vk/sdk/api/base/dto/BaseCountry;", "getDeactivated", "getFirstName", "getHidden", "getHomeTown", "getId", "()Lcom/vk/dto/common/id/UserId;", "getInterests", "()Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterests;", "getLanguages", "()Ljava/util/List;", "getLastName", "getMaidenName", "getNameRequest", "()Lcom/vk/sdk/api/account/dto/AccountNameRequest;", "getPersonal", "()Lcom/vk/sdk/api/users/dto/UsersPersonal;", "getPhone", "getPhoto200", "getRelation", "()Lcom/vk/sdk/api/users/dto/UsersUserRelation;", "getRelationPartner", "()Lcom/vk/sdk/api/users/dto/UsersUserMin;", "getRelationPending", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getRelationRequests", "getScreenName", "getSex", "()Lcom/vk/sdk/api/base/dto/BaseSex;", "getStatus", "getStatusAudio", "()Lcom/vk/sdk/api/audio/dto/AudioAudio;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/users/dto/UsersUserConnections;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseCity;Lcom/vk/sdk/api/base/dto/BaseCountry;Ljava/lang/String;Lcom/vk/sdk/api/account/dto/AccountNameRequest;Lcom/vk/sdk/api/users/dto/UsersPersonal;Ljava/lang/String;Lcom/vk/sdk/api/users/dto/UsersUserRelation;Lcom/vk/sdk/api/users/dto/UsersUserMin;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseSex;Lcom/vk/sdk/api/audio/dto/AudioAudio;Lcom/vk/sdk/api/account/dto/AccountUserSettingsInterests;Ljava/util/List;)Lcom/vk/sdk/api/account/dto/AccountUserSettings;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountUserSettings {
    @SerializedName("bdate")
    @Nullable
    private final String bdate;
    @SerializedName("bdate_visibility")
    @Nullable
    private final Integer bdateVisibility;
    @SerializedName("can_access_closed")
    @Nullable
    private final Boolean canAccessClosed;
    @SerializedName("city")
    @Nullable
    private final BaseCity city;
    @SerializedName("connections")
    @Nullable
    private final UsersUserConnections connections;
    @SerializedName(UserDataStore.COUNTRY)
    @Nullable
    private final BaseCountry country;
    @SerializedName("deactivated")
    @Nullable
    private final String deactivated;
    @SerializedName("first_name")
    @Nullable
    private final String firstName;
    @SerializedName("hidden")
    @Nullable
    private final Integer hidden;
    @SerializedName("home_town")
    @NotNull
    private final String homeTown;
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final UserId f35653id;
    @SerializedName("interests")
    @Nullable
    private final AccountUserSettingsInterests interests;
    @SerializedName("is_closed")
    @Nullable
    private final Boolean isClosed;
    @SerializedName("is_service_account")
    @Nullable
    private final Boolean isServiceAccount;
    @SerializedName("languages")
    @Nullable
    private final List<String> languages;
    @SerializedName("last_name")
    @Nullable
    private final String lastName;
    @SerializedName("maiden_name")
    @Nullable
    private final String maidenName;
    @SerializedName("name_request")
    @Nullable
    private final AccountNameRequest nameRequest;
    @SerializedName("personal")
    @Nullable
    private final UsersPersonal personal;
    @SerializedName("phone")
    @Nullable
    private final String phone;
    @SerializedName("photo_200")
    @Nullable
    private final String photo200;
    @SerializedName("relation")
    @Nullable
    private final UsersUserRelation relation;
    @SerializedName("relation_partner")
    @Nullable
    private final UsersUserMin relationPartner;
    @SerializedName("relation_pending")
    @Nullable
    private final BaseBoolInt relationPending;
    @SerializedName("relation_requests")
    @Nullable
    private final List<UsersUserMin> relationRequests;
    @SerializedName("screen_name")
    @Nullable
    private final String screenName;
    @SerializedName("sex")
    @Nullable
    private final BaseSex sex;
    @SerializedName("status")
    @NotNull
    private final String status;
    @SerializedName("status_audio")
    @Nullable
    private final AudioAudio statusAudio;

    public AccountUserSettings(@NotNull UserId id2, @NotNull String homeTown, @NotNull String status, @Nullable String str, @Nullable Boolean bool, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable String str4, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable UsersUserConnections usersUserConnections, @Nullable String str5, @Nullable Integer num2, @Nullable BaseCity baseCity, @Nullable BaseCountry baseCountry, @Nullable String str6, @Nullable AccountNameRequest accountNameRequest, @Nullable UsersPersonal usersPersonal, @Nullable String str7, @Nullable UsersUserRelation usersUserRelation, @Nullable UsersUserMin usersUserMin, @Nullable BaseBoolInt baseBoolInt, @Nullable List<UsersUserMin> list, @Nullable String str8, @Nullable BaseSex baseSex, @Nullable AudioAudio audioAudio, @Nullable AccountUserSettingsInterests accountUserSettingsInterests, @Nullable List<String> list2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(homeTown, "homeTown");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f35653id = id2;
        this.homeTown = homeTown;
        this.status = status;
        this.photo200 = str;
        this.isServiceAccount = bool;
        this.deactivated = str2;
        this.firstName = str3;
        this.hidden = num;
        this.lastName = str4;
        this.canAccessClosed = bool2;
        this.isClosed = bool3;
        this.connections = usersUserConnections;
        this.bdate = str5;
        this.bdateVisibility = num2;
        this.city = baseCity;
        this.country = baseCountry;
        this.maidenName = str6;
        this.nameRequest = accountNameRequest;
        this.personal = usersPersonal;
        this.phone = str7;
        this.relation = usersUserRelation;
        this.relationPartner = usersUserMin;
        this.relationPending = baseBoolInt;
        this.relationRequests = list;
        this.screenName = str8;
        this.sex = baseSex;
        this.statusAudio = audioAudio;
        this.interests = accountUserSettingsInterests;
        this.languages = list2;
    }

    @NotNull
    public final UserId component1() {
        return this.f35653id;
    }

    @Nullable
    public final Boolean component10() {
        return this.canAccessClosed;
    }

    @Nullable
    public final Boolean component11() {
        return this.isClosed;
    }

    @Nullable
    public final UsersUserConnections component12() {
        return this.connections;
    }

    @Nullable
    public final String component13() {
        return this.bdate;
    }

    @Nullable
    public final Integer component14() {
        return this.bdateVisibility;
    }

    @Nullable
    public final BaseCity component15() {
        return this.city;
    }

    @Nullable
    public final BaseCountry component16() {
        return this.country;
    }

    @Nullable
    public final String component17() {
        return this.maidenName;
    }

    @Nullable
    public final AccountNameRequest component18() {
        return this.nameRequest;
    }

    @Nullable
    public final UsersPersonal component19() {
        return this.personal;
    }

    @NotNull
    public final String component2() {
        return this.homeTown;
    }

    @Nullable
    public final String component20() {
        return this.phone;
    }

    @Nullable
    public final UsersUserRelation component21() {
        return this.relation;
    }

    @Nullable
    public final UsersUserMin component22() {
        return this.relationPartner;
    }

    @Nullable
    public final BaseBoolInt component23() {
        return this.relationPending;
    }

    @Nullable
    public final List<UsersUserMin> component24() {
        return this.relationRequests;
    }

    @Nullable
    public final String component25() {
        return this.screenName;
    }

    @Nullable
    public final BaseSex component26() {
        return this.sex;
    }

    @Nullable
    public final AudioAudio component27() {
        return this.statusAudio;
    }

    @Nullable
    public final AccountUserSettingsInterests component28() {
        return this.interests;
    }

    @Nullable
    public final List<String> component29() {
        return this.languages;
    }

    @NotNull
    public final String component3() {
        return this.status;
    }

    @Nullable
    public final String component4() {
        return this.photo200;
    }

    @Nullable
    public final Boolean component5() {
        return this.isServiceAccount;
    }

    @Nullable
    public final String component6() {
        return this.deactivated;
    }

    @Nullable
    public final String component7() {
        return this.firstName;
    }

    @Nullable
    public final Integer component8() {
        return this.hidden;
    }

    @Nullable
    public final String component9() {
        return this.lastName;
    }

    @NotNull
    public final AccountUserSettings copy(@NotNull UserId id2, @NotNull String homeTown, @NotNull String status, @Nullable String str, @Nullable Boolean bool, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable String str4, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable UsersUserConnections usersUserConnections, @Nullable String str5, @Nullable Integer num2, @Nullable BaseCity baseCity, @Nullable BaseCountry baseCountry, @Nullable String str6, @Nullable AccountNameRequest accountNameRequest, @Nullable UsersPersonal usersPersonal, @Nullable String str7, @Nullable UsersUserRelation usersUserRelation, @Nullable UsersUserMin usersUserMin, @Nullable BaseBoolInt baseBoolInt, @Nullable List<UsersUserMin> list, @Nullable String str8, @Nullable BaseSex baseSex, @Nullable AudioAudio audioAudio, @Nullable AccountUserSettingsInterests accountUserSettingsInterests, @Nullable List<String> list2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(homeTown, "homeTown");
        Intrinsics.checkNotNullParameter(status, "status");
        return new AccountUserSettings(id2, homeTown, status, str, bool, str2, str3, num, str4, bool2, bool3, usersUserConnections, str5, num2, baseCity, baseCountry, str6, accountNameRequest, usersPersonal, str7, usersUserRelation, usersUserMin, baseBoolInt, list, str8, baseSex, audioAudio, accountUserSettingsInterests, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountUserSettings) {
            AccountUserSettings accountUserSettings = (AccountUserSettings) obj;
            return Intrinsics.areEqual(this.f35653id, accountUserSettings.f35653id) && Intrinsics.areEqual(this.homeTown, accountUserSettings.homeTown) && Intrinsics.areEqual(this.status, accountUserSettings.status) && Intrinsics.areEqual(this.photo200, accountUserSettings.photo200) && Intrinsics.areEqual(this.isServiceAccount, accountUserSettings.isServiceAccount) && Intrinsics.areEqual(this.deactivated, accountUserSettings.deactivated) && Intrinsics.areEqual(this.firstName, accountUserSettings.firstName) && Intrinsics.areEqual(this.hidden, accountUserSettings.hidden) && Intrinsics.areEqual(this.lastName, accountUserSettings.lastName) && Intrinsics.areEqual(this.canAccessClosed, accountUserSettings.canAccessClosed) && Intrinsics.areEqual(this.isClosed, accountUserSettings.isClosed) && Intrinsics.areEqual(this.connections, accountUserSettings.connections) && Intrinsics.areEqual(this.bdate, accountUserSettings.bdate) && Intrinsics.areEqual(this.bdateVisibility, accountUserSettings.bdateVisibility) && Intrinsics.areEqual(this.city, accountUserSettings.city) && Intrinsics.areEqual(this.country, accountUserSettings.country) && Intrinsics.areEqual(this.maidenName, accountUserSettings.maidenName) && Intrinsics.areEqual(this.nameRequest, accountUserSettings.nameRequest) && Intrinsics.areEqual(this.personal, accountUserSettings.personal) && Intrinsics.areEqual(this.phone, accountUserSettings.phone) && this.relation == accountUserSettings.relation && Intrinsics.areEqual(this.relationPartner, accountUserSettings.relationPartner) && this.relationPending == accountUserSettings.relationPending && Intrinsics.areEqual(this.relationRequests, accountUserSettings.relationRequests) && Intrinsics.areEqual(this.screenName, accountUserSettings.screenName) && this.sex == accountUserSettings.sex && Intrinsics.areEqual(this.statusAudio, accountUserSettings.statusAudio) && Intrinsics.areEqual(this.interests, accountUserSettings.interests) && Intrinsics.areEqual(this.languages, accountUserSettings.languages);
        }
        return false;
    }

    @Nullable
    public final String getBdate() {
        return this.bdate;
    }

    @Nullable
    public final Integer getBdateVisibility() {
        return this.bdateVisibility;
    }

    @Nullable
    public final Boolean getCanAccessClosed() {
        return this.canAccessClosed;
    }

    @Nullable
    public final BaseCity getCity() {
        return this.city;
    }

    @Nullable
    public final UsersUserConnections getConnections() {
        return this.connections;
    }

    @Nullable
    public final BaseCountry getCountry() {
        return this.country;
    }

    @Nullable
    public final String getDeactivated() {
        return this.deactivated;
    }

    @Nullable
    public final String getFirstName() {
        return this.firstName;
    }

    @Nullable
    public final Integer getHidden() {
        return this.hidden;
    }

    @NotNull
    public final String getHomeTown() {
        return this.homeTown;
    }

    @NotNull
    public final UserId getId() {
        return this.f35653id;
    }

    @Nullable
    public final AccountUserSettingsInterests getInterests() {
        return this.interests;
    }

    @Nullable
    public final List<String> getLanguages() {
        return this.languages;
    }

    @Nullable
    public final String getLastName() {
        return this.lastName;
    }

    @Nullable
    public final String getMaidenName() {
        return this.maidenName;
    }

    @Nullable
    public final AccountNameRequest getNameRequest() {
        return this.nameRequest;
    }

    @Nullable
    public final UsersPersonal getPersonal() {
        return this.personal;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    @Nullable
    public final String getPhoto200() {
        return this.photo200;
    }

    @Nullable
    public final UsersUserRelation getRelation() {
        return this.relation;
    }

    @Nullable
    public final UsersUserMin getRelationPartner() {
        return this.relationPartner;
    }

    @Nullable
    public final BaseBoolInt getRelationPending() {
        return this.relationPending;
    }

    @Nullable
    public final List<UsersUserMin> getRelationRequests() {
        return this.relationRequests;
    }

    @Nullable
    public final String getScreenName() {
        return this.screenName;
    }

    @Nullable
    public final BaseSex getSex() {
        return this.sex;
    }

    @NotNull
    public final String getStatus() {
        return this.status;
    }

    @Nullable
    public final AudioAudio getStatusAudio() {
        return this.statusAudio;
    }

    public int hashCode() {
        int hashCode = ((((this.f35653id.hashCode() * 31) + this.homeTown.hashCode()) * 31) + this.status.hashCode()) * 31;
        String str = this.photo200;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.isServiceAccount;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str2 = this.deactivated;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.firstName;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.hidden;
        int hashCode6 = (hashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.lastName;
        int hashCode7 = (hashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool2 = this.canAccessClosed;
        int hashCode8 = (hashCode7 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.isClosed;
        int hashCode9 = (hashCode8 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        UsersUserConnections usersUserConnections = this.connections;
        int hashCode10 = (hashCode9 + (usersUserConnections == null ? 0 : usersUserConnections.hashCode())) * 31;
        String str5 = this.bdate;
        int hashCode11 = (hashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num2 = this.bdateVisibility;
        int hashCode12 = (hashCode11 + (num2 == null ? 0 : num2.hashCode())) * 31;
        BaseCity baseCity = this.city;
        int hashCode13 = (hashCode12 + (baseCity == null ? 0 : baseCity.hashCode())) * 31;
        BaseCountry baseCountry = this.country;
        int hashCode14 = (hashCode13 + (baseCountry == null ? 0 : baseCountry.hashCode())) * 31;
        String str6 = this.maidenName;
        int hashCode15 = (hashCode14 + (str6 == null ? 0 : str6.hashCode())) * 31;
        AccountNameRequest accountNameRequest = this.nameRequest;
        int hashCode16 = (hashCode15 + (accountNameRequest == null ? 0 : accountNameRequest.hashCode())) * 31;
        UsersPersonal usersPersonal = this.personal;
        int hashCode17 = (hashCode16 + (usersPersonal == null ? 0 : usersPersonal.hashCode())) * 31;
        String str7 = this.phone;
        int hashCode18 = (hashCode17 + (str7 == null ? 0 : str7.hashCode())) * 31;
        UsersUserRelation usersUserRelation = this.relation;
        int hashCode19 = (hashCode18 + (usersUserRelation == null ? 0 : usersUserRelation.hashCode())) * 31;
        UsersUserMin usersUserMin = this.relationPartner;
        int hashCode20 = (hashCode19 + (usersUserMin == null ? 0 : usersUserMin.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.relationPending;
        int hashCode21 = (hashCode20 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        List<UsersUserMin> list = this.relationRequests;
        int hashCode22 = (hashCode21 + (list == null ? 0 : list.hashCode())) * 31;
        String str8 = this.screenName;
        int hashCode23 = (hashCode22 + (str8 == null ? 0 : str8.hashCode())) * 31;
        BaseSex baseSex = this.sex;
        int hashCode24 = (hashCode23 + (baseSex == null ? 0 : baseSex.hashCode())) * 31;
        AudioAudio audioAudio = this.statusAudio;
        int hashCode25 = (hashCode24 + (audioAudio == null ? 0 : audioAudio.hashCode())) * 31;
        AccountUserSettingsInterests accountUserSettingsInterests = this.interests;
        int hashCode26 = (hashCode25 + (accountUserSettingsInterests == null ? 0 : accountUserSettingsInterests.hashCode())) * 31;
        List<String> list2 = this.languages;
        return hashCode26 + (list2 != null ? list2.hashCode() : 0);
    }

    @Nullable
    public final Boolean isClosed() {
        return this.isClosed;
    }

    @Nullable
    public final Boolean isServiceAccount() {
        return this.isServiceAccount;
    }

    @NotNull
    public String toString() {
        UserId userId = this.f35653id;
        String str = this.homeTown;
        String str2 = this.status;
        String str3 = this.photo200;
        Boolean bool = this.isServiceAccount;
        String str4 = this.deactivated;
        String str5 = this.firstName;
        Integer num = this.hidden;
        String str6 = this.lastName;
        Boolean bool2 = this.canAccessClosed;
        Boolean bool3 = this.isClosed;
        UsersUserConnections usersUserConnections = this.connections;
        String str7 = this.bdate;
        Integer num2 = this.bdateVisibility;
        BaseCity baseCity = this.city;
        BaseCountry baseCountry = this.country;
        String str8 = this.maidenName;
        AccountNameRequest accountNameRequest = this.nameRequest;
        UsersPersonal usersPersonal = this.personal;
        String str9 = this.phone;
        UsersUserRelation usersUserRelation = this.relation;
        UsersUserMin usersUserMin = this.relationPartner;
        BaseBoolInt baseBoolInt = this.relationPending;
        List<UsersUserMin> list = this.relationRequests;
        String str10 = this.screenName;
        BaseSex baseSex = this.sex;
        AudioAudio audioAudio = this.statusAudio;
        AccountUserSettingsInterests accountUserSettingsInterests = this.interests;
        List<String> list2 = this.languages;
        return "AccountUserSettings(id=" + userId + ", homeTown=" + str + ", status=" + str2 + ", photo200=" + str3 + ", isServiceAccount=" + bool + ", deactivated=" + str4 + ", firstName=" + str5 + ", hidden=" + num + ", lastName=" + str6 + ", canAccessClosed=" + bool2 + ", isClosed=" + bool3 + ", connections=" + usersUserConnections + ", bdate=" + str7 + ", bdateVisibility=" + num2 + ", city=" + baseCity + ", country=" + baseCountry + ", maidenName=" + str8 + ", nameRequest=" + accountNameRequest + ", personal=" + usersPersonal + ", phone=" + str9 + ", relation=" + usersUserRelation + ", relationPartner=" + usersUserMin + ", relationPending=" + baseBoolInt + ", relationRequests=" + list + ", screenName=" + str10 + ", sex=" + baseSex + ", statusAudio=" + audioAudio + ", interests=" + accountUserSettingsInterests + ", languages=" + list2 + ")";
    }

    public /* synthetic */ AccountUserSettings(UserId userId, String str, String str2, String str3, Boolean bool, String str4, String str5, Integer num, String str6, Boolean bool2, Boolean bool3, UsersUserConnections usersUserConnections, String str7, Integer num2, BaseCity baseCity, BaseCountry baseCountry, String str8, AccountNameRequest accountNameRequest, UsersPersonal usersPersonal, String str9, UsersUserRelation usersUserRelation, UsersUserMin usersUserMin, BaseBoolInt baseBoolInt, List list, String str10, BaseSex baseSex, AudioAudio audioAudio, AccountUserSettingsInterests accountUserSettingsInterests, List list2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, str, str2, (i9 & 8) != 0 ? null : str3, (i9 & 16) != 0 ? null : bool, (i9 & 32) != 0 ? null : str4, (i9 & 64) != 0 ? null : str5, (i9 & 128) != 0 ? null : num, (i9 & 256) != 0 ? null : str6, (i9 & 512) != 0 ? null : bool2, (i9 & 1024) != 0 ? null : bool3, (i9 & 2048) != 0 ? null : usersUserConnections, (i9 & 4096) != 0 ? null : str7, (i9 & 8192) != 0 ? null : num2, (i9 & 16384) != 0 ? null : baseCity, (32768 & i9) != 0 ? null : baseCountry, (65536 & i9) != 0 ? null : str8, (131072 & i9) != 0 ? null : accountNameRequest, (262144 & i9) != 0 ? null : usersPersonal, (524288 & i9) != 0 ? null : str9, (1048576 & i9) != 0 ? null : usersUserRelation, (2097152 & i9) != 0 ? null : usersUserMin, (4194304 & i9) != 0 ? null : baseBoolInt, (8388608 & i9) != 0 ? null : list, (16777216 & i9) != 0 ? null : str10, (33554432 & i9) != 0 ? null : baseSex, (67108864 & i9) != 0 ? null : audioAudio, (134217728 & i9) != 0 ? null : accountUserSettingsInterests, (i9 & 268435456) != 0 ? null : list2);
    }
}
