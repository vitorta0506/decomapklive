package com.tencent.thumbplayer.adapter.a.a;

import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.core.common.TPSubtitleFrame;
import java.util.Map;
/* loaded from: classes4.dex */
public interface a {

    /* renamed from: com.tencent.thumbplayer.adapter.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0337a {
        void a(e eVar);

        void a(TPSubtitleFrame tPSubtitleFrame);

        void a(String str);
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(int i9, int i10);
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a(int i9, long j10);

        void a(long j10);
    }

    /* loaded from: classes4.dex */
    public interface d {
        long a();
    }

    /* loaded from: classes4.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        String f33477a;

        public e(String str) {
            this.f33477a = str;
        }
    }

    void a();

    void a(int i9);

    void a(InterfaceC0337a interfaceC0337a);

    void a(b bVar);

    void a(c cVar);

    void a(d dVar);

    void a(TPSubtitleRenderModel tPSubtitleRenderModel);

    void a(String str, Map<String, String> map, long j10);

    void b();

    void c();

    void d();

    void e();

    void f();
}
