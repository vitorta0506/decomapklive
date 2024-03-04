package h5;

import com.facebook.internal.ServerProtocol;
import com.google.api.client.json.JsonToken;
import com.google.gson.stream.JsonReader;
import com.tencent.bugly.Bugly;
import g5.f;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
class c extends f {

    /* renamed from: c  reason: collision with root package name */
    private final JsonReader f40547c;

    /* renamed from: d  reason: collision with root package name */
    private final h5.a f40548d;

    /* renamed from: e  reason: collision with root package name */
    private List<String> f40549e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private JsonToken f40550f;

    /* renamed from: g  reason: collision with root package name */
    private String f40551g;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f40552a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f40553b;

        static {
            int[] iArr = new int[com.google.gson.stream.JsonToken.values().length];
            f40553b = iArr;
            try {
                iArr[com.google.gson.stream.JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40553b[com.google.gson.stream.JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40553b[com.google.gson.stream.JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f40553b[com.google.gson.stream.JsonToken.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f40553b[com.google.gson.stream.JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f40553b[com.google.gson.stream.JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f40553b[com.google.gson.stream.JsonToken.STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f40553b[com.google.gson.stream.JsonToken.NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f40553b[com.google.gson.stream.JsonToken.NAME.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[JsonToken.values().length];
            f40552a = iArr2;
            try {
                iArr2[JsonToken.START_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f40552a[JsonToken.START_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(h5.a aVar, JsonReader jsonReader) {
        this.f40548d = aVar;
        this.f40547c = jsonReader;
        jsonReader.setLenient(false);
    }

    private void Z() throws IOException {
        JsonToken jsonToken = this.f40550f;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            throw new IOException("Token is not a number");
        }
    }

    @Override // g5.f
    public f V() throws IOException {
        JsonToken jsonToken = this.f40550f;
        if (jsonToken != null) {
            int i9 = a.f40552a[jsonToken.ordinal()];
            if (i9 == 1) {
                this.f40547c.skipValue();
                this.f40551g = "]";
                this.f40550f = JsonToken.END_ARRAY;
            } else if (i9 == 2) {
                this.f40547c.skipValue();
                this.f40551g = "}";
                this.f40550f = JsonToken.END_OBJECT;
            }
        }
        return this;
    }

    @Override // g5.f
    public BigInteger a() throws IOException {
        Z();
        return new BigInteger(this.f40551g);
    }

    @Override // g5.f
    public byte c() throws IOException {
        Z();
        return Byte.parseByte(this.f40551g);
    }

    @Override // g5.f, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f40547c.close();
    }

    @Override // g5.f
    public String e() {
        if (this.f40549e.isEmpty()) {
            return null;
        }
        List<String> list = this.f40549e;
        return list.get(list.size() - 1);
    }

    @Override // g5.f
    public JsonToken j() {
        return this.f40550f;
    }

    @Override // g5.f
    public BigDecimal k() throws IOException {
        Z();
        return new BigDecimal(this.f40551g);
    }

    @Override // g5.f
    public double o() throws IOException {
        Z();
        return Double.parseDouble(this.f40551g);
    }

    @Override // g5.f
    public g5.c p() {
        return this.f40548d;
    }

    @Override // g5.f
    public float q() throws IOException {
        Z();
        return Float.parseFloat(this.f40551g);
    }

    @Override // g5.f
    public int r() throws IOException {
        Z();
        return Integer.parseInt(this.f40551g);
    }

    @Override // g5.f
    public long s() throws IOException {
        Z();
        return Long.parseLong(this.f40551g);
    }

    @Override // g5.f
    public short t() throws IOException {
        Z();
        return Short.parseShort(this.f40551g);
    }

    @Override // g5.f
    public String v() {
        return this.f40551g;
    }

    @Override // g5.f
    public JsonToken w() throws IOException {
        com.google.gson.stream.JsonToken jsonToken;
        JsonToken jsonToken2 = this.f40550f;
        if (jsonToken2 != null) {
            int i9 = a.f40552a[jsonToken2.ordinal()];
            if (i9 == 1) {
                this.f40547c.beginArray();
                this.f40549e.add(null);
            } else if (i9 == 2) {
                this.f40547c.beginObject();
                this.f40549e.add(null);
            }
        }
        try {
            jsonToken = this.f40547c.peek();
        } catch (EOFException unused) {
            jsonToken = com.google.gson.stream.JsonToken.END_DOCUMENT;
        }
        switch (a.f40553b[jsonToken.ordinal()]) {
            case 1:
                this.f40551g = "[";
                this.f40550f = JsonToken.START_ARRAY;
                break;
            case 2:
                this.f40551g = "]";
                this.f40550f = JsonToken.END_ARRAY;
                List<String> list = this.f40549e;
                list.remove(list.size() - 1);
                this.f40547c.endArray();
                break;
            case 3:
                this.f40551g = "{";
                this.f40550f = JsonToken.START_OBJECT;
                break;
            case 4:
                this.f40551g = "}";
                this.f40550f = JsonToken.END_OBJECT;
                List<String> list2 = this.f40549e;
                list2.remove(list2.size() - 1);
                this.f40547c.endObject();
                break;
            case 5:
                if (this.f40547c.nextBoolean()) {
                    this.f40551g = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
                    this.f40550f = JsonToken.VALUE_TRUE;
                    break;
                } else {
                    this.f40551g = Bugly.SDK_IS_DEV;
                    this.f40550f = JsonToken.VALUE_FALSE;
                    break;
                }
            case 6:
                this.f40551g = "null";
                this.f40550f = JsonToken.VALUE_NULL;
                this.f40547c.nextNull();
                break;
            case 7:
                this.f40551g = this.f40547c.nextString();
                this.f40550f = JsonToken.VALUE_STRING;
                break;
            case 8:
                String nextString = this.f40547c.nextString();
                this.f40551g = nextString;
                this.f40550f = nextString.indexOf(46) == -1 ? JsonToken.VALUE_NUMBER_INT : JsonToken.VALUE_NUMBER_FLOAT;
                break;
            case 9:
                this.f40551g = this.f40547c.nextName();
                this.f40550f = JsonToken.FIELD_NAME;
                List<String> list3 = this.f40549e;
                list3.set(list3.size() - 1, this.f40551g);
                break;
            default:
                this.f40551g = null;
                this.f40550f = null;
                break;
        }
        return this.f40550f;
    }
}
