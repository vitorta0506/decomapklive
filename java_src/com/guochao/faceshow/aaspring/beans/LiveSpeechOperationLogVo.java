package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class LiveSpeechOperationLogVo {
    private String createTime;
    private int creator;
    private int hours;

    /* renamed from: id  reason: collision with root package name */
    private int f16312id;
    private boolean isSpeech;
    private int operationMode;
    private String reasonContent;
    private String reasonContentLang;
    private int reasonId;
    private String speechTime;
    private long speechTimeStamp;
    private int userId;

    public String getCreateTime() {
        return this.createTime;
    }

    public int getCreator() {
        return this.creator;
    }

    public int getHours() {
        return this.hours;
    }

    public int getId() {
        return this.f16312id;
    }

    public int getOperationMode() {
        return this.operationMode;
    }

    public String getReasonContent() {
        return this.reasonContent;
    }

    public String getReasonContentLang() {
        return this.reasonContentLang;
    }

    public int getReasonId() {
        return this.reasonId;
    }

    public String getSpeechTime() {
        return this.speechTime;
    }

    public long getSpeechTimeStamp() {
        return this.speechTimeStamp;
    }

    public int getUserId() {
        return this.userId;
    }

    public boolean isSpeech() {
        return this.isSpeech;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setCreator(int i9) {
        this.creator = i9;
    }

    public void setHours(int i9) {
        this.hours = i9;
    }

    public void setId(int i9) {
        this.f16312id = i9;
    }

    public void setOperationMode(int i9) {
        this.operationMode = i9;
    }

    public void setReasonContent(String str) {
        this.reasonContent = str;
    }

    public void setReasonContentLang(String str) {
        this.reasonContentLang = str;
    }

    public void setReasonId(int i9) {
        this.reasonId = i9;
    }

    public void setSpeech(boolean z10) {
        this.isSpeech = z10;
    }

    public void setSpeechTime(String str) {
        this.speechTime = str;
    }

    public void setSpeechTimeStamp(long j10) {
        this.speechTimeStamp = j10;
    }

    public void setUserId(int i9) {
        this.userId = i9;
    }
}
