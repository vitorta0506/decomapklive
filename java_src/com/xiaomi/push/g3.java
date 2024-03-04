package com.xiaomi.push;

import android.content.SharedPreferences;
import com.xiaomi.push.f3;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class g3 extends f3.b {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f36880b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f36881c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ f3 f36882d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g3(f3 f3Var, f3.a aVar, boolean z10, String str) {
        super(aVar);
        this.f36882d = f3Var;
        this.f36880b = z10;
        this.f36881c = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.xiaomi.push.f3.b
    public void b() {
        super.b();
    }

    @Override // com.xiaomi.push.f3.b
    void c() {
        SharedPreferences sharedPreferences;
        if (this.f36880b) {
            return;
        }
        sharedPreferences = this.f36882d.f36878d;
        sharedPreferences.edit().putLong(this.f36881c, System.currentTimeMillis()).commit();
    }
}
