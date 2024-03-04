package com.tencent.liteav.txcvodplayer.renderer;

import android.view.Surface;
import android.view.View;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
/* loaded from: classes4.dex */
public interface a {

    /* renamed from: com.tencent.liteav.txcvodplayer.renderer.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0327a {
        void a(b bVar);

        void a(b bVar, int i9, int i10);

        void b(b bVar);
    }

    /* loaded from: classes4.dex */
    public interface b {
        a a();

        void a(ITXVCubePlayer iTXVCubePlayer);

        Surface b();

        Surface c();
    }

    void a(int i9, int i10);

    void a(InterfaceC0327a interfaceC0327a);

    boolean a();

    void b(int i9, int i10);

    void b(InterfaceC0327a interfaceC0327a);

    View getView();

    void setAspectRatio(int i9);

    void setVideoRotation(int i9);
}
