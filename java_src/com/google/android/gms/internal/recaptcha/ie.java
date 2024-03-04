package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.gh;
import java.io.InputStream;
/* loaded from: classes2.dex */
public abstract class ie<MessageType extends gh> implements nh<MessageType> {

    /* renamed from: a  reason: collision with root package name */
    private static final pf f8766a = pf.a();

    private static final MessageType e(MessageType messagetype) throws zzrr {
        if (messagetype == null || messagetype.H()) {
            return messagetype;
        }
        zzrr zzrrVar = new zzrr(new zztq(messagetype).getMessage());
        zzrrVar.zzh(messagetype);
        throw zzrrVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.nh
    public final /* bridge */ /* synthetic */ Object a(InputStream inputStream, pf pfVar) throws zzrr {
        MessageType d10 = d(inputStream, pfVar);
        e(d10);
        return d10;
    }

    @Override // com.google.android.gms.internal.recaptcha.nh
    public final /* bridge */ /* synthetic */ Object b(InputStream inputStream) throws zzrr {
        MessageType d10 = d(inputStream, f8766a);
        e(d10);
        return d10;
    }

    public final MessageType d(InputStream inputStream, pf pfVar) throws zzrr {
        bf afVar;
        int i9 = bf.f8534e;
        if (inputStream == null) {
            byte[] bArr = mg.f8880c;
            int length = bArr.length;
            afVar = bf.g(bArr, 0, 0, false);
        } else {
            afVar = new af(inputStream, 4096, null);
        }
        MessageType messagetype = (MessageType) c(afVar, pfVar);
        try {
            afVar.A(0);
            return messagetype;
        } catch (zzrr e10) {
            e10.zzh(messagetype);
            throw e10;
        }
    }
}
