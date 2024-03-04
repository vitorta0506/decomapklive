package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.b;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class a extends com.google.protobuf.b implements l1 {
    protected int memoizedSize = -1;

    /* renamed from: com.google.protobuf.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0142a<BuilderType extends AbstractC0142a<BuilderType>> extends b.a implements l1.a {
        /* JADX INFO: Access modifiers changed from: protected */
        public static UninitializedMessageException A(l1 l1Var) {
            return new UninitializedMessageException(MessageReflection.c(l1Var));
        }

        @Override // 
        /* renamed from: n */
        public BuilderType clone() {
            throw new UnsupportedOperationException("clone() should be implemented in subclasses.");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void o() {
            throw new IllegalStateException("Should be overridden by subclasses.");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.b.a
        /* renamed from: p */
        public BuilderType e(com.google.protobuf.b bVar) {
            return P0((l1) bVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void q() {
            throw new IllegalStateException("Should be overridden by subclasses.");
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: r */
        public BuilderType w0(ByteString byteString) throws InvalidProtocolBufferException {
            return (BuilderType) super.f(byteString);
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: s */
        public BuilderType A0(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return (BuilderType) super.g(byteString, f0Var);
        }

        @Override // com.google.protobuf.b.a
        /* renamed from: t */
        public BuilderType h(p pVar) throws IOException {
            return i(pVar, d0.i());
        }

        public String toString() {
            return TextFormat.o().j(this);
        }

        @Override // com.google.protobuf.b.a
        /* renamed from: u */
        public BuilderType i(p pVar, f0 f0Var) throws IOException {
            int L;
            h3.b i9 = pVar.P() ? null : h3.i(getUnknownFields());
            do {
                L = pVar.L();
                if (L == 0) {
                    break;
                }
            } while (MessageReflection.g(pVar, i9, f0Var, getDescriptorForType(), new MessageReflection.b(this), L));
            if (i9 != null) {
                f1(i9.build());
            }
            return this;
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: v */
        public BuilderType P0(l1 l1Var) {
            return w(l1Var, l1Var.getAllFields());
        }

        BuilderType w(l1 l1Var, Map<Descriptors.FieldDescriptor, Object> map) {
            if (l1Var.getDescriptorForType() == getDescriptorForType()) {
                for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : map.entrySet()) {
                    Descriptors.FieldDescriptor key = entry.getKey();
                    if (key.isRepeated()) {
                        for (Object obj : (List) entry.getValue()) {
                            L(key, obj);
                        }
                    } else if (key.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                        l1 l1Var2 = (l1) getField(key);
                        if (l1Var2 == l1Var2.getDefaultInstanceForType()) {
                            c(key, entry.getValue());
                        } else {
                            c(key, l1Var2.newBuilderForType().P0(l1Var2).P0((l1) entry.getValue()).build());
                        }
                    } else {
                        c(key, entry.getValue());
                    }
                }
                z(l1Var.getUnknownFields());
                return this;
            }
            throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
        }

        @Override // com.google.protobuf.b.a
        /* renamed from: x */
        public BuilderType k(byte[] bArr) throws InvalidProtocolBufferException {
            return (BuilderType) super.E0(bArr);
        }

        @Override // com.google.protobuf.b.a
        /* renamed from: y */
        public BuilderType l(byte[] bArr, int i9, int i10) throws InvalidProtocolBufferException {
            return (BuilderType) super.l(bArr, i9, i10);
        }

        public BuilderType z(h3 h3Var) {
            f1(h3.i(getUnknownFields()).p(h3Var).build());
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public interface b {
        void a();
    }

    private static boolean compareBytes(Object obj, Object obj2) {
        if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        }
        return toByteString(obj).equals(toByteString(obj2));
    }

    static boolean compareFields(Map<Descriptors.FieldDescriptor, Object> map, Map<Descriptors.FieldDescriptor, Object> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Descriptors.FieldDescriptor fieldDescriptor : map.keySet()) {
            if (!map2.containsKey(fieldDescriptor)) {
                return false;
            }
            Object obj = map.get(fieldDescriptor);
            Object obj2 = map2.get(fieldDescriptor);
            if (fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.BYTES) {
                if (fieldDescriptor.isRepeated()) {
                    List list = (List) obj;
                    List list2 = (List) obj2;
                    if (list.size() != list2.size()) {
                        return false;
                    }
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!compareBytes(list.get(i9), list2.get(i9))) {
                            return false;
                        }
                    }
                    continue;
                } else if (!compareBytes(obj, obj2)) {
                    return false;
                }
            } else if (fieldDescriptor.A()) {
                if (!compareMapField(obj, obj2)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    private static boolean compareMapField(Object obj, Object obj2) {
        return MapFieldLite.equals(convertMapEntryListToMap((List) obj), convertMapEntryListToMap((List) obj2));
    }

    private static Map convertMapEntryListToMap(List list) {
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        l1 l1Var = (l1) it.next();
        Descriptors.b descriptorForType = l1Var.getDescriptorForType();
        Descriptors.FieldDescriptor i9 = descriptorForType.i("key");
        Descriptors.FieldDescriptor i10 = descriptorForType.i("value");
        Object field = l1Var.getField(i10);
        if (field instanceof Descriptors.e) {
            field = Integer.valueOf(((Descriptors.e) field).getNumber());
        }
        hashMap.put(l1Var.getField(i9), field);
        while (it.hasNext()) {
            l1 l1Var2 = (l1) it.next();
            Object field2 = l1Var2.getField(i10);
            if (field2 instanceof Descriptors.e) {
                field2 = Integer.valueOf(((Descriptors.e) field2).getNumber());
            }
            hashMap.put(l1Var2.getField(i9), field2);
        }
        return hashMap;
    }

    @Deprecated
    protected static int hashBoolean(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    @Deprecated
    protected static int hashEnum(u0.c cVar) {
        return cVar.getNumber();
    }

    @Deprecated
    protected static int hashEnumList(List<? extends u0.c> list) {
        int i9 = 1;
        for (u0.c cVar : list) {
            i9 = (i9 * 31) + hashEnum(cVar);
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int hashFields(int i9, Map<Descriptors.FieldDescriptor, Object> map) {
        int i10;
        int g10;
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : map.entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            int number = (i9 * 37) + key.getNumber();
            if (key.A()) {
                i10 = number * 53;
                g10 = hashMapField(value);
            } else if (key.x() != Descriptors.FieldDescriptor.Type.ENUM) {
                i10 = number * 53;
                g10 = value.hashCode();
            } else if (key.isRepeated()) {
                i10 = number * 53;
                g10 = u0.h((List) value);
            } else {
                i10 = number * 53;
                g10 = u0.g((u0.c) value);
            }
            i9 = i10 + g10;
        }
        return i9;
    }

    @Deprecated
    protected static int hashLong(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    private static int hashMapField(Object obj) {
        return MapFieldLite.calculateHashCodeForMap(convertMapEntryListToMap((List) obj));
    }

    private static ByteString toByteString(Object obj) {
        if (obj instanceof byte[]) {
            return ByteString.copyFrom((byte[]) obj);
        }
        return (ByteString) obj;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l1) {
            l1 l1Var = (l1) obj;
            return getDescriptorForType() == l1Var.getDescriptorForType() && compareFields(getAllFields(), l1Var.getAllFields()) && getUnknownFields().equals(l1Var.getUnknownFields());
        }
        return false;
    }

    public List<String> findInitializationErrors() {
        return MessageReflection.c(this);
    }

    public String getInitializationErrorString() {
        return MessageReflection.a(findInitializationErrors());
    }

    @Override // com.google.protobuf.b
    int getMemoizedSerializedSize() {
        return this.memoizedSize;
    }

    public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.i iVar) {
        throw new UnsupportedOperationException("getOneofFieldDescriptor() is not implemented.");
    }

    @Override // com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int e10 = MessageReflection.e(this, getAllFields());
        this.memoizedSize = e10;
        return e10;
    }

    public boolean hasOneof(Descriptors.i iVar) {
        throw new UnsupportedOperationException("hasOneof() is not implemented.");
    }

    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 == 0) {
            int hashFields = (hashFields(779 + getDescriptorForType().hashCode(), getAllFields()) * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }
        return i9;
    }

    @Override // com.google.protobuf.p1
    public boolean isInitialized() {
        return MessageReflection.f(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public l1.a newBuilderForType(b bVar) {
        throw new UnsupportedOperationException("Nested builder is not supported for this type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.b
    public UninitializedMessageException newUninitializedMessageException() {
        return AbstractC0142a.A(this);
    }

    @Override // com.google.protobuf.b
    void setMemoizedSerializedSize(int i9) {
        this.memoizedSize = i9;
    }

    public final String toString() {
        return TextFormat.o().j(this);
    }

    @Override // com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        MessageReflection.k(this, getAllFields(), codedOutputStream, false);
    }
}
