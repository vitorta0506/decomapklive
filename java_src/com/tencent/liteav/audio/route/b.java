package com.tencent.liteav.audio.route;

import java.util.HashMap;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    final a f30817a;

    /* renamed from: b  reason: collision with root package name */
    boolean f30818b;

    /* renamed from: c  reason: collision with root package name */
    int f30819c;

    /* loaded from: classes4.dex */
    public enum a {
        NONE,
        EARPHONE,
        SPEAKERPHONE,
        WIRED_HEADSET,
        BLUETOOTH_HEADSET;
        

        /* renamed from: f  reason: collision with root package name */
        private static final HashMap<String, a> f30825f = new HashMap<String, a>() { // from class: com.tencent.liteav.audio.route.b.a.1
            {
                put("NONE", a.NONE);
                put("EARPHONE", a.EARPHONE);
                put("SPEAKERPHONE", a.SPEAKERPHONE);
                put("WIRED_HEADSET", a.WIRED_HEADSET);
                put("BLUETOOTH_HEADSET", a.BLUETOOTH_HEADSET);
            }
        };

        public static a a(String str) {
            a aVar = f30825f.get(str);
            return aVar == null ? NONE : aVar;
        }
    }

    public b(a aVar, int i9, boolean z10) {
        this.f30817a = aVar;
        this.f30819c = i9;
        this.f30818b = z10;
    }
}
