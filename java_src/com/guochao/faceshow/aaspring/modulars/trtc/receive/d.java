package com.guochao.faceshow.aaspring.modulars.trtc.receive;

import android.os.Bundle;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static d f22103b;

    /* renamed from: a  reason: collision with root package name */
    private List<a> f22104a = new CopyOnWriteArrayList();

    /* loaded from: classes3.dex */
    public interface a {
        void A1(int i9);

        void E1(String str);

        void I(String str, String str2, CallModel callModel);

        void K0(String str, String str2, CallModel callModel);

        void L0(String str, int i9, int i10, int i11);

        void O0(String str, List<String> list, CallModel callModel);

        void R(String str, int i9);

        void R0(String str, boolean z10);

        void f1(long j10);

        void j1(CallModel callModel);

        void n1(String str, String str2, CallModel callModel);

        void o(CallModel callModel);

        void s1(CallModel callModel);

        void v(String str, String str2, CallModel callModel);

        void v1(int i9, String str, Bundle bundle);

        void w1(String str, boolean z10);
    }

    private d() {
    }

    public static d a() {
        if (f22103b == null) {
            synchronized (d.class) {
                if (f22103b == null) {
                    f22103b = new d();
                }
            }
        }
        return f22103b;
    }

    public List<a> b() {
        return this.f22104a;
    }

    public void c(a aVar) {
        this.f22104a.add(aVar);
    }

    public void d(a aVar) {
        this.f22104a.remove(aVar);
    }
}
