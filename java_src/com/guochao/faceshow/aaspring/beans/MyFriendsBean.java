package com.guochao.faceshow.aaspring.beans;

import java.util.ArrayList;
import p7.g;
/* loaded from: classes3.dex */
public class MyFriendsBean {
    public ArrayList<FriendBean> list;
    public int totalCount;
    public int totalPage;

    /* loaded from: classes3.dex */
    public static class FriendBean extends IM_User {
        private LiveData liveData;

        public int getIsLive() {
            LiveData liveData = this.liveData;
            if (liveData == null) {
                return 0;
            }
            return liveData.isLive;
        }

        @Override // com.guochao.faceshow.aaspring.beans.IM_User, p7.e
        public int getLevel() {
            try {
                return Integer.parseInt(getLevelId());
            } catch (Exception e10) {
                e10.printStackTrace();
                return super.getLevel();
            }
        }

        public LiveData getLiveData() {
            return this.liveData;
        }

        @Override // com.guochao.faceshow.aaspring.beans.IM_User, p7.h
        public /* bridge */ /* synthetic */ String getMVPUrl() {
            return g.a(this);
        }

        @Override // com.guochao.faceshow.aaspring.beans.IM_User, com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
        public b8.g getVipInfo() {
            return getUserVipMsg();
        }

        public void setLiveData(LiveData liveData) {
            this.liveData = liveData;
        }
    }

    /* loaded from: classes3.dex */
    public static class LiveData {
        private int isLive;
        private int liveId;
        private String liveImg;
        private int liveType;

        public int getIsLive() {
            return this.isLive;
        }

        public int getLiveId() {
            return this.liveId;
        }

        public String getLiveImg() {
            return this.liveImg;
        }

        public int getLiveType() {
            return this.liveType;
        }

        public RoomItemData obtainData() {
            RoomItemData roomItemData = new RoomItemData();
            roomItemData.setLiveId(this.liveId + "");
            roomItemData.setLiveType(this.liveType + "");
            roomItemData.setLiveImg(this.liveImg);
            roomItemData.setImg(this.liveImg);
            return roomItemData;
        }

        public void setIsLive(int i9) {
            this.isLive = i9;
        }

        public void setLiveId(int i9) {
            this.liveId = i9;
        }

        public void setLiveImg(String str) {
            this.liveImg = str;
        }

        public void setLiveType(int i9) {
            this.liveType = i9;
        }
    }
}
