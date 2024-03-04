package com.guochao.faceshow.bean;

import java.util.List;
/* loaded from: classes3.dex */
public class UgcPoiBean {
    private int code;
    private List<ListBean> list;
    private String msg;
    private String pageToken;

    /* loaded from: classes3.dex */
    public static class ListBean {
        private String icon;
        private int isCity;
        private String lat;
        private String lng;
        private String name;
        private String vicinity;

        public String getIcon() {
            return this.icon;
        }

        public int getIsCity() {
            return this.isCity;
        }

        public String getLat() {
            return this.lat;
        }

        public String getLng() {
            return this.lng;
        }

        public String getName() {
            return this.name;
        }

        public String getVicinity() {
            return this.vicinity;
        }

        public void setIcon(String str) {
            this.icon = str;
        }

        public void setIsCity(int i9) {
            this.isCity = i9;
        }

        public void setLat(String str) {
            this.lat = str;
        }

        public void setLng(String str) {
            this.lng = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setVicinity(String str) {
            this.vicinity = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<ListBean> getList() {
        return this.list;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getPageToken() {
        return this.pageToken;
    }

    public void setCode(int i9) {
        this.code = i9;
    }

    public void setList(List<ListBean> list) {
        this.list = list;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setPageToken(String str) {
        this.pageToken = str;
    }
}
