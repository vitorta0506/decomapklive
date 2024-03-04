package com.guochao.faceshow.aaspring.beans;

import java.util.Map;
/* loaded from: classes3.dex */
public class PushBean {
    public boolean goToWelcomePage;
    public Map<String, Object> pushData;
    public Map<String, Object> shareData;
    public boolean withChat;
    public boolean withEmptyChat;

    public String toString() {
        return "PushBean{pushData=" + this.pushData + ", shareData=" + this.shareData + ", goToWelcomePage=" + this.goToWelcomePage + '}';
    }
}
