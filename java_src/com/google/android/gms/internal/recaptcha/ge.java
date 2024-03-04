package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.fe;
import com.google.android.gms.internal.recaptcha.ge;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class ge<MessageType extends ge<MessageType, BuilderType>, BuilderType extends fe<MessageType, BuilderType>> implements gh {
    protected int zza = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void g(Iterable<T> iterable, List<? super T> list) {
        mg.e(iterable);
        if (iterable instanceof qg) {
            List<?> a10 = ((qg) iterable).a();
            qg qgVar = (qg) list;
            int size = list.size();
            for (Object obj : a10) {
                if (obj == null) {
                    int size2 = qgVar.size();
                    StringBuilder sb2 = new StringBuilder(37);
                    sb2.append("Element at index ");
                    sb2.append(size2 - size);
                    sb2.append(" is null.");
                    String sb3 = sb2.toString();
                    int size3 = qgVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        qgVar.remove(size3);
                    }
                    throw new NullPointerException(sb3);
                } else if (obj instanceof zzpy) {
                    qgVar.h0((zzpy) obj);
                } else {
                    qgVar.add((String) obj);
                }
            }
        } else if (!(iterable instanceof oh)) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
            }
            int size4 = list.size();
            for (T t10 : iterable) {
                if (t10 == 0) {
                    int size5 = list.size();
                    StringBuilder sb4 = new StringBuilder(37);
                    sb4.append("Element at index ");
                    sb4.append(size5 - size4);
                    sb4.append(" is null.");
                    String sb5 = sb4.toString();
                    int size6 = list.size();
                    while (true) {
                        size6--;
                        if (size6 < size4) {
                            break;
                        }
                        list.remove(size6);
                    }
                    throw new NullPointerException(sb5);
                }
                list.add(t10);
            }
        } else {
            list.addAll(iterable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        throw null;
    }

    @Override // com.google.android.gms.internal.recaptcha.gh
    public final void d(OutputStream outputStream) throws IOException {
        hf o10 = hf.o(outputStream, hf.i(K()));
        a(o10);
        o10.s();
    }

    @Override // com.google.android.gms.internal.recaptcha.gh
    public final zzpy e() {
        try {
            int K = K();
            zzpy zzpyVar = zzpy.zzb;
            byte[] bArr = new byte[K];
            hf n9 = hf.n(bArr);
            a(n9);
            return te.a(n9, bArr);
        } catch (IOException e10) {
            String name = getClass().getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 72);
            sb2.append("Serializing ");
            sb2.append(name);
            sb2.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb2.toString(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(int i9) {
        throw null;
    }
}
