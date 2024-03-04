package d9;

import com.guochao.faceshow.utils.BaseConfig;
/* loaded from: classes3.dex */
public interface c extends g {

    /* renamed from: d0  reason: collision with root package name */
    public static final String f37999d0;

    static {
        f37999d0 = !BaseConfig.isChinese() ? "com.guochao.faceshow.live.timeout_v2" : "com.guochao.zaime.live.timeout";
    }

    void C();

    void e1();

    void j0();

    void setFreeLinkMic(boolean z10);

    void setLinkMicEnabled(boolean z10);

    void setLiveResolution(int i9);

    void setMirror(boolean z10);

    void w0(String str, String str2, String str3, boolean z10);
}
