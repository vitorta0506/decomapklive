package com.google.android.gms.internal.recaptcha;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
import kotlin.UByte;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2.dex */
final class e9<K, V> extends zzkl<K, V> {

    /* renamed from: d  reason: collision with root package name */
    static final zzkl<Object, Object> f8638d = new e9(null, new Object[0], 0);

    /* renamed from: a  reason: collision with root package name */
    private final transient Object f8639a;

    /* renamed from: b  reason: collision with root package name */
    final transient Object[] f8640b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f8641c;

    private e9(Object obj, Object[] objArr, int i9) {
        this.f8639a = obj;
        this.f8640b = objArr;
        this.f8641c = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
        r2[r6] = (byte) r3;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0099, code lost:
        r2[r6] = (short) r3;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ce, code lost:
        r2[r7] = r3;
        r1 = r1 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[]] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v0, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <K, V> com.google.android.gms.internal.recaptcha.e9<K, V> a(int r10, java.lang.Object[] r11) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.e9.a(int, java.lang.Object[]):com.google.android.gms.internal.recaptcha.e9");
    }

    private static IllegalArgumentException b(Object obj, Object obj2, Object[] objArr, int i9) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i9]);
        String valueOf4 = String.valueOf(objArr[i9 ^ 1]);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        StringBuilder sb2 = new StringBuilder(length + 39 + length2 + valueOf3.length() + valueOf4.length());
        sb2.append("Multiple entries with same key: ");
        sb2.append(valueOf);
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb2.append(valueOf2);
        sb2.append(" and ");
        sb2.append(valueOf3);
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb2.append(valueOf4);
        return new IllegalArgumentException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkl, java.util.Map
    @NullableDecl
    public final V get(@NullableDecl Object obj) {
        Object obj2 = this.f8639a;
        Object[] objArr = this.f8640b;
        int i9 = this.f8641c;
        if (obj == null) {
            return null;
        }
        if (i9 == 1) {
            if (objArr[0].equals(obj)) {
                return (V) objArr[1];
            }
            return null;
        } else if (obj2 == null) {
            return null;
        } else {
            if (obj2 instanceof byte[]) {
                byte[] bArr = (byte[]) obj2;
                int length = bArr.length - 1;
                int a10 = n8.a(obj.hashCode());
                while (true) {
                    int i10 = a10 & length;
                    int i11 = bArr[i10] & UByte.MAX_VALUE;
                    if (i11 == 255) {
                        return null;
                    }
                    if (objArr[i11].equals(obj)) {
                        return (V) objArr[i11 ^ 1];
                    }
                    a10 = i10 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length - 1;
                int a11 = n8.a(obj.hashCode());
                while (true) {
                    int i12 = a11 & length2;
                    char c10 = (char) sArr[i12];
                    if (c10 == 65535) {
                        return null;
                    }
                    if (objArr[c10].equals(obj)) {
                        return (V) objArr[c10 ^ 1];
                    }
                    a11 = i12 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length - 1;
                int a12 = n8.a(obj.hashCode());
                while (true) {
                    int i13 = a12 & length3;
                    int i14 = iArr[i13];
                    if (i14 == -1) {
                        return null;
                    }
                    if (objArr[i14].equals(obj)) {
                        return (V) objArr[i14 ^ 1];
                    }
                    a12 = i13 + 1;
                }
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.f8641c;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkl
    final zzke<V> zza() {
        return new d9(this.f8640b, 1, this.f8641c);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkl
    final zzkn<Map.Entry<K, V>> zzd() {
        return new b9(this, this.f8640b, 0, this.f8641c);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkl
    final zzkn<K> zze() {
        return new c9(this, new d9(this.f8640b, 0, this.f8641c));
    }
}
