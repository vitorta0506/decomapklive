package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class GameCoinBean {
    private int diamond;
    private List<GameCoin> list;
    private int tokenNum;

    /* loaded from: classes3.dex */
    public static class GameCoin {
        private int diamond;
        private int gameCoin;
        private int ruleId;

        public int getDiamond() {
            return this.diamond;
        }

        public int getGameCoin() {
            return this.gameCoin;
        }

        public int getRuleId() {
            return this.ruleId;
        }

        public void setDiamond(int i9) {
            this.diamond = i9;
        }

        public void setGameCoin(int i9) {
            this.gameCoin = i9;
        }

        public void setRuleId(int i9) {
            this.ruleId = i9;
        }
    }

    public int getDiamond() {
        return this.diamond;
    }

    public List<GameCoin> getList() {
        return this.list;
    }

    public int getTokenNum() {
        return this.tokenNum;
    }

    public void setDiamond(int i9) {
        this.diamond = i9;
    }

    public void setList(List<GameCoin> list) {
        this.list = list;
    }

    public void setTokenNum(int i9) {
        this.tokenNum = i9;
    }
}
