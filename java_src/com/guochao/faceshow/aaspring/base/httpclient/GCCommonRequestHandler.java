package com.guochao.faceshow.aaspring.base.httpclient;

import android.os.Build;
import android.util.Base64;
import androidx.annotation.Keep;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b7.b;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.RequestInterceptor;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.location.FcLocation;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.MD5Utils;
import com.guochao.faceshow.utils.SystemUtil;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.TimeZone;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
import q7.a;
@Keep
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\nB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0007J\b\u0010\t\u001a\u00020\u0006H\u0007¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;", "", "()V", "init", "", "makeAgent", "", "makeBase64Common", TypedValues.Custom.S_STRING, "makeCommon", "CommonData", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GCCommonRequestHandler {
    @NotNull
    public static final GCCommonRequestHandler INSTANCE = new GCCommonRequestHandler();

    private GCCommonRequestHandler() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String makeAgent() {
        return "Android v" + Build.VERSION.RELEASE + "/BuzzCast " + SystemUtil.getAPPVersionNameAndVersionCode() + IOUtils.DIR_SEPARATOR_UNIX + Build.MODEL + IOUtils.DIR_SEPARATOR_UNIX + Build.BRAND;
    }

    @JvmStatic
    @NotNull
    public static final String makeBase64Common(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkNotNullExpressionValue(forName, "forName(\"UTF-8\")");
        byte[] bytes = string.getBytes(forName);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        String encode = URLEncoder.encode(Base64.encodeToString(bytes, 2), "UTF-8");
        Intrinsics.checkNotNullExpressionValue(encode, "encode( //然后URL encode\n …     ), \"UTF-8\"\n        )");
        return encode;
    }

    @JvmStatic
    @NotNull
    public static final String makeCommon() {
        CommonData commonData;
        CommonData commonData2 = new CommonData(0L, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, null, 65535, null);
        FcLocation fcLocation = (FcLocation) MemoryCache.getInstance().get(FcLocation.class);
        if (fcLocation == null) {
            commonData = commonData2;
            commonData.setLatitude("0.0");
            commonData.setLongitude("0.0");
        } else {
            commonData = commonData2;
            commonData.setLatitude(String.valueOf(fcLocation.getLatitude()));
            commonData.setLongitude(String.valueOf(fcLocation.getLongitude()));
        }
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        if (current != null) {
            commonData.setSystoken(current.getToken());
        }
        String json = GsonGetter.getGson().toJson(commonData);
        Intrinsics.checkNotNullExpressionValue(json, "getGson().toJson(data)");
        return json;
    }

    public final void init() {
        RequestInterceptor.INSTANCE.setBefore(new Function1<GCRequest, Unit>() { // from class: com.guochao.faceshow.aaspring.base.httpclient.GCCommonRequestHandler$init$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCRequest gCRequest) {
                invoke2(gCRequest);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCRequest it) {
                String makeAgent;
                Intrinsics.checkNotNullParameter(it, "it");
                it.header("api_version", "0");
                it.header("api_common", GCCommonRequestHandler.makeBase64Common(GCCommonRequestHandler.makeCommon()));
                makeAgent = GCCommonRequestHandler.INSTANCE.makeAgent();
                it.header("User-Agent", makeAgent);
            }
        });
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b)\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B¿\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0015J\t\u0010\u001f\u001a\u00020\u0003HÂ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\t\u0010(\u001a\u00020\u0007HÂ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\t\u0010.\u001a\u00020\u0007HÂ\u0003JÃ\u0001\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\r\u001a\u00020\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u00020\u0007HÖ\u0001J\t\u00104\u001a\u00020\u0005HÖ\u0001R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0017\"\u0004\b\u001e\u0010\u0019R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler$CommonData;", "", "unixTime", "", "nonce", "", "apiVersion", "", "platform", "platformVersion", "cpuArch", "deviceId", DeviceRequestsHelper.DEVICE_INFO_DEVICE, "versionCode", "appVersion", "language", "sysLanguage", "phoneCountry", "timeZone", "latitude", "longitude", "(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getLatitude", "()Ljava/lang/String;", "setLatitude", "(Ljava/lang/String;)V", "getLongitude", "setLongitude", BaseConfig.KEY_TOKEN, "getSystoken", "setSystoken", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class CommonData {
        private final int apiVersion;
        @Nullable
        private final String appVersion;
        @Nullable
        private final String cpuArch;
        @Nullable
        private final String device;
        @Nullable
        private final String deviceId;
        @Nullable
        private final String language;
        @Nullable
        private String latitude;
        @Nullable
        private String longitude;
        @Nullable
        private final String nonce;
        @Nullable
        private final String phoneCountry;
        @Nullable
        private final String platform;
        @Nullable
        private final String platformVersion;
        @Nullable
        private final String sysLanguage;
        @Nullable
        private String systoken;
        @Nullable
        private final String timeZone;
        private final long unixTime;
        private final int versionCode;

        public CommonData() {
            this(0L, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, null, 65535, null);
        }

        public CommonData(long j10, @Nullable String str, int i9, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, int i10, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13) {
            this.unixTime = j10;
            this.nonce = str;
            this.apiVersion = i9;
            this.platform = str2;
            this.platformVersion = str3;
            this.cpuArch = str4;
            this.deviceId = str5;
            this.device = str6;
            this.versionCode = i10;
            this.appVersion = str7;
            this.language = str8;
            this.sysLanguage = str9;
            this.phoneCountry = str10;
            this.timeZone = str11;
            this.latitude = str12;
            this.longitude = str13;
        }

        private final long component1() {
            return this.unixTime;
        }

        private final String component10() {
            return this.appVersion;
        }

        private final String component11() {
            return this.language;
        }

        private final String component12() {
            return this.sysLanguage;
        }

        private final String component13() {
            return this.phoneCountry;
        }

        private final String component14() {
            return this.timeZone;
        }

        private final String component2() {
            return this.nonce;
        }

        private final int component3() {
            return this.apiVersion;
        }

        private final String component4() {
            return this.platform;
        }

        private final String component5() {
            return this.platformVersion;
        }

        private final String component6() {
            return this.cpuArch;
        }

        private final String component7() {
            return this.deviceId;
        }

        private final String component8() {
            return this.device;
        }

        private final int component9() {
            return this.versionCode;
        }

        @Nullable
        public final String component15() {
            return this.latitude;
        }

        @Nullable
        public final String component16() {
            return this.longitude;
        }

        @NotNull
        public final CommonData copy(long j10, @Nullable String str, int i9, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, int i10, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13) {
            return new CommonData(j10, str, i9, str2, str3, str4, str5, str6, i10, str7, str8, str9, str10, str11, str12, str13);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof CommonData) {
                CommonData commonData = (CommonData) obj;
                return this.unixTime == commonData.unixTime && Intrinsics.areEqual(this.nonce, commonData.nonce) && this.apiVersion == commonData.apiVersion && Intrinsics.areEqual(this.platform, commonData.platform) && Intrinsics.areEqual(this.platformVersion, commonData.platformVersion) && Intrinsics.areEqual(this.cpuArch, commonData.cpuArch) && Intrinsics.areEqual(this.deviceId, commonData.deviceId) && Intrinsics.areEqual(this.device, commonData.device) && this.versionCode == commonData.versionCode && Intrinsics.areEqual(this.appVersion, commonData.appVersion) && Intrinsics.areEqual(this.language, commonData.language) && Intrinsics.areEqual(this.sysLanguage, commonData.sysLanguage) && Intrinsics.areEqual(this.phoneCountry, commonData.phoneCountry) && Intrinsics.areEqual(this.timeZone, commonData.timeZone) && Intrinsics.areEqual(this.latitude, commonData.latitude) && Intrinsics.areEqual(this.longitude, commonData.longitude);
            }
            return false;
        }

        @Nullable
        public final String getLatitude() {
            return this.latitude;
        }

        @Nullable
        public final String getLongitude() {
            return this.longitude;
        }

        @Nullable
        public final String getSystoken() {
            return this.systoken;
        }

        public int hashCode() {
            int a10 = b.a(this.unixTime) * 31;
            String str = this.nonce;
            int hashCode = (((a10 + (str == null ? 0 : str.hashCode())) * 31) + this.apiVersion) * 31;
            String str2 = this.platform;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.platformVersion;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.cpuArch;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.deviceId;
            int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.device;
            int hashCode6 = (((hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31) + this.versionCode) * 31;
            String str7 = this.appVersion;
            int hashCode7 = (hashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
            String str8 = this.language;
            int hashCode8 = (hashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
            String str9 = this.sysLanguage;
            int hashCode9 = (hashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
            String str10 = this.phoneCountry;
            int hashCode10 = (hashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
            String str11 = this.timeZone;
            int hashCode11 = (hashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
            String str12 = this.latitude;
            int hashCode12 = (hashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31;
            String str13 = this.longitude;
            return hashCode12 + (str13 != null ? str13.hashCode() : 0);
        }

        public final void setLatitude(@Nullable String str) {
            this.latitude = str;
        }

        public final void setLongitude(@Nullable String str) {
            this.longitude = str;
        }

        public final void setSystoken(@Nullable String str) {
            this.systoken = str;
        }

        @NotNull
        public String toString() {
            return "CommonData(unixTime=" + this.unixTime + ", nonce=" + this.nonce + ", apiVersion=" + this.apiVersion + ", platform=" + this.platform + ", platformVersion=" + this.platformVersion + ", cpuArch=" + this.cpuArch + ", deviceId=" + this.deviceId + ", device=" + this.device + ", versionCode=" + this.versionCode + ", appVersion=" + this.appVersion + ", language=" + this.language + ", sysLanguage=" + this.sysLanguage + ", phoneCountry=" + this.phoneCountry + ", timeZone=" + this.timeZone + ", latitude=" + this.latitude + ", longitude=" + this.longitude + ')';
        }

        public /* synthetic */ CommonData(long j10, String str, int i9, String str2, String str3, String str4, String str5, String str6, int i10, String str7, String str8, String str9, String str10, String str11, String str12, String str13, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? System.currentTimeMillis() : j10, (i11 & 2) != 0 ? MD5Utils.getMD5String(UUID.randomUUID().toString()) : str, (i11 & 4) != 0 ? 3 : i9, (i11 & 8) != 0 ? "Android" : str2, (i11 & 16) != 0 ? String.valueOf(Build.VERSION.SDK_INT) : str3, (i11 & 32) != 0 ? GCApplication.sCpuArch : str4, (i11 & 64) != 0 ? SystemUtil.getDeviceId() : str5, (i11 & 128) != 0 ? SystemUtil.getSystemModel() : str6, (i11 & 256) != 0 ? SystemUtil.getVersionCode() : i10, (i11 & 512) != 0 ? SystemUtil.getVersionName() : str7, (i11 & 1024) != 0 ? a.e().c() : str8, (i11 & 2048) != 0 ? a.e().g() : str9, (i11 & 4096) != 0 ? a.e().f() : str10, (i11 & 8192) != 0 ? TimeZone.getDefault().getID() : str11, (i11 & 16384) != 0 ? null : str12, (i11 & 32768) == 0 ? str13 : null);
        }
    }
}
