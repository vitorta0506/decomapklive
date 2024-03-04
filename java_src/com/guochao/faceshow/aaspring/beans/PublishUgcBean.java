package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import b8.e;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.location.FcLocation;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.Contants;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class PublishUgcBean {
    private String address;
    private String content;
    private int friendId;
    private int hasRetryTimes;
    private List<MediaLocalData> imgList;
    private List<String> invisibleList;
    private int isComment;
    private int isNearbySeat;
    private int isPoi;
    private String latitude;
    private String longitude;
    private int publishStatus;
    private int uuid;
    private int shield = 0;
    private int isShowSeat = 1;

    public static PublishUgcBean fromDynamic(DynamicBean dynamicBean) {
        if (dynamicBean == null) {
            return null;
        }
        PublishUgcBean publishUgcBean = new PublishUgcBean();
        publishUgcBean.setUuid(dynamicBean.getUuid());
        publishUgcBean.setFriendId(dynamicBean.getFriendId());
        publishUgcBean.setContent(dynamicBean.getContent());
        publishUgcBean.setIsComment(dynamicBean.getIsComment());
        publishUgcBean.setIsNearbySeat(dynamicBean.getIsNearbySeat());
        publishUgcBean.setShield(dynamicBean.getShield());
        publishUgcBean.setIsShowSeat(dynamicBean.getIsShowSeat());
        publishUgcBean.setInvisibleList(dynamicBean.getInvisibleList());
        publishUgcBean.setPublishStatus(dynamicBean.getPublishStatus());
        publishUgcBean.setHasRetryTimes(dynamicBean.getHasRetryTimes());
        publishUgcBean.setAddress(dynamicBean.getAddress());
        ArrayList arrayList = new ArrayList();
        ArrayList<DynamicFile> dynamicFile = dynamicBean.getDynamicFile();
        if (dynamicFile != null) {
            Iterator<DynamicFile> it = dynamicFile.iterator();
            while (it.hasNext()) {
                DynamicFile next = it.next();
                MediaLocalData mediaLocalData = new MediaLocalData();
                mediaLocalData.setType(next.getType());
                mediaLocalData.setFileUrl(next.getFileUrl());
                mediaLocalData.setFileSmallUrl(next.getFileSmallUrl());
                mediaLocalData.setThumb(TextUtils.isEmpty(next.getFileSmallUrl()) ? next.getFileUrl() : next.getFileSmallUrl());
                mediaLocalData.setUri(next.getUri());
                mediaLocalData.setMediaType(next.getType() == 1 ? 101 : 102);
                mediaLocalData.setWidth(next.getWidth());
                mediaLocalData.setHeight(next.getHeight());
                arrayList.add(mediaLocalData);
            }
        }
        publishUgcBean.setImgList(arrayList);
        return publishUgcBean;
    }

    public static DynamicBean toDynamic(PublishUgcBean publishUgcBean) {
        if (publishUgcBean == null) {
            return null;
        }
        DynamicBean dynamicBean = new DynamicBean();
        dynamicBean.setUuid(publishUgcBean.getUuid());
        dynamicBean.setFriendId(publishUgcBean.getFriendId());
        dynamicBean.setContent(publishUgcBean.getContent());
        dynamicBean.setShield(publishUgcBean.getShield());
        dynamicBean.setIsNearbySeat(publishUgcBean.getIsNearbySeat());
        dynamicBean.setIsComment(publishUgcBean.getIsComment());
        dynamicBean.setUserId(SpUtils.getStr(null, Contants.USER_ID));
        dynamicBean.setInvisibleList(publishUgcBean.getInvisibleList());
        dynamicBean.setIsShowSeat(publishUgcBean.getIsShowSeat());
        dynamicBean.setPublishStatus(publishUgcBean.getPublishStatus());
        dynamicBean.setUserId(e.g().getUserId());
        dynamicBean.setUserVipMsg(e.g().c().getUserVipMsg());
        if (publishUgcBean.getPublishStatus() == 2) {
            dynamicBean.setPublishable(false);
        } else {
            dynamicBean.setPublishable(true);
        }
        dynamicBean.setCreateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format((Date) new java.sql.Date(publishUgcBean.getUuid() * 1000)));
        UserBean c10 = e.g().c();
        dynamicBean.setUserImg(c10.img);
        dynamicBean.setUserCountryFlag(c10.countryFlag);
        dynamicBean.setUserAge(c10.getAge());
        dynamicBean.setUserSex(c10.sex);
        dynamicBean.setLevelId(c10.levelId);
        dynamicBean.setNickName(c10.nickName);
        dynamicBean.setHasRetryTimes(publishUgcBean.getHasRetryTimes());
        dynamicBean.setAddress(publishUgcBean.getAddress());
        dynamicBean.setUserVipMsg(e.g().c().getUserVipMsg());
        FcLocation fcLocation = (FcLocation) MemoryCache.getInstance().get(FcLocation.class);
        if (fcLocation != null) {
            dynamicBean.setLatitude(String.valueOf(fcLocation.getLatitude()));
            dynamicBean.setLongitude(String.valueOf(fcLocation.getLongitude()));
        }
        ArrayList<DynamicFile> arrayList = new ArrayList<>();
        List<MediaLocalData> imgList = publishUgcBean.getImgList();
        if (imgList != null) {
            for (MediaLocalData mediaLocalData : imgList) {
                DynamicFile dynamicFile = new DynamicFile();
                dynamicFile.setFileUrl(TextUtils.isEmpty(mediaLocalData.getFileUrl()) ? mediaLocalData.getThumb() : mediaLocalData.getFileUrl());
                dynamicFile.setFileSmallUrl(TextUtils.isEmpty(mediaLocalData.getFileSmallUrl()) ? mediaLocalData.getThumb() : mediaLocalData.getFileSmallUrl());
                dynamicFile.setType(mediaLocalData.getType());
                dynamicFile.setWidth(mediaLocalData.getWidth());
                dynamicFile.setHeight(mediaLocalData.getHeight());
                dynamicFile.setUri(mediaLocalData.getUri());
                arrayList.add(dynamicFile);
            }
        }
        dynamicBean.setDynamicFile(arrayList);
        return dynamicBean;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.uuid == ((PublishUgcBean) obj).uuid;
    }

    public String getAddress() {
        return this.address;
    }

    public String getContent() {
        return this.content;
    }

    public int getFriendId() {
        return this.friendId;
    }

    public int getHasRetryTimes() {
        return this.hasRetryTimes;
    }

    public List<MediaLocalData> getImgList() {
        return this.imgList;
    }

    public List<String> getInvisibleList() {
        return this.invisibleList;
    }

    public int getIsComment() {
        return this.isComment;
    }

    public int getIsNearbySeat() {
        return this.isNearbySeat;
    }

    public int getIsPoi() {
        return this.isPoi;
    }

    public int getIsShowSeat() {
        return this.isShowSeat;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public int getPublishStatus() {
        return this.publishStatus;
    }

    public int getShield() {
        return this.shield;
    }

    public int getUuid() {
        return this.uuid;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.uuid));
    }

    public boolean isPublishable() {
        return true;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setFriendId(int i9) {
        this.friendId = i9;
    }

    public void setHasRetryTimes(int i9) {
        this.hasRetryTimes = i9;
    }

    public void setImgList(List<MediaLocalData> list) {
        this.imgList = list;
    }

    public void setInvisibleList(List<String> list) {
        this.invisibleList = list;
    }

    public void setIsComment(int i9) {
        this.isComment = i9;
    }

    public void setIsNearbySeat(int i9) {
        this.isNearbySeat = i9;
    }

    public void setIsPoi(int i9) {
        this.isPoi = i9;
    }

    public void setIsShowSeat(int i9) {
        this.isShowSeat = i9;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    public void setPublishStatus(int i9) {
        this.publishStatus = i9;
    }

    public void setPublishable(boolean z10) {
    }

    public void setShield(int i9) {
        this.shield = i9;
    }

    public void setUuid(int i9) {
        this.uuid = i9;
    }
}
