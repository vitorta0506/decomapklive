package com.guochao.component.voiceliveroom.model;

import android.net.Uri;
import com.guochao.component.liveroom.R$mipmap;
import com.guochao.faceshow.context.GCApplication;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"URL", "", "staticImgs", "", "appStatic", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;", "currentUrl", "component_liveroom_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomBackgroundModelKt {
    @NotNull
    private static final String URL = "https://fsveg.buzzcast.info/app_static/voice_room_bg/";
    @NotNull
    private static final List<String> staticImgs;

    static {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"http://mp4.gchao.com/group1/M00/01/2B/aOhHF2NV6XuABwn-AAMx3rA7fjU430.png", "http://mp4.gchao.com/group1/M00/01/2C/aOhHF2NXOneATXDRAAjc-vzGGYg667.png", "http://mp4.gchao.com/group1/M00/01/2C/aOhHF2NXOnqAVklUAAOw-2Jc6r8536.png", "http://mp4.gchao.com/group1/M00/01/30/aOhHF2NbfYuACcSQAAaGfBITLv0082.png", "http://mp4.gchao.com/group1/M00/01/2B/aOhHF2NV6ZmAGf5XAAkWQZujCdI874.png"});
        staticImgs = listOf;
    }

    @NotNull
    public static final List<VoiceRoomBackgroundModel> appStatic(@Nullable String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VoiceRoomBackgroundModel(-1, Uri.parse("android.resource://" + GCApplication.app().getPackageName() + IOUtils.DIR_SEPARATOR_UNIX + R$mipmap.voice_room_create_bg), (str == null || str.length() == 0) ? 1 : 0, 0, 8, null));
        int i9 = 0;
        for (Object obj : staticImgs) {
            int i10 = i9 + 1;
            if (i9 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String str2 = (String) obj;
            arrayList.add(new VoiceRoomBackgroundModel(i9, Uri.parse(str2), Intrinsics.areEqual(str2, str) ? 1 : 0, 0, 8, null));
            i9 = i10;
        }
        return arrayList;
    }
}
