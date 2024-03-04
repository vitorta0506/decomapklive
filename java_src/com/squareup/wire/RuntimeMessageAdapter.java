package com.squareup.wire;

import com.squareup.wire.Message;
import com.squareup.wire.Message.Builder;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
final class RuntimeMessageAdapter<M extends Message<M, B>, B extends Message.Builder<M, B>> extends ProtoAdapter<M> {
    private static final String REDACTED = "██";
    private final Class<B> builderType;
    private final Map<Integer, FieldBinding<M, B>> fieldBindings;
    private final Class<M> messageType;

    RuntimeMessageAdapter(Class<M> cls, Class<B> cls2, Map<Integer, FieldBinding<M, B>> map) {
        super(FieldEncoding.LENGTH_DELIMITED, cls);
        this.messageType = cls;
        this.builderType = cls2;
        this.fieldBindings = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <M extends Message<M, B>, B extends Message.Builder<M, B>> RuntimeMessageAdapter<M, B> create(Class<M> cls) {
        Field[] declaredFields;
        Class builderType = getBuilderType(cls);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Field field : cls.getDeclaredFields()) {
            WireField wireField = (WireField) field.getAnnotation(WireField.class);
            if (wireField != null) {
                linkedHashMap.put(Integer.valueOf(wireField.tag()), new FieldBinding(wireField, field, builderType));
            }
        }
        return new RuntimeMessageAdapter<>(cls, builderType, Collections.unmodifiableMap(linkedHashMap));
    }

    private static <M extends Message<M, B>, B extends Message.Builder<M, B>> Class<B> getBuilderType(Class<M> cls) {
        try {
            return (Class<B>) Class.forName(cls.getName() + "$Builder");
        } catch (ClassNotFoundException unused) {
            throw new IllegalArgumentException("No builder class found for message type " + cls.getName());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ void encode(ProtoWriter protoWriter, Object obj) throws IOException {
        encode(protoWriter, (ProtoWriter) ((Message) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ int encodedSize(Object obj) {
        return encodedSize((RuntimeMessageAdapter<M, B>) ((Message) obj));
    }

    public boolean equals(Object obj) {
        return (obj instanceof RuntimeMessageAdapter) && ((RuntimeMessageAdapter) obj).messageType == this.messageType;
    }

    Map<Integer, FieldBinding<M, B>> fieldBindings() {
        return this.fieldBindings;
    }

    public int hashCode() {
        return this.messageType.hashCode();
    }

    B newBuilder() {
        try {
            return this.builderType.newInstance();
        } catch (IllegalAccessException | InstantiationException e10) {
            throw new AssertionError(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ Object redact(Object obj) {
        return redact((RuntimeMessageAdapter<M, B>) ((Message) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ String toString(Object obj) {
        return toString((RuntimeMessageAdapter<M, B>) ((Message) obj));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public M decode(ProtoReader protoReader) throws IOException {
        ProtoAdapter<?> singleAdapter;
        B newBuilder = newBuilder();
        long beginMessage = protoReader.beginMessage();
        while (true) {
            int nextTag = protoReader.nextTag();
            if (nextTag != -1) {
                FieldBinding<M, B> fieldBinding = this.fieldBindings.get(Integer.valueOf(nextTag));
                if (fieldBinding != null) {
                    try {
                        if (fieldBinding.isMap()) {
                            singleAdapter = fieldBinding.adapter();
                        } else {
                            singleAdapter = fieldBinding.singleAdapter();
                        }
                        fieldBinding.value(newBuilder, singleAdapter.decode(protoReader));
                    } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                        newBuilder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                    }
                } else {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    newBuilder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                }
            } else {
                protoReader.endMessage(beginMessage);
                return (M) newBuilder.build();
            }
        }
    }

    public void encode(ProtoWriter protoWriter, M m10) throws IOException {
        for (FieldBinding<M, B> fieldBinding : this.fieldBindings.values()) {
            Object obj = fieldBinding.get(m10);
            if (obj != null) {
                fieldBinding.adapter().encodeWithTag(protoWriter, fieldBinding.tag, obj);
            }
        }
        protoWriter.writeBytes(m10.unknownFields());
    }

    public int encodedSize(M m10) {
        int i9 = m10.cachedSerializedSize;
        if (i9 != 0) {
            return i9;
        }
        int i10 = 0;
        for (FieldBinding<M, B> fieldBinding : this.fieldBindings.values()) {
            Object obj = fieldBinding.get(m10);
            if (obj != null) {
                i10 += fieldBinding.adapter().encodedSizeWithTag(fieldBinding.tag, obj);
            }
        }
        int size = i10 + m10.unknownFields().size();
        m10.cachedSerializedSize = size;
        return size;
    }

    public M redact(M m10) {
        Message.Builder<M, B> newBuilder = m10.newBuilder();
        for (FieldBinding<M, B> fieldBinding : this.fieldBindings.values()) {
            if (fieldBinding.redacted && fieldBinding.label == WireField.Label.REQUIRED) {
                throw new UnsupportedOperationException(String.format("Field '%s' in %s is required and cannot be redacted.", fieldBinding.name, this.javaType.getName()));
            }
            boolean isAssignableFrom = Message.class.isAssignableFrom(fieldBinding.singleAdapter().javaType);
            if (!fieldBinding.redacted && (!isAssignableFrom || fieldBinding.label.isRepeated())) {
                if (isAssignableFrom && fieldBinding.label.isRepeated()) {
                    Internal.redactElements((List) fieldBinding.getFromBuilder(newBuilder), fieldBinding.singleAdapter());
                }
            } else {
                Object fromBuilder = fieldBinding.getFromBuilder(newBuilder);
                if (fromBuilder != null) {
                    fieldBinding.set(newBuilder, fieldBinding.adapter().redact(fromBuilder));
                }
            }
        }
        newBuilder.clearUnknownFields();
        return newBuilder.build();
    }

    public String toString(M m10) {
        StringBuilder sb2 = new StringBuilder();
        for (FieldBinding<M, B> fieldBinding : this.fieldBindings.values()) {
            Object obj = fieldBinding.get(m10);
            if (obj != null) {
                sb2.append(", ");
                sb2.append(fieldBinding.name);
                sb2.append('=');
                if (fieldBinding.redacted) {
                    obj = REDACTED;
                }
                sb2.append(obj);
            }
        }
        sb2.replace(0, 2, this.messageType.getSimpleName() + '{');
        sb2.append('}');
        return sb2.toString();
    }
}
