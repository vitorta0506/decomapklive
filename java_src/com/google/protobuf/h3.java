package com.google.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.Writer;
import com.google.protobuf.o1;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public final class h3 implements o1 {

    /* renamed from: b  reason: collision with root package name */
    private static final h3 f14988b = new h3(new TreeMap());

    /* renamed from: c  reason: collision with root package name */
    private static final d f14989c = new d();

    /* renamed from: a  reason: collision with root package name */
    private final TreeMap<Integer, c> f14990a;

    /* loaded from: classes3.dex */
    public static final class b implements o1.a {

        /* renamed from: a  reason: collision with root package name */
        private TreeMap<Integer, c.a> f14991a = new TreeMap<>();

        private b() {
        }

        static /* synthetic */ b a() {
            return g();
        }

        private static b g() {
            return new b();
        }

        private c.a h(int i9) {
            if (i9 == 0) {
                return null;
            }
            c.a aVar = this.f14991a.get(Integer.valueOf(i9));
            if (aVar == null) {
                c.a t10 = c.t();
                this.f14991a.put(Integer.valueOf(i9), t10);
                return t10;
            }
            return aVar;
        }

        public b b(int i9, c cVar) {
            if (i9 > 0) {
                this.f14991a.put(Integer.valueOf(i9), c.u(cVar));
                return this;
            }
            throw new IllegalArgumentException(i9 + " is not a valid field number.");
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: d */
        public h3 build() {
            if (this.f14991a.isEmpty()) {
                return h3.d();
            }
            TreeMap treeMap = new TreeMap();
            for (Map.Entry<Integer, c.a> entry : this.f14991a.entrySet()) {
                treeMap.put(entry.getKey(), entry.getValue().g());
            }
            return new h3(treeMap);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: e */
        public h3 I() {
            return build();
        }

        /* renamed from: f */
        public b clone() {
            b h10 = h3.h();
            for (Map.Entry<Integer, c.a> entry : this.f14991a.entrySet()) {
                h10.f14991a.put(entry.getKey(), entry.getValue().clone());
            }
            return h10;
        }

        public boolean i(int i9) {
            return this.f14991a.containsKey(Integer.valueOf(i9));
        }

        public b j(int i9, c cVar) {
            if (i9 > 0) {
                if (i(i9)) {
                    h(i9).j(cVar);
                } else {
                    b(i9, cVar);
                }
                return this;
            }
            throw new IllegalArgumentException(i9 + " is not a valid field number.");
        }

        public boolean k(int i9, p pVar) throws IOException {
            int a10 = WireFormat.a(i9);
            int b10 = WireFormat.b(i9);
            if (b10 == 0) {
                h(a10).f(pVar.A());
                return true;
            } else if (b10 == 1) {
                h(a10).c(pVar.w());
                return true;
            } else if (b10 == 2) {
                h(a10).e(pVar.s());
                return true;
            } else if (b10 == 3) {
                b h10 = h3.h();
                pVar.y(a10, h10, d0.i());
                h(a10).d(h10.build());
                return true;
            } else if (b10 != 4) {
                if (b10 == 5) {
                    h(a10).b(pVar.v());
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        public b l(ByteString byteString) throws InvalidProtocolBufferException {
            try {
                p newCodedInput = byteString.newCodedInput();
                m(newCodedInput);
                newCodedInput.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", e11);
            }
        }

        public b m(p pVar) throws IOException {
            int L;
            do {
                L = pVar.L();
                if (L == 0) {
                    break;
                }
            } while (k(L, pVar));
            return this;
        }

        @Override // com.google.protobuf.o1.a
        /* renamed from: n */
        public b f0(p pVar, f0 f0Var) throws IOException {
            return m(pVar);
        }

        @Override // com.google.protobuf.o1.a
        /* renamed from: o */
        public b c0(o1 o1Var) {
            if (o1Var instanceof h3) {
                return p((h3) o1Var);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }

        public b p(h3 h3Var) {
            if (h3Var != h3.d()) {
                for (Map.Entry entry : h3Var.f14990a.entrySet()) {
                    j(((Integer) entry.getKey()).intValue(), (c) entry.getValue());
                }
            }
            return this;
        }

        @Override // com.google.protobuf.o1.a
        /* renamed from: q */
        public b E0(byte[] bArr) throws InvalidProtocolBufferException {
            try {
                p m10 = p.m(bArr);
                m(m10);
                m10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e11);
            }
        }

        public b r(int i9, int i10) {
            if (i9 > 0) {
                h(i9).f(i10);
                return this;
            }
            throw new IllegalArgumentException(i9 + " is not a valid field number.");
        }
    }

    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: f  reason: collision with root package name */
        private static final c f14992f = t().g();

        /* renamed from: a  reason: collision with root package name */
        private List<Long> f14993a;

        /* renamed from: b  reason: collision with root package name */
        private List<Integer> f14994b;

        /* renamed from: c  reason: collision with root package name */
        private List<Long> f14995c;

        /* renamed from: d  reason: collision with root package name */
        private List<ByteString> f14996d;

        /* renamed from: e  reason: collision with root package name */
        private List<h3> f14997e;

        /* loaded from: classes3.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private c f14998a = new c();

            private a() {
            }

            static /* synthetic */ a a() {
                return i();
            }

            private static a i() {
                return new a();
            }

            public a b(int i9) {
                if (this.f14998a.f14994b == null) {
                    this.f14998a.f14994b = new ArrayList();
                }
                this.f14998a.f14994b.add(Integer.valueOf(i9));
                return this;
            }

            public a c(long j10) {
                if (this.f14998a.f14995c == null) {
                    this.f14998a.f14995c = new ArrayList();
                }
                this.f14998a.f14995c.add(Long.valueOf(j10));
                return this;
            }

            public a d(h3 h3Var) {
                if (this.f14998a.f14997e == null) {
                    this.f14998a.f14997e = new ArrayList();
                }
                this.f14998a.f14997e.add(h3Var);
                return this;
            }

            public a e(ByteString byteString) {
                if (this.f14998a.f14996d == null) {
                    this.f14998a.f14996d = new ArrayList();
                }
                this.f14998a.f14996d.add(byteString);
                return this;
            }

            public a f(long j10) {
                if (this.f14998a.f14993a == null) {
                    this.f14998a.f14993a = new ArrayList();
                }
                this.f14998a.f14993a.add(Long.valueOf(j10));
                return this;
            }

            public c g() {
                c cVar = new c();
                if (this.f14998a.f14993a == null) {
                    cVar.f14993a = Collections.emptyList();
                } else {
                    cVar.f14993a = Collections.unmodifiableList(new ArrayList(this.f14998a.f14993a));
                }
                if (this.f14998a.f14994b == null) {
                    cVar.f14994b = Collections.emptyList();
                } else {
                    cVar.f14994b = Collections.unmodifiableList(new ArrayList(this.f14998a.f14994b));
                }
                if (this.f14998a.f14995c == null) {
                    cVar.f14995c = Collections.emptyList();
                } else {
                    cVar.f14995c = Collections.unmodifiableList(new ArrayList(this.f14998a.f14995c));
                }
                if (this.f14998a.f14996d == null) {
                    cVar.f14996d = Collections.emptyList();
                } else {
                    cVar.f14996d = Collections.unmodifiableList(new ArrayList(this.f14998a.f14996d));
                }
                if (this.f14998a.f14997e == null) {
                    cVar.f14997e = Collections.emptyList();
                } else {
                    cVar.f14997e = Collections.unmodifiableList(new ArrayList(this.f14998a.f14997e));
                }
                return cVar;
            }

            /* renamed from: h */
            public a clone() {
                c cVar = new c();
                if (this.f14998a.f14993a == null) {
                    cVar.f14993a = null;
                } else {
                    cVar.f14993a = new ArrayList(this.f14998a.f14993a);
                }
                if (this.f14998a.f14994b == null) {
                    cVar.f14994b = null;
                } else {
                    cVar.f14994b = new ArrayList(this.f14998a.f14994b);
                }
                if (this.f14998a.f14995c == null) {
                    cVar.f14995c = null;
                } else {
                    cVar.f14995c = new ArrayList(this.f14998a.f14995c);
                }
                if (this.f14998a.f14996d == null) {
                    cVar.f14996d = null;
                } else {
                    cVar.f14996d = new ArrayList(this.f14998a.f14996d);
                }
                if (this.f14998a.f14997e == null) {
                    cVar.f14997e = null;
                } else {
                    cVar.f14997e = new ArrayList(this.f14998a.f14997e);
                }
                a aVar = new a();
                aVar.f14998a = cVar;
                return aVar;
            }

            public a j(c cVar) {
                if (!cVar.f14993a.isEmpty()) {
                    if (this.f14998a.f14993a == null) {
                        this.f14998a.f14993a = new ArrayList();
                    }
                    this.f14998a.f14993a.addAll(cVar.f14993a);
                }
                if (!cVar.f14994b.isEmpty()) {
                    if (this.f14998a.f14994b == null) {
                        this.f14998a.f14994b = new ArrayList();
                    }
                    this.f14998a.f14994b.addAll(cVar.f14994b);
                }
                if (!cVar.f14995c.isEmpty()) {
                    if (this.f14998a.f14995c == null) {
                        this.f14998a.f14995c = new ArrayList();
                    }
                    this.f14998a.f14995c.addAll(cVar.f14995c);
                }
                if (!cVar.f14996d.isEmpty()) {
                    if (this.f14998a.f14996d == null) {
                        this.f14998a.f14996d = new ArrayList();
                    }
                    this.f14998a.f14996d.addAll(cVar.f14996d);
                }
                if (!cVar.f14997e.isEmpty()) {
                    if (this.f14998a.f14997e == null) {
                        this.f14998a.f14997e = new ArrayList();
                    }
                    this.f14998a.f14997e.addAll(cVar.f14997e);
                }
                return this;
            }
        }

        private c() {
        }

        private Object[] o() {
            return new Object[]{this.f14993a, this.f14994b, this.f14995c, this.f14996d, this.f14997e};
        }

        public static a t() {
            return a.a();
        }

        public static a u(c cVar) {
            return t().j(cVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(int i9, Writer writer) throws IOException {
            if (writer.z() == Writer.FieldOrder.DESCENDING) {
                List<ByteString> list = this.f14996d;
                ListIterator<ByteString> listIterator = list.listIterator(list.size());
                while (listIterator.hasPrevious()) {
                    writer.c(i9, listIterator.previous());
                }
                return;
            }
            for (ByteString byteString : this.f14996d) {
                writer.c(i9, byteString);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return Arrays.equals(o(), ((c) obj).o());
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(o());
        }

        public List<Integer> l() {
            return this.f14994b;
        }

        public List<Long> m() {
            return this.f14995c;
        }

        public List<h3> n() {
            return this.f14997e;
        }

        public List<ByteString> p() {
            return this.f14996d;
        }

        public int q(int i9) {
            int i10 = 0;
            for (Long l10 : this.f14993a) {
                i10 += CodedOutputStream.a0(i9, l10.longValue());
            }
            for (Integer num : this.f14994b) {
                i10 += CodedOutputStream.n(i9, num.intValue());
            }
            for (Long l11 : this.f14995c) {
                i10 += CodedOutputStream.p(i9, l11.longValue());
            }
            for (ByteString byteString : this.f14996d) {
                i10 += CodedOutputStream.h(i9, byteString);
            }
            for (h3 h3Var : this.f14997e) {
                i10 += CodedOutputStream.t(i9, h3Var);
            }
            return i10;
        }

        public int r(int i9) {
            int i10 = 0;
            for (ByteString byteString : this.f14996d) {
                i10 += CodedOutputStream.L(i9, byteString);
            }
            return i10;
        }

        public List<Long> s() {
            return this.f14993a;
        }

        public void v(int i9, CodedOutputStream codedOutputStream) throws IOException {
            for (ByteString byteString : this.f14996d) {
                codedOutputStream.P0(i9, byteString);
            }
        }

        public void x(int i9, CodedOutputStream codedOutputStream) throws IOException {
            for (Long l10 : this.f14993a) {
                codedOutputStream.e1(i9, l10.longValue());
            }
            for (Integer num : this.f14994b) {
                codedOutputStream.x0(i9, num.intValue());
            }
            for (Long l11 : this.f14995c) {
                codedOutputStream.z0(i9, l11.longValue());
            }
            for (ByteString byteString : this.f14996d) {
                codedOutputStream.r0(i9, byteString);
            }
            for (h3 h3Var : this.f14997e) {
                codedOutputStream.D0(i9, h3Var);
            }
        }

        void y(int i9, Writer writer) throws IOException {
            writer.P(i9, this.f14993a, false);
            writer.n(i9, this.f14994b, false);
            writer.G(i9, this.f14995c, false);
            writer.S(i9, this.f14996d);
            if (writer.z() == Writer.FieldOrder.ASCENDING) {
                for (int i10 = 0; i10 < this.f14997e.size(); i10++) {
                    writer.F(i9);
                    this.f14997e.get(i10).o(writer);
                    writer.M(i9);
                }
                return;
            }
            for (int size = this.f14997e.size() - 1; size >= 0; size--) {
                writer.M(i9);
                this.f14997e.get(size).o(writer);
                writer.F(i9);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class d extends com.google.protobuf.c<h3> {
        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public h3 m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            b h10 = h3.h();
            try {
                h10.m(pVar);
                return h10.I();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(h10.I());
            } catch (IOException e11) {
                throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(h10.I());
            }
        }
    }

    h3(TreeMap<Integer, c> treeMap) {
        this.f14990a = treeMap;
    }

    public static h3 d() {
        return f14988b;
    }

    public static b h() {
        return b.a();
    }

    public static b i(h3 h3Var) {
        return h().p(h3Var);
    }

    public static h3 k(ByteString byteString) throws InvalidProtocolBufferException {
        return h().l(byteString).build();
    }

    public Map<Integer, c> b() {
        return (Map) this.f14990a.clone();
    }

    @Override // com.google.protobuf.p1, com.google.protobuf.r1
    /* renamed from: e */
    public h3 getDefaultInstanceForType() {
        return f14988b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h3) && this.f14990a.equals(((h3) obj).f14990a);
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    /* renamed from: f */
    public final d getParserForType() {
        return f14989c;
    }

    public int g() {
        int i9 = 0;
        for (Map.Entry<Integer, c> entry : this.f14990a.entrySet()) {
            i9 += entry.getValue().r(entry.getKey().intValue());
        }
        return i9;
    }

    @Override // com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = 0;
        if (!this.f14990a.isEmpty()) {
            for (Map.Entry<Integer, c> entry : this.f14990a.entrySet()) {
                i9 += entry.getValue().q(entry.getKey().intValue());
            }
        }
        return i9;
    }

    public int hashCode() {
        if (this.f14990a.isEmpty()) {
            return 0;
        }
        return this.f14990a.hashCode();
    }

    @Override // com.google.protobuf.p1
    public boolean isInitialized() {
        return true;
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    /* renamed from: j */
    public b newBuilderForType() {
        return h();
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    /* renamed from: l */
    public b toBuilder() {
        return h().p(this);
    }

    public void m(CodedOutputStream codedOutputStream) throws IOException {
        for (Map.Entry<Integer, c> entry : this.f14990a.entrySet()) {
            entry.getValue().v(entry.getKey().intValue(), codedOutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(Writer writer) throws IOException {
        if (writer.z() == Writer.FieldOrder.DESCENDING) {
            for (Map.Entry<Integer, c> entry : this.f14990a.descendingMap().entrySet()) {
                entry.getValue().w(entry.getKey().intValue(), writer);
            }
            return;
        }
        for (Map.Entry<Integer, c> entry2 : this.f14990a.entrySet()) {
            entry2.getValue().w(entry2.getKey().intValue(), writer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(Writer writer) throws IOException {
        if (writer.z() == Writer.FieldOrder.DESCENDING) {
            for (Map.Entry<Integer, c> entry : this.f14990a.descendingMap().entrySet()) {
                entry.getValue().y(entry.getKey().intValue(), writer);
            }
            return;
        }
        for (Map.Entry<Integer, c> entry2 : this.f14990a.entrySet()) {
            entry2.getValue().y(entry2.getKey().intValue(), writer);
        }
    }

    @Override // com.google.protobuf.o1
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream j02 = CodedOutputStream.j0(bArr);
            writeTo(j02);
            j02.d();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e10);
        }
    }

    @Override // com.google.protobuf.o1
    public ByteString toByteString() {
        try {
            ByteString.h newCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(newCodedBuilder.b());
            return newCodedBuilder.a();
        } catch (IOException e10) {
            throw new RuntimeException("Serializing to a ByteString threw an IOException (should never happen).", e10);
        }
    }

    public String toString() {
        return TextFormat.o().k(this);
    }

    @Override // com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (Map.Entry<Integer, c> entry : this.f14990a.entrySet()) {
            entry.getValue().x(entry.getKey().intValue(), codedOutputStream);
        }
    }

    @Override // com.google.protobuf.o1
    public void writeTo(OutputStream outputStream) throws IOException {
        CodedOutputStream h02 = CodedOutputStream.h0(outputStream);
        writeTo(h02);
        h02.e0();
    }
}
