package com.guochao.faceshow.aaspring.beans;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes3.dex */
public class UploadedVideoInfo {
    private String autoSyncVideoToDynamic;
    private String content;
    private String country;
    private int height;
    @SerializedName(alternate = {"imgUrl"}, value = "img")
    private String imgUrl;
    private String isPrivate;
    private String isSource;
    private String musicId;
    private String musicName;
    private String musicUrl;
    private String typeId;
    @SerializedName(alternate = {"videoUrl"}, value = "url")
    private String videoUrl;
    private int width;

    public String getAutoSyncVideoToDynamic() {
        return this.autoSyncVideoToDynamic;
    }

    public String getContent() {
        return this.content;
    }

    public String getCountry() {
        return this.country;
    }

    public int getHeight() {
        return this.height;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public String getIsPrivate() {
        return this.isPrivate;
    }

    public String getIsSource() {
        return this.isSource;
    }

    public String getMusicId() {
        return this.musicId;
    }

    public String getMusicName() {
        return this.musicName;
    }

    public String getMusicUrl() {
        return this.musicUrl;
    }

    public String getTypeId() {
        return this.typeId;
    }

    public String getVideoUrl() {
        return this.videoUrl;
    }

    public int getWidth() {
        return this.width;
    }

    public void setAutoSyncVideoToDynamic(String str) {
        this.autoSyncVideoToDynamic = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setHeight(int i9) {
        this.height = i9;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public void setIsPrivate(String str) {
        this.isPrivate = str;
    }

    public void setIsSource(String str) {
        this.isSource = str;
    }

    public void setMusicId(String str) {
        this.musicId = str;
    }

    public void setMusicName(String str) {
        this.musicName = str;
    }

    public void setMusicUrl(String str) {
        this.musicUrl = str;
    }

    public void setTypeId(String str) {
        this.typeId = str;
    }

    public void setVideoUrl(String str) {
        this.videoUrl = str;
    }

    public void setWidth(int i9) {
        this.width = i9;
    }
}
