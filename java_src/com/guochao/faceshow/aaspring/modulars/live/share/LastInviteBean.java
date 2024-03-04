package com.guochao.faceshow.aaspring.modulars.live.share;

import com.guochao.faceshow.aaspring.beans.UserVipData;
import p7.g;
/* loaded from: classes3.dex */
public class LastInviteBean implements InviteBean {

    /* renamed from: a  reason: collision with root package name */
    private String f19894a;

    /* renamed from: b  reason: collision with root package name */
    private String f19895b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f19896c;

    /* renamed from: d  reason: collision with root package name */
    private int f19897d;

    /* renamed from: e  reason: collision with root package name */
    private String f19898e;

    /* renamed from: f  reason: collision with root package name */
    private int f19899f;

    /* renamed from: g  reason: collision with root package name */
    private UserVipData f19900g;

    /* renamed from: h  reason: collision with root package name */
    private String f19901h;

    /* renamed from: i  reason: collision with root package name */
    private String f19902i;

    /* renamed from: j  reason: collision with root package name */
    private int f19903j;

    public static LastInviteBean a(InviteBean inviteBean) {
        LastInviteBean lastInviteBean = new LastInviteBean();
        lastInviteBean.f19896c = false;
        lastInviteBean.f19897d = inviteBean.getAge();
        lastInviteBean.f19901h = inviteBean.getPendantUrl();
        lastInviteBean.f19902i = inviteBean.getCountryFlag();
        lastInviteBean.f19903j = inviteBean.getLevel();
        lastInviteBean.f19898e = inviteBean.getAvatarUrl();
        lastInviteBean.f19901h = inviteBean.getPendantUrl();
        lastInviteBean.f19899f = inviteBean.getGender();
        lastInviteBean.f19894a = inviteBean.getUserName();
        lastInviteBean.f19895b = inviteBean.getCurrentUserId();
        lastInviteBean.f19900g = UserVipData.from(inviteBean.getVipInfo());
        return lastInviteBean;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.b
    public int getAge() {
        return this.f19897d;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.f19898e;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.f19902i;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.f19895b;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return this.f19899f;
    }

    @Override // p7.e
    public int getLevel() {
        return this.f19903j;
    }

    @Override // p7.h
    public /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.f19901h;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    public String getUserName() {
        return this.f19894a;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public boolean isSelect() {
        return this.f19896c;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public void setSelect(boolean z10) {
        this.f19896c = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    public UserVipData getVipInfo() {
        return this.f19900g;
    }
}
