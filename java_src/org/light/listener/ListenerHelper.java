package org.light.listener;
/* loaded from: classes7.dex */
public abstract class ListenerHelper {
    public OnAIDataListener aiDataListener;
    public OnTipsStatusListener tipsListener;

    public abstract void onTipsNeedHide(String str, String str2, int i9);

    public abstract void onTipsNeedShow(String str, String str2, int i9, int i10);
}
