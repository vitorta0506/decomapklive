package com.snap.kit.common.model;

import com.snap.kit.common.model.OsType;
import com.snap.kit.common.model.Types;
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
public final class DeviceEnvironmentInfo extends Message<DeviceEnvironmentInfo, a> {
    public static final Types.Trilean DEFAULT_IS_APP_PRERELEASE;
    public static final String DEFAULT_LOCALE = "";
    public static final String DEFAULT_MODEL = "";
    public static final String DEFAULT_OS_VERSION = "";
    public static final Types.Trilean DEFAULT_RUNNING_IN_SIMULATOR;
    public static final Types.Trilean DEFAULT_RUNNING_IN_TESTS;
    public static final Types.Trilean DEFAULT_RUNNING_WITH_DEBUGGER_ATTACHED;
    public static final String DEFAULT_TARGET_ARCHITECTURE = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snap.kit.common.model.Types$Trilean#ADAPTER", tag = 9)
    public final Types.Trilean is_app_prerelease;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 5)
    public final String locale;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String model;
    @WireField(adapter = "com.snap.kit.common.model.OsType$Enum#ADAPTER", tag = 1)
    public final OsType.Enum os_type;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String os_version;
    @WireField(adapter = "com.snap.kit.common.model.Types$Trilean#ADAPTER", tag = 8)
    public final Types.Trilean running_in_simulator;
    @WireField(adapter = "com.snap.kit.common.model.Types$Trilean#ADAPTER", tag = 7)
    public final Types.Trilean running_in_tests;
    @WireField(adapter = "com.snap.kit.common.model.Types$Trilean#ADAPTER", tag = 6)
    public final Types.Trilean running_with_debugger_attached;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 4)
    public final String target_architecture;
    public static final ProtoAdapter<DeviceEnvironmentInfo> ADAPTER = new b();
    public static final OsType.Enum DEFAULT_OS_TYPE = OsType.Enum.NONE;

    /* loaded from: classes4.dex */
    public static final class a extends Message.Builder<DeviceEnvironmentInfo, a> {

        /* renamed from: a  reason: collision with root package name */
        public OsType.Enum f29450a;

        /* renamed from: b  reason: collision with root package name */
        public String f29451b;

        /* renamed from: c  reason: collision with root package name */
        public String f29452c;

        /* renamed from: d  reason: collision with root package name */
        public String f29453d;

        /* renamed from: e  reason: collision with root package name */
        public String f29454e;

        /* renamed from: f  reason: collision with root package name */
        public Types.Trilean f29455f;

        /* renamed from: g  reason: collision with root package name */
        public Types.Trilean f29456g;

        /* renamed from: h  reason: collision with root package name */
        public Types.Trilean f29457h;

        /* renamed from: i  reason: collision with root package name */
        public Types.Trilean f29458i;

        @Override // com.squareup.wire.Message.Builder
        /* renamed from: a */
        public final DeviceEnvironmentInfo build() {
            return new DeviceEnvironmentInfo(this.f29450a, this.f29451b, this.f29452c, this.f29453d, this.f29454e, this.f29455f, this.f29456g, this.f29457h, this.f29458i, super.buildUnknownFields());
        }

        public final a b(Types.Trilean trilean) {
            this.f29458i = trilean;
            return this;
        }

        public final a c(String str) {
            this.f29454e = str;
            return this;
        }

        public final a e(String str) {
            this.f29452c = str;
            return this;
        }

        public final a f(OsType.Enum r12) {
            this.f29450a = r12;
            return this;
        }

        public final a g(String str) {
            this.f29451b = str;
            return this;
        }

        public final a h(Types.Trilean trilean) {
            this.f29457h = trilean;
            return this;
        }

        public final a i(Types.Trilean trilean) {
            this.f29456g = trilean;
            return this;
        }

        public final a j(Types.Trilean trilean) {
            this.f29455f = trilean;
            return this;
        }

        public final a k(String str) {
            this.f29453d = str;
            return this;
        }
    }

    /* loaded from: classes4.dex */
    private static final class b extends ProtoAdapter<DeviceEnvironmentInfo> {
        public b() {
            super(FieldEncoding.LENGTH_DELIMITED, DeviceEnvironmentInfo.class);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: a */
        public final DeviceEnvironmentInfo decode(ProtoReader protoReader) throws IOException {
            a aVar = new a();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag != -1) {
                    switch (nextTag) {
                        case 1:
                            try {
                                aVar.f(OsType.Enum.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                                aVar.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                                break;
                            }
                        case 2:
                            aVar.g(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 3:
                            aVar.e(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 4:
                            aVar.k(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 5:
                            aVar.c(ProtoAdapter.STRING.decode(protoReader));
                            break;
                        case 6:
                            try {
                                aVar.j(Types.Trilean.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e11) {
                                aVar.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e11.value));
                                break;
                            }
                        case 7:
                            try {
                                aVar.i(Types.Trilean.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e12) {
                                aVar.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e12.value));
                                break;
                            }
                        case 8:
                            try {
                                aVar.h(Types.Trilean.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e13) {
                                aVar.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e13.value));
                                break;
                            }
                        case 9:
                            try {
                                aVar.b(Types.Trilean.ADAPTER.decode(protoReader));
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e14) {
                                aVar.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e14.value));
                                break;
                            }
                        default:
                            FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                            aVar.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                            break;
                    }
                } else {
                    protoReader.endMessage(beginMessage);
                    return aVar.build();
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: b */
        public final void encode(ProtoWriter protoWriter, DeviceEnvironmentInfo deviceEnvironmentInfo) throws IOException {
            OsType.Enum.ADAPTER.encodeWithTag(protoWriter, 1, deviceEnvironmentInfo.os_type);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(protoWriter, 2, deviceEnvironmentInfo.os_version);
            protoAdapter.encodeWithTag(protoWriter, 3, deviceEnvironmentInfo.model);
            protoAdapter.encodeWithTag(protoWriter, 4, deviceEnvironmentInfo.target_architecture);
            protoAdapter.encodeWithTag(protoWriter, 5, deviceEnvironmentInfo.locale);
            ProtoAdapter<Types.Trilean> protoAdapter2 = Types.Trilean.ADAPTER;
            protoAdapter2.encodeWithTag(protoWriter, 6, deviceEnvironmentInfo.running_with_debugger_attached);
            protoAdapter2.encodeWithTag(protoWriter, 7, deviceEnvironmentInfo.running_in_tests);
            protoAdapter2.encodeWithTag(protoWriter, 8, deviceEnvironmentInfo.running_in_simulator);
            protoAdapter2.encodeWithTag(protoWriter, 9, deviceEnvironmentInfo.is_app_prerelease);
            protoWriter.writeBytes(deviceEnvironmentInfo.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: c */
        public final int encodedSize(DeviceEnvironmentInfo deviceEnvironmentInfo) {
            int encodedSizeWithTag = OsType.Enum.ADAPTER.encodedSizeWithTag(1, deviceEnvironmentInfo.os_type);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            int encodedSizeWithTag2 = encodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, deviceEnvironmentInfo.os_version) + protoAdapter.encodedSizeWithTag(3, deviceEnvironmentInfo.model) + protoAdapter.encodedSizeWithTag(4, deviceEnvironmentInfo.target_architecture) + protoAdapter.encodedSizeWithTag(5, deviceEnvironmentInfo.locale);
            ProtoAdapter<Types.Trilean> protoAdapter2 = Types.Trilean.ADAPTER;
            return encodedSizeWithTag2 + protoAdapter2.encodedSizeWithTag(6, deviceEnvironmentInfo.running_with_debugger_attached) + protoAdapter2.encodedSizeWithTag(7, deviceEnvironmentInfo.running_in_tests) + protoAdapter2.encodedSizeWithTag(8, deviceEnvironmentInfo.running_in_simulator) + protoAdapter2.encodedSizeWithTag(9, deviceEnvironmentInfo.is_app_prerelease) + deviceEnvironmentInfo.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [com.snap.kit.common.model.DeviceEnvironmentInfo$a, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: d */
        public final DeviceEnvironmentInfo redact(DeviceEnvironmentInfo deviceEnvironmentInfo) {
            ?? newBuilder2 = deviceEnvironmentInfo.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    static {
        Types.Trilean trilean = Types.Trilean.NONE;
        DEFAULT_RUNNING_WITH_DEBUGGER_ATTACHED = trilean;
        DEFAULT_RUNNING_IN_TESTS = trilean;
        DEFAULT_RUNNING_IN_SIMULATOR = trilean;
        DEFAULT_IS_APP_PRERELEASE = trilean;
    }

    public DeviceEnvironmentInfo(OsType.Enum r12, String str, String str2, String str3, String str4, Types.Trilean trilean, Types.Trilean trilean2, Types.Trilean trilean3, Types.Trilean trilean4) {
        this(r12, str, str2, str3, str4, trilean, trilean2, trilean3, trilean4, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DeviceEnvironmentInfo) {
            DeviceEnvironmentInfo deviceEnvironmentInfo = (DeviceEnvironmentInfo) obj;
            return unknownFields().equals(deviceEnvironmentInfo.unknownFields()) && Internal.equals(this.os_type, deviceEnvironmentInfo.os_type) && Internal.equals(this.os_version, deviceEnvironmentInfo.os_version) && Internal.equals(this.model, deviceEnvironmentInfo.model) && Internal.equals(this.target_architecture, deviceEnvironmentInfo.target_architecture) && Internal.equals(this.locale, deviceEnvironmentInfo.locale) && Internal.equals(this.running_with_debugger_attached, deviceEnvironmentInfo.running_with_debugger_attached) && Internal.equals(this.running_in_tests, deviceEnvironmentInfo.running_in_tests) && Internal.equals(this.running_in_simulator, deviceEnvironmentInfo.running_in_simulator) && Internal.equals(this.is_app_prerelease, deviceEnvironmentInfo.is_app_prerelease);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            OsType.Enum r12 = this.os_type;
            int hashCode2 = (hashCode + (r12 != null ? r12.hashCode() : 0)) * 37;
            String str = this.os_version;
            int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.model;
            int hashCode4 = (hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
            String str3 = this.target_architecture;
            int hashCode5 = (hashCode4 + (str3 != null ? str3.hashCode() : 0)) * 37;
            String str4 = this.locale;
            int hashCode6 = (hashCode5 + (str4 != null ? str4.hashCode() : 0)) * 37;
            Types.Trilean trilean = this.running_with_debugger_attached;
            int hashCode7 = (hashCode6 + (trilean != null ? trilean.hashCode() : 0)) * 37;
            Types.Trilean trilean2 = this.running_in_tests;
            int hashCode8 = (hashCode7 + (trilean2 != null ? trilean2.hashCode() : 0)) * 37;
            Types.Trilean trilean3 = this.running_in_simulator;
            int hashCode9 = (hashCode8 + (trilean3 != null ? trilean3.hashCode() : 0)) * 37;
            Types.Trilean trilean4 = this.is_app_prerelease;
            int hashCode10 = hashCode9 + (trilean4 != null ? trilean4.hashCode() : 0);
            this.hashCode = hashCode10;
            return hashCode10;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.os_type != null) {
            sb2.append(", os_type=");
            sb2.append(this.os_type);
        }
        if (this.os_version != null) {
            sb2.append(", os_version=");
            sb2.append(this.os_version);
        }
        if (this.model != null) {
            sb2.append(", model=");
            sb2.append(this.model);
        }
        if (this.target_architecture != null) {
            sb2.append(", target_architecture=");
            sb2.append(this.target_architecture);
        }
        if (this.locale != null) {
            sb2.append(", locale=");
            sb2.append(this.locale);
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
        StringBuilder replace = sb2.replace(0, 2, "DeviceEnvironmentInfo{");
        replace.append('}');
        return replace.toString();
    }

    public DeviceEnvironmentInfo(OsType.Enum r22, String str, String str2, String str3, String str4, Types.Trilean trilean, Types.Trilean trilean2, Types.Trilean trilean3, Types.Trilean trilean4, ByteString byteString) {
        super(ADAPTER, byteString);
        this.os_type = r22;
        this.os_version = str;
        this.model = str2;
        this.target_architecture = str3;
        this.locale = str4;
        this.running_with_debugger_attached = trilean;
        this.running_in_tests = trilean2;
        this.running_in_simulator = trilean3;
        this.is_app_prerelease = trilean4;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<DeviceEnvironmentInfo, a> newBuilder2() {
        a aVar = new a();
        aVar.f29450a = this.os_type;
        aVar.f29451b = this.os_version;
        aVar.f29452c = this.model;
        aVar.f29453d = this.target_architecture;
        aVar.f29454e = this.locale;
        aVar.f29455f = this.running_with_debugger_attached;
        aVar.f29456g = this.running_in_tests;
        aVar.f29457h = this.running_in_simulator;
        aVar.f29458i = this.is_app_prerelease;
        aVar.addUnknownFields(unknownFields());
        return aVar;
    }
}
