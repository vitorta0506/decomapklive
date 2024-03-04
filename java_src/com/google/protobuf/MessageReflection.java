package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.WireFormat;
import com.google.protobuf.d0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import io.jsonwebtoken.JwtParser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class MessageReflection {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface MergeTarget {

        /* loaded from: classes3.dex */
        public enum ContainerType {
            MESSAGE,
            EXTENSION_SET
        }

        MergeTarget L(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        Object a(p pVar, f0 f0Var, Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var) throws IOException;

        d0.c b(d0 d0Var, Descriptors.b bVar, int i9);

        MergeTarget c(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        WireFormat.b d(Descriptors.FieldDescriptor fieldDescriptor);

        Object e(ByteString byteString, f0 f0Var, Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var) throws IOException;

        Object f(p pVar, f0 f0Var, Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var) throws IOException;

        ContainerType g();

        boolean hasField(Descriptors.FieldDescriptor fieldDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14778a;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f14778a = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14778a[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14778a[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b implements MergeTarget {

        /* renamed from: a  reason: collision with root package name */
        private final l1.a f14779a;

        public b(l1.a aVar) {
            this.f14779a = aVar;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            this.f14779a.L(fieldDescriptor, obj);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object a(p pVar, f0 f0Var, Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var) throws IOException {
            l1.a F0;
            l1 l1Var2;
            if (l1Var != null) {
                F0 = l1Var.newBuilderForType();
            } else {
                F0 = this.f14779a.F0(fieldDescriptor);
            }
            if (!fieldDescriptor.isRepeated() && (l1Var2 = (l1) h(fieldDescriptor)) != null) {
                F0.P0(l1Var2);
            }
            pVar.y(fieldDescriptor.getNumber(), F0, f0Var);
            return F0.I();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public d0.c b(d0 d0Var, Descriptors.b bVar, int i9) {
            return d0Var.h(bVar, i9);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            this.f14779a.c(fieldDescriptor, obj);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public WireFormat.b d(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.I()) {
                return WireFormat.b.f14848b;
            }
            fieldDescriptor.isRepeated();
            return WireFormat.b.f14847a;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object e(ByteString byteString, f0 f0Var, Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var) throws IOException {
            l1.a F0;
            l1 l1Var2;
            if (l1Var != null) {
                F0 = l1Var.newBuilderForType();
            } else {
                F0 = this.f14779a.F0(fieldDescriptor);
            }
            if (!fieldDescriptor.isRepeated() && (l1Var2 = (l1) h(fieldDescriptor)) != null) {
                F0.P0(l1Var2);
            }
            F0.A0(byteString, f0Var);
            return F0.I();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object f(p pVar, f0 f0Var, Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var) throws IOException {
            l1.a F0;
            l1 l1Var2;
            if (l1Var != null) {
                F0 = l1Var.newBuilderForType();
            } else {
                F0 = this.f14779a.F0(fieldDescriptor);
            }
            if (!fieldDescriptor.isRepeated() && (l1Var2 = (l1) h(fieldDescriptor)) != null) {
                F0.P0(l1Var2);
            }
            pVar.C(F0, f0Var);
            return F0.I();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget.ContainerType g() {
            return MergeTarget.ContainerType.MESSAGE;
        }

        public Object h(Descriptors.FieldDescriptor fieldDescriptor) {
            return this.f14779a.getField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            return this.f14779a.hasField(fieldDescriptor);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class c implements MergeTarget {

        /* renamed from: a  reason: collision with root package name */
        private final o0<Descriptors.FieldDescriptor> f14780a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(o0<Descriptors.FieldDescriptor> o0Var) {
            this.f14780a = o0Var;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            this.f14780a.f(fieldDescriptor, obj);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object a(p pVar, f0 f0Var, Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var) throws IOException {
            l1 l1Var2;
            l1.a newBuilderForType = l1Var.newBuilderForType();
            if (!fieldDescriptor.isRepeated() && (l1Var2 = (l1) h(fieldDescriptor)) != null) {
                newBuilderForType.P0(l1Var2);
            }
            pVar.y(fieldDescriptor.getNumber(), newBuilderForType, f0Var);
            return newBuilderForType.I();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public d0.c b(d0 d0Var, Descriptors.b bVar, int i9) {
            return d0Var.h(bVar, i9);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            this.f14780a.L(fieldDescriptor, obj);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public WireFormat.b d(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.I()) {
                return WireFormat.b.f14848b;
            }
            return WireFormat.b.f14847a;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object e(ByteString byteString, f0 f0Var, Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var) throws IOException {
            l1 l1Var2;
            l1.a newBuilderForType = l1Var.newBuilderForType();
            if (!fieldDescriptor.isRepeated() && (l1Var2 = (l1) h(fieldDescriptor)) != null) {
                newBuilderForType.P0(l1Var2);
            }
            newBuilderForType.A0(byteString, f0Var);
            return newBuilderForType.I();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object f(p pVar, f0 f0Var, Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var) throws IOException {
            l1 l1Var2;
            l1.a newBuilderForType = l1Var.newBuilderForType();
            if (!fieldDescriptor.isRepeated() && (l1Var2 = (l1) h(fieldDescriptor)) != null) {
                newBuilderForType.P0(l1Var2);
            }
            pVar.C(newBuilderForType, f0Var);
            return newBuilderForType.I();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget.ContainerType g() {
            return MergeTarget.ContainerType.EXTENSION_SET;
        }

        public Object h(Descriptors.FieldDescriptor fieldDescriptor) {
            return this.f14780a.r(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            return this.f14780a.y(fieldDescriptor);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(List<String> list) {
        StringBuilder sb2 = new StringBuilder();
        for (String str : list) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    private static void b(p pVar, d0.c cVar, f0 f0Var, MergeTarget mergeTarget) throws IOException {
        Descriptors.FieldDescriptor fieldDescriptor = cVar.f14922a;
        mergeTarget.c(fieldDescriptor, mergeTarget.f(pVar, f0Var, fieldDescriptor, cVar.f14923b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> c(r1 r1Var) {
        ArrayList arrayList = new ArrayList();
        d(r1Var, "", arrayList);
        return arrayList;
    }

    private static void d(r1 r1Var, String str, List<String> list) {
        for (Descriptors.FieldDescriptor fieldDescriptor : r1Var.getDescriptorForType().m()) {
            if (fieldDescriptor.F() && !r1Var.hasField(fieldDescriptor)) {
                list.add(str + fieldDescriptor.d());
            }
        }
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : r1Var.getAllFields().entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            if (key.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                if (key.isRepeated()) {
                    int i9 = 0;
                    for (r1 r1Var2 : (List) value) {
                        d(r1Var2, j(str, key, i9), list);
                        i9++;
                    }
                } else if (r1Var.hasField(key)) {
                    d((r1) value, j(str, key, -1), list);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(l1 l1Var, Map<Descriptors.FieldDescriptor, Object> map) {
        int serializedSize;
        int n9;
        boolean messageSetWireFormat = l1Var.getDescriptorForType().q().getMessageSetWireFormat();
        int i9 = 0;
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : map.entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            if (messageSetWireFormat && key.z() && key.x() == Descriptors.FieldDescriptor.Type.MESSAGE && !key.isRepeated()) {
                n9 = CodedOutputStream.F(key.getNumber(), (l1) value);
            } else {
                n9 = o0.n(key, value);
            }
            i9 += n9;
        }
        h3 unknownFields = l1Var.getUnknownFields();
        if (messageSetWireFormat) {
            serializedSize = unknownFields.g();
        } else {
            serializedSize = unknownFields.getSerializedSize();
        }
        return i9 + serializedSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(r1 r1Var) {
        for (Descriptors.FieldDescriptor fieldDescriptor : r1Var.getDescriptorForType().m()) {
            if (fieldDescriptor.F() && !r1Var.hasField(fieldDescriptor)) {
                return false;
            }
        }
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : r1Var.getAllFields().entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            if (key.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                if (key.isRepeated()) {
                    for (l1 l1Var : (List) entry.getValue()) {
                        if (!l1Var.isInitialized()) {
                            return false;
                        }
                    }
                    continue;
                } else if (!((l1) entry.getValue()).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean g(com.google.protobuf.p r7, com.google.protobuf.h3.b r8, com.google.protobuf.f0 r9, com.google.protobuf.Descriptors.b r10, com.google.protobuf.MessageReflection.MergeTarget r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageReflection.g(com.google.protobuf.p, com.google.protobuf.h3$b, com.google.protobuf.f0, com.google.protobuf.Descriptors$b, com.google.protobuf.MessageReflection$MergeTarget, int):boolean");
    }

    private static void h(ByteString byteString, d0.c cVar, f0 f0Var, MergeTarget mergeTarget) throws IOException {
        Descriptors.FieldDescriptor fieldDescriptor = cVar.f14922a;
        if (!mergeTarget.hasField(fieldDescriptor) && !f0.c()) {
            mergeTarget.c(fieldDescriptor, new w0(cVar.f14923b, f0Var, byteString));
        } else {
            mergeTarget.c(fieldDescriptor, mergeTarget.e(byteString, f0Var, fieldDescriptor, cVar.f14923b));
        }
    }

    private static void i(p pVar, h3.b bVar, f0 f0Var, Descriptors.b bVar2, MergeTarget mergeTarget) throws IOException {
        int i9 = 0;
        ByteString byteString = null;
        d0.c cVar = null;
        while (true) {
            int L = pVar.L();
            if (L == 0) {
                break;
            } else if (L == WireFormat.f14844c) {
                i9 = pVar.M();
                if (i9 != 0 && (f0Var instanceof d0)) {
                    cVar = mergeTarget.b((d0) f0Var, bVar2, i9);
                }
            } else if (L == WireFormat.f14845d) {
                if (i9 != 0 && cVar != null && f0.c()) {
                    b(pVar, cVar, f0Var, mergeTarget);
                    byteString = null;
                } else {
                    byteString = pVar.s();
                }
            } else if (!pVar.Q(L)) {
                break;
            }
        }
        pVar.a(WireFormat.f14843b);
        if (byteString == null || i9 == 0) {
            return;
        }
        if (cVar != null) {
            h(byteString, cVar, f0Var, mergeTarget);
        } else if (bVar != null) {
            bVar.j(i9, h3.c.t().e(byteString).g());
        }
    }

    private static String j(String str, Descriptors.FieldDescriptor fieldDescriptor, int i9) {
        StringBuilder sb2 = new StringBuilder(str);
        if (fieldDescriptor.z()) {
            sb2.append('(');
            sb2.append(fieldDescriptor.c());
            sb2.append(')');
        } else {
            sb2.append(fieldDescriptor.d());
        }
        if (i9 != -1) {
            sb2.append('[');
            sb2.append(i9);
            sb2.append(']');
        }
        sb2.append(JwtParser.SEPARATOR_CHAR);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(l1 l1Var, Map<Descriptors.FieldDescriptor, Object> map, CodedOutputStream codedOutputStream, boolean z10) throws IOException {
        boolean messageSetWireFormat = l1Var.getDescriptorForType().q().getMessageSetWireFormat();
        if (z10) {
            TreeMap treeMap = new TreeMap(map);
            for (Descriptors.FieldDescriptor fieldDescriptor : l1Var.getDescriptorForType().m()) {
                if (fieldDescriptor.F() && !treeMap.containsKey(fieldDescriptor)) {
                    treeMap.put(fieldDescriptor, l1Var.getField(fieldDescriptor));
                }
            }
            map = treeMap;
        }
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : map.entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            if (messageSetWireFormat && key.z() && key.x() == Descriptors.FieldDescriptor.Type.MESSAGE && !key.isRepeated()) {
                codedOutputStream.O0(key.getNumber(), (l1) value);
            } else {
                o0.P(key, value, codedOutputStream);
            }
        }
        h3 unknownFields = l1Var.getUnknownFields();
        if (messageSetWireFormat) {
            unknownFields.m(codedOutputStream);
        } else {
            unknownFields.writeTo(codedOutputStream);
        }
    }
}
