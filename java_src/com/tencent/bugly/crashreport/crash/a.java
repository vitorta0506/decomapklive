package com.tencent.bugly.crashreport.crash;
/* loaded from: classes4.dex */
public final class a implements Comparable<a> {

    /* renamed from: a  reason: collision with root package name */
    public long f30285a = -1;

    /* renamed from: b  reason: collision with root package name */
    public long f30286b = -1;

    /* renamed from: c  reason: collision with root package name */
    public String f30287c = null;

    /* renamed from: d  reason: collision with root package name */
    public boolean f30288d = false;

    /* renamed from: e  reason: collision with root package name */
    public boolean f30289e = false;

    /* renamed from: f  reason: collision with root package name */
    public int f30290f = 0;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(a aVar) {
        int i9;
        a aVar2 = aVar;
        if (aVar2 == null || this.f30286b - aVar2.f30286b > 0) {
            return 1;
        }
        return i9 < 0 ? -1 : 0;
    }
}
