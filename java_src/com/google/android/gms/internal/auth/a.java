package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f7878a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7879b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f7878a = iBinder;
        this.f7879b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f7878a;
    }
}
