package com.guochao.faceshow.aaspring.modulars.live.model;

import android.graphics.PointF;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class GiftLiveMessage extends BaseLiveMessage {
    @Nullable
    private transient SendGiftResponseModel.LuckyGiftResult currentResult;
    private int drawHeight;
    private int drawWidth;
    private ResourceListItemBean faceTrackGift;
    private List<GiftFragment.r> giftSendList;
    private int isGiftAllSend;
    private int isHelloGift;
    @Nullable
    private List<SendGiftResponseModel.LuckyGiftResult> luckyGiftResults;
    private List<PointF> pointPaths;
    private transient boolean selfSend = false;

    public static GiftLiveMessage from(BaseLiveMessage baseLiveMessage, @Nullable ResourceListItemBean resourceListItemBean) {
        GiftLiveMessage giftLiveMessage = (GiftLiveMessage) GsonGetter.getGson().fromJson(GsonGetter.getGson().toJson(baseLiveMessage), (Class<Object>) GiftLiveMessage.class);
        giftLiveMessage.setItemBean(resourceListItemBean);
        return giftLiveMessage;
    }

    public static boolean isFaceGift(ResourceListItemBean resourceListItemBean) {
        return (resourceListItemBean == null || TextUtils.isEmpty(resourceListItemBean.getAndroidFaceEffectUrlV2()) || TextUtils.isEmpty(resourceListItemBean.getAndroidFaceMd5V2())) ? false : true;
    }

    @Nullable
    public SendGiftResponseModel.LuckyGiftResult getCurrentResult() {
        if (this.luckyGiftResults != null) {
            for (int i9 = 0; i9 < this.luckyGiftResults.size(); i9++) {
                SendGiftResponseModel.LuckyGiftResult luckyGiftResult = this.luckyGiftResults.get(i9);
                if (Objects.equals(luckyGiftResult.getAccountId(), this.toUserId)) {
                    return luckyGiftResult;
                }
            }
            return null;
        }
        return null;
    }

    public int getCurrentReward() {
        if (this.luckyGiftResults != null) {
            for (int i9 = 0; i9 < this.luckyGiftResults.size(); i9++) {
                SendGiftResponseModel.LuckyGiftResult luckyGiftResult = this.luckyGiftResults.get(i9);
                if (Objects.equals(luckyGiftResult.getAccountId(), this.toUserId)) {
                    return luckyGiftResult.getAwardMultiple();
                }
            }
        }
        return 0;
    }

    public int getCurrentRewardType() {
        if (this.luckyGiftResults != null) {
            for (int i9 = 0; i9 < this.luckyGiftResults.size(); i9++) {
                SendGiftResponseModel.LuckyGiftResult luckyGiftResult = this.luckyGiftResults.get(i9);
                if (Objects.equals(luckyGiftResult.getAccountId(), this.toUserId)) {
                    return luckyGiftResult.getWinType();
                }
            }
            return -1;
        }
        return -1;
    }

    public int getDrawHeight() {
        return this.drawHeight;
    }

    public int getDrawWidth() {
        return this.drawWidth;
    }

    public int getGiftBCoinValue() {
        try {
            return Integer.parseInt(getGiftPrice()) * Integer.parseInt(this.giftNum);
        } catch (Exception unused) {
            return 0;
        }
    }

    @NonNull
    public List<GiftFragment.r> getGiftSendList() {
        if (this.giftSendList == null) {
            this.giftSendList = new ArrayList();
        }
        return this.giftSendList;
    }

    public int getIsGiftAllSend() {
        return this.isGiftAllSend;
    }

    public int getIsHelloGift() {
        return this.isHelloGift;
    }

    @Nullable
    public ResourceListItemBean getItemBean() {
        return this.faceTrackGift;
    }

    @Nullable
    public List<SendGiftResponseModel.LuckyGiftResult> getLuckyGiftResults() {
        return this.luckyGiftResults;
    }

    public List<PointF> getPointPaths() {
        List<PointF> list = this.pointPaths;
        return list == null ? new ArrayList() : list;
    }

    public int getRewardForUser(String str) {
        if (this.luckyGiftResults != null) {
            for (int i9 = 0; i9 < this.luckyGiftResults.size(); i9++) {
                SendGiftResponseModel.LuckyGiftResult luckyGiftResult = this.luckyGiftResults.get(i9);
                if (Objects.equals(luckyGiftResult.getAccountId(), str)) {
                    return luckyGiftResult.getAnchorRateDiamond();
                }
            }
        }
        return getGiftBCoinValue();
    }

    public int getTotalReward() {
        if (this.luckyGiftResults != null) {
            int i9 = 0;
            for (int i10 = 0; i10 < this.luckyGiftResults.size(); i10++) {
                i9 += this.luckyGiftResults.get(i10).getAwardMultiple();
            }
            return i9;
        }
        return 0;
    }

    public int getTotalRewardDiamonds() {
        if (this.luckyGiftResults != null) {
            int i9 = 0;
            for (int i10 = 0; i10 < this.luckyGiftResults.size(); i10++) {
                i9 += this.luckyGiftResults.get(i10).getTotalDiamonds();
            }
            return i9;
        }
        return 0;
    }

    public boolean isHandyGiftMessage() {
        return this.pointPaths != null;
    }

    public boolean isSelfSend() {
        return this.selfSend;
    }

    public void setDrawHeight(int i9) {
        this.drawHeight = i9;
    }

    public void setDrawWidth(int i9) {
        this.drawWidth = i9;
    }

    public void setGiftSendList(List<GiftFragment.r> list) {
        this.giftSendList = list;
    }

    public void setIsGiftAllSend(int i9) {
        this.isGiftAllSend = i9;
    }

    public void setIsHelloGift(int i9) {
        this.isHelloGift = i9;
    }

    public void setItemBean(ResourceListItemBean resourceListItemBean) {
        this.faceTrackGift = resourceListItemBean;
    }

    public void setLuckyGiftResults(@Nullable List<SendGiftResponseModel.LuckyGiftResult> list) {
        this.luckyGiftResults = list;
    }

    public void setPointPaths(List<PointF> list) {
        this.pointPaths = list;
    }

    public void setSelfSend(boolean z10) {
        this.selfSend = z10;
    }
}
