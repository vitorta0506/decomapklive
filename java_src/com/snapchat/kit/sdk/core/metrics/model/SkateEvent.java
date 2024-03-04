package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class SkateEvent extends Message<SkateEvent, Builder> {
    public static final String DEFAULT_CORE_VERSION = "";
    public static final Long DEFAULT_DAY;
    public static final Boolean DEFAULT_IS_FIRST_WITHIN_MONTH;
    public static final Boolean DEFAULT_IS_FROM_REACT_NATIVE_PLUGIN;
    public static final String DEFAULT_KIT_APP_ID = "";
    public static final KitPluginType DEFAULT_KIT_PLUGIN_TYPE;
    public static final String DEFAULT_KIT_VARIANTS_STRING_LIST = "";
    public static final String DEFAULT_KIT_VERSION_STRING_LIST = "";
    public static final LoginRoute DEFAULT_LOGIN_ROUTE;
    public static final Long DEFAULT_MONTH;
    public static final String DEFAULT_OAUTH_CLIENT_ID = "";
    public static final Double DEFAULT_SAMPLE_RATE;
    public static final SnapKitInitType DEFAULT_SNAP_KIT_INIT_TYPE;
    public static final Long DEFAULT_YEAR;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 13)
    public final String core_version;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.DailySessionBucket#ADAPTER", tag = 1)
    public final DailySessionBucket daily_session_bucket;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 6)
    public final Long day;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 2)
    public final Boolean is_first_within_month;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 15)
    public final Boolean is_from_react_native_plugin;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 10)
    public final String kit_app_id;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.KitPluginType#ADAPTER", tag = 12)
    public final KitPluginType kit_plugin_type;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 5)
    public final String kit_variants_string_list;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 14)
    public final String kit_version_string_list;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.LoginRoute#ADAPTER", tag = 3)
    public final LoginRoute login_route;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 7)
    public final Long month;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 9)
    public final String oauth_client_id;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#DOUBLE", tag = 4)
    public final Double sample_rate;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.SnapKitInitType#ADAPTER", tag = 11)
    public final SnapKitInitType snap_kit_init_type;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 8)
    public final Long year;
    public static final ProtoAdapter<SkateEvent> ADAPTER = new ProtoAdapter_SkateEvent();
    public static final DailySessionBucket DEFAULT_DAILY_SESSION_BUCKET = DailySessionBucket.NO_SESSION_BUCKET;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<SkateEvent, Builder> {
        public String core_version;
        public DailySessionBucket daily_session_bucket;
        public Long day;
        public Boolean is_first_within_month;
        public Boolean is_from_react_native_plugin;
        public String kit_app_id;
        public KitPluginType kit_plugin_type;
        public String kit_variants_string_list;
        public String kit_version_string_list;
        public LoginRoute login_route;
        public Long month;
        public String oauth_client_id;
        public Double sample_rate;
        public SnapKitInitType snap_kit_init_type;
        public Long year;

        public final Builder core_version(String str) {
            this.core_version = str;
            return this;
        }

        public final Builder daily_session_bucket(DailySessionBucket dailySessionBucket) {
            this.daily_session_bucket = dailySessionBucket;
            return this;
        }

        public final Builder day(Long l10) {
            this.day = l10;
            return this;
        }

        public final Builder is_first_within_month(Boolean bool) {
            this.is_first_within_month = bool;
            return this;
        }

        public final Builder is_from_react_native_plugin(Boolean bool) {
            this.is_from_react_native_plugin = bool;
            return this;
        }

        public final Builder kit_app_id(String str) {
            this.kit_app_id = str;
            return this;
        }

        public final Builder kit_plugin_type(KitPluginType kitPluginType) {
            this.kit_plugin_type = kitPluginType;
            return this;
        }

        public final Builder kit_variants_string_list(String str) {
            this.kit_variants_string_list = str;
            return this;
        }

        public final Builder kit_version_string_list(String str) {
            this.kit_version_string_list = str;
            return this;
        }

        public final Builder login_route(LoginRoute loginRoute) {
            this.login_route = loginRoute;
            return this;
        }

        public final Builder month(Long l10) {
            this.month = l10;
            return this;
        }

        public final Builder oauth_client_id(String str) {
            this.oauth_client_id = str;
            return this;
        }

        public final Builder sample_rate(Double d10) {
            this.sample_rate = d10;
            return this;
        }

        public final Builder snap_kit_init_type(SnapKitInitType snapKitInitType) {
            this.snap_kit_init_type = snapKitInitType;
            return this;
        }

        public final Builder year(Long l10) {
            this.year = l10;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final SkateEvent build() {
            return new SkateEvent(this.daily_session_bucket, this.is_first_within_month, this.login_route, this.sample_rate, this.kit_variants_string_list, this.day, this.month, this.year, this.oauth_client_id, this.kit_app_id, this.snap_kit_init_type, this.kit_plugin_type, this.core_version, this.kit_version_string_list, this.is_from_react_native_plugin, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_SkateEvent extends ProtoAdapter<SkateEvent> {
        public ProtoAdapter_SkateEvent() {
            super(FieldEncoding.LENGTH_DELIMITED, SkateEvent.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final SkateEvent decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag != -1) {
                    switch (nextTag) {
                        case 1:
                            try {
                                builder.daily_session_bucket(DailySessionBucket.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                                builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                                break;
                            }
                        case 2:
                            builder.is_first_within_month(ProtoAdapter.BOOL.decode(protoReader));
                            break;
                        case 3:
                            try {
                                builder.login_route(LoginRoute.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e11) {
                                builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e11.value));
                                break;
                            }
                        case 4:
                            builder.sample_rate(ProtoAdapter.DOUBLE.decode(protoReader));
                            break;
                        case 5:
                            builder.kit_variants_string_list(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 6:
                            builder.day(ProtoAdapter.UINT64.decode(protoReader));
                            break;
                        case 7:
                            builder.month(ProtoAdapter.UINT64.decode(protoReader));
                            break;
                        case 8:
                            builder.year(ProtoAdapter.UINT64.decode(protoReader));
                            break;
                        case 9:
                            builder.oauth_client_id(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 10:
                            builder.kit_app_id(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 11:
                            try {
                                builder.snap_kit_init_type(SnapKitInitType.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e12) {
                                builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e12.value));
                                break;
                            }
                        case 12:
                            try {
                                builder.kit_plugin_type(KitPluginType.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e13) {
                                builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e13.value));
                                break;
                            }
                        case 13:
                            builder.core_version(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 14:
                            builder.kit_version_string_list(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 15:
                            builder.is_from_react_native_plugin(ProtoAdapter.BOOL.decode(protoReader));
                            break;
                        default:
                            FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                            builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                            break;
                    }
                } else {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, SkateEvent skateEvent) throws IOException {
            DailySessionBucket.ADAPTER.encodeWithTag(protoWriter, 1, skateEvent.daily_session_bucket);
            ProtoAdapter<Boolean> protoAdapter = ProtoAdapter.BOOL;
            protoAdapter.encodeWithTag(protoWriter, 2, skateEvent.is_first_within_month);
            LoginRoute.ADAPTER.encodeWithTag(protoWriter, 3, skateEvent.login_route);
            ProtoAdapter.DOUBLE.encodeWithTag(protoWriter, 4, skateEvent.sample_rate);
            ProtoAdapter<String> protoAdapter2 = ProtoAdapter.STRING;
            protoAdapter2.encodeWithTag(protoWriter, 5, skateEvent.kit_variants_string_list);
            ProtoAdapter<Long> protoAdapter3 = ProtoAdapter.UINT64;
            protoAdapter3.encodeWithTag(protoWriter, 6, skateEvent.day);
            protoAdapter3.encodeWithTag(protoWriter, 7, skateEvent.month);
            protoAdapter3.encodeWithTag(protoWriter, 8, skateEvent.year);
            protoAdapter2.encodeWithTag(protoWriter, 9, skateEvent.oauth_client_id);
            protoAdapter2.encodeWithTag(protoWriter, 10, skateEvent.kit_app_id);
            SnapKitInitType.ADAPTER.encodeWithTag(protoWriter, 11, skateEvent.snap_kit_init_type);
            KitPluginType.ADAPTER.encodeWithTag(protoWriter, 12, skateEvent.kit_plugin_type);
            protoAdapter2.encodeWithTag(protoWriter, 13, skateEvent.core_version);
            protoAdapter2.encodeWithTag(protoWriter, 14, skateEvent.kit_version_string_list);
            protoAdapter.encodeWithTag(protoWriter, 15, skateEvent.is_from_react_native_plugin);
            protoWriter.writeBytes(skateEvent.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(SkateEvent skateEvent) {
            int encodedSizeWithTag = DailySessionBucket.ADAPTER.encodedSizeWithTag(1, skateEvent.daily_session_bucket);
            ProtoAdapter<Boolean> protoAdapter = ProtoAdapter.BOOL;
            int encodedSizeWithTag2 = encodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, skateEvent.is_first_within_month) + LoginRoute.ADAPTER.encodedSizeWithTag(3, skateEvent.login_route) + ProtoAdapter.DOUBLE.encodedSizeWithTag(4, skateEvent.sample_rate);
            ProtoAdapter<String> protoAdapter2 = ProtoAdapter.STRING;
            int encodedSizeWithTag3 = encodedSizeWithTag2 + protoAdapter2.encodedSizeWithTag(5, skateEvent.kit_variants_string_list);
            ProtoAdapter<Long> protoAdapter3 = ProtoAdapter.UINT64;
            return encodedSizeWithTag3 + protoAdapter3.encodedSizeWithTag(6, skateEvent.day) + protoAdapter3.encodedSizeWithTag(7, skateEvent.month) + protoAdapter3.encodedSizeWithTag(8, skateEvent.year) + protoAdapter2.encodedSizeWithTag(9, skateEvent.oauth_client_id) + protoAdapter2.encodedSizeWithTag(10, skateEvent.kit_app_id) + SnapKitInitType.ADAPTER.encodedSizeWithTag(11, skateEvent.snap_kit_init_type) + KitPluginType.ADAPTER.encodedSizeWithTag(12, skateEvent.kit_plugin_type) + protoAdapter2.encodedSizeWithTag(13, skateEvent.core_version) + protoAdapter2.encodedSizeWithTag(14, skateEvent.kit_version_string_list) + protoAdapter.encodedSizeWithTag(15, skateEvent.is_from_react_native_plugin) + skateEvent.unknownFields().size();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final SkateEvent redact(SkateEvent skateEvent) {
            Message.Builder<SkateEvent, Builder> newBuilder2 = skateEvent.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    static {
        Boolean bool = Boolean.FALSE;
        DEFAULT_IS_FIRST_WITHIN_MONTH = bool;
        DEFAULT_LOGIN_ROUTE = LoginRoute.UNKNOWN_LOGIN_ROUTE;
        DEFAULT_SAMPLE_RATE = Double.valueOf(0.0d);
        DEFAULT_DAY = 0L;
        DEFAULT_MONTH = 0L;
        DEFAULT_YEAR = 0L;
        DEFAULT_SNAP_KIT_INIT_TYPE = SnapKitInitType.INIT_TYPE_NONE;
        DEFAULT_KIT_PLUGIN_TYPE = KitPluginType.NO_PLUGIN;
        DEFAULT_IS_FROM_REACT_NATIVE_PLUGIN = bool;
    }

    public SkateEvent(DailySessionBucket dailySessionBucket, Boolean bool, LoginRoute loginRoute, Double d10, String str, Long l10, Long l11, Long l12, String str2, String str3, SnapKitInitType snapKitInitType, KitPluginType kitPluginType, String str4, String str5, Boolean bool2) {
        this(dailySessionBucket, bool, loginRoute, d10, str, l10, l11, l12, str2, str3, snapKitInitType, kitPluginType, str4, str5, bool2, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SkateEvent) {
            SkateEvent skateEvent = (SkateEvent) obj;
            return unknownFields().equals(skateEvent.unknownFields()) && Internal.equals(this.daily_session_bucket, skateEvent.daily_session_bucket) && Internal.equals(this.is_first_within_month, skateEvent.is_first_within_month) && Internal.equals(this.login_route, skateEvent.login_route) && Internal.equals(this.sample_rate, skateEvent.sample_rate) && Internal.equals(this.kit_variants_string_list, skateEvent.kit_variants_string_list) && Internal.equals(this.day, skateEvent.day) && Internal.equals(this.month, skateEvent.month) && Internal.equals(this.year, skateEvent.year) && Internal.equals(this.oauth_client_id, skateEvent.oauth_client_id) && Internal.equals(this.kit_app_id, skateEvent.kit_app_id) && Internal.equals(this.snap_kit_init_type, skateEvent.snap_kit_init_type) && Internal.equals(this.kit_plugin_type, skateEvent.kit_plugin_type) && Internal.equals(this.core_version, skateEvent.core_version) && Internal.equals(this.kit_version_string_list, skateEvent.kit_version_string_list) && Internal.equals(this.is_from_react_native_plugin, skateEvent.is_from_react_native_plugin);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            DailySessionBucket dailySessionBucket = this.daily_session_bucket;
            int hashCode2 = (hashCode + (dailySessionBucket != null ? dailySessionBucket.hashCode() : 0)) * 37;
            Boolean bool = this.is_first_within_month;
            int hashCode3 = (hashCode2 + (bool != null ? bool.hashCode() : 0)) * 37;
            LoginRoute loginRoute = this.login_route;
            int hashCode4 = (hashCode3 + (loginRoute != null ? loginRoute.hashCode() : 0)) * 37;
            Double d10 = this.sample_rate;
            int hashCode5 = (hashCode4 + (d10 != null ? d10.hashCode() : 0)) * 37;
            String str = this.kit_variants_string_list;
            int hashCode6 = (hashCode5 + (str != null ? str.hashCode() : 0)) * 37;
            Long l10 = this.day;
            int hashCode7 = (hashCode6 + (l10 != null ? l10.hashCode() : 0)) * 37;
            Long l11 = this.month;
            int hashCode8 = (hashCode7 + (l11 != null ? l11.hashCode() : 0)) * 37;
            Long l12 = this.year;
            int hashCode9 = (hashCode8 + (l12 != null ? l12.hashCode() : 0)) * 37;
            String str2 = this.oauth_client_id;
            int hashCode10 = (hashCode9 + (str2 != null ? str2.hashCode() : 0)) * 37;
            String str3 = this.kit_app_id;
            int hashCode11 = (hashCode10 + (str3 != null ? str3.hashCode() : 0)) * 37;
            SnapKitInitType snapKitInitType = this.snap_kit_init_type;
            int hashCode12 = (hashCode11 + (snapKitInitType != null ? snapKitInitType.hashCode() : 0)) * 37;
            KitPluginType kitPluginType = this.kit_plugin_type;
            int hashCode13 = (hashCode12 + (kitPluginType != null ? kitPluginType.hashCode() : 0)) * 37;
            String str4 = this.core_version;
            int hashCode14 = (hashCode13 + (str4 != null ? str4.hashCode() : 0)) * 37;
            String str5 = this.kit_version_string_list;
            int hashCode15 = (hashCode14 + (str5 != null ? str5.hashCode() : 0)) * 37;
            Boolean bool2 = this.is_from_react_native_plugin;
            int hashCode16 = hashCode15 + (bool2 != null ? bool2.hashCode() : 0);
            this.hashCode = hashCode16;
            return hashCode16;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.daily_session_bucket != null) {
            sb2.append(", daily_session_bucket=");
            sb2.append(this.daily_session_bucket);
        }
        if (this.is_first_within_month != null) {
            sb2.append(", is_first_within_month=");
            sb2.append(this.is_first_within_month);
        }
        if (this.login_route != null) {
            sb2.append(", login_route=");
            sb2.append(this.login_route);
        }
        if (this.sample_rate != null) {
            sb2.append(", sample_rate=");
            sb2.append(this.sample_rate);
        }
        if (this.kit_variants_string_list != null) {
            sb2.append(", kit_variants_string_list=");
            sb2.append(this.kit_variants_string_list);
        }
        if (this.day != null) {
            sb2.append(", day=");
            sb2.append(this.day);
        }
        if (this.month != null) {
            sb2.append(", month=");
            sb2.append(this.month);
        }
        if (this.year != null) {
            sb2.append(", year=");
            sb2.append(this.year);
        }
        if (this.oauth_client_id != null) {
            sb2.append(", oauth_client_id=");
            sb2.append(this.oauth_client_id);
        }
        if (this.kit_app_id != null) {
            sb2.append(", kit_app_id=");
            sb2.append(this.kit_app_id);
        }
        if (this.snap_kit_init_type != null) {
            sb2.append(", snap_kit_init_type=");
            sb2.append(this.snap_kit_init_type);
        }
        if (this.kit_plugin_type != null) {
            sb2.append(", kit_plugin_type=");
            sb2.append(this.kit_plugin_type);
        }
        if (this.core_version != null) {
            sb2.append(", core_version=");
            sb2.append(this.core_version);
        }
        if (this.kit_version_string_list != null) {
            sb2.append(", kit_version_string_list=");
            sb2.append(this.kit_version_string_list);
        }
        if (this.is_from_react_native_plugin != null) {
            sb2.append(", is_from_react_native_plugin=");
            sb2.append(this.is_from_react_native_plugin);
        }
        StringBuilder replace = sb2.replace(0, 2, "SkateEvent{");
        replace.append('}');
        return replace.toString();
    }

    public SkateEvent(DailySessionBucket dailySessionBucket, Boolean bool, LoginRoute loginRoute, Double d10, String str, Long l10, Long l11, Long l12, String str2, String str3, SnapKitInitType snapKitInitType, KitPluginType kitPluginType, String str4, String str5, Boolean bool2, ByteString byteString) {
        super(ADAPTER, byteString);
        this.daily_session_bucket = dailySessionBucket;
        this.is_first_within_month = bool;
        this.login_route = loginRoute;
        this.sample_rate = d10;
        this.kit_variants_string_list = str;
        this.day = l10;
        this.month = l11;
        this.year = l12;
        this.oauth_client_id = str2;
        this.kit_app_id = str3;
        this.snap_kit_init_type = snapKitInitType;
        this.kit_plugin_type = kitPluginType;
        this.core_version = str4;
        this.kit_version_string_list = str5;
        this.is_from_react_native_plugin = bool2;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<SkateEvent, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.daily_session_bucket = this.daily_session_bucket;
        builder.is_first_within_month = this.is_first_within_month;
        builder.login_route = this.login_route;
        builder.sample_rate = this.sample_rate;
        builder.kit_variants_string_list = this.kit_variants_string_list;
        builder.day = this.day;
        builder.month = this.month;
        builder.year = this.year;
        builder.oauth_client_id = this.oauth_client_id;
        builder.kit_app_id = this.kit_app_id;
        builder.snap_kit_init_type = this.snap_kit_init_type;
        builder.kit_plugin_type = this.kit_plugin_type;
        builder.core_version = this.core_version;
        builder.kit_version_string_list = this.kit_version_string_list;
        builder.is_from_react_native_plugin = this.is_from_react_native_plugin;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
