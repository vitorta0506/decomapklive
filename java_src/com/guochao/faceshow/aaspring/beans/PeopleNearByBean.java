package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import com.guochao.faceshow.aaspring.beans.WhoSawMeBean;
import java.util.ArrayList;
import java.util.List;
import p7.g;
/* loaded from: classes3.dex */
public class PeopleNearByBean {
    public ArrayList<PeopleNearByUser> list;
    public int totalPage;

    /* loaded from: classes3.dex */
    public static class PeopleNearByUser extends IM_User {
        private List<WhoSawMeBean.ListBean.Bean.ImagePhotoWall> images;

        @Override // com.guochao.faceshow.aaspring.beans.IM_User, p7.h, p7.c
        public String getAvatarUrl() {
            return TextUtils.isEmpty(getImg()) ? "" : getImg();
        }

        public List<WhoSawMeBean.ListBean.Bean.ImagePhotoWall> getImages() {
            return this.images;
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

        @Override // com.guochao.faceshow.aaspring.beans.IM_User, p7.h
        public /* bridge */ /* synthetic */ String getMVPUrl() {
            return g.a(this);
        }

        @Override // com.guochao.faceshow.aaspring.beans.IM_User, com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
        public b8.g getVipInfo() {
            return getUserVipMsg();
        }

        public void setImages(List<WhoSawMeBean.ListBean.Bean.ImagePhotoWall> list) {
            this.images = list;
        }
    }

    public ArrayList<PeopleNearByUser> getList() {
        return this.list;
    }

    public void setList(ArrayList<PeopleNearByUser> arrayList) {
        this.list = arrayList;
    }
}
