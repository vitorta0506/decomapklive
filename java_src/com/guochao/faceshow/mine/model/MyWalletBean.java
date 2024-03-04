package com.guochao.faceshow.mine.model;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import p9.a;
/* loaded from: classes4.dex */
public class MyWalletBean {
    private int F;
    private int autoTvSwitch;
    private long availableBalance;
    private Integer diamond;
    private long freezeNum;
    private int live_income;
    private int matching_income;
    private int preCostDiamond;
    @SerializedName("userTokenNum")
    private int tokenNum;
    private int video_income;
    private long withDrawBalance;

    public MyWalletBean() {
        this.diamond = 0;
        this.preCostDiamond = 0;
    }

    public int getAutoTvSwitch() {
        return this.autoTvSwitch;
    }

    public long getAvailableBalance() {
        return this.availableBalance;
    }

    @NonNull
    public Integer getDiamond() {
        if (this.diamond == null) {
            this.diamond = 0;
        }
        return Integer.valueOf(this.diamond.intValue() - this.preCostDiamond);
    }

    public int getF() {
        return this.F;
    }

    public long getFreezeNum() {
        return this.freezeNum;
    }

    public int getLive_income() {
        return this.live_income;
    }

    public int getMatching_income() {
        return this.matching_income;
    }

    public int getPreCostDiamond() {
        return this.preCostDiamond;
    }

    public Integer getRealDiamond() {
        if (this.diamond == null) {
            this.diamond = 0;
        }
        return this.diamond;
    }

    public int getTokenNum() {
        return this.tokenNum;
    }

    public int getVideo_income() {
        return this.video_income;
    }

    public long getWithDrawBalance() {
        return this.withDrawBalance;
    }

    public void setAutoTvSwitch(int i9) {
        this.autoTvSwitch = i9;
    }

    public void setAvailableBalance(long j10) {
        this.availableBalance = j10;
    }

    public void setDiamond(Integer num) {
        this.diamond = num;
    }

    public void setF(int i9) {
        this.F = i9;
    }

    public void setFreezeNum(long j10) {
        this.freezeNum = j10;
    }

    public void setLive_income(int i9) {
        this.live_income = i9;
    }

    public void setMatching_income(int i9) {
        this.matching_income = i9;
    }

    public void setPreCostDiamond(int i9) {
        this.preCostDiamond = i9;
    }

    public void setTokenNum(int i9) {
        this.tokenNum = i9;
        if (a.g().h() != null) {
            for (a.e eVar : a.g().h()) {
                if (eVar != null) {
                    eVar.onCrystalsChanged(i9);
                }
            }
        }
    }

    public void setVideo_income(int i9) {
        this.video_income = i9;
    }

    public void setWithDrawBalance(long j10) {
        this.withDrawBalance = j10;
    }

    public String toString() {
        return "MyWalletBean{diamond=" + this.diamond + ", matching_income=" + this.matching_income + ", F=" + this.F + ", video_income=" + this.video_income + ", live_income=" + this.live_income + '}';
    }

    public MyWalletBean(Integer num, int i9, int i10, int i11, int i12) {
        this.preCostDiamond = 0;
        this.diamond = num;
        this.matching_income = i9;
        this.F = i10;
        this.video_income = i11;
        this.live_income = i12;
    }
}
