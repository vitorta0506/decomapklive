package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class NotificationItem implements Comparable<NotificationItem> {
    public static final int TYPE_AT_ME = 9;
    public static final int TYPE_COMMENT = 7;
    public static final int TYPE_GREETING = 13;
    public static final int TYPE_LIKE = 5;
    public static final int TYPE_OFFICIAL = 11;
    public static final int TYPE_REQUEST = 3;
    private String displayTitle;
    private int iconId;
    private boolean show = true;
    private int titleId;
    private int type;
    private int unreadNumber;

    public String getDisplayTitle() {
        return this.displayTitle;
    }

    public int getIconId() {
        return this.iconId;
    }

    public int getTitleId() {
        return this.titleId;
    }

    public int getType() {
        return this.type;
    }

    public int getUnreadNumber() {
        return this.unreadNumber;
    }

    public boolean isShow() {
        return this.show;
    }

    public void setDisplayTitle(String str) {
        this.displayTitle = str;
    }

    public void setIconId(int i9) {
        this.iconId = i9;
    }

    public void setShow(boolean z10) {
        this.show = z10;
    }

    public void setTitleId(int i9) {
        this.titleId = i9;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public void setUnreadNumber(int i9) {
        this.unreadNumber = i9;
    }

    @Override // java.lang.Comparable
    public int compareTo(NotificationItem notificationItem) {
        return (notificationItem.show ? notificationItem.unreadNumber : 0) - (this.show ? this.unreadNumber : 0);
    }
}
