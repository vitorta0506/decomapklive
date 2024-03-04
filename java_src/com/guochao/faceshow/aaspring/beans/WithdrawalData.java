package com.guochao.faceshow.aaspring.beans;

import com.guochao.faceshow.mine.model.WithdrawalBean;
import java.util.List;
/* loaded from: classes3.dex */
public class WithdrawalData {
    private int currency;
    private List<WithdrawalBean> normList;
    private WithDrawSwitch withDrawSwitch;

    /* loaded from: classes3.dex */
    public static class WithDrawSwitch {
        private int aliPaySwitch;
        private int payoneerSwitch;
        private int payoneerSwitchV2;
        private int paypalSwitch;
        private int usdtSwitch;

        public int getAliPaySwitch() {
            return this.aliPaySwitch;
        }

        public int getPayoneerSwitch() {
            return this.payoneerSwitch;
        }

        public int getPayoneerSwitchV2() {
            return this.payoneerSwitchV2;
        }

        public int getPaypalSwitch() {
            return this.paypalSwitch;
        }

        public int getUsdtSwitch() {
            return this.usdtSwitch;
        }

        public void setAliPaySwitch(int i9) {
            this.aliPaySwitch = i9;
        }

        public void setPayoneerSwitch(int i9) {
            this.payoneerSwitch = i9;
        }

        public void setPayoneerSwitchV2(int i9) {
            this.payoneerSwitchV2 = i9;
        }

        public void setPaypalSwitch(int i9) {
            this.paypalSwitch = i9;
        }

        public void setUsdtSwitch(int i9) {
            this.usdtSwitch = i9;
        }
    }

    public int getCurrency() {
        return this.currency;
    }

    public List<WithdrawalBean> getNormList() {
        return this.normList;
    }

    public WithDrawSwitch getWithDrawSwitch() {
        return this.withDrawSwitch;
    }

    public void setCurrency(int i9) {
        this.currency = i9;
    }

    public void setNormList(List<WithdrawalBean> list) {
        this.normList = list;
    }

    public void setWithDrawSwitch(WithDrawSwitch withDrawSwitch) {
        this.withDrawSwitch = withDrawSwitch;
    }
}
