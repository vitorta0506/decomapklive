package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class u1 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f8358e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f8359f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Context f8360g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ Bundle f8361h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ w2 f8362i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u1(w2 w2Var, String str, String str2, Context context, Bundle bundle) {
        super(w2Var, true);
        this.f8362i = w2Var;
        this.f8358e = str;
        this.f8359f = str2;
        this.f8360g = context;
        this.f8361h = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    public final void b() {
        boolean p10;
        String str;
        String str2;
        String str3;
        e1 e1Var;
        int b10;
        e1 e1Var2;
        String str4;
        String str5;
        try {
            w2 w2Var = this.f8362i;
            p10 = w2.p(this.f8358e, this.f8359f);
            if (p10) {
                String str6 = this.f8359f;
                String str7 = this.f8358e;
                str5 = this.f8362i.f8391a;
                str2 = str7;
                str3 = str6;
                str = str5;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            com.google.android.gms.common.internal.p.j(this.f8360g);
            w2 w2Var2 = this.f8362i;
            w2Var2.f8399i = w2Var2.u(this.f8360g, true);
            e1Var = this.f8362i.f8399i;
            if (e1Var == null) {
                str4 = this.f8362i.f8391a;
                Log.w(str4, "Failed to connect to measurement client.");
                return;
            }
            int a10 = DynamiteModule.a(this.f8360g, ModuleDescriptor.MODULE_ID);
            zzcl zzclVar = new zzcl(73000L, Math.max(a10, b10), DynamiteModule.b(this.f8360g, ModuleDescriptor.MODULE_ID) < a10, str, str2, str3, this.f8361h, p4.l.a(this.f8360g));
            e1Var2 = this.f8362i.f8399i;
            ((e1) com.google.android.gms.common.internal.p.j(e1Var2)).initialize(h4.b.E0(this.f8360g), zzclVar, this.f8175a);
        } catch (Exception e10) {
            this.f8362i.m(e10, true, false);
        }
    }
}
