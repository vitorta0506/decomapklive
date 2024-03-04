package com.guochao.faceshow.systemassistant.data;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class AssistantUserInfo implements Serializable {
    public int code;
    public OfficialUserData user;

    /* loaded from: classes4.dex */
    public static class OfficialUserData implements Serializable {
        public String img;
        public String nickname;
        public int userId;
    }
}
