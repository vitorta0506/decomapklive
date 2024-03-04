package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.h7;
import com.google.android.gms.internal.measurement.i7;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class i7<MessageType extends i7<MessageType, BuilderType>, BuilderType extends h7<MessageType, BuilderType>> implements z9 {
    protected int zzb = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    public static void h(Iterable iterable, List list) {
        e9.e(iterable);
        if (iterable instanceof h9) {
            List a10 = ((h9) iterable).a();
            h9 h9Var = (h9) list;
            int size = list.size();
            for (Object obj : a10) {
                if (obj == null) {
                    int size2 = h9Var.size();
                    String str = "Element at index " + (size2 - size) + " is null.";
                    int size3 = h9Var.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        h9Var.remove(size3);
                    }
                    throw new NullPointerException(str);
                } else if (obj instanceof zzjd) {
                    h9Var.U0((zzjd) obj);
                } else {
                    h9Var.add((String) obj);
                }
            }
        } else if (!(iterable instanceof ga)) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size4 = list.size();
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    int size5 = list.size();
                    String str2 = "Element at index " + (size5 - size4) + " is null.";
                    int size6 = list.size();
                    while (true) {
                        size6--;
                        if (size6 < size4) {
                            break;
                        }
                        list.remove(size6);
                    }
                    throw new NullPointerException(str2);
                }
                list.add(obj2);
            }
        } else {
            list.addAll((Collection) iterable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.z9
    public final zzjd e() {
        try {
            int g10 = g();
            zzjd zzjdVar = zzjd.zzb;
            byte[] bArr = new byte[g10];
            f8 c10 = f8.c(bArr);
            d(c10);
            c10.d();
            return new w7(bArr);
        } catch (IOException e10) {
            String name = getClass().getName();
            throw new RuntimeException("Serializing " + name + " to a ByteString threw an IOException (should never happen).", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(int i9) {
        throw null;
    }

    public final byte[] j() {
        try {
            byte[] bArr = new byte[g()];
            f8 c10 = f8.c(bArr);
            d(c10);
            c10.d();
            return bArr;
        } catch (IOException e10) {
            String name = getClass().getName();
            throw new RuntimeException("Serializing " + name + " to a byte array threw an IOException (should never happen).", e10);
        }
    }
}
