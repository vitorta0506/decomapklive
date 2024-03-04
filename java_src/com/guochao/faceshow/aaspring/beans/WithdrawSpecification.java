package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class WithdrawSpecification {
    private String canUseMoney;
    private List<WithdrawSpecificationList> inviteEarnMoneyRuleSets;
    private String inviteMoney;
    private String userId;

    public String getCanUseMoney() {
        return this.canUseMoney;
    }

    public List<WithdrawSpecificationList> getInviteEarnMoneyRuleSets() {
        return this.inviteEarnMoneyRuleSets;
    }

    public String getInviteMoney() {
        return this.inviteMoney;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setCanUseMoney(String str) {
        this.canUseMoney = str;
    }

    public void setInviteEarnMoneyRuleSets(List<WithdrawSpecificationList> list) {
        this.inviteEarnMoneyRuleSets = list;
    }

    public void setInviteMoney(String str) {
        this.inviteMoney = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }
}
