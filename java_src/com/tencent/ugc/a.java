package com.tencent.ugc;

import com.tencent.liteav.sdk.common.LicenseChecker;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class a implements LicenseChecker.b {

    /* renamed from: a  reason: collision with root package name */
    private static final a f34684a = new a();

    private a() {
    }

    public static LicenseChecker.b a() {
        return f34684a;
    }

    @Override // com.tencent.liteav.sdk.common.LicenseChecker.b
    public final void a(int i9, String str) {
        TXUGCBase.lambda$setLicence$0(i9, str);
    }
}
