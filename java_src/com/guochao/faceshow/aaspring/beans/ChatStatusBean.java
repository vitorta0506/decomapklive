package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class ChatStatusBean implements Parcelable {
    public static final Parcelable.Creator<ChatStatusBean> CREATOR = new Parcelable.Creator<ChatStatusBean>() { // from class: com.guochao.faceshow.aaspring.beans.ChatStatusBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChatStatusBean createFromParcel(Parcel parcel) {
            return new ChatStatusBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChatStatusBean[] newArray(int i9) {
            return new ChatStatusBean[i9];
        }
    };
    private int age;
    private int appointState;
    private int attentStatus;
    private int attentionAppointAuthShow;
    private String autoTransFlag;
    private int blackStatus;
    private int chatNum;
    private int chat_switch;
    private int eachOtherStatus;
    private int fensiNum;
    private int imAudioAppointSwitch;
    private int imMsgSet;
    private int imVideoAppointSwitch;
    private int isChat;
    @Deprecated
    private int isFirst;
    private int isShowAten;
    private int myAttentionAppointAuth;
    private int onlineCode;
    private String preferentialLang;

    protected ChatStatusBean(Parcel parcel) {
        this.attentStatus = parcel.readInt();
        this.chatNum = parcel.readInt();
        this.isChat = parcel.readInt();
        this.blackStatus = parcel.readInt();
        this.eachOtherStatus = parcel.readInt();
        this.imMsgSet = parcel.readInt();
        this.isShowAten = parcel.readInt();
        this.chat_switch = parcel.readInt();
        this.age = parcel.readInt();
        this.fensiNum = parcel.readInt();
        this.isFirst = parcel.readInt();
        this.onlineCode = parcel.readInt();
        this.autoTransFlag = parcel.readString();
        this.preferentialLang = parcel.readString();
        this.appointState = parcel.readInt();
        this.myAttentionAppointAuth = parcel.readInt();
        this.attentionAppointAuthShow = parcel.readInt();
        this.imAudioAppointSwitch = parcel.readInt();
        this.imVideoAppointSwitch = parcel.readInt();
    }

    public boolean checkIfCanChat() {
        return this.isChat == 2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAge() {
        return this.age;
    }

    public int getAppointState() {
        return this.appointState;
    }

    public int getAttentStatus() {
        return this.attentStatus;
    }

    public int getAttentionAppointAuthShow() {
        return this.attentionAppointAuthShow;
    }

    public String getAutoTransFlag() {
        return this.autoTransFlag;
    }

    public int getBlackStatus() {
        return this.blackStatus;
    }

    public int getChatNum() {
        return this.chatNum;
    }

    public int getChat_switch() {
        return this.chat_switch;
    }

    public int getEachOtherStatus() {
        return this.eachOtherStatus;
    }

    public int getFensiNum() {
        return this.fensiNum;
    }

    public int getImAudioAppointSwitch() {
        return this.imAudioAppointSwitch;
    }

    public int getImMsgSet() {
        return this.imMsgSet;
    }

    public int getImVideoAppointSwitch() {
        return this.imVideoAppointSwitch;
    }

    public int getIsChat() {
        return this.isChat;
    }

    @Deprecated
    public int getIsFirst() {
        return this.isFirst;
    }

    public int getIsShowAten() {
        return this.isShowAten;
    }

    public int getMyAttentionAppointAuth() {
        return this.myAttentionAppointAuth;
    }

    public int getOnlineCode() {
        return this.onlineCode;
    }

    public String getPreferentialLang() {
        return this.preferentialLang;
    }

    public boolean isBlack() {
        return this.isChat == 1;
    }

    public boolean isBlocked() {
        return this.attentStatus != 4 && this.imMsgSet == 1;
    }

    public void setAge(int i9) {
        this.age = i9;
    }

    public void setAppointState(int i9) {
        this.appointState = i9;
    }

    public void setAttentStatus(int i9) {
        this.attentStatus = i9;
    }

    public void setAttentionAppointAuthShow(int i9) {
        this.attentionAppointAuthShow = i9;
    }

    public void setAutoTransFlag(String str) {
        this.autoTransFlag = str;
    }

    public void setBlackStatus(int i9) {
        this.blackStatus = i9;
    }

    public void setChatNum(int i9) {
        this.chatNum = i9;
    }

    public void setChat_switch(int i9) {
        this.chat_switch = i9;
    }

    public void setEachOtherStatus(int i9) {
        this.eachOtherStatus = i9;
    }

    public void setFensiNum(int i9) {
        this.fensiNum = i9;
    }

    public void setImAudioAppointSwitch(int i9) {
        this.imAudioAppointSwitch = i9;
    }

    public void setImMsgSet(int i9) {
        this.imMsgSet = i9;
    }

    public void setImVideoAppointSwitch(int i9) {
        this.imVideoAppointSwitch = i9;
    }

    public void setIsChat(int i9) {
        this.isChat = i9;
    }

    @Deprecated
    public void setIsFirst(int i9) {
        this.isFirst = i9;
    }

    public void setIsShowAten(int i9) {
        this.isShowAten = i9;
    }

    public void setMyAttentionAppointAuth(int i9) {
        this.myAttentionAppointAuth = i9;
    }

    public void setOnlineCode(int i9) {
        this.onlineCode = i9;
    }

    public void setPreferentialLang(String str) {
        this.preferentialLang = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.attentStatus);
        parcel.writeInt(this.chatNum);
        parcel.writeInt(this.isChat);
        parcel.writeInt(this.blackStatus);
        parcel.writeInt(this.eachOtherStatus);
        parcel.writeInt(this.imMsgSet);
        parcel.writeInt(this.isShowAten);
        parcel.writeInt(this.chat_switch);
        parcel.writeInt(this.age);
        parcel.writeInt(this.fensiNum);
        parcel.writeInt(this.isFirst);
        parcel.writeInt(this.onlineCode);
        parcel.writeString(this.autoTransFlag);
        parcel.writeString(this.preferentialLang);
        parcel.writeInt(this.appointState);
        parcel.writeInt(this.myAttentionAppointAuth);
        parcel.writeInt(this.attentionAppointAuthShow);
        parcel.writeInt(this.imAudioAppointSwitch);
        parcel.writeInt(this.imVideoAppointSwitch);
    }

    public ChatStatusBean() {
    }
}
