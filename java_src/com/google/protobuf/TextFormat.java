package com.google.protobuf;

import com.facebook.internal.security.CertificateUtil;
import com.google.protobuf.Descriptors;
import com.google.protobuf.h3;
import com.google.protobuf.x;
import java.io.IOException;
import java.lang.Character;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import okio.Utf8;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public final class TextFormat {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f14799a = Logger.getLogger(TextFormat.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final Parser f14800b = Parser.a().a();

    /* loaded from: classes3.dex */
    public static class InvalidEscapeSequenceException extends IOException {
        private static final long serialVersionUID = -8164033650142593304L;

        InvalidEscapeSequenceException(String str) {
            super(str);
        }
    }

    /* loaded from: classes3.dex */
    public static class ParseException extends IOException {
        private static final long serialVersionUID = 3196188060225107702L;
        private final int column;
        private final int line;

        public ParseException(String str) {
            this(-1, -1, str);
        }

        public int getColumn() {
            return this.column;
        }

        public int getLine() {
            return this.line;
        }

        public ParseException(int i9, int i10, String str) {
            super(Integer.toString(i9) + CertificateUtil.DELIMITER + i10 + ": " + str);
            this.line = i9;
            this.column = i10;
        }
    }

    /* loaded from: classes3.dex */
    public static class Parser {

        /* renamed from: a  reason: collision with root package name */
        private final d3 f14801a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f14802b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f14803c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f14804d;

        /* renamed from: e  reason: collision with root package name */
        private final SingularOverwritePolicy f14805e;

        /* loaded from: classes3.dex */
        public enum SingularOverwritePolicy {
            ALLOW_SINGULAR_OVERWRITES,
            FORBID_SINGULAR_OVERWRITES
        }

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private boolean f14806a = false;

            /* renamed from: b  reason: collision with root package name */
            private boolean f14807b = false;

            /* renamed from: c  reason: collision with root package name */
            private boolean f14808c = false;

            /* renamed from: d  reason: collision with root package name */
            private SingularOverwritePolicy f14809d = SingularOverwritePolicy.ALLOW_SINGULAR_OVERWRITES;

            /* renamed from: e  reason: collision with root package name */
            private d3 f14810e = d3.d();

            public Parser a() {
                return new Parser(this.f14810e, this.f14806a, this.f14807b, this.f14808c, this.f14809d, null, null);
            }
        }

        /* synthetic */ Parser(d3 d3Var, boolean z10, boolean z11, boolean z12, SingularOverwritePolicy singularOverwritePolicy, y2 y2Var, a aVar) {
            this(d3Var, z10, z11, z12, singularOverwritePolicy, y2Var);
        }

        public static a a() {
            return new a();
        }

        private Parser(d3 d3Var, boolean z10, boolean z11, boolean z12, SingularOverwritePolicy singularOverwritePolicy, y2 y2Var) {
            this.f14801a = d3Var;
            this.f14802b = z10;
            this.f14803c = z11;
            this.f14804d = z12;
            this.f14805e = singularOverwritePolicy;
        }
    }

    /* loaded from: classes3.dex */
    public static class UnknownFieldParseException extends ParseException {
        private final String unknownField;

        public UnknownFieldParseException(String str) {
            this(-1, -1, "", str);
        }

        public String getUnknownField() {
            return this.unknownField;
        }

        public UnknownFieldParseException(int i9, int i10, String str, String str2) {
            super(i9, i10, str2);
            this.unknownField = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14811a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f14812b;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f14812b = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14812b[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[Descriptors.FieldDescriptor.JavaType.values().length];
            f14811a = iArr2;
            try {
                iArr2[Descriptors.FieldDescriptor.JavaType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f14811a[Descriptors.FieldDescriptor.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f14811a[Descriptors.FieldDescriptor.JavaType.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f14811a[Descriptors.FieldDescriptor.JavaType.STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: c  reason: collision with root package name */
        private static final b f14813c = new b(true, d3.d());

        /* renamed from: a  reason: collision with root package name */
        private final boolean f14814a;

        /* renamed from: b  reason: collision with root package name */
        private final d3 f14815b;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class a implements Comparable<a> {

            /* renamed from: a  reason: collision with root package name */
            private Object f14816a;

            /* renamed from: b  reason: collision with root package name */
            private e1 f14817b;

            /* renamed from: c  reason: collision with root package name */
            private final Descriptors.FieldDescriptor.JavaType f14818c;

            public a(Object obj, Descriptors.FieldDescriptor fieldDescriptor) {
                if (obj instanceof e1) {
                    this.f14817b = (e1) obj;
                } else {
                    this.f14816a = obj;
                }
                this.f14818c = b(fieldDescriptor);
            }

            private static Descriptors.FieldDescriptor.JavaType b(Descriptors.FieldDescriptor fieldDescriptor) {
                return fieldDescriptor.v().m().get(0).t();
            }

            @Override // java.lang.Comparable
            /* renamed from: a */
            public int compareTo(a aVar) {
                if (d() != null && aVar.d() != null) {
                    int i9 = a.f14811a[this.f14818c.ordinal()];
                    if (i9 != 1) {
                        if (i9 != 2) {
                            if (i9 != 3) {
                                if (i9 != 4) {
                                    return 0;
                                }
                                String str = (String) d();
                                String str2 = (String) aVar.d();
                                if (str == null && str2 == null) {
                                    return 0;
                                }
                                if (str != null || str2 == null) {
                                    if (str == null || str2 != null) {
                                        return str.compareTo(str2);
                                    }
                                    return 1;
                                }
                                return -1;
                            }
                            return Integer.compare(((Integer) d()).intValue(), ((Integer) aVar.d()).intValue());
                        }
                        return Long.compare(((Long) d()).longValue(), ((Long) aVar.d()).longValue());
                    }
                    return Boolean.compare(((Boolean) d()).booleanValue(), ((Boolean) aVar.d()).booleanValue());
                }
                TextFormat.f14799a.info("Invalid key for map field.");
                return -1;
            }

            public Object c() {
                e1 e1Var = this.f14817b;
                return e1Var != null ? e1Var : this.f14816a;
            }

            public Object d() {
                e1 e1Var = this.f14817b;
                if (e1Var != null) {
                    return e1Var.f();
                }
                return null;
            }
        }

        private b(boolean z10, d3 d3Var) {
            this.f14814a = z10;
            this.f14815b = d3Var;
        }

        private void b(r1 r1Var, c cVar) throws IOException {
            if (r1Var.getDescriptorForType().c().equals("google.protobuf.Any") && e(r1Var, cVar)) {
                return;
            }
            h(r1Var, cVar);
        }

        private boolean e(r1 r1Var, c cVar) throws IOException {
            Descriptors.b descriptorForType = r1Var.getDescriptorForType();
            Descriptors.FieldDescriptor j10 = descriptorForType.j(1);
            Descriptors.FieldDescriptor j11 = descriptorForType.j(2);
            if (j10 != null && j10.x() == Descriptors.FieldDescriptor.Type.STRING && j11 != null && j11.x() == Descriptors.FieldDescriptor.Type.BYTES) {
                String str = (String) r1Var.getField(j10);
                if (str.isEmpty()) {
                    return false;
                }
                Object field = r1Var.getField(j11);
                try {
                    Descriptors.b c10 = this.f14815b.c(str);
                    if (c10 == null) {
                        return false;
                    }
                    x.b newBuilderForType = x.f(c10).newBuilderForType();
                    newBuilderForType.w0((ByteString) field);
                    cVar.d("[");
                    cVar.d(str);
                    cVar.d("] {");
                    cVar.a();
                    cVar.b();
                    b(newBuilderForType, cVar);
                    cVar.c();
                    cVar.d("}");
                    cVar.a();
                    return true;
                } catch (InvalidProtocolBufferException unused) {
                }
            }
            return false;
        }

        private void f(Descriptors.FieldDescriptor fieldDescriptor, Object obj, c cVar) throws IOException {
            if (fieldDescriptor.A()) {
                ArrayList<a> arrayList = new ArrayList();
                for (Object obj2 : (List) obj) {
                    arrayList.add(new a(obj2, fieldDescriptor));
                }
                Collections.sort(arrayList);
                for (a aVar : arrayList) {
                    i(fieldDescriptor, aVar.c(), cVar);
                }
            } else if (fieldDescriptor.isRepeated()) {
                for (Object obj3 : (List) obj) {
                    i(fieldDescriptor, obj3, cVar);
                }
            } else {
                i(fieldDescriptor, obj, cVar);
            }
        }

        private void g(Descriptors.FieldDescriptor fieldDescriptor, Object obj, c cVar) throws IOException {
            String replace;
            switch (a.f14812b[fieldDescriptor.x().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    cVar.d(((Integer) obj).toString());
                    return;
                case 4:
                case 5:
                case 6:
                    cVar.d(((Long) obj).toString());
                    return;
                case 7:
                    cVar.d(((Boolean) obj).toString());
                    return;
                case 8:
                    cVar.d(((Float) obj).toString());
                    return;
                case 9:
                    cVar.d(((Double) obj).toString());
                    return;
                case 10:
                case 11:
                    cVar.d(TextFormat.q(((Integer) obj).intValue()));
                    return;
                case 12:
                case 13:
                    cVar.d(TextFormat.r(((Long) obj).longValue()));
                    return;
                case 14:
                    cVar.d("\"");
                    if (this.f14814a) {
                        replace = x2.e((String) obj);
                    } else {
                        replace = TextFormat.f((String) obj).replace(IOUtils.LINE_SEPARATOR_UNIX, "\\n");
                    }
                    cVar.d(replace);
                    cVar.d("\"");
                    return;
                case 15:
                    cVar.d("\"");
                    if (obj instanceof ByteString) {
                        cVar.d(TextFormat.d((ByteString) obj));
                    } else {
                        cVar.d(TextFormat.e((byte[]) obj));
                    }
                    cVar.d("\"");
                    return;
                case 16:
                    cVar.d(((Descriptors.e) obj).d());
                    return;
                case 17:
                case 18:
                    b((l1) obj, cVar);
                    return;
                default:
                    return;
            }
        }

        private void h(r1 r1Var, c cVar) throws IOException {
            for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : r1Var.getAllFields().entrySet()) {
                f(entry.getKey(), entry.getValue(), cVar);
            }
            n(r1Var.getUnknownFields(), cVar);
        }

        private void i(Descriptors.FieldDescriptor fieldDescriptor, Object obj, c cVar) throws IOException {
            if (fieldDescriptor.z()) {
                cVar.d("[");
                if (fieldDescriptor.o().q().getMessageSetWireFormat() && fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.MESSAGE && fieldDescriptor.B() && fieldDescriptor.r() == fieldDescriptor.v()) {
                    cVar.d(fieldDescriptor.v().c());
                } else {
                    cVar.d(fieldDescriptor.c());
                }
                cVar.d("]");
            } else if (fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.GROUP) {
                cVar.d(fieldDescriptor.v().d());
            } else {
                cVar.d(fieldDescriptor.d());
            }
            Descriptors.FieldDescriptor.JavaType t10 = fieldDescriptor.t();
            Descriptors.FieldDescriptor.JavaType javaType = Descriptors.FieldDescriptor.JavaType.MESSAGE;
            if (t10 == javaType) {
                cVar.d(" {");
                cVar.a();
                cVar.b();
            } else {
                cVar.d(": ");
            }
            g(fieldDescriptor, obj, cVar);
            if (fieldDescriptor.t() == javaType) {
                cVar.c();
                cVar.d("}");
            }
            cVar.a();
        }

        private static void l(int i9, int i10, List<?> list, c cVar) throws IOException {
            for (Object obj : list) {
                cVar.d(String.valueOf(i9));
                cVar.d(": ");
                m(i10, obj, cVar);
                cVar.a();
            }
        }

        private static void m(int i9, Object obj, c cVar) throws IOException {
            int b10 = WireFormat.b(i9);
            if (b10 == 0) {
                cVar.d(TextFormat.r(((Long) obj).longValue()));
            } else if (b10 == 1) {
                cVar.d(String.format(null, "0x%016x", (Long) obj));
            } else if (b10 != 2) {
                if (b10 == 3) {
                    n((h3) obj, cVar);
                } else if (b10 == 5) {
                    cVar.d(String.format(null, "0x%08x", (Integer) obj));
                } else {
                    throw new IllegalArgumentException("Bad tag: " + i9);
                }
            } else {
                try {
                    h3 k10 = h3.k((ByteString) obj);
                    cVar.d("{");
                    cVar.a();
                    cVar.b();
                    n(k10, cVar);
                    cVar.c();
                    cVar.d("}");
                } catch (InvalidProtocolBufferException unused) {
                    cVar.d("\"");
                    cVar.d(TextFormat.d((ByteString) obj));
                    cVar.d("\"");
                }
            }
        }

        private static void n(h3 h3Var, c cVar) throws IOException {
            for (Map.Entry<Integer, h3.c> entry : h3Var.b().entrySet()) {
                int intValue = entry.getKey().intValue();
                h3.c value = entry.getValue();
                l(intValue, 0, value.s(), cVar);
                l(intValue, 5, value.l(), cVar);
                l(intValue, 1, value.m(), cVar);
                l(intValue, 2, value.p(), cVar);
                for (h3 h3Var2 : value.n()) {
                    cVar.d(entry.getKey().toString());
                    cVar.d(" {");
                    cVar.a();
                    cVar.b();
                    n(h3Var2, cVar);
                    cVar.c();
                    cVar.d("}");
                    cVar.a();
                }
            }
        }

        public void c(r1 r1Var, Appendable appendable) throws IOException {
            b(r1Var, TextFormat.i(appendable));
        }

        public void d(h3 h3Var, Appendable appendable) throws IOException {
            n(h3Var, TextFormat.i(appendable));
        }

        public String j(r1 r1Var) {
            try {
                StringBuilder sb2 = new StringBuilder();
                c(r1Var, sb2);
                return sb2.toString();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        public String k(h3 h3Var) {
            try {
                StringBuilder sb2 = new StringBuilder();
                d(h3Var, sb2);
                return sb2.toString();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f14819a;

        /* renamed from: b  reason: collision with root package name */
        private final StringBuilder f14820b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f14821c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f14822d;

        /* synthetic */ c(Appendable appendable, boolean z10, a aVar) {
            this(appendable, z10);
        }

        public void a() throws IOException {
            if (!this.f14821c) {
                this.f14819a.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            this.f14822d = true;
        }

        public void b() {
            this.f14820b.append("  ");
        }

        public void c() {
            int length = this.f14820b.length();
            if (length != 0) {
                this.f14820b.setLength(length - 2);
                return;
            }
            throw new IllegalArgumentException(" Outdent() without matching Indent().");
        }

        public void d(CharSequence charSequence) throws IOException {
            if (this.f14822d) {
                this.f14822d = false;
                this.f14819a.append(this.f14821c ? " " : this.f14820b);
            }
            this.f14819a.append(charSequence);
        }

        private c(Appendable appendable, boolean z10) {
            this.f14820b = new StringBuilder();
            this.f14822d = false;
            this.f14819a = appendable;
            this.f14821c = z10;
        }
    }

    private TextFormat() {
    }

    private static int c(byte b10) {
        if (48 > b10 || b10 > 57) {
            return ((97 > b10 || b10 > 122) ? b10 - 65 : b10 - 97) + 10;
        }
        return b10 - 48;
    }

    public static String d(ByteString byteString) {
        return x2.a(byteString);
    }

    public static String e(byte[] bArr) {
        return x2.c(bArr);
    }

    public static String f(String str) {
        return x2.d(str);
    }

    private static boolean g(byte b10) {
        return (48 <= b10 && b10 <= 57) || (97 <= b10 && b10 <= 102) || (65 <= b10 && b10 <= 70);
    }

    private static boolean h(byte b10) {
        return 48 <= b10 && b10 <= 55;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c i(Appendable appendable) {
        return new c(appendable, false, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(String str) throws NumberFormatException {
        return (int) l(str, true, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long k(String str) throws NumberFormatException {
        return l(str, true, true);
    }

    private static long l(String str, boolean z10, boolean z11) throws NumberFormatException {
        int i9 = 0;
        boolean z12 = true;
        if (!str.startsWith("-", 0)) {
            z12 = false;
        } else if (!z10) {
            throw new NumberFormatException("Number must be positive: " + str);
        } else {
            i9 = 1;
        }
        int i10 = 10;
        if (str.startsWith("0x", i9)) {
            i9 += 2;
            i10 = 16;
        } else if (str.startsWith("0", i9)) {
            i10 = 8;
        }
        String substring = str.substring(i9);
        if (substring.length() < 16) {
            long parseLong = Long.parseLong(substring, i10);
            if (z12) {
                parseLong = -parseLong;
            }
            if (z11) {
                return parseLong;
            }
            if (z10) {
                if (parseLong > 2147483647L || parseLong < -2147483648L) {
                    throw new NumberFormatException("Number out of range for 32-bit signed integer: " + str);
                }
                return parseLong;
            } else if (parseLong >= 4294967296L || parseLong < 0) {
                throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + str);
            } else {
                return parseLong;
            }
        }
        BigInteger bigInteger = new BigInteger(substring, i10);
        if (z12) {
            bigInteger = bigInteger.negate();
        }
        if (z11) {
            if (z10) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException("Number out of range for 64-bit signed integer: " + str);
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + str);
            }
        } else if (z10) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + str);
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + str);
        }
        return bigInteger.longValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(String str) throws NumberFormatException {
        return (int) l(str, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long n(String str) throws NumberFormatException {
        return l(str, false, true);
    }

    public static b o() {
        return b.f14813c;
    }

    public static ByteString p(CharSequence charSequence) throws InvalidEscapeSequenceException {
        int i9;
        int i10;
        int i11;
        int length;
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(charSequence.toString());
        int size = copyFromUtf8.size();
        byte[] bArr = new byte[size];
        int i12 = 0;
        int i13 = 0;
        while (i12 < copyFromUtf8.size()) {
            byte byteAt = copyFromUtf8.byteAt(i12);
            if (byteAt == 92) {
                i12++;
                if (i12 < copyFromUtf8.size()) {
                    byte byteAt2 = copyFromUtf8.byteAt(i12);
                    if (h(byteAt2)) {
                        int c10 = c(byteAt2);
                        int i14 = i12 + 1;
                        if (i14 < copyFromUtf8.size() && h(copyFromUtf8.byteAt(i14))) {
                            c10 = (c10 * 8) + c(copyFromUtf8.byteAt(i14));
                            i12 = i14;
                        }
                        int i15 = i12 + 1;
                        if (i15 < copyFromUtf8.size() && h(copyFromUtf8.byteAt(i15))) {
                            c10 = (c10 * 8) + c(copyFromUtf8.byteAt(i15));
                            i12 = i15;
                        }
                        i9 = i13 + 1;
                        bArr[i13] = (byte) c10;
                    } else {
                        if (byteAt2 == 34) {
                            i10 = i13 + 1;
                            bArr[i13] = 34;
                        } else if (byteAt2 == 39) {
                            i10 = i13 + 1;
                            bArr[i13] = 39;
                        } else if (byteAt2 != 63) {
                            if (byteAt2 == 85) {
                                int i16 = i12 + 1;
                                i11 = i16 + 7;
                                if (i11 >= copyFromUtf8.size()) {
                                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U' with too few hex chars");
                                }
                                int i17 = i16;
                                int i18 = 0;
                                while (true) {
                                    int i19 = i16 + 8;
                                    if (i17 < i19) {
                                        byte byteAt3 = copyFromUtf8.byteAt(i17);
                                        if (g(byteAt3)) {
                                            i18 = (i18 << 4) | c(byteAt3);
                                            i17++;
                                        } else {
                                            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U' with too few hex chars");
                                        }
                                    } else if (Character.isValidCodePoint(i18)) {
                                        Character.UnicodeBlock of2 = Character.UnicodeBlock.of(i18);
                                        if (!of2.equals(Character.UnicodeBlock.LOW_SURROGATES) && !of2.equals(Character.UnicodeBlock.HIGH_SURROGATES) && !of2.equals(Character.UnicodeBlock.HIGH_PRIVATE_USE_SURROGATES)) {
                                            byte[] bytes = new String(new int[]{i18}, 0, 1).getBytes(StandardCharsets.UTF_8);
                                            System.arraycopy(bytes, 0, bArr, i13, bytes.length);
                                            length = bytes.length;
                                        } else {
                                            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U" + copyFromUtf8.substring(i16, i19).toStringUtf8() + "' refers to a surrogate code unit");
                                        }
                                    } else {
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U" + copyFromUtf8.substring(i16, i19).toStringUtf8() + "' is not a valid code point value");
                                    }
                                }
                            } else if (byteAt2 == 92) {
                                i10 = i13 + 1;
                                bArr[i13] = 92;
                            } else if (byteAt2 == 102) {
                                i10 = i13 + 1;
                                bArr[i13] = 12;
                            } else if (byteAt2 == 110) {
                                i10 = i13 + 1;
                                bArr[i13] = 10;
                            } else if (byteAt2 == 114) {
                                i10 = i13 + 1;
                                bArr[i13] = 13;
                            } else if (byteAt2 == 120) {
                                i12++;
                                if (i12 < copyFromUtf8.size() && g(copyFromUtf8.byteAt(i12))) {
                                    int c11 = c(copyFromUtf8.byteAt(i12));
                                    int i20 = i12 + 1;
                                    if (i20 < copyFromUtf8.size() && g(copyFromUtf8.byteAt(i20))) {
                                        c11 = (c11 * 16) + c(copyFromUtf8.byteAt(i20));
                                        i12 = i20;
                                    }
                                    i9 = i13 + 1;
                                    bArr[i13] = (byte) c11;
                                } else {
                                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\x' with no digits");
                                }
                            } else if (byteAt2 == 97) {
                                i10 = i13 + 1;
                                bArr[i13] = 7;
                            } else if (byteAt2 != 98) {
                                switch (byteAt2) {
                                    case 116:
                                        i10 = i13 + 1;
                                        bArr[i13] = 9;
                                        break;
                                    case 117:
                                        int i21 = i12 + 1;
                                        i11 = i21 + 3;
                                        if (i11 < copyFromUtf8.size() && g(copyFromUtf8.byteAt(i21))) {
                                            int i22 = i21 + 1;
                                            if (g(copyFromUtf8.byteAt(i22))) {
                                                int i23 = i21 + 2;
                                                if (g(copyFromUtf8.byteAt(i23)) && g(copyFromUtf8.byteAt(i11))) {
                                                    char c12 = (char) ((c(copyFromUtf8.byteAt(i21)) << 12) | (c(copyFromUtf8.byteAt(i22)) << 8) | (c(copyFromUtf8.byteAt(i23)) << 4) | c(copyFromUtf8.byteAt(i11)));
                                                    if (!Character.isSurrogate(c12)) {
                                                        byte[] bytes2 = Character.toString(c12).getBytes(StandardCharsets.UTF_8);
                                                        System.arraycopy(bytes2, 0, bArr, i13, bytes2.length);
                                                        length = bytes2.length;
                                                        break;
                                                    } else {
                                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\u' refers to a surrogate");
                                                    }
                                                }
                                            }
                                        }
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\u' with too few hex chars");
                                    case 118:
                                        i10 = i13 + 1;
                                        bArr[i13] = 11;
                                        break;
                                    default:
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\" + ((char) byteAt2) + '\'');
                                }
                            } else {
                                i10 = i13 + 1;
                                bArr[i13] = 8;
                            }
                            i13 += length;
                            i12 = i11;
                            i12++;
                        } else {
                            i10 = i13 + 1;
                            bArr[i13] = Utf8.REPLACEMENT_BYTE;
                        }
                        i13 = i10;
                        i12++;
                    }
                } else {
                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\' at end of string.");
                }
            } else {
                i9 = i13 + 1;
                bArr[i13] = byteAt;
            }
            i13 = i9;
            i12++;
        }
        if (size == i13) {
            return ByteString.wrap(bArr);
        }
        return ByteString.copyFrom(bArr, 0, i13);
    }

    public static String q(int i9) {
        if (i9 >= 0) {
            return Integer.toString(i9);
        }
        return Long.toString(i9 & 4294967295L);
    }

    public static String r(long j10) {
        if (j10 >= 0) {
            return Long.toString(j10);
        }
        return BigInteger.valueOf(j10 & Long.MAX_VALUE).setBit(63).toString();
    }
}
