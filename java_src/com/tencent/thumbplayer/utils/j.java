package com.tencent.thumbplayer.utils;

import com.tencent.thumbplayer.api.TPAudioAttributes;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPJitterBufferConfig;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<Integer, Class> f34476a;

    static {
        HashMap<Integer, Class> hashMap = new HashMap<>();
        f34476a = hashMap;
        hashMap.put(414, TPAudioAttributes.class);
        hashMap.put(507, TPSubtitleRenderModel.class);
        hashMap.put(140, TPJitterBufferConfig.class);
    }

    public static boolean a(@TPCommonEnum.TPOptionalId int i9, Object obj) {
        Class cls;
        return (obj == null || (cls = f34476a.get(Integer.valueOf(i9))) == null || obj.getClass() != cls) ? false : true;
    }
}
