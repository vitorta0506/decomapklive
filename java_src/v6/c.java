package v6;

import com.facebook.GraphRequest;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.CertificateUtil;
import com.google.common.io.BaseEncoding;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.protobuf.Any;
import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.BytesValue;
import com.google.protobuf.Descriptors;
import com.google.protobuf.DoubleValue;
import com.google.protobuf.Duration;
import com.google.protobuf.FieldMask;
import com.google.protobuf.FloatValue;
import com.google.protobuf.Int32Value;
import com.google.protobuf.Int64Value;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.ListValue;
import com.google.protobuf.StringValue;
import com.google.protobuf.Struct;
import com.google.protobuf.Timestamp;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.UInt64Value;
import com.google.protobuf.Value;
import com.google.protobuf.d3;
import com.google.protobuf.l1;
import com.google.protobuf.r1;
import com.google.protobuf.x;
import com.tencent.bugly.Bugly;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.logging.Logger;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f59012a = Logger.getLogger(c.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f59013a;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f59013a = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f59013a[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* loaded from: classes3.dex */
    private static final class b implements f {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f59014a;

        /* synthetic */ b(Appendable appendable, a aVar) {
            this(appendable);
        }

        @Override // v6.c.f
        public void a(CharSequence charSequence) throws IOException {
            this.f59014a.append(charSequence);
        }

        @Override // v6.c.f
        public void b() {
        }

        @Override // v6.c.f
        public void c() {
        }

        private b(Appendable appendable) {
            this.f59014a = appendable;
        }
    }

    /* renamed from: v6.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private static final class C0664c implements f {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f59015a;

        /* renamed from: b  reason: collision with root package name */
        private final StringBuilder f59016b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f59017c;

        /* synthetic */ C0664c(Appendable appendable, a aVar) {
            this(appendable);
        }

        private void d(CharSequence charSequence) throws IOException {
            if (charSequence.length() == 0) {
                return;
            }
            if (this.f59017c) {
                this.f59017c = false;
                this.f59015a.append(this.f59016b);
            }
            this.f59015a.append(charSequence);
        }

        @Override // v6.c.f
        public void a(CharSequence charSequence) throws IOException {
            int length = charSequence.length();
            int i9 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                if (charSequence.charAt(i10) == '\n') {
                    int i11 = i10 + 1;
                    d(charSequence.subSequence(i9, i11));
                    this.f59017c = true;
                    i9 = i11;
                }
            }
            d(charSequence.subSequence(i9, length));
        }

        @Override // v6.c.f
        public void b() {
            int length = this.f59016b.length();
            if (length >= 2) {
                this.f59016b.delete(length - 2, length);
                return;
            }
            throw new IllegalArgumentException(" Outdent() without matching Indent().");
        }

        @Override // v6.c.f
        public void c() {
            this.f59016b.append("  ");
        }

        private C0664c(Appendable appendable) {
            this.f59016b = new StringBuilder();
            this.f59017c = true;
            this.f59015a = appendable;
        }
    }

    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final d3 f59018a;

        /* renamed from: b  reason: collision with root package name */
        private final g f59019b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f59020c;

        /* renamed from: d  reason: collision with root package name */
        private Set<Descriptors.FieldDescriptor> f59021d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f59022e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f59023f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f59024g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f59025h;

        /* synthetic */ d(d3 d3Var, g gVar, boolean z10, Set set, boolean z11, boolean z12, boolean z13, boolean z14, a aVar) {
            this(d3Var, gVar, z10, set, z11, z12, z13, z14);
        }

        public void a(r1 r1Var, Appendable appendable) throws IOException {
            new e(this.f59018a, this.f59019b, this.f59020c, this.f59021d, this.f59022e, appendable, this.f59023f, this.f59024g, this.f59025h).j(r1Var);
        }

        public String b(r1 r1Var) throws InvalidProtocolBufferException {
            try {
                StringBuilder sb2 = new StringBuilder();
                a(r1Var, sb2);
                return sb2.toString();
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new IllegalStateException(e11);
            }
        }

        public d c(d3 d3Var) {
            if (this.f59019b == g.c() && this.f59018a == d3.d()) {
                return new d(d3Var, this.f59019b, this.f59020c, this.f59021d, this.f59022e, this.f59023f, this.f59024g, this.f59025h);
            }
            throw new IllegalArgumentException("Only one registry is allowed.");
        }

        private d(d3 d3Var, g gVar, boolean z10, Set<Descriptors.FieldDescriptor> set, boolean z11, boolean z12, boolean z13, boolean z14) {
            this.f59018a = d3Var;
            this.f59019b = gVar;
            this.f59020c = z10;
            this.f59021d = set;
            this.f59022e = z11;
            this.f59023f = z12;
            this.f59024g = z13;
            this.f59025h = z14;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class e {

        /* renamed from: l  reason: collision with root package name */
        private static final Map<String, k> f59026l = i();

        /* renamed from: a  reason: collision with root package name */
        private final d3 f59027a;

        /* renamed from: b  reason: collision with root package name */
        private final g f59028b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f59029c;

        /* renamed from: d  reason: collision with root package name */
        private final Set<Descriptors.FieldDescriptor> f59030d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f59031e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f59032f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f59033g;

        /* renamed from: h  reason: collision with root package name */
        private final f f59034h;

        /* renamed from: i  reason: collision with root package name */
        private final Gson f59035i = j.f59039a;

        /* renamed from: j  reason: collision with root package name */
        private final CharSequence f59036j;

        /* renamed from: k  reason: collision with root package name */
        private final CharSequence f59037k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public static class a implements k {
            a() {
            }

            @Override // v6.c.e.k
            public void a(e eVar, r1 r1Var) throws IOException {
                eVar.l(r1Var);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public static class b implements k {
            b() {
            }

            @Override // v6.c.e.k
            public void a(e eVar, r1 r1Var) throws IOException {
                eVar.x(r1Var);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: v6.c$e$c  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0665c implements k {
            C0665c() {
            }

            @Override // v6.c.e.k
            public void a(e eVar, r1 r1Var) throws IOException {
                eVar.v(r1Var);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public static class d implements k {
            d() {
            }

            @Override // v6.c.e.k
            public void a(e eVar, r1 r1Var) throws IOException {
                eVar.m(r1Var);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: v6.c$e$e  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0666e implements k {
            C0666e() {
            }

            @Override // v6.c.e.k
            public void a(e eVar, r1 r1Var) throws IOException {
                eVar.o(r1Var);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public static class f implements k {
            f() {
            }

            @Override // v6.c.e.k
            public void a(e eVar, r1 r1Var) throws IOException {
                eVar.u(r1Var);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public static class g implements k {
            g() {
            }

            @Override // v6.c.e.k
            public void a(e eVar, r1 r1Var) throws IOException {
                eVar.w(r1Var);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public static class h implements k {
            h() {
            }

            @Override // v6.c.e.k
            public void a(e eVar, r1 r1Var) throws IOException {
                eVar.p(r1Var);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class i implements Comparator<Object> {
            i() {
            }

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                return ByteString.unsignedLexicographicalComparator().compare(ByteString.copyFromUtf8((String) obj), ByteString.copyFromUtf8((String) obj2));
            }
        }

        /* loaded from: classes3.dex */
        private static class j {

            /* renamed from: a  reason: collision with root package name */
            private static final Gson f59039a = new GsonBuilder().create();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public interface k {
            void a(e eVar, r1 r1Var) throws IOException;
        }

        e(d3 d3Var, g gVar, boolean z10, Set<Descriptors.FieldDescriptor> set, boolean z11, Appendable appendable, boolean z12, boolean z13, boolean z14) {
            this.f59027a = d3Var;
            this.f59028b = gVar;
            this.f59029c = z10;
            this.f59030d = set;
            this.f59031e = z11;
            this.f59032f = z13;
            this.f59033g = z14;
            if (z12) {
                this.f59034h = new b(appendable, null);
                this.f59036j = "";
                this.f59037k = "";
                return;
            }
            this.f59034h = new C0664c(appendable, null);
            this.f59036j = " ";
            this.f59037k = IOUtils.LINE_SEPARATOR_UNIX;
        }

        private static Map<String, k> i() {
            HashMap hashMap = new HashMap();
            hashMap.put(Any.getDescriptor().c(), new a());
            b bVar = new b();
            hashMap.put(BoolValue.getDescriptor().c(), bVar);
            hashMap.put(Int32Value.getDescriptor().c(), bVar);
            hashMap.put(UInt32Value.getDescriptor().c(), bVar);
            hashMap.put(Int64Value.getDescriptor().c(), bVar);
            hashMap.put(UInt64Value.getDescriptor().c(), bVar);
            hashMap.put(StringValue.getDescriptor().c(), bVar);
            hashMap.put(BytesValue.getDescriptor().c(), bVar);
            hashMap.put(FloatValue.getDescriptor().c(), bVar);
            hashMap.put(DoubleValue.getDescriptor().c(), bVar);
            hashMap.put(Timestamp.getDescriptor().c(), new C0665c());
            hashMap.put(Duration.getDescriptor().c(), new d());
            hashMap.put(FieldMask.getDescriptor().c(), new C0666e());
            hashMap.put(Struct.getDescriptor().c(), new f());
            hashMap.put(Value.getDescriptor().c(), new g());
            hashMap.put(ListValue.getDescriptor().c(), new h());
            return hashMap;
        }

        private void k(r1 r1Var, String str) throws IOException {
            boolean z10;
            Map<Descriptors.FieldDescriptor, Object> map;
            f fVar = this.f59034h;
            fVar.a("{" + ((Object) this.f59037k));
            this.f59034h.c();
            if (str != null) {
                f fVar2 = this.f59034h;
                fVar2.a("\"@type\":" + ((Object) this.f59036j) + this.f59035i.toJson(str));
                z10 = true;
            } else {
                z10 = false;
            }
            if (!this.f59029c && this.f59030d.isEmpty()) {
                map = r1Var.getAllFields();
            } else {
                TreeMap treeMap = new TreeMap(r1Var.getAllFields());
                for (Descriptors.FieldDescriptor fieldDescriptor : r1Var.getDescriptorForType().m()) {
                    if (fieldDescriptor.B()) {
                        if (fieldDescriptor.t() != Descriptors.FieldDescriptor.JavaType.MESSAGE || r1Var.hasField(fieldDescriptor)) {
                            if (fieldDescriptor.m() != null && !r1Var.hasField(fieldDescriptor)) {
                            }
                        }
                    }
                    if (!treeMap.containsKey(fieldDescriptor) && (this.f59029c || this.f59030d.contains(fieldDescriptor))) {
                        treeMap.put(fieldDescriptor, r1Var.getField(fieldDescriptor));
                    }
                }
                map = treeMap;
            }
            for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : map.entrySet()) {
                if (z10) {
                    f fVar3 = this.f59034h;
                    fVar3.a("," + ((Object) this.f59037k));
                } else {
                    z10 = true;
                }
                n(entry.getKey(), entry.getValue());
            }
            if (z10) {
                this.f59034h.a(this.f59037k);
            }
            this.f59034h.b();
            this.f59034h.a("}");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l(r1 r1Var) throws IOException {
            if (Any.getDefaultInstance().equals(r1Var)) {
                this.f59034h.a("{}");
                return;
            }
            Descriptors.b descriptorForType = r1Var.getDescriptorForType();
            Descriptors.FieldDescriptor i9 = descriptorForType.i("type_url");
            Descriptors.FieldDescriptor i10 = descriptorForType.i("value");
            if (i9 != null && i10 != null && i9.x() == Descriptors.FieldDescriptor.Type.STRING && i10.x() == Descriptors.FieldDescriptor.Type.BYTES) {
                String str = (String) r1Var.getField(i9);
                Descriptors.b c10 = this.f59027a.c(str);
                if (c10 == null && (c10 = this.f59028b.b(str)) == null) {
                    throw new InvalidProtocolBufferException("Cannot find type for url: " + str);
                }
                x c11 = x.f(c10).getParserForType().c((ByteString) r1Var.getField(i10));
                k kVar = f59026l.get(c.d(str));
                if (kVar != null) {
                    f fVar = this.f59034h;
                    fVar.a("{" + ((Object) this.f59037k));
                    this.f59034h.c();
                    f fVar2 = this.f59034h;
                    fVar2.a("\"@type\":" + ((Object) this.f59036j) + this.f59035i.toJson(str) + "," + ((Object) this.f59037k));
                    f fVar3 = this.f59034h;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("\"value\":");
                    sb2.append((Object) this.f59036j);
                    fVar3.a(sb2.toString());
                    kVar.a(this, c11);
                    this.f59034h.a(this.f59037k);
                    this.f59034h.b();
                    this.f59034h.a("}");
                    return;
                }
                k(c11, str);
                return;
            }
            throw new InvalidProtocolBufferException("Invalid Any type.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(r1 r1Var) throws IOException {
            Duration parseFrom = Duration.parseFrom(y(r1Var));
            f fVar = this.f59034h;
            fVar.a("\"" + v6.a.i(parseFrom) + "\"");
        }

        private void n(Descriptors.FieldDescriptor fieldDescriptor, Object obj) throws IOException {
            if (this.f59031e) {
                f fVar = this.f59034h;
                fVar.a("\"" + fieldDescriptor.d() + "\":" + ((Object) this.f59036j));
            } else {
                f fVar2 = this.f59034h;
                fVar2.a("\"" + fieldDescriptor.u() + "\":" + ((Object) this.f59036j));
            }
            if (fieldDescriptor.A()) {
                q(fieldDescriptor, obj);
            } else if (fieldDescriptor.isRepeated()) {
                r(fieldDescriptor, obj);
            } else {
                s(fieldDescriptor, obj);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(r1 r1Var) throws IOException {
            FieldMask parseFrom = FieldMask.parseFrom(y(r1Var));
            f fVar = this.f59034h;
            fVar.a("\"" + v6.b.a(parseFrom) + "\"");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(r1 r1Var) throws IOException {
            Descriptors.FieldDescriptor i9 = r1Var.getDescriptorForType().i("values");
            if (i9 != null) {
                r(i9, r1Var.getField(i9));
                return;
            }
            throw new InvalidProtocolBufferException("Invalid ListValue type.");
        }

        private void q(Descriptors.FieldDescriptor fieldDescriptor, Object obj) throws IOException {
            Descriptors.b v10 = fieldDescriptor.v();
            Descriptors.FieldDescriptor i9 = v10.i("key");
            Descriptors.FieldDescriptor i10 = v10.i("value");
            if (i9 != null && i10 != null) {
                f fVar = this.f59034h;
                fVar.a("{" + ((Object) this.f59037k));
                this.f59034h.c();
                Collection<l1> collection = (List) obj;
                if (this.f59033g && !collection.isEmpty()) {
                    TreeMap treeMap = new TreeMap(i9.x() == Descriptors.FieldDescriptor.Type.STRING ? new i() : null);
                    for (Object obj2 : collection) {
                        treeMap.put(((l1) obj2).getField(i9), obj2);
                    }
                    collection = treeMap.values();
                }
                boolean z10 = false;
                for (l1 l1Var : collection) {
                    Object field = l1Var.getField(i9);
                    Object field2 = l1Var.getField(i10);
                    if (z10) {
                        f fVar2 = this.f59034h;
                        fVar2.a("," + ((Object) this.f59037k));
                    } else {
                        z10 = true;
                    }
                    t(i9, field, true);
                    f fVar3 = this.f59034h;
                    fVar3.a(CertificateUtil.DELIMITER + ((Object) this.f59036j));
                    s(i10, field2);
                }
                if (z10) {
                    this.f59034h.a(this.f59037k);
                }
                this.f59034h.b();
                this.f59034h.a("}");
                return;
            }
            throw new InvalidProtocolBufferException("Invalid map field.");
        }

        private void r(Descriptors.FieldDescriptor fieldDescriptor, Object obj) throws IOException {
            this.f59034h.a("[");
            boolean z10 = false;
            for (Object obj2 : (List) obj) {
                if (z10) {
                    f fVar = this.f59034h;
                    fVar.a("," + ((Object) this.f59036j));
                } else {
                    z10 = true;
                }
                s(fieldDescriptor, obj2);
            }
            this.f59034h.a("]");
        }

        private void s(Descriptors.FieldDescriptor fieldDescriptor, Object obj) throws IOException {
            t(fieldDescriptor, obj, false);
        }

        private void t(Descriptors.FieldDescriptor fieldDescriptor, Object obj, boolean z10) throws IOException {
            switch (a.f59013a[fieldDescriptor.x().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    if (z10) {
                        this.f59034h.a("\"");
                    }
                    this.f59034h.a(((Integer) obj).toString());
                    if (z10) {
                        this.f59034h.a("\"");
                        return;
                    }
                    return;
                case 4:
                case 5:
                case 6:
                    f fVar = this.f59034h;
                    fVar.a("\"" + ((Long) obj).toString() + "\"");
                    return;
                case 7:
                    if (z10) {
                        this.f59034h.a("\"");
                    }
                    if (((Boolean) obj).booleanValue()) {
                        this.f59034h.a(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                    } else {
                        this.f59034h.a(Bugly.SDK_IS_DEV);
                    }
                    if (z10) {
                        this.f59034h.a("\"");
                        return;
                    }
                    return;
                case 8:
                    Float f10 = (Float) obj;
                    if (f10.isNaN()) {
                        this.f59034h.a("\"NaN\"");
                        return;
                    } else if (f10.isInfinite()) {
                        if (f10.floatValue() < 0.0f) {
                            this.f59034h.a("\"-Infinity\"");
                            return;
                        } else {
                            this.f59034h.a("\"Infinity\"");
                            return;
                        }
                    } else {
                        if (z10) {
                            this.f59034h.a("\"");
                        }
                        this.f59034h.a(f10.toString());
                        if (z10) {
                            this.f59034h.a("\"");
                            return;
                        }
                        return;
                    }
                case 9:
                    Double d10 = (Double) obj;
                    if (d10.isNaN()) {
                        this.f59034h.a("\"NaN\"");
                        return;
                    } else if (d10.isInfinite()) {
                        if (d10.doubleValue() < 0.0d) {
                            this.f59034h.a("\"-Infinity\"");
                            return;
                        } else {
                            this.f59034h.a("\"Infinity\"");
                            return;
                        }
                    } else {
                        if (z10) {
                            this.f59034h.a("\"");
                        }
                        this.f59034h.a(d10.toString());
                        if (z10) {
                            this.f59034h.a("\"");
                            return;
                        }
                        return;
                    }
                case 10:
                case 11:
                    if (z10) {
                        this.f59034h.a("\"");
                    }
                    this.f59034h.a(c.f(((Integer) obj).intValue()));
                    if (z10) {
                        this.f59034h.a("\"");
                        return;
                    }
                    return;
                case 12:
                case 13:
                    f fVar2 = this.f59034h;
                    fVar2.a("\"" + c.g(((Long) obj).longValue()) + "\"");
                    return;
                case 14:
                    this.f59034h.a(this.f59035i.toJson(obj));
                    return;
                case 15:
                    this.f59034h.a("\"");
                    this.f59034h.a(BaseEncoding.b().g(((ByteString) obj).toByteArray()));
                    this.f59034h.a("\"");
                    return;
                case 16:
                    if (fieldDescriptor.q().c().equals("google.protobuf.NullValue")) {
                        if (z10) {
                            this.f59034h.a("\"");
                        }
                        this.f59034h.a("null");
                        if (z10) {
                            this.f59034h.a("\"");
                            return;
                        }
                        return;
                    }
                    if (!this.f59032f) {
                        Descriptors.e eVar = (Descriptors.e) obj;
                        if (eVar.g() != -1) {
                            f fVar3 = this.f59034h;
                            fVar3.a("\"" + eVar.d() + "\"");
                            return;
                        }
                    }
                    this.f59034h.a(String.valueOf(((Descriptors.e) obj).getNumber()));
                    return;
                case 17:
                case 18:
                    j((l1) obj);
                    return;
                default:
                    return;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void u(r1 r1Var) throws IOException {
            Descriptors.FieldDescriptor i9 = r1Var.getDescriptorForType().i(GraphRequest.FIELDS_PARAM);
            if (i9 != null) {
                q(i9, r1Var.getField(i9));
                return;
            }
            throw new InvalidProtocolBufferException("Invalid Struct type.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void v(r1 r1Var) throws IOException {
            Timestamp parseFrom = Timestamp.parseFrom(y(r1Var));
            f fVar = this.f59034h;
            fVar.a("\"" + v6.d.h(parseFrom) + "\"");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(r1 r1Var) throws IOException {
            Map<Descriptors.FieldDescriptor, Object> allFields = r1Var.getAllFields();
            if (allFields.isEmpty()) {
                this.f59034h.a("null");
            } else if (allFields.size() == 1) {
                for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : allFields.entrySet()) {
                    s(entry.getKey(), entry.getValue());
                }
            } else {
                throw new InvalidProtocolBufferException("Invalid Value type.");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void x(r1 r1Var) throws IOException {
            Descriptors.FieldDescriptor i9 = r1Var.getDescriptorForType().i("value");
            if (i9 != null) {
                s(i9, r1Var.getField(i9));
                return;
            }
            throw new InvalidProtocolBufferException("Invalid Wrapper type.");
        }

        private ByteString y(r1 r1Var) {
            if (r1Var instanceof l1) {
                return ((l1) r1Var).toByteString();
            }
            return ((l1.a) r1Var).build().toByteString();
        }

        void j(r1 r1Var) throws IOException {
            k kVar = f59026l.get(r1Var.getDescriptorForType().c());
            if (kVar != null) {
                kVar.a(this, r1Var);
            } else {
                k(r1Var, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface f {
        void a(CharSequence charSequence) throws IOException;

        void b();

        void c();
    }

    /* loaded from: classes3.dex */
    public static class g {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, Descriptors.b> f59040a;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private static final g f59041a = new g(Collections.emptyMap(), null);
        }

        /* synthetic */ g(Map map, a aVar) {
            this(map);
        }

        public static g c() {
            return a.f59041a;
        }

        public Descriptors.b a(String str) {
            return this.f59040a.get(str);
        }

        Descriptors.b b(String str) throws InvalidProtocolBufferException {
            return a(c.d(str));
        }

        private g(Map<String, Descriptors.b> map) {
            this.f59040a = map;
        }
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str) throws InvalidProtocolBufferException {
        String[] split = str.split(FileUtils.RES_PREFIX_STORAGE);
        if (split.length != 1) {
            return split[split.length - 1];
        }
        throw new InvalidProtocolBufferException("Invalid type url found: " + str);
    }

    public static d e() {
        return new d(d3.d(), g.c(), false, Collections.emptySet(), false, false, false, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(int i9) {
        if (i9 >= 0) {
            return Integer.toString(i9);
        }
        return Long.toString(i9 & 4294967295L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String g(long j10) {
        if (j10 >= 0) {
            return Long.toString(j10);
        }
        return BigInteger.valueOf(j10 & Long.MAX_VALUE).setBit(63).toString();
    }
}
