package com.guochao.faceshow.push.model;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class PushLiveBean implements Serializable {
    public String IM_ID;
    public String flv_url;
    public String hls_url;
    public String img;
    public int info_id;
    public String info_name;
    public int live_id;
    public String live_img;
    public String livepPushUrl;
    public String nick_name;
    public int onlinenum;
    public String rtmp_url;
    public String stream_id;
    public String type_id;
    public int userId;
    public int user_id;

    public String toString() {
        return "PushLiveBean{img='" + this.img + "', flv_url='" + this.flv_url + "', stream_id='" + this.stream_id + "', live_id=" + this.live_id + ", info_id=" + this.info_id + ", user_id=" + this.user_id + ", rtmp_url='" + this.rtmp_url + "', live_img='" + this.live_img + "', nick_name='" + this.nick_name + "', livepPushUrl='" + this.livepPushUrl + "', hls_url='" + this.hls_url + "', IM_ID='" + this.IM_ID + "', onlinenum=" + this.onlinenum + ", info_name='" + this.info_name + "', type_id='" + this.type_id + "'}";
    }
}
