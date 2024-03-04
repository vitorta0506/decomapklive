package com.google.cloud.speech.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class RecognitionMetadata extends GeneratedMessageV3 implements e {
    public static final int AUDIO_TOPIC_FIELD_NUMBER = 10;
    public static final int INDUSTRY_NAICS_CODE_OF_AUDIO_FIELD_NUMBER = 3;
    public static final int INTERACTION_TYPE_FIELD_NUMBER = 1;
    public static final int MICROPHONE_DISTANCE_FIELD_NUMBER = 4;
    public static final int ORIGINAL_MEDIA_TYPE_FIELD_NUMBER = 5;
    public static final int ORIGINAL_MIME_TYPE_FIELD_NUMBER = 8;
    public static final int RECORDING_DEVICE_NAME_FIELD_NUMBER = 7;
    public static final int RECORDING_DEVICE_TYPE_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private volatile Object audioTopic_;
    private int industryNaicsCodeOfAudio_;
    private int interactionType_;
    private byte memoizedIsInitialized;
    private int microphoneDistance_;
    private int originalMediaType_;
    private volatile Object originalMimeType_;
    private volatile Object recordingDeviceName_;
    private int recordingDeviceType_;
    private static final RecognitionMetadata DEFAULT_INSTANCE = new RecognitionMetadata();
    private static final e2<RecognitionMetadata> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum InteractionType implements h2 {
        INTERACTION_TYPE_UNSPECIFIED(0),
        DISCUSSION(1),
        PRESENTATION(2),
        PHONE_CALL(3),
        VOICEMAIL(4),
        PROFESSIONALLY_PRODUCED(5),
        VOICE_SEARCH(6),
        VOICE_COMMAND(7),
        DICTATION(8),
        UNRECOGNIZED(-1);
        
        public static final int DICTATION_VALUE = 8;
        public static final int DISCUSSION_VALUE = 1;
        public static final int INTERACTION_TYPE_UNSPECIFIED_VALUE = 0;
        public static final int PHONE_CALL_VALUE = 3;
        public static final int PRESENTATION_VALUE = 2;
        public static final int PROFESSIONALLY_PRODUCED_VALUE = 5;
        public static final int VOICEMAIL_VALUE = 4;
        public static final int VOICE_COMMAND_VALUE = 7;
        public static final int VOICE_SEARCH_VALUE = 6;
        private final int value;
        private static final u0.d<InteractionType> internalValueMap = new a();
        private static final InteractionType[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<InteractionType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public InteractionType a(int i9) {
                return InteractionType.forNumber(i9);
            }
        }

        InteractionType(int i9) {
            this.value = i9;
        }

        public static InteractionType forNumber(int i9) {
            switch (i9) {
                case 0:
                    return INTERACTION_TYPE_UNSPECIFIED;
                case 1:
                    return DISCUSSION;
                case 2:
                    return PRESENTATION;
                case 3:
                    return PHONE_CALL;
                case 4:
                    return VOICEMAIL;
                case 5:
                    return PROFESSIONALLY_PRODUCED;
                case 6:
                    return VOICE_SEARCH;
                case 7:
                    return VOICE_COMMAND;
                case 8:
                    return DICTATION;
                default:
                    return null;
            }
        }

        public static final Descriptors.d getDescriptor() {
            return RecognitionMetadata.getDescriptor().k().get(0);
        }

        public static u0.d<InteractionType> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static InteractionType valueOf(int i9) {
            return forNumber(i9);
        }

        public static InteractionType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum MicrophoneDistance implements h2 {
        MICROPHONE_DISTANCE_UNSPECIFIED(0),
        NEARFIELD(1),
        MIDFIELD(2),
        FARFIELD(3),
        UNRECOGNIZED(-1);
        
        public static final int FARFIELD_VALUE = 3;
        public static final int MICROPHONE_DISTANCE_UNSPECIFIED_VALUE = 0;
        public static final int MIDFIELD_VALUE = 2;
        public static final int NEARFIELD_VALUE = 1;
        private final int value;
        private static final u0.d<MicrophoneDistance> internalValueMap = new a();
        private static final MicrophoneDistance[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<MicrophoneDistance> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public MicrophoneDistance a(int i9) {
                return MicrophoneDistance.forNumber(i9);
            }
        }

        MicrophoneDistance(int i9) {
            this.value = i9;
        }

        public static MicrophoneDistance forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return FARFIELD;
                    }
                    return MIDFIELD;
                }
                return NEARFIELD;
            }
            return MICROPHONE_DISTANCE_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return RecognitionMetadata.getDescriptor().k().get(1);
        }

        public static u0.d<MicrophoneDistance> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static MicrophoneDistance valueOf(int i9) {
            return forNumber(i9);
        }

        public static MicrophoneDistance valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum OriginalMediaType implements h2 {
        ORIGINAL_MEDIA_TYPE_UNSPECIFIED(0),
        AUDIO(1),
        VIDEO(2),
        UNRECOGNIZED(-1);
        
        public static final int AUDIO_VALUE = 1;
        public static final int ORIGINAL_MEDIA_TYPE_UNSPECIFIED_VALUE = 0;
        public static final int VIDEO_VALUE = 2;
        private final int value;
        private static final u0.d<OriginalMediaType> internalValueMap = new a();
        private static final OriginalMediaType[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<OriginalMediaType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public OriginalMediaType a(int i9) {
                return OriginalMediaType.forNumber(i9);
            }
        }

        OriginalMediaType(int i9) {
            this.value = i9;
        }

        public static OriginalMediaType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return VIDEO;
                }
                return AUDIO;
            }
            return ORIGINAL_MEDIA_TYPE_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return RecognitionMetadata.getDescriptor().k().get(2);
        }

        public static u0.d<OriginalMediaType> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static OriginalMediaType valueOf(int i9) {
            return forNumber(i9);
        }

        public static OriginalMediaType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum RecordingDeviceType implements h2 {
        RECORDING_DEVICE_TYPE_UNSPECIFIED(0),
        SMARTPHONE(1),
        PC(2),
        PHONE_LINE(3),
        VEHICLE(4),
        OTHER_OUTDOOR_DEVICE(5),
        OTHER_INDOOR_DEVICE(6),
        UNRECOGNIZED(-1);
        
        public static final int OTHER_INDOOR_DEVICE_VALUE = 6;
        public static final int OTHER_OUTDOOR_DEVICE_VALUE = 5;
        public static final int PC_VALUE = 2;
        public static final int PHONE_LINE_VALUE = 3;
        public static final int RECORDING_DEVICE_TYPE_UNSPECIFIED_VALUE = 0;
        public static final int SMARTPHONE_VALUE = 1;
        public static final int VEHICLE_VALUE = 4;
        private final int value;
        private static final u0.d<RecordingDeviceType> internalValueMap = new a();
        private static final RecordingDeviceType[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<RecordingDeviceType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public RecordingDeviceType a(int i9) {
                return RecordingDeviceType.forNumber(i9);
            }
        }

        RecordingDeviceType(int i9) {
            this.value = i9;
        }

        public static RecordingDeviceType forNumber(int i9) {
            switch (i9) {
                case 0:
                    return RECORDING_DEVICE_TYPE_UNSPECIFIED;
                case 1:
                    return SMARTPHONE;
                case 2:
                    return PC;
                case 3:
                    return PHONE_LINE;
                case 4:
                    return VEHICLE;
                case 5:
                    return OTHER_OUTDOOR_DEVICE;
                case 6:
                    return OTHER_INDOOR_DEVICE;
                default:
                    return null;
            }
        }

        public static final Descriptors.d getDescriptor() {
            return RecognitionMetadata.getDescriptor().k().get(3);
        }

        public static u0.d<RecordingDeviceType> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static RecordingDeviceType valueOf(int i9) {
            return forNumber(i9);
        }

        public static RecordingDeviceType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<RecognitionMetadata> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RecognitionMetadata m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RecognitionMetadata(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private int f11883e;

        /* renamed from: f  reason: collision with root package name */
        private int f11884f;

        /* renamed from: g  reason: collision with root package name */
        private int f11885g;

        /* renamed from: h  reason: collision with root package name */
        private int f11886h;

        /* renamed from: i  reason: collision with root package name */
        private int f11887i;

        /* renamed from: j  reason: collision with root package name */
        private Object f11888j;

        /* renamed from: k  reason: collision with root package name */
        private Object f11889k;

        /* renamed from: l  reason: collision with root package name */
        private Object f11890l;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f11978p.d(RecognitionMetadata.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RecognitionMetadata build() {
            RecognitionMetadata I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RecognitionMetadata I() {
            RecognitionMetadata recognitionMetadata = new RecognitionMetadata(this, (a) null);
            recognitionMetadata.interactionType_ = this.f11883e;
            recognitionMetadata.industryNaicsCodeOfAudio_ = this.f11884f;
            recognitionMetadata.microphoneDistance_ = this.f11885g;
            recognitionMetadata.originalMediaType_ = this.f11886h;
            recognitionMetadata.recordingDeviceType_ = this.f11887i;
            recognitionMetadata.recordingDeviceName_ = this.f11888j;
            recognitionMetadata.originalMimeType_ = this.f11889k;
            recognitionMetadata.audioTopic_ = this.f11890l;
            Q();
            return recognitionMetadata;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RecognitionMetadata getDefaultInstanceForType() {
            return RecognitionMetadata.getDefaultInstance();
        }

        public b d0(RecognitionMetadata recognitionMetadata) {
            if (recognitionMetadata == RecognitionMetadata.getDefaultInstance()) {
                return this;
            }
            if (recognitionMetadata.interactionType_ != 0) {
                k0(recognitionMetadata.getInteractionTypeValue());
            }
            if (recognitionMetadata.getIndustryNaicsCodeOfAudio() != 0) {
                j0(recognitionMetadata.getIndustryNaicsCodeOfAudio());
            }
            if (recognitionMetadata.microphoneDistance_ != 0) {
                l0(recognitionMetadata.getMicrophoneDistanceValue());
            }
            if (recognitionMetadata.originalMediaType_ != 0) {
                m0(recognitionMetadata.getOriginalMediaTypeValue());
            }
            if (recognitionMetadata.recordingDeviceType_ != 0) {
                n0(recognitionMetadata.getRecordingDeviceTypeValue());
            }
            if (!recognitionMetadata.getRecordingDeviceName().isEmpty()) {
                this.f11888j = recognitionMetadata.recordingDeviceName_;
                R();
            }
            if (!recognitionMetadata.getOriginalMimeType().isEmpty()) {
                this.f11889k = recognitionMetadata.originalMimeType_;
                R();
            }
            if (!recognitionMetadata.getAudioTopic().isEmpty()) {
                this.f11890l = recognitionMetadata.audioTopic_;
                R();
            }
            z(((GeneratedMessageV3) recognitionMetadata).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1.RecognitionMetadata.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1.RecognitionMetadata.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1.RecognitionMetadata r3 = (com.google.cloud.speech.v1.RecognitionMetadata) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.d0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.cloud.speech.v1.RecognitionMetadata r4 = (com.google.cloud.speech.v1.RecognitionMetadata) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.d0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1.RecognitionMetadata.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1.RecognitionMetadata$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RecognitionMetadata) {
                return d0((RecognitionMetadata) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f11977o;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b j0(int i9) {
            this.f11884f = i9;
            R();
            return this;
        }

        public b k0(int i9) {
            this.f11883e = i9;
            R();
            return this;
        }

        public b l0(int i9) {
            this.f11885g = i9;
            R();
            return this;
        }

        public b m0(int i9) {
            this.f11886h = i9;
            R();
            return this;
        }

        public b n0(int i9) {
            this.f11887i = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f11883e = 0;
            this.f11885g = 0;
            this.f11886h = 0;
            this.f11887i = 0;
            this.f11888j = "";
            this.f11889k = "";
            this.f11890l = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11883e = 0;
            this.f11885g = 0;
            this.f11886h = 0;
            this.f11887i = 0;
            this.f11888j = "";
            this.f11889k = "";
            this.f11890l = "";
            b0();
        }
    }

    /* synthetic */ RecognitionMetadata(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RecognitionMetadata getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f11977o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RecognitionMetadata parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RecognitionMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RecognitionMetadata parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RecognitionMetadata> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RecognitionMetadata)) {
            return super.equals(obj);
        }
        RecognitionMetadata recognitionMetadata = (RecognitionMetadata) obj;
        return this.interactionType_ == recognitionMetadata.interactionType_ && getIndustryNaicsCodeOfAudio() == recognitionMetadata.getIndustryNaicsCodeOfAudio() && this.microphoneDistance_ == recognitionMetadata.microphoneDistance_ && this.originalMediaType_ == recognitionMetadata.originalMediaType_ && this.recordingDeviceType_ == recognitionMetadata.recordingDeviceType_ && getRecordingDeviceName().equals(recognitionMetadata.getRecordingDeviceName()) && getOriginalMimeType().equals(recognitionMetadata.getOriginalMimeType()) && getAudioTopic().equals(recognitionMetadata.getAudioTopic()) && this.unknownFields.equals(recognitionMetadata.unknownFields);
    }

    public String getAudioTopic() {
        Object obj = this.audioTopic_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.audioTopic_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAudioTopicBytes() {
        Object obj = this.audioTopic_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.audioTopic_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public int getIndustryNaicsCodeOfAudio() {
        return this.industryNaicsCodeOfAudio_;
    }

    public InteractionType getInteractionType() {
        InteractionType valueOf = InteractionType.valueOf(this.interactionType_);
        return valueOf == null ? InteractionType.UNRECOGNIZED : valueOf;
    }

    public int getInteractionTypeValue() {
        return this.interactionType_;
    }

    public MicrophoneDistance getMicrophoneDistance() {
        MicrophoneDistance valueOf = MicrophoneDistance.valueOf(this.microphoneDistance_);
        return valueOf == null ? MicrophoneDistance.UNRECOGNIZED : valueOf;
    }

    public int getMicrophoneDistanceValue() {
        return this.microphoneDistance_;
    }

    public OriginalMediaType getOriginalMediaType() {
        OriginalMediaType valueOf = OriginalMediaType.valueOf(this.originalMediaType_);
        return valueOf == null ? OriginalMediaType.UNRECOGNIZED : valueOf;
    }

    public int getOriginalMediaTypeValue() {
        return this.originalMediaType_;
    }

    public String getOriginalMimeType() {
        Object obj = this.originalMimeType_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.originalMimeType_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getOriginalMimeTypeBytes() {
        Object obj = this.originalMimeType_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.originalMimeType_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RecognitionMetadata> getParserForType() {
        return PARSER;
    }

    public String getRecordingDeviceName() {
        Object obj = this.recordingDeviceName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.recordingDeviceName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRecordingDeviceNameBytes() {
        Object obj = this.recordingDeviceName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.recordingDeviceName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public RecordingDeviceType getRecordingDeviceType() {
        RecordingDeviceType valueOf = RecordingDeviceType.valueOf(this.recordingDeviceType_);
        return valueOf == null ? RecordingDeviceType.UNRECOGNIZED : valueOf;
    }

    public int getRecordingDeviceTypeValue() {
        return this.recordingDeviceType_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.interactionType_ != InteractionType.INTERACTION_TYPE_UNSPECIFIED.getNumber() ? 0 + CodedOutputStream.l(1, this.interactionType_) : 0;
        int i10 = this.industryNaicsCodeOfAudio_;
        if (i10 != 0) {
            l10 += CodedOutputStream.Y(3, i10);
        }
        if (this.microphoneDistance_ != MicrophoneDistance.MICROPHONE_DISTANCE_UNSPECIFIED.getNumber()) {
            l10 += CodedOutputStream.l(4, this.microphoneDistance_);
        }
        if (this.originalMediaType_ != OriginalMediaType.ORIGINAL_MEDIA_TYPE_UNSPECIFIED.getNumber()) {
            l10 += CodedOutputStream.l(5, this.originalMediaType_);
        }
        if (this.recordingDeviceType_ != RecordingDeviceType.RECORDING_DEVICE_TYPE_UNSPECIFIED.getNumber()) {
            l10 += CodedOutputStream.l(6, this.recordingDeviceType_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.recordingDeviceName_)) {
            l10 += GeneratedMessageV3.computeStringSize(7, this.recordingDeviceName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.originalMimeType_)) {
            l10 += GeneratedMessageV3.computeStringSize(8, this.originalMimeType_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.audioTopic_)) {
            l10 += GeneratedMessageV3.computeStringSize(10, this.audioTopic_);
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.interactionType_) * 37) + 3) * 53) + getIndustryNaicsCodeOfAudio()) * 37) + 4) * 53) + this.microphoneDistance_) * 37) + 5) * 53) + this.originalMediaType_) * 37) + 6) * 53) + this.recordingDeviceType_) * 37) + 7) * 53) + getRecordingDeviceName().hashCode()) * 37) + 8) * 53) + getOriginalMimeType().hashCode()) * 37) + 10) * 53) + getAudioTopic().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f11978p.d(RecognitionMetadata.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.p1
    public final boolean isInitialized() {
        byte b10 = this.memoizedIsInitialized;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new RecognitionMetadata();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.interactionType_ != InteractionType.INTERACTION_TYPE_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(1, this.interactionType_);
        }
        int i9 = this.industryNaicsCodeOfAudio_;
        if (i9 != 0) {
            codedOutputStream.c1(3, i9);
        }
        if (this.microphoneDistance_ != MicrophoneDistance.MICROPHONE_DISTANCE_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(4, this.microphoneDistance_);
        }
        if (this.originalMediaType_ != OriginalMediaType.ORIGINAL_MEDIA_TYPE_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(5, this.originalMediaType_);
        }
        if (this.recordingDeviceType_ != RecordingDeviceType.RECORDING_DEVICE_TYPE_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(6, this.recordingDeviceType_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.recordingDeviceName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.recordingDeviceName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.originalMimeType_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.originalMimeType_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.audioTopic_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.audioTopic_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RecognitionMetadata(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RecognitionMetadata recognitionMetadata) {
        return DEFAULT_INSTANCE.toBuilder().d0(recognitionMetadata);
    }

    public static RecognitionMetadata parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognitionMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RecognitionMetadata parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RecognitionMetadata(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RecognitionMetadata parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RecognitionMetadata getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static RecognitionMetadata parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RecognitionMetadata() {
        this.memoizedIsInitialized = (byte) -1;
        this.interactionType_ = 0;
        this.microphoneDistance_ = 0;
        this.originalMediaType_ = 0;
        this.recordingDeviceType_ = 0;
        this.recordingDeviceName_ = "";
        this.originalMimeType_ = "";
        this.audioTopic_ = "";
    }

    public static RecognitionMetadata parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RecognitionMetadata parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RecognitionMetadata parseFrom(InputStream inputStream) throws IOException {
        return (RecognitionMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RecognitionMetadata parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognitionMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RecognitionMetadata parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RecognitionMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RecognitionMetadata parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RecognitionMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private RecognitionMetadata(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.interactionType_ = pVar.u();
                        } else if (L == 24) {
                            this.industryNaicsCodeOfAudio_ = pVar.M();
                        } else if (L == 32) {
                            this.microphoneDistance_ = pVar.u();
                        } else if (L == 40) {
                            this.originalMediaType_ = pVar.u();
                        } else if (L == 48) {
                            this.recordingDeviceType_ = pVar.u();
                        } else if (L == 58) {
                            this.recordingDeviceName_ = pVar.K();
                        } else if (L == 66) {
                            this.originalMimeType_ = pVar.K();
                        } else if (L != 82) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.audioTopic_ = pVar.K();
                        }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
