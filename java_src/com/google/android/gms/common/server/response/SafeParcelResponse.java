package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;
import e4.k;
import e4.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    @NonNull
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new e();
    private final int zaa;
    private final Parcel zab;
    private final int zac = 2;
    private final zan zad;
    @Nullable
    private final String zae;
    private int zaf;
    private int zag;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SafeParcelResponse(int i9, Parcel parcel, zan zanVar) {
        this.zaa = i9;
        this.zab = (Parcel) p.j(parcel);
        this.zad = zanVar;
        this.zae = zanVar == null ? null : zanVar.I();
        this.zaf = 2;
    }

    private final void i(StringBuilder sb2, Map map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry entry : map.entrySet()) {
            sparseArray.put(((FastJsonResponse.Field) entry.getValue()).R(), entry);
        }
        sb2.append('{');
        int I = SafeParcelReader.I(parcel);
        boolean z10 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.u(B));
            if (entry2 != null) {
                if (z10) {
                    sb2.append(",");
                }
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb2.append("\"");
                sb2.append((String) entry2.getKey());
                sb2.append("\":");
                if (field.E0()) {
                    int i9 = field.f7831c;
                    switch (i9) {
                        case 0:
                            k(sb2, field, FastJsonResponse.f(field, Integer.valueOf(SafeParcelReader.D(parcel, B))));
                            break;
                        case 1:
                            k(sb2, field, FastJsonResponse.f(field, SafeParcelReader.c(parcel, B)));
                            break;
                        case 2:
                            k(sb2, field, FastJsonResponse.f(field, Long.valueOf(SafeParcelReader.E(parcel, B))));
                            break;
                        case 3:
                            k(sb2, field, FastJsonResponse.f(field, Float.valueOf(SafeParcelReader.z(parcel, B))));
                            break;
                        case 4:
                            k(sb2, field, FastJsonResponse.f(field, Double.valueOf(SafeParcelReader.x(parcel, B))));
                            break;
                        case 5:
                            k(sb2, field, FastJsonResponse.f(field, SafeParcelReader.a(parcel, B)));
                            break;
                        case 6:
                            k(sb2, field, FastJsonResponse.f(field, Boolean.valueOf(SafeParcelReader.v(parcel, B))));
                            break;
                        case 7:
                            k(sb2, field, FastJsonResponse.f(field, SafeParcelReader.o(parcel, B)));
                            break;
                        case 8:
                        case 9:
                            k(sb2, field, FastJsonResponse.f(field, SafeParcelReader.g(parcel, B)));
                            break;
                        case 10:
                            Bundle f10 = SafeParcelReader.f(parcel, B);
                            HashMap hashMap = new HashMap();
                            for (String str : f10.keySet()) {
                                hashMap.put(str, (String) p.j(f10.getString(str)));
                            }
                            k(sb2, field, FastJsonResponse.f(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            throw new IllegalArgumentException("Unknown field out type = " + i9);
                    }
                } else if (field.f7832d) {
                    sb2.append("[");
                    switch (field.f7831c) {
                        case 0:
                            e4.b.f(sb2, SafeParcelReader.j(parcel, B));
                            break;
                        case 1:
                            e4.b.h(sb2, SafeParcelReader.d(parcel, B));
                            break;
                        case 2:
                            e4.b.g(sb2, SafeParcelReader.k(parcel, B));
                            break;
                        case 3:
                            e4.b.e(sb2, SafeParcelReader.i(parcel, B));
                            break;
                        case 4:
                            e4.b.d(sb2, SafeParcelReader.h(parcel, B));
                            break;
                        case 5:
                            e4.b.h(sb2, SafeParcelReader.b(parcel, B));
                            break;
                        case 6:
                            e4.b.i(sb2, SafeParcelReader.e(parcel, B));
                            break;
                        case 7:
                            e4.b.j(sb2, SafeParcelReader.p(parcel, B));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] m10 = SafeParcelReader.m(parcel, B);
                            int length = m10.length;
                            for (int i10 = 0; i10 < length; i10++) {
                                if (i10 > 0) {
                                    sb2.append(",");
                                }
                                m10[i10].setDataPosition(0);
                                i(sb2, field.A0(), m10[i10]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb2.append("]");
                } else {
                    switch (field.f7831c) {
                        case 0:
                            sb2.append(SafeParcelReader.D(parcel, B));
                            break;
                        case 1:
                            sb2.append(SafeParcelReader.c(parcel, B));
                            break;
                        case 2:
                            sb2.append(SafeParcelReader.E(parcel, B));
                            break;
                        case 3:
                            sb2.append(SafeParcelReader.z(parcel, B));
                            break;
                        case 4:
                            sb2.append(SafeParcelReader.x(parcel, B));
                            break;
                        case 5:
                            sb2.append(SafeParcelReader.a(parcel, B));
                            break;
                        case 6:
                            sb2.append(SafeParcelReader.v(parcel, B));
                            break;
                        case 7:
                            String o10 = SafeParcelReader.o(parcel, B);
                            sb2.append("\"");
                            sb2.append(k.a(o10));
                            sb2.append("\"");
                            break;
                        case 8:
                            byte[] g10 = SafeParcelReader.g(parcel, B);
                            sb2.append("\"");
                            sb2.append(e4.c.a(g10));
                            sb2.append("\"");
                            break;
                        case 9:
                            byte[] g11 = SafeParcelReader.g(parcel, B);
                            sb2.append("\"");
                            sb2.append(e4.c.b(g11));
                            sb2.append("\"");
                            break;
                        case 10:
                            Bundle f11 = SafeParcelReader.f(parcel, B);
                            Set<String> keySet = f11.keySet();
                            sb2.append("{");
                            boolean z11 = true;
                            for (String str2 : keySet) {
                                if (!z11) {
                                    sb2.append(",");
                                }
                                sb2.append("\"");
                                sb2.append(str2);
                                sb2.append("\":\"");
                                sb2.append(k.a(f11.getString(str2)));
                                sb2.append("\"");
                                z11 = false;
                            }
                            sb2.append("}");
                            break;
                        case 11:
                            Parcel l10 = SafeParcelReader.l(parcel, B);
                            l10.setDataPosition(0);
                            i(sb2, field.A0(), l10);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z10 = true;
            }
        }
        if (parcel.dataPosition() == I) {
            sb2.append('}');
            return;
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + I, parcel);
    }

    private static final void j(StringBuilder sb2, int i9, @Nullable Object obj) {
        switch (i9) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb2.append(obj);
                return;
            case 7:
                sb2.append("\"");
                sb2.append(k.a(p.j(obj).toString()));
                sb2.append("\"");
                return;
            case 8:
                sb2.append("\"");
                sb2.append(e4.c.a((byte[]) obj));
                sb2.append("\"");
                return;
            case 9:
                sb2.append("\"");
                sb2.append(e4.c.b((byte[]) obj));
                sb2.append("\"");
                return;
            case 10:
                l.a(sb2, (HashMap) p.j(obj));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown type = " + i9);
        }
    }

    private static final void k(StringBuilder sb2, FastJsonResponse.Field field, Object obj) {
        if (field.f7830b) {
            ArrayList arrayList = (ArrayList) obj;
            sb2.append("[");
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                if (i9 != 0) {
                    sb2.append(",");
                }
                j(sb2, field.f7829a, arrayList.get(i9));
            }
            sb2.append("]");
            return;
        }
        j(sb2, field.f7829a, obj);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @Nullable
    public final Map<String, FastJsonResponse.Field<?, ?>> a() {
        zan zanVar = this.zad;
        if (zanVar == null) {
            return null;
        }
        return zanVar.K((String) p.j(this.zae));
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    @NonNull
    public final Object c(@NonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean e(@NonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @NonNull
    public final Parcel h() {
        int i9 = this.zaf;
        if (i9 == 0) {
            int a10 = x3.a.a(this.zab);
            this.zag = a10;
            x3.a.b(this.zab, a10);
            this.zaf = 2;
        } else if (i9 == 1) {
            x3.a.b(this.zab, this.zag);
            this.zaf = 2;
        }
        return this.zab;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @NonNull
    public final String toString() {
        p.k(this.zad, "Cannot convert to JSON on client side.");
        Parcel h10 = h();
        h10.setDataPosition(0);
        StringBuilder sb2 = new StringBuilder(100);
        i(sb2, (Map) p.j(this.zad.K((String) p.j(this.zae))), h10);
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        zan zanVar;
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.zaa);
        x3.a.o(parcel, 2, h(), false);
        int i10 = this.zac;
        if (i10 != 0) {
            zanVar = i10 != 1 ? this.zad : this.zad;
        } else {
            zanVar = null;
        }
        x3.a.p(parcel, 3, zanVar, i9, false);
        x3.a.b(parcel, a10);
    }
}
