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
public final class KitEventBase extends Message<KitEventBase, Builder> {
    public static final String DEFAULT_IP_ADDRESS = "";
    public static final Boolean DEFAULT_IS_APP_PRERELEASE;
    public static final Boolean DEFAULT_IS_FROM_REACT_NATIVE_PLUGIN;
    public static final String DEFAULT_KIT_APP_ID = "";
    public static final KitPluginType DEFAULT_KIT_PLUGIN_TYPE;
    public static final String DEFAULT_KIT_SESSION_ID = "";
    public static final String DEFAULT_KIT_USER_AGENT = "";
    public static final String DEFAULT_KIT_VARIANT_VERSION = "";
    public static final String DEFAULT_LOCALE = "";
    public static final String DEFAULT_OAUTH_CLIENT_ID = "";
    public static final String DEFAULT_OS_MINOR_VERSION = "";
    public static final Boolean DEFAULT_RUNNING_IN_SIMULATOR;
    public static final Boolean DEFAULT_RUNNING_IN_TESTS;
    public static final Boolean DEFAULT_RUNNING_WITH_DEBUGGER_ATTACHED;
    public static final String DEFAULT_TARGET_ARCHITECTURE = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 9)
    public final Long client_sequence_id;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 4)
    public final String ip_address;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 15)
    public final Boolean is_app_prerelease;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 19)
    public final Boolean is_from_react_native_plugin;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 16)
    public final String kit_app_id;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 8)
    public final Long kit_client_timestamp_millis;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.KitPluginType#ADAPTER", tag = 18)
    public final KitPluginType kit_plugin_type;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 17)
    public final String kit_session_id;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String kit_user_agent;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.KitType#ADAPTER", tag = 6)
    public final KitType kit_variant;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 7)
    public final String kit_variant_version;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String locale;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 10)
    public final Long max_client_sequence_id_on_instance;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String oauth_client_id;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 5)
    public final String os_minor_version;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 14)
    public final Boolean running_in_simulator;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 13)
    public final Boolean running_in_tests;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 12)
    public final Boolean running_with_debugger_attached;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 11)
    public final String target_architecture;
    public static final ProtoAdapter<KitEventBase> ADAPTER = new ProtoAdapter_KitEventBase();
    public static final KitType DEFAULT_KIT_VARIANT = KitType.UNKNOWN_KIT_TYPE;
    public static final Long DEFAULT_KIT_CLIENT_TIMESTAMP_MILLIS = 0L;
    public static final Long DEFAULT_CLIENT_SEQUENCE_ID = 0L;
    public static final Long DEFAULT_MAX_CLIENT_SEQUENCE_ID_ON_INSTANCE = 0L;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<KitEventBase, Builder> {
        public Long client_sequence_id;
        public String ip_address;
        public Boolean is_app_prerelease;
        public Boolean is_from_react_native_plugin;
        public String kit_app_id;
        public Long kit_client_timestamp_millis;
        public KitPluginType kit_plugin_type;
        public String kit_session_id;
        public String kit_user_agent;
        public KitType kit_variant;
        public String kit_variant_version;
        public String locale;
        public Long max_client_sequence_id_on_instance;
        public String oauth_client_id;
        public String os_minor_version;
        public Boolean running_in_simulator;
        public Boolean running_in_tests;
        public Boolean running_with_debugger_attached;
        public String target_architecture;

        public final Builder client_sequence_id(Long l10) {
            this.client_sequence_id = l10;
            return this;
        }

        public final Builder ip_address(String str) {
            this.ip_address = str;
            return this;
        }

        public final Builder is_app_prerelease(Boolean bool) {
            this.is_app_prerelease = bool;
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

        public final Builder kit_client_timestamp_millis(Long l10) {
            this.kit_client_timestamp_millis = l10;
            return this;
        }

        public final Builder kit_plugin_type(KitPluginType kitPluginType) {
            this.kit_plugin_type = kitPluginType;
            return this;
        }

        public final Builder kit_session_id(String str) {
            this.kit_session_id = str;
            return this;
        }

        public final Builder kit_user_agent(String str) {
            this.kit_user_agent = str;
            return this;
        }

        public final Builder kit_variant(KitType kitType) {
            this.kit_variant = kitType;
            return this;
        }

        public final Builder kit_variant_version(String str) {
            this.kit_variant_version = str;
            return this;
        }

        public final Builder locale(String str) {
            this.locale = str;
            return this;
        }

        public final Builder max_client_sequence_id_on_instance(Long l10) {
            this.max_client_sequence_id_on_instance = l10;
            return this;
        }

        public final Builder oauth_client_id(String str) {
            this.oauth_client_id = str;
            return this;
        }

        public final Builder os_minor_version(String str) {
            this.os_minor_version = str;
            return this;
        }

        public final Builder running_in_simulator(Boolean bool) {
            this.running_in_simulator = bool;
            return this;
        }

        public final Builder running_in_tests(Boolean bool) {
            this.running_in_tests = bool;
            return this;
        }

        public final Builder running_with_debugger_attached(Boolean bool) {
            this.running_with_debugger_attached = bool;
            return this;
        }

        public final Builder target_architecture(String str) {
            this.target_architecture = str;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final KitEventBase build() {
            return new KitEventBase(this.oauth_client_id, this.locale, this.kit_user_agent, this.ip_address, this.os_minor_version, this.kit_variant, this.kit_variant_version, this.kit_client_timestamp_millis, this.client_sequence_id, this.max_client_sequence_id_on_instance, this.target_architecture, this.running_with_debugger_attached, this.running_in_tests, this.running_in_simulator, this.is_app_prerelease, this.kit_app_id, this.kit_session_id, this.kit_plugin_type, this.is_from_react_native_plugin, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_KitEventBase extends ProtoAdapter<KitEventBase> {
        public ProtoAdapter_KitEventBase() {
            super(FieldEncoding.LENGTH_DELIMITED, KitEventBase.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final KitEventBase decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag != -1) {
                    switch (nextTag) {
                        case 1:
                            builder.oauth_client_id(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 2:
                            builder.locale(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 3:
                            builder.kit_user_agent(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 4:
                            builder.ip_address(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 5:
                            builder.os_minor_version(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 6:
                            try {
                                builder.kit_variant(KitType.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                                builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                                break;
                            }
                        case 7:
                            builder.kit_variant_version(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 8:
                            builder.kit_client_timestamp_millis(ProtoAdapter.UINT64.decode(protoReader));
                            break;
                        case 9:
                            builder.client_sequence_id(ProtoAdapter.UINT64.decode(protoReader));
                            break;
                        case 10:
                            builder.max_client_sequence_id_on_instance(ProtoAdapter.UINT64.decode(protoReader));
                            break;
                        case 11:
                            builder.target_architecture(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 12:
                            builder.running_with_debugger_attached(ProtoAdapter.BOOL.decode(protoReader));
                            break;
                        case 13:
                            builder.running_in_tests(ProtoAdapter.BOOL.decode(protoReader));
                            break;
                        case 14:
                            builder.running_in_simulator(ProtoAdapter.BOOL.decode(protoReader));
                            break;
                        case 15:
                            builder.is_app_prerelease(ProtoAdapter.BOOL.decode(protoReader));
                            break;
                        case 16:
                            builder.kit_app_id(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 17:
                            builder.kit_session_id(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 18:
                            try {
                                builder.kit_plugin_type(KitPluginType.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e11) {
                                builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e11.value));
                                break;
                            }
                        case 19:
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
        public final void encode(ProtoWriter protoWriter, KitEventBase kitEventBase) throws IOException {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(protoWriter, 1, kitEventBase.oauth_client_id);
            protoAdapter.encodeWithTag(protoWriter, 2, kitEventBase.locale);
            protoAdapter.encodeWithTag(protoWriter, 3, kitEventBase.kit_user_agent);
            protoAdapter.encodeWithTag(protoWriter, 4, kitEventBase.ip_address);
            protoAdapter.encodeWithTag(protoWriter, 5, kitEventBase.os_minor_version);
            KitType.ADAPTER.encodeWithTag(protoWriter, 6, kitEventBase.kit_variant);
            protoAdapter.encodeWithTag(protoWriter, 7, kitEventBase.kit_variant_version);
            ProtoAdapter<Long> protoAdapter2 = ProtoAdapter.UINT64;
            protoAdapter2.encodeWithTag(protoWriter, 8, kitEventBase.kit_client_timestamp_millis);
            protoAdapter2.encodeWithTag(protoWriter, 9, kitEventBase.client_sequence_id);
            protoAdapter2.encodeWithTag(protoWriter, 10, kitEventBase.max_client_sequence_id_on_instance);
            protoAdapter.encodeWithTag(protoWriter, 11, kitEventBase.target_architecture);
            ProtoAdapter<Boolean> protoAdapter3 = ProtoAdapter.BOOL;
            protoAdapter3.encodeWithTag(protoWriter, 12, kitEventBase.running_with_debugger_attached);
            protoAdapter3.encodeWithTag(protoWriter, 13, kitEventBase.running_in_tests);
            protoAdapter3.encodeWithTag(protoWriter, 14, kitEventBase.running_in_simulator);
            protoAdapter3.encodeWithTag(protoWriter, 15, kitEventBase.is_app_prerelease);
            protoAdapter.encodeWithTag(protoWriter, 16, kitEventBase.kit_app_id);
            protoAdapter.encodeWithTag(protoWriter, 17, kitEventBase.kit_session_id);
            KitPluginType.ADAPTER.encodeWithTag(protoWriter, 18, kitEventBase.kit_plugin_type);
            protoAdapter3.encodeWithTag(protoWriter, 19, kitEventBase.is_from_react_native_plugin);
            protoWriter.writeBytes(kitEventBase.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(KitEventBase kitEventBase) {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            int encodedSizeWithTag = protoAdapter.encodedSizeWithTag(1, kitEventBase.oauth_client_id) + protoAdapter.encodedSizeWithTag(2, kitEventBase.locale) + protoAdapter.encodedSizeWithTag(3, kitEventBase.kit_user_agent) + protoAdapter.encodedSizeWithTag(4, kitEventBase.ip_address) + protoAdapter.encodedSizeWithTag(5, kitEventBase.os_minor_version) + KitType.ADAPTER.encodedSizeWithTag(6, kitEventBase.kit_variant) + protoAdapter.encodedSizeWithTag(7, kitEventBase.kit_variant_version);
            ProtoAdapter<Long> protoAdapter2 = ProtoAdapter.UINT64;
            int encodedSizeWithTag2 = encodedSizeWithTag + protoAdapter2.encodedSizeWithTag(8, kitEventBase.kit_client_timestamp_millis) + protoAdapter2.encodedSizeWithTag(9, kitEventBase.client_sequence_id) + protoAdapter2.encodedSizeWithTag(10, kitEventBase.max_client_sequence_id_on_instance) + protoAdapter.encodedSizeWithTag(11, kitEventBase.target_architecture);
            ProtoAdapter<Boolean> protoAdapter3 = ProtoAdapter.BOOL;
            return encodedSizeWithTag2 + protoAdapter3.encodedSizeWithTag(12, kitEventBase.running_with_debugger_attached) + protoAdapter3.encodedSizeWithTag(13, kitEventBase.running_in_tests) + protoAdapter3.encodedSizeWithTag(14, kitEventBase.running_in_simulator) + protoAdapter3.encodedSizeWithTag(15, kitEventBase.is_app_prerelease) + protoAdapter.encodedSizeWithTag(16, kitEventBase.kit_app_id) + protoAdapter.encodedSizeWithTag(17, kitEventBase.kit_session_id) + KitPluginType.ADAPTER.encodedSizeWithTag(18, kitEventBase.kit_plugin_type) + protoAdapter3.encodedSizeWithTag(19, kitEventBase.is_from_react_native_plugin) + kitEventBase.unknownFields().size();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final KitEventBase redact(KitEventBase kitEventBase) {
            Message.Builder<KitEventBase, Builder> newBuilder2 = kitEventBase.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    static {
        Boolean bool = Boolean.FALSE;
        DEFAULT_RUNNING_WITH_DEBUGGER_ATTACHED = bool;
        DEFAULT_RUNNING_IN_TESTS = bool;
        DEFAULT_RUNNING_IN_SIMULATOR = bool;
        DEFAULT_IS_APP_PRERELEASE = bool;
        DEFAULT_KIT_PLUGIN_TYPE = KitPluginType.NO_PLUGIN;
        DEFAULT_IS_FROM_REACT_NATIVE_PLUGIN = bool;
    }

    public KitEventBase(String str, String str2, String str3, String str4, String str5, KitType kitType, String str6, Long l10, Long l11, Long l12, String str7, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, String str8, String str9, KitPluginType kitPluginType, Boolean bool5) {
        this(str, str2, str3, str4, str5, kitType, str6, l10, l11, l12, str7, bool, bool2, bool3, bool4, str8, str9, kitPluginType, bool5, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof KitEventBase) {
            KitEventBase kitEventBase = (KitEventBase) obj;
            return unknownFields().equals(kitEventBase.unknownFields()) && Internal.equals(this.oauth_client_id, kitEventBase.oauth_client_id) && Internal.equals(this.locale, kitEventBase.locale) && Internal.equals(this.kit_user_agent, kitEventBase.kit_user_agent) && Internal.equals(this.ip_address, kitEventBase.ip_address) && Internal.equals(this.os_minor_version, kitEventBase.os_minor_version) && Internal.equals(this.kit_variant, kitEventBase.kit_variant) && Internal.equals(this.kit_variant_version, kitEventBase.kit_variant_version) && Internal.equals(this.kit_client_timestamp_millis, kitEventBase.kit_client_timestamp_millis) && Internal.equals(this.client_sequence_id, kitEventBase.client_sequence_id) && Internal.equals(this.max_client_sequence_id_on_instance, kitEventBase.max_client_sequence_id_on_instance) && Internal.equals(this.target_architecture, kitEventBase.target_architecture) && Internal.equals(this.running_with_debugger_attached, kitEventBase.running_with_debugger_attached) && Internal.equals(this.running_in_tests, kitEventBase.running_in_tests) && Internal.equals(this.running_in_simulator, kitEventBase.running_in_simulator) && Internal.equals(this.is_app_prerelease, kitEventBase.is_app_prerelease) && Internal.equals(this.kit_app_id, kitEventBase.kit_app_id) && Internal.equals(this.kit_session_id, kitEventBase.kit_session_id) && Internal.equals(this.kit_plugin_type, kitEventBase.kit_plugin_type) && Internal.equals(this.is_from_react_native_plugin, kitEventBase.is_from_react_native_plugin);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            String str = this.oauth_client_id;
            int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.locale;
            int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
            String str3 = this.kit_user_agent;
            int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
            String str4 = this.ip_address;
            int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
            String str5 = this.os_minor_version;
            int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
            KitType kitType = this.kit_variant;
            int hashCode7 = (hashCode6 + (kitType != null ? kitType.hashCode() : 0)) * 37;
            String str6 = this.kit_variant_version;
            int hashCode8 = (hashCode7 + (str6 != null ? str6.hashCode() : 0)) * 37;
            Long l10 = this.kit_client_timestamp_millis;
            int hashCode9 = (hashCode8 + (l10 != null ? l10.hashCode() : 0)) * 37;
            Long l11 = this.client_sequence_id;
            int hashCode10 = (hashCode9 + (l11 != null ? l11.hashCode() : 0)) * 37;
            Long l12 = this.max_client_sequence_id_on_instance;
            int hashCode11 = (hashCode10 + (l12 != null ? l12.hashCode() : 0)) * 37;
            String str7 = this.target_architecture;
            int hashCode12 = (hashCode11 + (str7 != null ? str7.hashCode() : 0)) * 37;
            Boolean bool = this.running_with_debugger_attached;
            int hashCode13 = (hashCode12 + (bool != null ? bool.hashCode() : 0)) * 37;
            Boolean bool2 = this.running_in_tests;
            int hashCode14 = (hashCode13 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
            Boolean bool3 = this.running_in_simulator;
            int hashCode15 = (hashCode14 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
            Boolean bool4 = this.is_app_prerelease;
            int hashCode16 = (hashCode15 + (bool4 != null ? bool4.hashCode() : 0)) * 37;
            String str8 = this.kit_app_id;
            int hashCode17 = (hashCode16 + (str8 != null ? str8.hashCode() : 0)) * 37;
            String str9 = this.kit_session_id;
            int hashCode18 = (hashCode17 + (str9 != null ? str9.hashCode() : 0)) * 37;
            KitPluginType kitPluginType = this.kit_plugin_type;
            int hashCode19 = (hashCode18 + (kitPluginType != null ? kitPluginType.hashCode() : 0)) * 37;
            Boolean bool5 = this.is_from_react_native_plugin;
            int hashCode20 = hashCode19 + (bool5 != null ? bool5.hashCode() : 0);
            this.hashCode = hashCode20;
            return hashCode20;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.oauth_client_id != null) {
            sb2.append(", oauth_client_id=");
            sb2.append(this.oauth_client_id);
        }
        if (this.locale != null) {
            sb2.append(", locale=");
            sb2.append(this.locale);
        }
        if (this.kit_user_agent != null) {
            sb2.append(", kit_user_agent=");
            sb2.append(this.kit_user_agent);
        }
        if (this.ip_address != null) {
            sb2.append(", ip_address=");
            sb2.append(this.ip_address);
        }
        if (this.os_minor_version != null) {
            sb2.append(", os_minor_version=");
            sb2.append(this.os_minor_version);
        }
        if (this.kit_variant != null) {
            sb2.append(", kit_variant=");
            sb2.append(this.kit_variant);
        }
        if (this.kit_variant_version != null) {
            sb2.append(", kit_variant_version=");
            sb2.append(this.kit_variant_version);
        }
        if (this.kit_client_timestamp_millis != null) {
            sb2.append(", kit_client_timestamp_millis=");
            sb2.append(this.kit_client_timestamp_millis);
        }
        if (this.client_sequence_id != null) {
            sb2.append(", client_sequence_id=");
            sb2.append(this.client_sequence_id);
        }
        if (this.max_client_sequence_id_on_instance != null) {
            sb2.append(", max_client_sequence_id_on_instance=");
            sb2.append(this.max_client_sequence_id_on_instance);
        }
        if (this.target_architecture != null) {
            sb2.append(", target_architecture=");
            sb2.append(this.target_architecture);
        }
        if (this.running_with_debugger_attached != null) {
            sb2.append(", running_with_debugger_attached=");
            sb2.append(this.running_with_debugger_attached);
        }
        if (this.running_in_tests != null) {
            sb2.append(", running_in_tests=");
            sb2.append(this.running_in_tests);
        }
        if (this.running_in_simulator != null) {
            sb2.append(", running_in_simulator=");
            sb2.append(this.running_in_simulator);
        }
        if (this.is_app_prerelease != null) {
            sb2.append(", is_app_prerelease=");
            sb2.append(this.is_app_prerelease);
        }
        if (this.kit_app_id != null) {
            sb2.append(", kit_app_id=");
            sb2.append(this.kit_app_id);
        }
        if (this.kit_session_id != null) {
            sb2.append(", kit_session_id=");
            sb2.append(this.kit_session_id);
        }
        if (this.kit_plugin_type != null) {
            sb2.append(", kit_plugin_type=");
            sb2.append(this.kit_plugin_type);
        }
        if (this.is_from_react_native_plugin != null) {
            sb2.append(", is_from_react_native_plugin=");
            sb2.append(this.is_from_react_native_plugin);
        }
        StringBuilder replace = sb2.replace(0, 2, "KitEventBase{");
        replace.append('}');
        return replace.toString();
    }

    public KitEventBase(String str, String str2, String str3, String str4, String str5, KitType kitType, String str6, Long l10, Long l11, Long l12, String str7, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, String str8, String str9, KitPluginType kitPluginType, Boolean bool5, ByteString byteString) {
        super(ADAPTER, byteString);
        this.oauth_client_id = str;
        this.locale = str2;
        this.kit_user_agent = str3;
        this.ip_address = str4;
        this.os_minor_version = str5;
        this.kit_variant = kitType;
        this.kit_variant_version = str6;
        this.kit_client_timestamp_millis = l10;
        this.client_sequence_id = l11;
        this.max_client_sequence_id_on_instance = l12;
        this.target_architecture = str7;
        this.running_with_debugger_attached = bool;
        this.running_in_tests = bool2;
        this.running_in_simulator = bool3;
        this.is_app_prerelease = bool4;
        this.kit_app_id = str8;
        this.kit_session_id = str9;
        this.kit_plugin_type = kitPluginType;
        this.is_from_react_native_plugin = bool5;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<KitEventBase, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.oauth_client_id = this.oauth_client_id;
        builder.locale = this.locale;
        builder.kit_user_agent = this.kit_user_agent;
        builder.ip_address = this.ip_address;
        builder.os_minor_version = this.os_minor_version;
        builder.kit_variant = this.kit_variant;
        builder.kit_variant_version = this.kit_variant_version;
        builder.kit_client_timestamp_millis = this.kit_client_timestamp_millis;
        builder.client_sequence_id = this.client_sequence_id;
        builder.max_client_sequence_id_on_instance = this.max_client_sequence_id_on_instance;
        builder.target_architecture = this.target_architecture;
        builder.running_with_debugger_attached = this.running_with_debugger_attached;
        builder.running_in_tests = this.running_in_tests;
        builder.running_in_simulator = this.running_in_simulator;
        builder.is_app_prerelease = this.is_app_prerelease;
        builder.kit_app_id = this.kit_app_id;
        builder.kit_session_id = this.kit_session_id;
        builder.kit_plugin_type = this.kit_plugin_type;
        builder.is_from_react_native_plugin = this.is_from_react_native_plugin;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
