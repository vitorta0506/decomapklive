package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class UserPageVideoFriendGroupData {
    public List<String> friendList;
    public List<GroupInfoItemData> groupList;
    public String liveImg;
    public List<VideoInfoItemData> videoList;
    public int videoNum;

    /* loaded from: classes3.dex */
    public static class GroupInfoItemData {
        public String IM_ID;
        public int activity;
        public String group_name;
        public String img;
        public String introduction;
        public int newsletter_id;
        public int type_id;
    }

    /* loaded from: classes3.dex */
    public static class VideoInfoItemData {
        public int privat;
        public int videoId;
        public String videoImg;
        public String videoUrl;
    }
}
