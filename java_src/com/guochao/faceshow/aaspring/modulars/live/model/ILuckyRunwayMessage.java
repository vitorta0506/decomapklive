package com.guochao.faceshow.aaspring.modulars.live.model;

import com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/model/ILuckyRunwayMessage;", "", "diamonds", "", "getDiamonds", "()Z", "setDiamonds", "(Z)V", "getRunwayMessages", "", "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface ILuckyRunwayMessage {
    boolean getDiamonds();

    @NotNull
    List<RunwayMessage.LuckyGiftRunwayMessage> getRunwayMessages();

    void setDiamonds(boolean z10);
}
