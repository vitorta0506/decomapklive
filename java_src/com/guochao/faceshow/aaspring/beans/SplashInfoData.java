package com.guochao.faceshow.aaspring.beans;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class SplashInfoData {
    public ResultData result;
    public int total;

    /* loaded from: classes3.dex */
    public static class ResultData implements Serializable {
        public String actionData;
        public String clickAction;
        public boolean clickable;
        @Deprecated
        public long disableTime;
        @Deprecated
        public long enableTime;
        public String fileUrl;

        /* renamed from: id  reason: collision with root package name */
        public int f16319id;
        public String schemeUrl;
        public boolean skippable;
        public int stayTime;
        public int type;
    }
}
