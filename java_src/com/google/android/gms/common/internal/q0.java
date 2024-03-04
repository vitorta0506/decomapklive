package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2.dex */
public final class q0 extends RemoteCreator {

    /* renamed from: c  reason: collision with root package name */
    private static final q0 f7772c = new q0();

    private q0() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View c(Context context, int i9, int i10) throws RemoteCreator.RemoteCreatorException {
        q0 q0Var = f7772c;
        try {
            zax zaxVar = new zax(1, i9, i10, null);
            return (View) h4.b.D0(((h0) q0Var.b(context)).G0(h4.b.E0(context), zaxVar));
        } catch (Exception e10) {
            throw new RemoteCreator.RemoteCreatorException("Could not get button with size " + i9 + " and color " + i10, e10);
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return queryLocalInterface instanceof h0 ? (h0) queryLocalInterface : new h0(iBinder);
    }
}
