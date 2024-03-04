package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.dg;
import com.google.android.gms.internal.recaptcha.zf;
/* loaded from: classes2.dex */
public class zf<MessageType extends dg<MessageType, BuilderType>, BuilderType extends zf<MessageType, BuilderType>> extends fe<MessageType, BuilderType> {

    /* renamed from: a  reason: collision with root package name */
    private final MessageType f9239a;

    /* renamed from: b  reason: collision with root package name */
    protected MessageType f9240b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f9241c = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public zf(MessageType messagetype) {
        this.f9239a = messagetype;
        this.f9240b = (MessageType) messagetype.m(4, null, null);
    }

    private static final void i(MessageType messagetype, MessageType messagetype2) {
        ph.a().b(messagetype.getClass()).f(messagetype, messagetype2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.recaptcha.fe
    protected final /* bridge */ /* synthetic */ fe g(ge geVar) {
        k((dg) geVar);
        return this;
    }

    @Override // com.google.android.gms.internal.recaptcha.hh
    public final /* bridge */ /* synthetic */ gh h() {
        return this.f9239a;
    }

    /* renamed from: j */
    public final BuilderType clone() {
        BuilderType buildertype = (BuilderType) this.f9239a.m(5, null, null);
        buildertype.k(F());
        return buildertype;
    }

    public final BuilderType k(MessageType messagetype) {
        if (this.f9241c) {
            n();
            this.f9241c = false;
        }
        i(this.f9240b, messagetype);
        return this;
    }

    public final MessageType l() {
        MessageType F = F();
        if (F.H()) {
            return F;
        }
        throw new zztq(F);
    }

    @Override // com.google.android.gms.internal.recaptcha.fh
    /* renamed from: m */
    public MessageType F() {
        if (this.f9241c) {
            return this.f9240b;
        }
        MessageType messagetype = this.f9240b;
        ph.a().b(messagetype.getClass()).c(messagetype);
        this.f9241c = true;
        return this.f9240b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n() {
        MessageType messagetype = (MessageType) this.f9240b.m(4, null, null);
        i(messagetype, this.f9240b);
        this.f9240b = messagetype;
    }
}
