package com.tencent.thumbplayer.adapter.a;

import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
/* loaded from: classes4.dex */
public class c {

    /* loaded from: classes4.dex */
    public interface a {
        void a(TPAudioFrameBuffer tPAudioFrameBuffer);
    }

    /* loaded from: classes4.dex */
    public interface b {
        TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer);
    }

    /* renamed from: com.tencent.thumbplayer.adapter.a.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0340c {
        void b();
    }

    /* loaded from: classes4.dex */
    public interface d {
        TPRemoteSdpInfo a(String str, int i9);
    }

    /* loaded from: classes4.dex */
    public interface e {
        void a(TPPlayerDetailInfo tPPlayerDetailInfo);
    }

    /* loaded from: classes4.dex */
    public interface f {
        void a(@TPCommonEnum.TPErrorType int i9, int i10, long j10, long j11);
    }

    /* loaded from: classes4.dex */
    public interface g {
        void a(TPDrmInfo tPDrmInfo);
    }

    /* loaded from: classes4.dex */
    public interface h {
        void a(int i9, long j10, long j11, Object obj);
    }

    /* loaded from: classes4.dex */
    public interface i {
        void a();
    }

    /* loaded from: classes4.dex */
    public interface j {
        void c();
    }

    /* loaded from: classes4.dex */
    public interface k {
        void b(int i9, int i10);
    }

    /* loaded from: classes4.dex */
    public interface l {
        void a(TPSubtitleData tPSubtitleData);
    }

    /* loaded from: classes4.dex */
    public interface m {
        void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer);
    }

    /* loaded from: classes4.dex */
    public interface n {
        void a(TPVideoFrameBuffer tPVideoFrameBuffer);
    }

    /* loaded from: classes4.dex */
    public interface o {
        TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer);
    }

    /* loaded from: classes4.dex */
    public interface p {
        void a(long j10, long j11);
    }
}
