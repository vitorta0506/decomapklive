package com.opensource.svgaplayer.proto;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class ShapeEntity extends Message<ShapeEntity, Builder> {
    public static final ProtoAdapter<ShapeEntity> ADAPTER = new ProtoAdapter_ShapeEntity();
    public static final ShapeType DEFAULT_TYPE = ShapeType.SHAPE;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs#ADAPTER", tag = 4)
    public final EllipseArgs ellipse;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$RectArgs#ADAPTER", tag = 3)
    public final RectArgs rect;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs#ADAPTER", tag = 2)
    public final ShapeArgs shape;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle#ADAPTER", tag = 10)
    public final ShapeStyle styles;
    @WireField(adapter = "com.opensource.svgaplayer.proto.Transform#ADAPTER", tag = 11)
    public final Transform transform;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeType#ADAPTER", tag = 1)
    public final ShapeType type;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<ShapeEntity, Builder> {
        public EllipseArgs ellipse;
        public RectArgs rect;
        public ShapeArgs shape;
        public ShapeStyle styles;
        public Transform transform;
        public ShapeType type;

        public Builder ellipse(EllipseArgs ellipseArgs) {
            this.ellipse = ellipseArgs;
            this.shape = null;
            this.rect = null;
            return this;
        }

        public Builder rect(RectArgs rectArgs) {
            this.rect = rectArgs;
            this.shape = null;
            this.ellipse = null;
            return this;
        }

        public Builder shape(ShapeArgs shapeArgs) {
            this.shape = shapeArgs;
            this.rect = null;
            this.ellipse = null;
            return this;
        }

        public Builder styles(ShapeStyle shapeStyle) {
            this.styles = shapeStyle;
            return this;
        }

        public Builder transform(Transform transform) {
            this.transform = transform;
            return this;
        }

        public Builder type(ShapeType shapeType) {
            this.type = shapeType;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public ShapeEntity build() {
            return new ShapeEntity(this.type, this.styles, this.transform, this.shape, this.rect, this.ellipse, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    public static final class EllipseArgs extends Message<EllipseArgs, Builder> {
        public static final ProtoAdapter<EllipseArgs> ADAPTER = new ProtoAdapter_EllipseArgs();
        public static final Float DEFAULT_RADIUSX;
        public static final Float DEFAULT_RADIUSY;
        public static final Float DEFAULT_X;
        public static final Float DEFAULT_Y;
        private static final long serialVersionUID = 0;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
        public final Float radiusX;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)
        public final Float radiusY;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)

        /* renamed from: x  reason: collision with root package name */
        public final Float f28861x;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)

        /* renamed from: y  reason: collision with root package name */
        public final Float f28862y;

        /* loaded from: classes4.dex */
        public static final class Builder extends Message.Builder<EllipseArgs, Builder> {
            public Float radiusX;
            public Float radiusY;

            /* renamed from: x  reason: collision with root package name */
            public Float f28863x;

            /* renamed from: y  reason: collision with root package name */
            public Float f28864y;

            public Builder radiusX(Float f10) {
                this.radiusX = f10;
                return this;
            }

            public Builder radiusY(Float f10) {
                this.radiusY = f10;
                return this;
            }

            public Builder x(Float f10) {
                this.f28863x = f10;
                return this;
            }

            public Builder y(Float f10) {
                this.f28864y = f10;
                return this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.Message.Builder
            public EllipseArgs build() {
                return new EllipseArgs(this.f28863x, this.f28864y, this.radiusX, this.radiusY, super.buildUnknownFields());
            }
        }

        /* loaded from: classes4.dex */
        private static final class ProtoAdapter_EllipseArgs extends ProtoAdapter<EllipseArgs> {
            ProtoAdapter_EllipseArgs() {
                super(FieldEncoding.LENGTH_DELIMITED, EllipseArgs.class);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EllipseArgs decode(ProtoReader protoReader) throws IOException {
                Builder builder = new Builder();
                long beginMessage = protoReader.beginMessage();
                while (true) {
                    int nextTag = protoReader.nextTag();
                    if (nextTag == -1) {
                        protoReader.endMessage(beginMessage);
                        return builder.build();
                    } else if (nextTag == 1) {
                        builder.x(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag == 2) {
                        builder.y(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag == 3) {
                        builder.radiusX(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag != 4) {
                        FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                        builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                    } else {
                        builder.radiusY(ProtoAdapter.FLOAT.decode(protoReader));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, EllipseArgs ellipseArgs) throws IOException {
                Float f10 = ellipseArgs.f28861x;
                if (f10 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, f10);
                }
                Float f11 = ellipseArgs.f28862y;
                if (f11 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 2, f11);
                }
                Float f12 = ellipseArgs.radiusX;
                if (f12 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, f12);
                }
                Float f13 = ellipseArgs.radiusY;
                if (f13 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 4, f13);
                }
                protoWriter.writeBytes(ellipseArgs.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EllipseArgs ellipseArgs) {
                Float f10 = ellipseArgs.f28861x;
                int encodedSizeWithTag = f10 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, f10) : 0;
                Float f11 = ellipseArgs.f28862y;
                int encodedSizeWithTag2 = encodedSizeWithTag + (f11 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(2, f11) : 0);
                Float f12 = ellipseArgs.radiusX;
                int encodedSizeWithTag3 = encodedSizeWithTag2 + (f12 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, f12) : 0);
                Float f13 = ellipseArgs.radiusY;
                return encodedSizeWithTag3 + (f13 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(4, f13) : 0) + ellipseArgs.unknownFields().size();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EllipseArgs redact(EllipseArgs ellipseArgs) {
                Message.Builder<EllipseArgs, Builder> newBuilder2 = ellipseArgs.newBuilder2();
                newBuilder2.clearUnknownFields();
                return newBuilder2.build();
            }
        }

        static {
            Float valueOf = Float.valueOf(0.0f);
            DEFAULT_X = valueOf;
            DEFAULT_Y = valueOf;
            DEFAULT_RADIUSX = valueOf;
            DEFAULT_RADIUSY = valueOf;
        }

        public EllipseArgs(Float f10, Float f11, Float f12, Float f13) {
            this(f10, f11, f12, f13, ByteString.EMPTY);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof EllipseArgs) {
                EllipseArgs ellipseArgs = (EllipseArgs) obj;
                return unknownFields().equals(ellipseArgs.unknownFields()) && Internal.equals(this.f28861x, ellipseArgs.f28861x) && Internal.equals(this.f28862y, ellipseArgs.f28862y) && Internal.equals(this.radiusX, ellipseArgs.radiusX) && Internal.equals(this.radiusY, ellipseArgs.radiusY);
            }
            return false;
        }

        public int hashCode() {
            int i9 = this.hashCode;
            if (i9 == 0) {
                int hashCode = unknownFields().hashCode() * 37;
                Float f10 = this.f28861x;
                int hashCode2 = (hashCode + (f10 != null ? f10.hashCode() : 0)) * 37;
                Float f11 = this.f28862y;
                int hashCode3 = (hashCode2 + (f11 != null ? f11.hashCode() : 0)) * 37;
                Float f12 = this.radiusX;
                int hashCode4 = (hashCode3 + (f12 != null ? f12.hashCode() : 0)) * 37;
                Float f13 = this.radiusY;
                int hashCode5 = hashCode4 + (f13 != null ? f13.hashCode() : 0);
                this.hashCode = hashCode5;
                return hashCode5;
            }
            return i9;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            if (this.f28861x != null) {
                sb2.append(", x=");
                sb2.append(this.f28861x);
            }
            if (this.f28862y != null) {
                sb2.append(", y=");
                sb2.append(this.f28862y);
            }
            if (this.radiusX != null) {
                sb2.append(", radiusX=");
                sb2.append(this.radiusX);
            }
            if (this.radiusY != null) {
                sb2.append(", radiusY=");
                sb2.append(this.radiusY);
            }
            StringBuilder replace = sb2.replace(0, 2, "EllipseArgs{");
            replace.append('}');
            return replace.toString();
        }

        public EllipseArgs(Float f10, Float f11, Float f12, Float f13, ByteString byteString) {
            super(ADAPTER, byteString);
            this.f28861x = f10;
            this.f28862y = f11;
            this.radiusX = f12;
            this.radiusY = f13;
        }

        @Override // com.squareup.wire.Message
        /* renamed from: newBuilder */
        public Message.Builder<EllipseArgs, Builder> newBuilder2() {
            Builder builder = new Builder();
            builder.f28863x = this.f28861x;
            builder.f28864y = this.f28862y;
            builder.radiusX = this.radiusX;
            builder.radiusY = this.radiusY;
            builder.addUnknownFields(unknownFields());
            return builder;
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_ShapeEntity extends ProtoAdapter<ShapeEntity> {
        ProtoAdapter_ShapeEntity() {
            super(FieldEncoding.LENGTH_DELIMITED, ShapeEntity.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public ShapeEntity decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    try {
                        builder.type(ShapeType.ADAPTER.decode(protoReader));
                    } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                        builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                    }
                } else if (nextTag == 2) {
                    builder.shape(ShapeArgs.ADAPTER.decode(protoReader));
                } else if (nextTag == 3) {
                    builder.rect(RectArgs.ADAPTER.decode(protoReader));
                } else if (nextTag == 4) {
                    builder.ellipse(EllipseArgs.ADAPTER.decode(protoReader));
                } else if (nextTag == 10) {
                    builder.styles(ShapeStyle.ADAPTER.decode(protoReader));
                } else if (nextTag != 11) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.transform(Transform.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, ShapeEntity shapeEntity) throws IOException {
            ShapeType shapeType = shapeEntity.type;
            if (shapeType != null) {
                ShapeType.ADAPTER.encodeWithTag(protoWriter, 1, shapeType);
            }
            ShapeStyle shapeStyle = shapeEntity.styles;
            if (shapeStyle != null) {
                ShapeStyle.ADAPTER.encodeWithTag(protoWriter, 10, shapeStyle);
            }
            Transform transform = shapeEntity.transform;
            if (transform != null) {
                Transform.ADAPTER.encodeWithTag(protoWriter, 11, transform);
            }
            ShapeArgs shapeArgs = shapeEntity.shape;
            if (shapeArgs != null) {
                ShapeArgs.ADAPTER.encodeWithTag(protoWriter, 2, shapeArgs);
            }
            RectArgs rectArgs = shapeEntity.rect;
            if (rectArgs != null) {
                RectArgs.ADAPTER.encodeWithTag(protoWriter, 3, rectArgs);
            }
            EllipseArgs ellipseArgs = shapeEntity.ellipse;
            if (ellipseArgs != null) {
                EllipseArgs.ADAPTER.encodeWithTag(protoWriter, 4, ellipseArgs);
            }
            protoWriter.writeBytes(shapeEntity.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public int encodedSize(ShapeEntity shapeEntity) {
            ShapeType shapeType = shapeEntity.type;
            int encodedSizeWithTag = shapeType != null ? ShapeType.ADAPTER.encodedSizeWithTag(1, shapeType) : 0;
            ShapeStyle shapeStyle = shapeEntity.styles;
            int encodedSizeWithTag2 = encodedSizeWithTag + (shapeStyle != null ? ShapeStyle.ADAPTER.encodedSizeWithTag(10, shapeStyle) : 0);
            Transform transform = shapeEntity.transform;
            int encodedSizeWithTag3 = encodedSizeWithTag2 + (transform != null ? Transform.ADAPTER.encodedSizeWithTag(11, transform) : 0);
            ShapeArgs shapeArgs = shapeEntity.shape;
            int encodedSizeWithTag4 = encodedSizeWithTag3 + (shapeArgs != null ? ShapeArgs.ADAPTER.encodedSizeWithTag(2, shapeArgs) : 0);
            RectArgs rectArgs = shapeEntity.rect;
            int encodedSizeWithTag5 = encodedSizeWithTag4 + (rectArgs != null ? RectArgs.ADAPTER.encodedSizeWithTag(3, rectArgs) : 0);
            EllipseArgs ellipseArgs = shapeEntity.ellipse;
            return encodedSizeWithTag5 + (ellipseArgs != null ? EllipseArgs.ADAPTER.encodedSizeWithTag(4, ellipseArgs) : 0) + shapeEntity.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.opensource.svgaplayer.proto.ShapeEntity$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public ShapeEntity redact(ShapeEntity shapeEntity) {
            ?? newBuilder2 = shapeEntity.newBuilder2();
            ShapeStyle shapeStyle = newBuilder2.styles;
            if (shapeStyle != null) {
                newBuilder2.styles = ShapeStyle.ADAPTER.redact(shapeStyle);
            }
            Transform transform = newBuilder2.transform;
            if (transform != null) {
                newBuilder2.transform = Transform.ADAPTER.redact(transform);
            }
            ShapeArgs shapeArgs = newBuilder2.shape;
            if (shapeArgs != null) {
                newBuilder2.shape = ShapeArgs.ADAPTER.redact(shapeArgs);
            }
            RectArgs rectArgs = newBuilder2.rect;
            if (rectArgs != null) {
                newBuilder2.rect = RectArgs.ADAPTER.redact(rectArgs);
            }
            EllipseArgs ellipseArgs = newBuilder2.ellipse;
            if (ellipseArgs != null) {
                newBuilder2.ellipse = EllipseArgs.ADAPTER.redact(ellipseArgs);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    /* loaded from: classes4.dex */
    public static final class RectArgs extends Message<RectArgs, Builder> {
        public static final ProtoAdapter<RectArgs> ADAPTER = new ProtoAdapter_RectArgs();
        public static final Float DEFAULT_CORNERRADIUS;
        public static final Float DEFAULT_HEIGHT;
        public static final Float DEFAULT_WIDTH;
        public static final Float DEFAULT_X;
        public static final Float DEFAULT_Y;
        private static final long serialVersionUID = 0;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 5)
        public final Float cornerRadius;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)
        public final Float height;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
        public final Float width;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)

        /* renamed from: x  reason: collision with root package name */
        public final Float f28865x;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)

        /* renamed from: y  reason: collision with root package name */
        public final Float f28866y;

        /* loaded from: classes4.dex */
        public static final class Builder extends Message.Builder<RectArgs, Builder> {
            public Float cornerRadius;
            public Float height;
            public Float width;

            /* renamed from: x  reason: collision with root package name */
            public Float f28867x;

            /* renamed from: y  reason: collision with root package name */
            public Float f28868y;

            public Builder cornerRadius(Float f10) {
                this.cornerRadius = f10;
                return this;
            }

            public Builder height(Float f10) {
                this.height = f10;
                return this;
            }

            public Builder width(Float f10) {
                this.width = f10;
                return this;
            }

            public Builder x(Float f10) {
                this.f28867x = f10;
                return this;
            }

            public Builder y(Float f10) {
                this.f28868y = f10;
                return this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.Message.Builder
            public RectArgs build() {
                return new RectArgs(this.f28867x, this.f28868y, this.width, this.height, this.cornerRadius, super.buildUnknownFields());
            }
        }

        /* loaded from: classes4.dex */
        private static final class ProtoAdapter_RectArgs extends ProtoAdapter<RectArgs> {
            ProtoAdapter_RectArgs() {
                super(FieldEncoding.LENGTH_DELIMITED, RectArgs.class);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RectArgs decode(ProtoReader protoReader) throws IOException {
                Builder builder = new Builder();
                long beginMessage = protoReader.beginMessage();
                while (true) {
                    int nextTag = protoReader.nextTag();
                    if (nextTag == -1) {
                        protoReader.endMessage(beginMessage);
                        return builder.build();
                    } else if (nextTag == 1) {
                        builder.x(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag == 2) {
                        builder.y(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag == 3) {
                        builder.width(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag == 4) {
                        builder.height(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag != 5) {
                        FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                        builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                    } else {
                        builder.cornerRadius(ProtoAdapter.FLOAT.decode(protoReader));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, RectArgs rectArgs) throws IOException {
                Float f10 = rectArgs.f28865x;
                if (f10 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, f10);
                }
                Float f11 = rectArgs.f28866y;
                if (f11 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 2, f11);
                }
                Float f12 = rectArgs.width;
                if (f12 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, f12);
                }
                Float f13 = rectArgs.height;
                if (f13 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 4, f13);
                }
                Float f14 = rectArgs.cornerRadius;
                if (f14 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 5, f14);
                }
                protoWriter.writeBytes(rectArgs.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RectArgs rectArgs) {
                Float f10 = rectArgs.f28865x;
                int encodedSizeWithTag = f10 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, f10) : 0;
                Float f11 = rectArgs.f28866y;
                int encodedSizeWithTag2 = encodedSizeWithTag + (f11 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(2, f11) : 0);
                Float f12 = rectArgs.width;
                int encodedSizeWithTag3 = encodedSizeWithTag2 + (f12 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, f12) : 0);
                Float f13 = rectArgs.height;
                int encodedSizeWithTag4 = encodedSizeWithTag3 + (f13 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(4, f13) : 0);
                Float f14 = rectArgs.cornerRadius;
                return encodedSizeWithTag4 + (f14 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(5, f14) : 0) + rectArgs.unknownFields().size();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RectArgs redact(RectArgs rectArgs) {
                Message.Builder<RectArgs, Builder> newBuilder2 = rectArgs.newBuilder2();
                newBuilder2.clearUnknownFields();
                return newBuilder2.build();
            }
        }

        static {
            Float valueOf = Float.valueOf(0.0f);
            DEFAULT_X = valueOf;
            DEFAULT_Y = valueOf;
            DEFAULT_WIDTH = valueOf;
            DEFAULT_HEIGHT = valueOf;
            DEFAULT_CORNERRADIUS = valueOf;
        }

        public RectArgs(Float f10, Float f11, Float f12, Float f13, Float f14) {
            this(f10, f11, f12, f13, f14, ByteString.EMPTY);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof RectArgs) {
                RectArgs rectArgs = (RectArgs) obj;
                return unknownFields().equals(rectArgs.unknownFields()) && Internal.equals(this.f28865x, rectArgs.f28865x) && Internal.equals(this.f28866y, rectArgs.f28866y) && Internal.equals(this.width, rectArgs.width) && Internal.equals(this.height, rectArgs.height) && Internal.equals(this.cornerRadius, rectArgs.cornerRadius);
            }
            return false;
        }

        public int hashCode() {
            int i9 = this.hashCode;
            if (i9 == 0) {
                int hashCode = unknownFields().hashCode() * 37;
                Float f10 = this.f28865x;
                int hashCode2 = (hashCode + (f10 != null ? f10.hashCode() : 0)) * 37;
                Float f11 = this.f28866y;
                int hashCode3 = (hashCode2 + (f11 != null ? f11.hashCode() : 0)) * 37;
                Float f12 = this.width;
                int hashCode4 = (hashCode3 + (f12 != null ? f12.hashCode() : 0)) * 37;
                Float f13 = this.height;
                int hashCode5 = (hashCode4 + (f13 != null ? f13.hashCode() : 0)) * 37;
                Float f14 = this.cornerRadius;
                int hashCode6 = hashCode5 + (f14 != null ? f14.hashCode() : 0);
                this.hashCode = hashCode6;
                return hashCode6;
            }
            return i9;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            if (this.f28865x != null) {
                sb2.append(", x=");
                sb2.append(this.f28865x);
            }
            if (this.f28866y != null) {
                sb2.append(", y=");
                sb2.append(this.f28866y);
            }
            if (this.width != null) {
                sb2.append(", width=");
                sb2.append(this.width);
            }
            if (this.height != null) {
                sb2.append(", height=");
                sb2.append(this.height);
            }
            if (this.cornerRadius != null) {
                sb2.append(", cornerRadius=");
                sb2.append(this.cornerRadius);
            }
            StringBuilder replace = sb2.replace(0, 2, "RectArgs{");
            replace.append('}');
            return replace.toString();
        }

        public RectArgs(Float f10, Float f11, Float f12, Float f13, Float f14, ByteString byteString) {
            super(ADAPTER, byteString);
            this.f28865x = f10;
            this.f28866y = f11;
            this.width = f12;
            this.height = f13;
            this.cornerRadius = f14;
        }

        @Override // com.squareup.wire.Message
        /* renamed from: newBuilder */
        public Message.Builder<RectArgs, Builder> newBuilder2() {
            Builder builder = new Builder();
            builder.f28867x = this.f28865x;
            builder.f28868y = this.f28866y;
            builder.width = this.width;
            builder.height = this.height;
            builder.cornerRadius = this.cornerRadius;
            builder.addUnknownFields(unknownFields());
            return builder;
        }
    }

    /* loaded from: classes4.dex */
    public static final class ShapeArgs extends Message<ShapeArgs, Builder> {
        public static final ProtoAdapter<ShapeArgs> ADAPTER = new ProtoAdapter_ShapeArgs();
        public static final String DEFAULT_D = "";
        private static final long serialVersionUID = 0;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)

        /* renamed from: d  reason: collision with root package name */
        public final String f28869d;

        /* loaded from: classes4.dex */
        public static final class Builder extends Message.Builder<ShapeArgs, Builder> {

            /* renamed from: d  reason: collision with root package name */
            public String f28870d;

            public Builder d(String str) {
                this.f28870d = str;
                return this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.Message.Builder
            public ShapeArgs build() {
                return new ShapeArgs(this.f28870d, super.buildUnknownFields());
            }
        }

        /* loaded from: classes4.dex */
        private static final class ProtoAdapter_ShapeArgs extends ProtoAdapter<ShapeArgs> {
            ProtoAdapter_ShapeArgs() {
                super(FieldEncoding.LENGTH_DELIMITED, ShapeArgs.class);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ShapeArgs decode(ProtoReader protoReader) throws IOException {
                Builder builder = new Builder();
                long beginMessage = protoReader.beginMessage();
                while (true) {
                    int nextTag = protoReader.nextTag();
                    if (nextTag == -1) {
                        protoReader.endMessage(beginMessage);
                        return builder.build();
                    } else if (nextTag != 1) {
                        FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                        builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                    } else {
                        builder.d(ProtoAdapter.STRING.decode(protoReader));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, ShapeArgs shapeArgs) throws IOException {
                String str = shapeArgs.f28869d;
                if (str != null) {
                    ProtoAdapter.STRING.encodeWithTag(protoWriter, 1, str);
                }
                protoWriter.writeBytes(shapeArgs.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ShapeArgs shapeArgs) {
                String str = shapeArgs.f28869d;
                return (str != null ? ProtoAdapter.STRING.encodedSizeWithTag(1, str) : 0) + shapeArgs.unknownFields().size();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ShapeArgs redact(ShapeArgs shapeArgs) {
                Message.Builder<ShapeArgs, Builder> newBuilder2 = shapeArgs.newBuilder2();
                newBuilder2.clearUnknownFields();
                return newBuilder2.build();
            }
        }

        public ShapeArgs(String str) {
            this(str, ByteString.EMPTY);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof ShapeArgs) {
                ShapeArgs shapeArgs = (ShapeArgs) obj;
                return unknownFields().equals(shapeArgs.unknownFields()) && Internal.equals(this.f28869d, shapeArgs.f28869d);
            }
            return false;
        }

        public int hashCode() {
            int i9 = this.hashCode;
            if (i9 == 0) {
                int hashCode = unknownFields().hashCode() * 37;
                String str = this.f28869d;
                int hashCode2 = hashCode + (str != null ? str.hashCode() : 0);
                this.hashCode = hashCode2;
                return hashCode2;
            }
            return i9;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            if (this.f28869d != null) {
                sb2.append(", d=");
                sb2.append(this.f28869d);
            }
            StringBuilder replace = sb2.replace(0, 2, "ShapeArgs{");
            replace.append('}');
            return replace.toString();
        }

        public ShapeArgs(String str, ByteString byteString) {
            super(ADAPTER, byteString);
            this.f28869d = str;
        }

        @Override // com.squareup.wire.Message
        /* renamed from: newBuilder */
        public Message.Builder<ShapeArgs, Builder> newBuilder2() {
            Builder builder = new Builder();
            builder.f28870d = this.f28869d;
            builder.addUnknownFields(unknownFields());
            return builder;
        }
    }

    /* loaded from: classes4.dex */
    public static final class ShapeStyle extends Message<ShapeStyle, Builder> {
        public static final ProtoAdapter<ShapeStyle> ADAPTER = new ProtoAdapter_ShapeStyle();
        public static final LineCap DEFAULT_LINECAP;
        public static final Float DEFAULT_LINEDASHI;
        public static final Float DEFAULT_LINEDASHII;
        public static final Float DEFAULT_LINEDASHIII;
        public static final LineJoin DEFAULT_LINEJOIN;
        public static final Float DEFAULT_MITERLIMIT;
        public static final Float DEFAULT_STROKEWIDTH;
        private static final long serialVersionUID = 0;
        @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor#ADAPTER", tag = 1)
        public final RGBAColor fill;
        @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$LineCap#ADAPTER", tag = 4)
        public final LineCap lineCap;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 7)
        public final Float lineDashI;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 8)
        public final Float lineDashII;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 9)
        public final Float lineDashIII;
        @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$LineJoin#ADAPTER", tag = 5)
        public final LineJoin lineJoin;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 6)
        public final Float miterLimit;
        @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor#ADAPTER", tag = 2)
        public final RGBAColor stroke;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
        public final Float strokeWidth;

        /* loaded from: classes4.dex */
        public static final class Builder extends Message.Builder<ShapeStyle, Builder> {
            public RGBAColor fill;
            public LineCap lineCap;
            public Float lineDashI;
            public Float lineDashII;
            public Float lineDashIII;
            public LineJoin lineJoin;
            public Float miterLimit;
            public RGBAColor stroke;
            public Float strokeWidth;

            public Builder fill(RGBAColor rGBAColor) {
                this.fill = rGBAColor;
                return this;
            }

            public Builder lineCap(LineCap lineCap) {
                this.lineCap = lineCap;
                return this;
            }

            public Builder lineDashI(Float f10) {
                this.lineDashI = f10;
                return this;
            }

            public Builder lineDashII(Float f10) {
                this.lineDashII = f10;
                return this;
            }

            public Builder lineDashIII(Float f10) {
                this.lineDashIII = f10;
                return this;
            }

            public Builder lineJoin(LineJoin lineJoin) {
                this.lineJoin = lineJoin;
                return this;
            }

            public Builder miterLimit(Float f10) {
                this.miterLimit = f10;
                return this;
            }

            public Builder stroke(RGBAColor rGBAColor) {
                this.stroke = rGBAColor;
                return this;
            }

            public Builder strokeWidth(Float f10) {
                this.strokeWidth = f10;
                return this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.Message.Builder
            public ShapeStyle build() {
                return new ShapeStyle(this.fill, this.stroke, this.strokeWidth, this.lineCap, this.lineJoin, this.miterLimit, this.lineDashI, this.lineDashII, this.lineDashIII, super.buildUnknownFields());
            }
        }

        /* loaded from: classes4.dex */
        public enum LineCap implements WireEnum {
            LineCap_BUTT(0),
            LineCap_ROUND(1),
            LineCap_SQUARE(2);
            
            public static final ProtoAdapter<LineCap> ADAPTER = ProtoAdapter.newEnumAdapter(LineCap.class);
            private final int value;

            LineCap(int i9) {
                this.value = i9;
            }

            public static LineCap fromValue(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            return null;
                        }
                        return LineCap_SQUARE;
                    }
                    return LineCap_ROUND;
                }
                return LineCap_BUTT;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }
        }

        /* loaded from: classes4.dex */
        public enum LineJoin implements WireEnum {
            LineJoin_MITER(0),
            LineJoin_ROUND(1),
            LineJoin_BEVEL(2);
            
            public static final ProtoAdapter<LineJoin> ADAPTER = ProtoAdapter.newEnumAdapter(LineJoin.class);
            private final int value;

            LineJoin(int i9) {
                this.value = i9;
            }

            public static LineJoin fromValue(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            return null;
                        }
                        return LineJoin_BEVEL;
                    }
                    return LineJoin_ROUND;
                }
                return LineJoin_MITER;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }
        }

        /* loaded from: classes4.dex */
        private static final class ProtoAdapter_ShapeStyle extends ProtoAdapter<ShapeStyle> {
            ProtoAdapter_ShapeStyle() {
                super(FieldEncoding.LENGTH_DELIMITED, ShapeStyle.class);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ShapeStyle decode(ProtoReader protoReader) throws IOException {
                Builder builder = new Builder();
                long beginMessage = protoReader.beginMessage();
                while (true) {
                    int nextTag = protoReader.nextTag();
                    if (nextTag != -1) {
                        switch (nextTag) {
                            case 1:
                                builder.fill(RGBAColor.ADAPTER.decode(protoReader));
                                break;
                            case 2:
                                builder.stroke(RGBAColor.ADAPTER.decode(protoReader));
                                break;
                            case 3:
                                builder.strokeWidth(ProtoAdapter.FLOAT.decode(protoReader));
                                break;
                            case 4:
                                try {
                                    builder.lineCap(LineCap.ADAPTER.decode(protoReader));
                                    break;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                                    builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                                    break;
                                }
                            case 5:
                                try {
                                    builder.lineJoin(LineJoin.ADAPTER.decode(protoReader));
                                    break;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e11) {
                                    builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e11.value));
                                    break;
                                }
                            case 6:
                                builder.miterLimit(ProtoAdapter.FLOAT.decode(protoReader));
                                break;
                            case 7:
                                builder.lineDashI(ProtoAdapter.FLOAT.decode(protoReader));
                                break;
                            case 8:
                                builder.lineDashII(ProtoAdapter.FLOAT.decode(protoReader));
                                break;
                            case 9:
                                builder.lineDashIII(ProtoAdapter.FLOAT.decode(protoReader));
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
            public void encode(ProtoWriter protoWriter, ShapeStyle shapeStyle) throws IOException {
                RGBAColor rGBAColor = shapeStyle.fill;
                if (rGBAColor != null) {
                    RGBAColor.ADAPTER.encodeWithTag(protoWriter, 1, rGBAColor);
                }
                RGBAColor rGBAColor2 = shapeStyle.stroke;
                if (rGBAColor2 != null) {
                    RGBAColor.ADAPTER.encodeWithTag(protoWriter, 2, rGBAColor2);
                }
                Float f10 = shapeStyle.strokeWidth;
                if (f10 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, f10);
                }
                LineCap lineCap = shapeStyle.lineCap;
                if (lineCap != null) {
                    LineCap.ADAPTER.encodeWithTag(protoWriter, 4, lineCap);
                }
                LineJoin lineJoin = shapeStyle.lineJoin;
                if (lineJoin != null) {
                    LineJoin.ADAPTER.encodeWithTag(protoWriter, 5, lineJoin);
                }
                Float f11 = shapeStyle.miterLimit;
                if (f11 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 6, f11);
                }
                Float f12 = shapeStyle.lineDashI;
                if (f12 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 7, f12);
                }
                Float f13 = shapeStyle.lineDashII;
                if (f13 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 8, f13);
                }
                Float f14 = shapeStyle.lineDashIII;
                if (f14 != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 9, f14);
                }
                protoWriter.writeBytes(shapeStyle.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ShapeStyle shapeStyle) {
                RGBAColor rGBAColor = shapeStyle.fill;
                int encodedSizeWithTag = rGBAColor != null ? RGBAColor.ADAPTER.encodedSizeWithTag(1, rGBAColor) : 0;
                RGBAColor rGBAColor2 = shapeStyle.stroke;
                int encodedSizeWithTag2 = encodedSizeWithTag + (rGBAColor2 != null ? RGBAColor.ADAPTER.encodedSizeWithTag(2, rGBAColor2) : 0);
                Float f10 = shapeStyle.strokeWidth;
                int encodedSizeWithTag3 = encodedSizeWithTag2 + (f10 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, f10) : 0);
                LineCap lineCap = shapeStyle.lineCap;
                int encodedSizeWithTag4 = encodedSizeWithTag3 + (lineCap != null ? LineCap.ADAPTER.encodedSizeWithTag(4, lineCap) : 0);
                LineJoin lineJoin = shapeStyle.lineJoin;
                int encodedSizeWithTag5 = encodedSizeWithTag4 + (lineJoin != null ? LineJoin.ADAPTER.encodedSizeWithTag(5, lineJoin) : 0);
                Float f11 = shapeStyle.miterLimit;
                int encodedSizeWithTag6 = encodedSizeWithTag5 + (f11 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(6, f11) : 0);
                Float f12 = shapeStyle.lineDashI;
                int encodedSizeWithTag7 = encodedSizeWithTag6 + (f12 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(7, f12) : 0);
                Float f13 = shapeStyle.lineDashII;
                int encodedSizeWithTag8 = encodedSizeWithTag7 + (f13 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(8, f13) : 0);
                Float f14 = shapeStyle.lineDashIII;
                return encodedSizeWithTag8 + (f14 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(9, f14) : 0) + shapeStyle.unknownFields().size();
            }

            /* JADX WARN: Type inference failed for: r3v1, types: [com.squareup.wire.Message$Builder, com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$Builder] */
            @Override // com.squareup.wire.ProtoAdapter
            public ShapeStyle redact(ShapeStyle shapeStyle) {
                ?? newBuilder2 = shapeStyle.newBuilder2();
                RGBAColor rGBAColor = newBuilder2.fill;
                if (rGBAColor != null) {
                    newBuilder2.fill = RGBAColor.ADAPTER.redact(rGBAColor);
                }
                RGBAColor rGBAColor2 = newBuilder2.stroke;
                if (rGBAColor2 != null) {
                    newBuilder2.stroke = RGBAColor.ADAPTER.redact(rGBAColor2);
                }
                newBuilder2.clearUnknownFields();
                return newBuilder2.build();
            }
        }

        /* loaded from: classes4.dex */
        public static final class RGBAColor extends Message<RGBAColor, Builder> {
            public static final ProtoAdapter<RGBAColor> ADAPTER = new ProtoAdapter_RGBAColor();
            public static final Float DEFAULT_A;
            public static final Float DEFAULT_B;
            public static final Float DEFAULT_G;
            public static final Float DEFAULT_R;
            private static final long serialVersionUID = 0;
            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)

            /* renamed from: a  reason: collision with root package name */
            public final Float f28871a;
            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)

            /* renamed from: b  reason: collision with root package name */
            public final Float f28872b;
            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)

            /* renamed from: g  reason: collision with root package name */
            public final Float f28873g;
            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)

            /* renamed from: r  reason: collision with root package name */
            public final Float f28874r;

            /* loaded from: classes4.dex */
            public static final class Builder extends Message.Builder<RGBAColor, Builder> {

                /* renamed from: a  reason: collision with root package name */
                public Float f28875a;

                /* renamed from: b  reason: collision with root package name */
                public Float f28876b;

                /* renamed from: g  reason: collision with root package name */
                public Float f28877g;

                /* renamed from: r  reason: collision with root package name */
                public Float f28878r;

                public Builder a(Float f10) {
                    this.f28875a = f10;
                    return this;
                }

                public Builder b(Float f10) {
                    this.f28876b = f10;
                    return this;
                }

                public Builder g(Float f10) {
                    this.f28877g = f10;
                    return this;
                }

                public Builder r(Float f10) {
                    this.f28878r = f10;
                    return this;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.Message.Builder
                public RGBAColor build() {
                    return new RGBAColor(this.f28878r, this.f28877g, this.f28876b, this.f28875a, super.buildUnknownFields());
                }
            }

            /* loaded from: classes4.dex */
            private static final class ProtoAdapter_RGBAColor extends ProtoAdapter<RGBAColor> {
                ProtoAdapter_RGBAColor() {
                    super(FieldEncoding.LENGTH_DELIMITED, RGBAColor.class);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public RGBAColor decode(ProtoReader protoReader) throws IOException {
                    Builder builder = new Builder();
                    long beginMessage = protoReader.beginMessage();
                    while (true) {
                        int nextTag = protoReader.nextTag();
                        if (nextTag == -1) {
                            protoReader.endMessage(beginMessage);
                            return builder.build();
                        } else if (nextTag == 1) {
                            builder.r(ProtoAdapter.FLOAT.decode(protoReader));
                        } else if (nextTag == 2) {
                            builder.g(ProtoAdapter.FLOAT.decode(protoReader));
                        } else if (nextTag == 3) {
                            builder.b(ProtoAdapter.FLOAT.decode(protoReader));
                        } else if (nextTag != 4) {
                            FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                            builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                        } else {
                            builder.a(ProtoAdapter.FLOAT.decode(protoReader));
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter protoWriter, RGBAColor rGBAColor) throws IOException {
                    Float f10 = rGBAColor.f28874r;
                    if (f10 != null) {
                        ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, f10);
                    }
                    Float f11 = rGBAColor.f28873g;
                    if (f11 != null) {
                        ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 2, f11);
                    }
                    Float f12 = rGBAColor.f28872b;
                    if (f12 != null) {
                        ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, f12);
                    }
                    Float f13 = rGBAColor.f28871a;
                    if (f13 != null) {
                        ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 4, f13);
                    }
                    protoWriter.writeBytes(rGBAColor.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(RGBAColor rGBAColor) {
                    Float f10 = rGBAColor.f28874r;
                    int encodedSizeWithTag = f10 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, f10) : 0;
                    Float f11 = rGBAColor.f28873g;
                    int encodedSizeWithTag2 = encodedSizeWithTag + (f11 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(2, f11) : 0);
                    Float f12 = rGBAColor.f28872b;
                    int encodedSizeWithTag3 = encodedSizeWithTag2 + (f12 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, f12) : 0);
                    Float f13 = rGBAColor.f28871a;
                    return encodedSizeWithTag3 + (f13 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(4, f13) : 0) + rGBAColor.unknownFields().size();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public RGBAColor redact(RGBAColor rGBAColor) {
                    Message.Builder<RGBAColor, Builder> newBuilder2 = rGBAColor.newBuilder2();
                    newBuilder2.clearUnknownFields();
                    return newBuilder2.build();
                }
            }

            static {
                Float valueOf = Float.valueOf(0.0f);
                DEFAULT_R = valueOf;
                DEFAULT_G = valueOf;
                DEFAULT_B = valueOf;
                DEFAULT_A = valueOf;
            }

            public RGBAColor(Float f10, Float f11, Float f12, Float f13) {
                this(f10, f11, f12, f13, ByteString.EMPTY);
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof RGBAColor) {
                    RGBAColor rGBAColor = (RGBAColor) obj;
                    return unknownFields().equals(rGBAColor.unknownFields()) && Internal.equals(this.f28874r, rGBAColor.f28874r) && Internal.equals(this.f28873g, rGBAColor.f28873g) && Internal.equals(this.f28872b, rGBAColor.f28872b) && Internal.equals(this.f28871a, rGBAColor.f28871a);
                }
                return false;
            }

            public int hashCode() {
                int i9 = this.hashCode;
                if (i9 == 0) {
                    int hashCode = unknownFields().hashCode() * 37;
                    Float f10 = this.f28874r;
                    int hashCode2 = (hashCode + (f10 != null ? f10.hashCode() : 0)) * 37;
                    Float f11 = this.f28873g;
                    int hashCode3 = (hashCode2 + (f11 != null ? f11.hashCode() : 0)) * 37;
                    Float f12 = this.f28872b;
                    int hashCode4 = (hashCode3 + (f12 != null ? f12.hashCode() : 0)) * 37;
                    Float f13 = this.f28871a;
                    int hashCode5 = hashCode4 + (f13 != null ? f13.hashCode() : 0);
                    this.hashCode = hashCode5;
                    return hashCode5;
                }
                return i9;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                StringBuilder sb2 = new StringBuilder();
                if (this.f28874r != null) {
                    sb2.append(", r=");
                    sb2.append(this.f28874r);
                }
                if (this.f28873g != null) {
                    sb2.append(", g=");
                    sb2.append(this.f28873g);
                }
                if (this.f28872b != null) {
                    sb2.append(", b=");
                    sb2.append(this.f28872b);
                }
                if (this.f28871a != null) {
                    sb2.append(", a=");
                    sb2.append(this.f28871a);
                }
                StringBuilder replace = sb2.replace(0, 2, "RGBAColor{");
                replace.append('}');
                return replace.toString();
            }

            public RGBAColor(Float f10, Float f11, Float f12, Float f13, ByteString byteString) {
                super(ADAPTER, byteString);
                this.f28874r = f10;
                this.f28873g = f11;
                this.f28872b = f12;
                this.f28871a = f13;
            }

            @Override // com.squareup.wire.Message
            /* renamed from: newBuilder */
            public Message.Builder<RGBAColor, Builder> newBuilder2() {
                Builder builder = new Builder();
                builder.f28878r = this.f28874r;
                builder.f28877g = this.f28873g;
                builder.f28876b = this.f28872b;
                builder.f28875a = this.f28871a;
                builder.addUnknownFields(unknownFields());
                return builder;
            }
        }

        static {
            Float valueOf = Float.valueOf(0.0f);
            DEFAULT_STROKEWIDTH = valueOf;
            DEFAULT_LINECAP = LineCap.LineCap_BUTT;
            DEFAULT_LINEJOIN = LineJoin.LineJoin_MITER;
            DEFAULT_MITERLIMIT = valueOf;
            DEFAULT_LINEDASHI = valueOf;
            DEFAULT_LINEDASHII = valueOf;
            DEFAULT_LINEDASHIII = valueOf;
        }

        public ShapeStyle(RGBAColor rGBAColor, RGBAColor rGBAColor2, Float f10, LineCap lineCap, LineJoin lineJoin, Float f11, Float f12, Float f13, Float f14) {
            this(rGBAColor, rGBAColor2, f10, lineCap, lineJoin, f11, f12, f13, f14, ByteString.EMPTY);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof ShapeStyle) {
                ShapeStyle shapeStyle = (ShapeStyle) obj;
                return unknownFields().equals(shapeStyle.unknownFields()) && Internal.equals(this.fill, shapeStyle.fill) && Internal.equals(this.stroke, shapeStyle.stroke) && Internal.equals(this.strokeWidth, shapeStyle.strokeWidth) && Internal.equals(this.lineCap, shapeStyle.lineCap) && Internal.equals(this.lineJoin, shapeStyle.lineJoin) && Internal.equals(this.miterLimit, shapeStyle.miterLimit) && Internal.equals(this.lineDashI, shapeStyle.lineDashI) && Internal.equals(this.lineDashII, shapeStyle.lineDashII) && Internal.equals(this.lineDashIII, shapeStyle.lineDashIII);
            }
            return false;
        }

        public int hashCode() {
            int i9 = this.hashCode;
            if (i9 == 0) {
                int hashCode = unknownFields().hashCode() * 37;
                RGBAColor rGBAColor = this.fill;
                int hashCode2 = (hashCode + (rGBAColor != null ? rGBAColor.hashCode() : 0)) * 37;
                RGBAColor rGBAColor2 = this.stroke;
                int hashCode3 = (hashCode2 + (rGBAColor2 != null ? rGBAColor2.hashCode() : 0)) * 37;
                Float f10 = this.strokeWidth;
                int hashCode4 = (hashCode3 + (f10 != null ? f10.hashCode() : 0)) * 37;
                LineCap lineCap = this.lineCap;
                int hashCode5 = (hashCode4 + (lineCap != null ? lineCap.hashCode() : 0)) * 37;
                LineJoin lineJoin = this.lineJoin;
                int hashCode6 = (hashCode5 + (lineJoin != null ? lineJoin.hashCode() : 0)) * 37;
                Float f11 = this.miterLimit;
                int hashCode7 = (hashCode6 + (f11 != null ? f11.hashCode() : 0)) * 37;
                Float f12 = this.lineDashI;
                int hashCode8 = (hashCode7 + (f12 != null ? f12.hashCode() : 0)) * 37;
                Float f13 = this.lineDashII;
                int hashCode9 = (hashCode8 + (f13 != null ? f13.hashCode() : 0)) * 37;
                Float f14 = this.lineDashIII;
                int hashCode10 = hashCode9 + (f14 != null ? f14.hashCode() : 0);
                this.hashCode = hashCode10;
                return hashCode10;
            }
            return i9;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            if (this.fill != null) {
                sb2.append(", fill=");
                sb2.append(this.fill);
            }
            if (this.stroke != null) {
                sb2.append(", stroke=");
                sb2.append(this.stroke);
            }
            if (this.strokeWidth != null) {
                sb2.append(", strokeWidth=");
                sb2.append(this.strokeWidth);
            }
            if (this.lineCap != null) {
                sb2.append(", lineCap=");
                sb2.append(this.lineCap);
            }
            if (this.lineJoin != null) {
                sb2.append(", lineJoin=");
                sb2.append(this.lineJoin);
            }
            if (this.miterLimit != null) {
                sb2.append(", miterLimit=");
                sb2.append(this.miterLimit);
            }
            if (this.lineDashI != null) {
                sb2.append(", lineDashI=");
                sb2.append(this.lineDashI);
            }
            if (this.lineDashII != null) {
                sb2.append(", lineDashII=");
                sb2.append(this.lineDashII);
            }
            if (this.lineDashIII != null) {
                sb2.append(", lineDashIII=");
                sb2.append(this.lineDashIII);
            }
            StringBuilder replace = sb2.replace(0, 2, "ShapeStyle{");
            replace.append('}');
            return replace.toString();
        }

        public ShapeStyle(RGBAColor rGBAColor, RGBAColor rGBAColor2, Float f10, LineCap lineCap, LineJoin lineJoin, Float f11, Float f12, Float f13, Float f14, ByteString byteString) {
            super(ADAPTER, byteString);
            this.fill = rGBAColor;
            this.stroke = rGBAColor2;
            this.strokeWidth = f10;
            this.lineCap = lineCap;
            this.lineJoin = lineJoin;
            this.miterLimit = f11;
            this.lineDashI = f12;
            this.lineDashII = f13;
            this.lineDashIII = f14;
        }

        @Override // com.squareup.wire.Message
        /* renamed from: newBuilder */
        public Message.Builder<ShapeStyle, Builder> newBuilder2() {
            Builder builder = new Builder();
            builder.fill = this.fill;
            builder.stroke = this.stroke;
            builder.strokeWidth = this.strokeWidth;
            builder.lineCap = this.lineCap;
            builder.lineJoin = this.lineJoin;
            builder.miterLimit = this.miterLimit;
            builder.lineDashI = this.lineDashI;
            builder.lineDashII = this.lineDashII;
            builder.lineDashIII = this.lineDashIII;
            builder.addUnknownFields(unknownFields());
            return builder;
        }
    }

    /* loaded from: classes4.dex */
    public enum ShapeType implements WireEnum {
        SHAPE(0),
        RECT(1),
        ELLIPSE(2),
        KEEP(3);
        
        public static final ProtoAdapter<ShapeType> ADAPTER = ProtoAdapter.newEnumAdapter(ShapeType.class);
        private final int value;

        ShapeType(int i9) {
            this.value = i9;
        }

        public static ShapeType fromValue(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return KEEP;
                    }
                    return ELLIPSE;
                }
                return RECT;
            }
            return SHAPE;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }
    }

    public ShapeEntity(ShapeType shapeType, ShapeStyle shapeStyle, Transform transform, ShapeArgs shapeArgs, RectArgs rectArgs, EllipseArgs ellipseArgs) {
        this(shapeType, shapeStyle, transform, shapeArgs, rectArgs, ellipseArgs, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ShapeEntity) {
            ShapeEntity shapeEntity = (ShapeEntity) obj;
            return unknownFields().equals(shapeEntity.unknownFields()) && Internal.equals(this.type, shapeEntity.type) && Internal.equals(this.styles, shapeEntity.styles) && Internal.equals(this.transform, shapeEntity.transform) && Internal.equals(this.shape, shapeEntity.shape) && Internal.equals(this.rect, shapeEntity.rect) && Internal.equals(this.ellipse, shapeEntity.ellipse);
        }
        return false;
    }

    public int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            ShapeType shapeType = this.type;
            int hashCode2 = (hashCode + (shapeType != null ? shapeType.hashCode() : 0)) * 37;
            ShapeStyle shapeStyle = this.styles;
            int hashCode3 = (hashCode2 + (shapeStyle != null ? shapeStyle.hashCode() : 0)) * 37;
            Transform transform = this.transform;
            int hashCode4 = (hashCode3 + (transform != null ? transform.hashCode() : 0)) * 37;
            ShapeArgs shapeArgs = this.shape;
            int hashCode5 = (hashCode4 + (shapeArgs != null ? shapeArgs.hashCode() : 0)) * 37;
            RectArgs rectArgs = this.rect;
            int hashCode6 = (hashCode5 + (rectArgs != null ? rectArgs.hashCode() : 0)) * 37;
            EllipseArgs ellipseArgs = this.ellipse;
            int hashCode7 = hashCode6 + (ellipseArgs != null ? ellipseArgs.hashCode() : 0);
            this.hashCode = hashCode7;
            return hashCode7;
        }
        return i9;
    }

    public void release() {
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.type != null) {
            sb2.append(", type=");
            sb2.append(this.type);
        }
        if (this.styles != null) {
            sb2.append(", styles=");
            sb2.append(this.styles);
        }
        if (this.transform != null) {
            sb2.append(", transform=");
            sb2.append(this.transform);
        }
        if (this.shape != null) {
            sb2.append(", shape=");
            sb2.append(this.shape);
        }
        if (this.rect != null) {
            sb2.append(", rect=");
            sb2.append(this.rect);
        }
        if (this.ellipse != null) {
            sb2.append(", ellipse=");
            sb2.append(this.ellipse);
        }
        StringBuilder replace = sb2.replace(0, 2, "ShapeEntity{");
        replace.append('}');
        return replace.toString();
    }

    public ShapeEntity(ShapeType shapeType, ShapeStyle shapeStyle, Transform transform, ShapeArgs shapeArgs, RectArgs rectArgs, EllipseArgs ellipseArgs, ByteString byteString) {
        super(ADAPTER, byteString);
        if (Internal.countNonNull(shapeArgs, rectArgs, ellipseArgs) <= 1) {
            this.type = shapeType;
            this.styles = shapeStyle;
            this.transform = transform;
            this.shape = shapeArgs;
            this.rect = rectArgs;
            this.ellipse = ellipseArgs;
            return;
        }
        throw new IllegalArgumentException("at most one of shape, rect, ellipse may be non-null");
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public Message.Builder<ShapeEntity, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.styles = this.styles;
        builder.transform = this.transform;
        builder.shape = this.shape;
        builder.rect = this.rect;
        builder.ellipse = this.ellipse;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
