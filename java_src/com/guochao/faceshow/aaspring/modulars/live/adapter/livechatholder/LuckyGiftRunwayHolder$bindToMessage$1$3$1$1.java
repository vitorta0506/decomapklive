package com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder;

import com.guochao.faceshow.gift.controller.GiftRunwayScrollEndEvent;
import kotlin.Metadata;
import org.greenrobot.eventbus.EventBus;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LuckyGiftRunwayHolder$bindToMessage$1$3$1$1 implements Runnable {
    public static final LuckyGiftRunwayHolder$bindToMessage$1$3$1$1 INSTANCE = new LuckyGiftRunwayHolder$bindToMessage$1$3$1$1();

    LuckyGiftRunwayHolder$bindToMessage$1$3$1$1() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        EventBus.getDefault().post(new GiftRunwayScrollEndEvent());
    }
}
