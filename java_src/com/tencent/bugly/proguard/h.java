package com.tencent.bugly.proguard;

import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private StringBuilder f30577a;

    /* renamed from: b  reason: collision with root package name */
    private int f30578b;

    public h(StringBuilder sb2, int i9) {
        this.f30577a = sb2;
        this.f30578b = i9;
    }

    private void a(String str) {
        for (int i9 = 0; i9 < this.f30578b; i9++) {
            this.f30577a.append('\t');
        }
        if (str != null) {
            StringBuilder sb2 = this.f30577a;
            sb2.append(str);
            sb2.append(": ");
        }
    }

    public final h a(boolean z10, String str) {
        a(str);
        StringBuilder sb2 = this.f30577a;
        sb2.append(z10 ? 'T' : 'F');
        sb2.append('\n');
        return this;
    }

    public final h a(byte b10, String str) {
        a(str);
        StringBuilder sb2 = this.f30577a;
        sb2.append((int) b10);
        sb2.append('\n');
        return this;
    }

    public final h a(short s10, String str) {
        a(str);
        StringBuilder sb2 = this.f30577a;
        sb2.append((int) s10);
        sb2.append('\n');
        return this;
    }

    public final h a(int i9, String str) {
        a(str);
        StringBuilder sb2 = this.f30577a;
        sb2.append(i9);
        sb2.append('\n');
        return this;
    }

    public final h a(long j10, String str) {
        a(str);
        StringBuilder sb2 = this.f30577a;
        sb2.append(j10);
        sb2.append('\n');
        return this;
    }

    public final h a(String str, String str2) {
        a(str2);
        if (str == null) {
            this.f30577a.append("null\n");
        } else {
            StringBuilder sb2 = this.f30577a;
            sb2.append(str);
            sb2.append('\n');
        }
        return this;
    }

    public final h a(byte[] bArr, String str) {
        a(str);
        if (bArr == null) {
            this.f30577a.append("null\n");
            return this;
        } else if (bArr.length == 0) {
            StringBuilder sb2 = this.f30577a;
            sb2.append(bArr.length);
            sb2.append(", []\n");
            return this;
        } else {
            StringBuilder sb3 = this.f30577a;
            sb3.append(bArr.length);
            sb3.append(", [\n");
            h hVar = new h(this.f30577a, this.f30578b + 1);
            for (byte b10 : bArr) {
                hVar.a(null);
                StringBuilder sb4 = hVar.f30577a;
                sb4.append((int) b10);
                sb4.append('\n');
            }
            a(null);
            StringBuilder sb5 = this.f30577a;
            sb5.append(']');
            sb5.append('\n');
            return this;
        }
    }

    public final <K, V> h a(Map<K, V> map, String str) {
        a(str);
        if (map == null) {
            this.f30577a.append("null\n");
            return this;
        } else if (map.isEmpty()) {
            StringBuilder sb2 = this.f30577a;
            sb2.append(map.size());
            sb2.append(", {}\n");
            return this;
        } else {
            StringBuilder sb3 = this.f30577a;
            sb3.append(map.size());
            sb3.append(", {\n");
            h hVar = new h(this.f30577a, this.f30578b + 1);
            h hVar2 = new h(this.f30577a, this.f30578b + 2);
            for (Map.Entry<K, V> entry : map.entrySet()) {
                hVar.a(null);
                StringBuilder sb4 = hVar.f30577a;
                sb4.append('(');
                sb4.append('\n');
                hVar2.a((h) entry.getKey(), (String) null);
                hVar2.a((h) entry.getValue(), (String) null);
                hVar.a(null);
                StringBuilder sb5 = hVar.f30577a;
                sb5.append(')');
                sb5.append('\n');
            }
            a(null);
            StringBuilder sb6 = this.f30577a;
            sb6.append('}');
            sb6.append('\n');
            return this;
        }
    }

    private <T> h a(T[] tArr, String str) {
        a(str);
        if (tArr == null) {
            this.f30577a.append("null\n");
            return this;
        } else if (tArr.length == 0) {
            StringBuilder sb2 = this.f30577a;
            sb2.append(tArr.length);
            sb2.append(", []\n");
            return this;
        } else {
            StringBuilder sb3 = this.f30577a;
            sb3.append(tArr.length);
            sb3.append(", [\n");
            h hVar = new h(this.f30577a, this.f30578b + 1);
            for (T t10 : tArr) {
                hVar.a((h) t10, (String) null);
            }
            a(null);
            StringBuilder sb4 = this.f30577a;
            sb4.append(']');
            sb4.append('\n');
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> h a(T t10, String str) {
        if (t10 == null) {
            this.f30577a.append("null\n");
        } else if (t10 instanceof Byte) {
            byte byteValue = ((Byte) t10).byteValue();
            a(str);
            StringBuilder sb2 = this.f30577a;
            sb2.append((int) byteValue);
            sb2.append('\n');
        } else if (t10 instanceof Boolean) {
            boolean booleanValue = ((Boolean) t10).booleanValue();
            a(str);
            StringBuilder sb3 = this.f30577a;
            sb3.append(booleanValue ? 'T' : 'F');
            sb3.append('\n');
        } else if (t10 instanceof Short) {
            short shortValue = ((Short) t10).shortValue();
            a(str);
            StringBuilder sb4 = this.f30577a;
            sb4.append((int) shortValue);
            sb4.append('\n');
        } else if (t10 instanceof Integer) {
            int intValue = ((Integer) t10).intValue();
            a(str);
            StringBuilder sb5 = this.f30577a;
            sb5.append(intValue);
            sb5.append('\n');
        } else if (t10 instanceof Long) {
            long longValue = ((Long) t10).longValue();
            a(str);
            StringBuilder sb6 = this.f30577a;
            sb6.append(longValue);
            sb6.append('\n');
        } else if (t10 instanceof Float) {
            float floatValue = ((Float) t10).floatValue();
            a(str);
            StringBuilder sb7 = this.f30577a;
            sb7.append(floatValue);
            sb7.append('\n');
        } else if (t10 instanceof Double) {
            double doubleValue = ((Double) t10).doubleValue();
            a(str);
            StringBuilder sb8 = this.f30577a;
            sb8.append(doubleValue);
            sb8.append('\n');
        } else if (t10 instanceof String) {
            a((String) t10, str);
        } else if (t10 instanceof Map) {
            a((Map) t10, str);
        } else if (t10 instanceof List) {
            a(((List) t10).toArray(), str);
        } else if (t10 instanceof k) {
            a((k) t10, str);
        } else if (t10 instanceof byte[]) {
            a((byte[]) t10, str);
        } else if (t10 instanceof boolean[]) {
            a((h) ((boolean[]) t10), str);
        } else {
            int i9 = 0;
            if (t10 instanceof short[]) {
                short[] sArr = (short[]) t10;
                a(str);
                if (sArr.length == 0) {
                    StringBuilder sb9 = this.f30577a;
                    sb9.append(sArr.length);
                    sb9.append(", []\n");
                } else {
                    StringBuilder sb10 = this.f30577a;
                    sb10.append(sArr.length);
                    sb10.append(", [\n");
                    h hVar = new h(this.f30577a, this.f30578b + 1);
                    int length = sArr.length;
                    while (i9 < length) {
                        short s10 = sArr[i9];
                        hVar.a(null);
                        StringBuilder sb11 = hVar.f30577a;
                        sb11.append((int) s10);
                        sb11.append('\n');
                        i9++;
                    }
                    a(null);
                    StringBuilder sb12 = this.f30577a;
                    sb12.append(']');
                    sb12.append('\n');
                }
            } else if (t10 instanceof int[]) {
                int[] iArr = (int[]) t10;
                a(str);
                if (iArr.length == 0) {
                    StringBuilder sb13 = this.f30577a;
                    sb13.append(iArr.length);
                    sb13.append(", []\n");
                } else {
                    StringBuilder sb14 = this.f30577a;
                    sb14.append(iArr.length);
                    sb14.append(", [\n");
                    h hVar2 = new h(this.f30577a, this.f30578b + 1);
                    int length2 = iArr.length;
                    while (i9 < length2) {
                        int i10 = iArr[i9];
                        hVar2.a(null);
                        StringBuilder sb15 = hVar2.f30577a;
                        sb15.append(i10);
                        sb15.append('\n');
                        i9++;
                    }
                    a(null);
                    StringBuilder sb16 = this.f30577a;
                    sb16.append(']');
                    sb16.append('\n');
                }
            } else if (t10 instanceof long[]) {
                long[] jArr = (long[]) t10;
                a(str);
                if (jArr.length == 0) {
                    StringBuilder sb17 = this.f30577a;
                    sb17.append(jArr.length);
                    sb17.append(", []\n");
                } else {
                    StringBuilder sb18 = this.f30577a;
                    sb18.append(jArr.length);
                    sb18.append(", [\n");
                    h hVar3 = new h(this.f30577a, this.f30578b + 1);
                    int length3 = jArr.length;
                    while (i9 < length3) {
                        long j10 = jArr[i9];
                        hVar3.a(null);
                        StringBuilder sb19 = hVar3.f30577a;
                        sb19.append(j10);
                        sb19.append('\n');
                        i9++;
                    }
                    a(null);
                    StringBuilder sb20 = this.f30577a;
                    sb20.append(']');
                    sb20.append('\n');
                }
            } else if (t10 instanceof float[]) {
                float[] fArr = (float[]) t10;
                a(str);
                if (fArr.length == 0) {
                    StringBuilder sb21 = this.f30577a;
                    sb21.append(fArr.length);
                    sb21.append(", []\n");
                } else {
                    StringBuilder sb22 = this.f30577a;
                    sb22.append(fArr.length);
                    sb22.append(", [\n");
                    h hVar4 = new h(this.f30577a, this.f30578b + 1);
                    int length4 = fArr.length;
                    while (i9 < length4) {
                        float f10 = fArr[i9];
                        hVar4.a(null);
                        StringBuilder sb23 = hVar4.f30577a;
                        sb23.append(f10);
                        sb23.append('\n');
                        i9++;
                    }
                    a(null);
                    StringBuilder sb24 = this.f30577a;
                    sb24.append(']');
                    sb24.append('\n');
                }
            } else if (t10 instanceof double[]) {
                double[] dArr = (double[]) t10;
                a(str);
                if (dArr.length == 0) {
                    StringBuilder sb25 = this.f30577a;
                    sb25.append(dArr.length);
                    sb25.append(", []\n");
                } else {
                    StringBuilder sb26 = this.f30577a;
                    sb26.append(dArr.length);
                    sb26.append(", [\n");
                    h hVar5 = new h(this.f30577a, this.f30578b + 1);
                    int length5 = dArr.length;
                    while (i9 < length5) {
                        double d10 = dArr[i9];
                        hVar5.a(null);
                        StringBuilder sb27 = hVar5.f30577a;
                        sb27.append(d10);
                        sb27.append('\n');
                        i9++;
                    }
                    a(null);
                    StringBuilder sb28 = this.f30577a;
                    sb28.append(']');
                    sb28.append('\n');
                }
            } else if (t10.getClass().isArray()) {
                a((Object[]) t10, str);
            } else {
                throw new b("write object error: unsupport type.");
            }
        }
        return this;
    }

    public final h a(k kVar, String str) {
        a(str);
        StringBuilder sb2 = this.f30577a;
        sb2.append('{');
        sb2.append('\n');
        if (kVar == null) {
            StringBuilder sb3 = this.f30577a;
            sb3.append('\t');
            sb3.append("null");
        } else {
            kVar.a(this.f30577a, this.f30578b + 1);
        }
        a(null);
        StringBuilder sb4 = this.f30577a;
        sb4.append('}');
        sb4.append('\n');
        return this;
    }
}
