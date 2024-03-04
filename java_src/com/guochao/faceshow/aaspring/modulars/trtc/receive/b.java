package com.guochao.faceshow.aaspring.modulars.trtc.receive;

import b8.e;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCSignalMessage;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.d;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.GsonGetter;
import com.tencent.imsdk.v2.V2TIMManager;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static b f22096b;

    /* renamed from: a  reason: collision with root package name */
    private List<x9.b> f22097a = new ArrayList();

    private b() {
    }

    private void a(CallModel callModel) {
        int i9;
        LogUtils.i("zune：", "onNewMessage : " + GsonGetter.getGson().toJson(callModel));
        for (x9.b bVar : this.f22097a) {
            if (bVar != null && callModel.actionType == 7) {
                bVar.c(null, null, callModel);
            } else if (bVar != null && ((i9 = callModel.actionType) == 3 || i9 == 6)) {
                bVar.d(null, null, callModel);
            } else if (bVar != null && callModel.actionType == 2) {
                bVar.a(null, null, callModel);
            } else if (bVar != null && callModel.actionType == 4) {
                bVar.b(null, null, callModel);
            } else if (bVar != null && callModel.actionType == 1) {
                bVar.e(null, null, null, null, callModel);
            } else if (bVar != null && callModel.actionType == 5) {
                List<d.a> b10 = d.a().b();
                if (!b10.isEmpty()) {
                    for (d.a aVar : b10) {
                        aVar.I(null, null, callModel);
                    }
                } else if (e.g().getUserId().equals(callModel.getCurrentUserId())) {
                    com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().H(callModel.invitedList.get(0), callModel.callType, 4, callModel);
                }
            } else if (bVar != null && callModel.actionType == 8) {
                for (d.a aVar2 : d.a().b()) {
                    aVar2.s1(callModel);
                }
            } else if (bVar != null && callModel.actionType == 9) {
                for (d.a aVar3 : d.a().b()) {
                    aVar3.o(callModel);
                }
            } else if (bVar != null && callModel.actionType == 10) {
                for (d.a aVar4 : d.a().b()) {
                    aVar4.j1(callModel);
                }
            }
        }
    }

    public static b b() {
        if (f22096b == null) {
            synchronized (b.class) {
                if (f22096b == null) {
                    f22096b = new b();
                }
            }
        }
        return f22096b;
    }

    public boolean c() {
        return this.f22097a.isEmpty();
    }

    public synchronized void d(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (aVar instanceof TRTCSignalMessage) {
            CallModel messageModel = ((TRTCSignalMessage) aVar).getMessageModel();
            if (messageModel == null) {
                return;
            }
            long j10 = 0;
            try {
                j10 = Long.parseLong(i.u().s().getThisDate()) - (aVar.getMessage().getTimestamp() * 1000);
            } catch (Exception unused) {
            }
            int i9 = messageModel.actionType;
            if (i9 == 1 && j10 > 60000) {
                return;
            }
            if (i9 == 1) {
                V2TIMManager.getMessageManager().markC2CMessageAsRead(aVar.getMessage().getUserID(), null);
            }
            a(messageModel);
        }
    }

    public void e(x9.b bVar) {
        if (this.f22097a.contains(bVar)) {
            return;
        }
        this.f22097a.add(bVar);
    }

    public void f(x9.b bVar) {
        this.f22097a.remove(bVar);
    }
}
