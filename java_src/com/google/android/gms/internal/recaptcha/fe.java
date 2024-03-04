package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.fe;
import com.google.android.gms.internal.recaptcha.ge;
/* loaded from: classes2.dex */
public abstract class fe<MessageType extends ge<MessageType, BuilderType>, BuilderType extends fe<MessageType, BuilderType>> implements fh {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.recaptcha.fh
    public final /* bridge */ /* synthetic */ fh C0(gh ghVar) {
        if (h().getClass().isInstance(ghVar)) {
            return g((ge) ghVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    protected abstract BuilderType g(MessageType messagetype);
}
