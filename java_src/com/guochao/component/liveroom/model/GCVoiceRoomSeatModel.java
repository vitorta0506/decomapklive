package com.guochao.component.liveroom.model;

import com.guochao.faceshow.aaspring.base.model.GCUser;
import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\bf\u0018\u00002\u00020\u0001R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007R\u0018\u0010\u000b\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\f\u0010\u0005\"\u0004\b\r\u0010\u0007¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/guochao/component/liveroom/model/GCVoiceRoomSeatModel;", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "coinNumber", "", "getCoinNumber", "()I", "setCoinNumber", "(I)V", "seatIndex", "getSeatIndex", "setSeatIndex", "seatStatus", "getSeatStatus", "setSeatStatus", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface GCVoiceRoomSeatModel extends GCUser {
    int getCoinNumber();

    int getSeatIndex();

    int getSeatStatus();

    void setCoinNumber(int i9);

    void setSeatIndex(int i9);

    void setSeatStatus(int i9);
}
