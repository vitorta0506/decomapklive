package com.airbnb.lottie.parser.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
/* loaded from: classes.dex */
public abstract class JsonReader implements Closeable {

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f3861g = new String[128];

    /* renamed from: a  reason: collision with root package name */
    int f3862a;

    /* renamed from: b  reason: collision with root package name */
    int[] f3863b = new int[32];

    /* renamed from: c  reason: collision with root package name */
    String[] f3864c = new String[32];

    /* renamed from: d  reason: collision with root package name */
    int[] f3865d = new int[32];

    /* renamed from: e  reason: collision with root package name */
    boolean f3866e;

    /* renamed from: f  reason: collision with root package name */
    boolean f3867f;

    /* loaded from: classes.dex */
    public enum Token {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String[] f3868a;

        /* renamed from: b  reason: collision with root package name */
        final Options f3869b;

        private a(String[] strArr, Options options) {
            this.f3868a = strArr;
            this.f3869b = options;
        }

        public static a a(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i9 = 0; i9 < strArr.length; i9++) {
                    JsonReader.I(buffer, strArr[i9]);
                    buffer.readByte();
                    byteStringArr[i9] = buffer.readByteString();
                }
                return new a((String[]) strArr.clone(), Options.of(byteStringArr));
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    static {
        for (int i9 = 0; i9 <= 31; i9++) {
            f3861g[i9] = String.format("\\u%04x", Integer.valueOf(i9));
        }
        String[] strArr = f3861g;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void I(okio.BufferedSink r7, java.lang.String r8) throws java.io.IOException {
        /*
            java.lang.String[] r0 = com.airbnb.lottie.parser.moshi.JsonReader.f3861g
            r1 = 34
            r7.writeByte(r1)
            int r2 = r8.length()
            r3 = 0
            r4 = 0
        Ld:
            if (r3 >= r2) goto L36
            char r5 = r8.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L1c
            r5 = r0[r5]
            if (r5 != 0) goto L29
            goto L33
        L1c:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L23
            java.lang.String r5 = "\\u2028"
            goto L29
        L23:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L33
            java.lang.String r5 = "\\u2029"
        L29:
            if (r4 >= r3) goto L2e
            r7.writeUtf8(r8, r4, r3)
        L2e:
            r7.writeUtf8(r5)
            int r4 = r3 + 1
        L33:
            int r3 = r3 + 1
            goto Ld
        L36:
            if (r4 >= r2) goto L3b
            r7.writeUtf8(r8, r4, r2)
        L3b:
            r7.writeByte(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonReader.I(okio.BufferedSink, java.lang.String):void");
    }

    public static JsonReader v(BufferedSource bufferedSource) {
        return new d(bufferedSource);
    }

    public abstract int A(a aVar) throws IOException;

    public abstract void C() throws IOException;

    public abstract void F() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b K(String str) throws b {
        throw new b(str + " at path " + getPath());
    }

    public abstract void c() throws IOException;

    public abstract void e() throws IOException;

    public final String getPath() {
        return c.a(this.f3862a, this.f3863b, this.f3864c, this.f3865d);
    }

    public abstract void j() throws IOException;

    public abstract void k() throws IOException;

    public abstract boolean o() throws IOException;

    public abstract boolean p() throws IOException;

    public abstract double q() throws IOException;

    public abstract int r() throws IOException;

    public abstract String s() throws IOException;

    public abstract String t() throws IOException;

    public abstract Token w() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void y(int i9) {
        int i10 = this.f3862a;
        int[] iArr = this.f3863b;
        if (i10 == iArr.length) {
            if (i10 != 256) {
                this.f3863b = Arrays.copyOf(iArr, iArr.length * 2);
                String[] strArr = this.f3864c;
                this.f3864c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                int[] iArr2 = this.f3865d;
                this.f3865d = Arrays.copyOf(iArr2, iArr2.length * 2);
            } else {
                throw new com.airbnb.lottie.parser.moshi.a("Nesting too deep at " + getPath());
            }
        }
        int[] iArr3 = this.f3863b;
        int i11 = this.f3862a;
        this.f3862a = i11 + 1;
        iArr3[i11] = i9;
    }
}
