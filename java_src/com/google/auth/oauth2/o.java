package com.google.auth.oauth2;
/* loaded from: classes2.dex */
class o extends l {

    /* renamed from: c  reason: collision with root package name */
    private final String f11683c;

    /* renamed from: d  reason: collision with root package name */
    private final String f11684d;

    /* renamed from: e  reason: collision with root package name */
    private final String f11685e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(String str, String str2, String str3) {
        this.f11683c = (String) com.google.common.base.o.s(str);
        this.f11684d = str2;
        this.f11685e = str3;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb2 = new StringBuilder("Error code " + this.f11683c);
        if (this.f11684d != null) {
            sb2.append(": ");
            sb2.append(this.f11684d);
        }
        if (this.f11685e != null) {
            sb2.append(" - ");
            sb2.append(this.f11685e);
        }
        return sb2.toString();
    }
}
