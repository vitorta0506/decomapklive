package com.guochao.faceshow.aaspring.debug;

import com.guochao.faceshow.aaspring.debug.DebugService;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static a f16416b;

    /* renamed from: a  reason: collision with root package name */
    DebugService.c f16417a;

    public static a b() {
        if (f16416b == null) {
            f16416b = new a();
        }
        return f16416b;
    }

    public void a(String str, String str2) {
        DebugService.c cVar = this.f16417a;
        if (cVar != null) {
            cVar.a(str, str2.toString());
        }
    }
}
