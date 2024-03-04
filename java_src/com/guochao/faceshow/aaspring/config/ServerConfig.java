package com.guochao.faceshow.aaspring.config;

import android.text.TextUtils;
import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.beans.CountryBean;
import com.guochao.faceshow.aaspring.beans.LiveOperationVo;
import com.guochao.faceshow.aaspring.beans.LiveSpeechOperationLogVo;
import com.guochao.faceshow.aaspring.beans.UgcDistanceTypeBean;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
@Keep
/* loaded from: classes3.dex */
public class ServerConfig {
    public static final ServerConfig DEFAULT = new ServerConfig();
    private int aliPaySwitch;
    private List<UgcDistanceTypeBean> appUgcNearbySetList;
    private int appointSwitch;
    private List<String> blackList;
    private int chat_switch;
    private List<CountryBean> contactsShowcountry;
    @SerializedName("SS")

    /* renamed from: e  reason: collision with root package name */
    private String f16323e;
    private int fbShare;
    private int gameSwitch;
    private int isActivity;
    private int isBindMobile;
    private int isCertication;
    private int isFriendNew;
    private int isFringManager;
    private int isLiveManager;
    private int keyPadToneSwitch;
    private LiveOperationVo liveOperationVo;
    private LiveSpeechOperationLogVo liveSpeechOperationLogVo;
    private long localPhoneConfigTime;
    private List<String> myNoDisturb;
    private int oneToOneGenderSelectPrice;
    private int payoneerSwitch;
    private int payoneerSwitchV2;
    private int paypalSwitch;
    private String personalInformationScan;
    private int pkEnableFlag;
    private int ratioFace2face;
    private String recommendRechargeActivityImg;
    private String recommendRechargeActivityLiveIcon;
    private int selectAdvertisement;
    private long serverTimeDiff;
    private int serviceChargeOfERC20;
    private int serviceChargeOfOMNI;
    private int serviceChargeOfTRC20;
    private String shareUrl;
    private String thisDate;
    private String timeZone;
    private List<String> toNoDisturb;
    private int transSwitchEnableFlag;
    private int usdtSwitch;
    private int userLiveBanned;
    private int userSpeech;
    private int videoBarrageSwitch;
    private int findYouSwitch = 0;
    private int ugcMaxDistance = 500;
    private int ugcDefaultDistance = 600;
    private int autoSyncVideoToDynamic = 0;
    private int audioDiamond = 50;
    private int videoDiamond = 80;
    private int payH5PayFlag = 0;
    private int privateLiveSwitch = 1;
    private int appEvaluateGuidePop = 1;
    private int blackShow = 0;

    public void calServerTimeDiff() {
        if (TextUtils.isEmpty(this.thisDate)) {
            this.serverTimeDiff = 0L;
        } else if (this.serverTimeDiff != 0) {
        } else {
            try {
                this.serverTimeDiff = Long.parseLong(this.thisDate) - System.currentTimeMillis();
            } catch (Exception unused) {
            }
        }
    }

    public int getAliPaySwitch() {
        return this.aliPaySwitch;
    }

    public int getAppEvaluateGuidePop() {
        return this.appEvaluateGuidePop;
    }

    public List<UgcDistanceTypeBean> getAppUgcNearbySetList() {
        if (this.appUgcNearbySetList == null) {
            this.appUgcNearbySetList = new ArrayList();
        }
        return this.appUgcNearbySetList;
    }

    public int getAppointSwitch() {
        return this.appointSwitch;
    }

    public int getAudioDiamond() {
        return this.audioDiamond;
    }

    public List<String> getBlackList() {
        List<String> list = this.blackList;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.blackList = arrayList;
            return arrayList;
        }
        return list;
    }

    public int getBlackShow() {
        return this.blackShow;
    }

    public int getChat_switch() {
        return this.chat_switch;
    }

    public List<CountryBean> getContactsShowcountry() {
        return this.contactsShowcountry;
    }

    public String getE() {
        return TextUtils.isEmpty(this.f16323e) ? "o4wL3h6uyKGphXLD" : this.f16323e;
    }

    public int getFbShare() {
        return this.fbShare;
    }

    public int getFindYouSwitch() {
        return this.findYouSwitch;
    }

    public int getGameSwitch() {
        return this.gameSwitch;
    }

    public int getIsActivity() {
        return this.isActivity;
    }

    public int getIsBindMobile() {
        return this.isBindMobile;
    }

    public int getIsCertication() {
        return this.isCertication;
    }

    public int getIsFriendNew() {
        return this.isFriendNew;
    }

    public int getIsFringManager() {
        return this.isFringManager;
    }

    public int getIsLiveManager() {
        return this.isLiveManager;
    }

    public int getKeyPadToneSwitch() {
        return this.keyPadToneSwitch;
    }

    public LiveOperationVo getLiveOperationVo() {
        return this.liveOperationVo;
    }

    public LiveSpeechOperationLogVo getLiveSpeechOperationLogVo() {
        return this.liveSpeechOperationLogVo;
    }

    public List<String> getMyNoDisturb() {
        if (this.myNoDisturb == null) {
            this.myNoDisturb = new ArrayList();
        }
        return this.myNoDisturb;
    }

    public String getNetToday() {
        try {
            Date date = new Date(this.serverTimeDiff + System.currentTimeMillis());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            return simpleDateFormat.format(date);
        } catch (Exception e10) {
            e10.printStackTrace();
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            return simpleDateFormat2.format(new Date(System.currentTimeMillis()));
        }
    }

    public int getOneToOneGenderSelectPrice() {
        return this.oneToOneGenderSelectPrice;
    }

    public int getPayH5PayFlag() {
        return this.payH5PayFlag;
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

    public String getPersonalInformationScan() {
        return this.personalInformationScan;
    }

    public int getPkEnableFlag() {
        return this.pkEnableFlag;
    }

    public int getPrivateLiveSwitch() {
        return this.privateLiveSwitch;
    }

    public int getRatioFace2face() {
        return this.ratioFace2face;
    }

    public String getRecommendRechargeActivityImg() {
        return this.recommendRechargeActivityImg;
    }

    public String getRecommendRechargeActivityLiveIcon() {
        return this.recommendRechargeActivityLiveIcon;
    }

    public int getSelectAdvertisement() {
        return this.selectAdvertisement;
    }

    public long getServerTimeDiff() {
        return this.serverTimeDiff;
    }

    public int getServiceChargeOfERC20() {
        return this.serviceChargeOfERC20;
    }

    public int getServiceChargeOfOMNI() {
        return this.serviceChargeOfOMNI;
    }

    public int getServiceChargeOfTRC20() {
        return this.serviceChargeOfTRC20;
    }

    public String getShareUrl() {
        return this.shareUrl;
    }

    public String getThisDate() {
        return this.thisDate;
    }

    public String getTimeZone() {
        return this.timeZone;
    }

    public List<String> getToNoDisturb() {
        List<String> list = this.toNoDisturb;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.toNoDisturb = arrayList;
            return arrayList;
        }
        return list;
    }

    public String getToday() {
        try {
            return new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(new Date(this.serverTimeDiff + System.currentTimeMillis()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(new Date(System.currentTimeMillis()));
        }
    }

    public int getTransSwitchEnableFlag() {
        return this.transSwitchEnableFlag;
    }

    public int getUgcDefaultDistance() {
        return this.ugcDefaultDistance;
    }

    public int getUgcMaxDistance() {
        return this.ugcMaxDistance;
    }

    public int getUsdtSwitch() {
        return this.usdtSwitch;
    }

    public int getUserLiveBanned() {
        return this.userLiveBanned;
    }

    public int getUserSpeech() {
        return this.userSpeech;
    }

    public int getVideoBarrageSwitch() {
        return this.videoBarrageSwitch;
    }

    public int getVideoDiamond() {
        return this.videoDiamond;
    }

    public boolean isLivePrivateEnable() {
        return this.privateLiveSwitch == 1;
    }

    public void setAliPaySwitch(int i9) {
        this.aliPaySwitch = i9;
    }

    public void setAppEvaluateGuidePop(int i9) {
        this.appEvaluateGuidePop = i9;
    }

    public void setAppUgcNearbySetList(List<UgcDistanceTypeBean> list) {
        this.appUgcNearbySetList = list;
    }

    public void setAppointSwitch(int i9) {
        this.appointSwitch = i9;
    }

    public void setAudioDiamond(int i9) {
        this.audioDiamond = i9;
    }

    public void setBlackList(List<String> list) {
        this.blackList = list;
    }

    public void setBlackShow(int i9) {
        this.blackShow = i9;
    }

    public void setChat_switch(int i9) {
        this.chat_switch = i9;
    }

    public void setContactsShowcountry(List<CountryBean> list) {
        this.contactsShowcountry = list;
    }

    public void setE(String str) {
        this.f16323e = str;
    }

    public void setFbShare(int i9) {
        this.fbShare = i9;
    }

    public void setFindYouSwitch(int i9) {
        this.findYouSwitch = i9;
    }

    public void setGameSwitch(int i9) {
        this.gameSwitch = i9;
    }

    public void setIsActivity(int i9) {
        this.isActivity = i9;
    }

    public void setIsBindMobile(int i9) {
        this.isBindMobile = i9;
    }

    public void setIsCertication(int i9) {
        this.isCertication = i9;
    }

    public void setIsFriendNew(int i9) {
        this.isFriendNew = i9;
    }

    public void setIsFringManager(int i9) {
        this.isFringManager = i9;
    }

    public void setIsLiveManager(int i9) {
        this.isLiveManager = i9;
    }

    public void setKeyPadToneSwitch(int i9) {
        this.keyPadToneSwitch = i9;
    }

    public void setLiveOperationVo(LiveOperationVo liveOperationVo) {
        this.liveOperationVo = liveOperationVo;
    }

    public void setLiveSpeechOperationLogVo(LiveSpeechOperationLogVo liveSpeechOperationLogVo) {
        this.liveSpeechOperationLogVo = liveSpeechOperationLogVo;
    }

    public void setMyNoDisturb(List<String> list) {
        this.myNoDisturb = list;
    }

    public void setOneToOneGenderSelectPrice(int i9) {
        this.oneToOneGenderSelectPrice = i9;
    }

    public void setPayH5PayFlag(int i9) {
        this.payH5PayFlag = i9;
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

    public void setPersonalInformationScan(String str) {
        this.personalInformationScan = str;
    }

    public void setPkEnableFlag(int i9) {
        this.pkEnableFlag = i9;
    }

    public void setPrivateLiveSwitch(int i9) {
        this.privateLiveSwitch = i9;
    }

    public void setRatioFace2face(int i9) {
        this.ratioFace2face = i9;
    }

    public void setRecommendRechargeActivityImg(String str) {
        this.recommendRechargeActivityImg = str;
    }

    public void setRecommendRechargeActivityLiveIcon(String str) {
        this.recommendRechargeActivityLiveIcon = str;
    }

    public void setSelectAdvertisement(int i9) {
        this.selectAdvertisement = i9;
    }

    public void setServerTimeDiff(long j10) {
        this.serverTimeDiff = j10;
    }

    public void setServiceChargeOfERC20(int i9) {
        this.serviceChargeOfERC20 = i9;
    }

    public void setServiceChargeOfOMMI(int i9) {
        this.serviceChargeOfOMNI = i9;
    }

    public void setServiceChargeOfTRC20(int i9) {
        this.serviceChargeOfTRC20 = i9;
    }

    public void setShareUrl(String str) {
        this.shareUrl = str;
    }

    public void setThisDate(String str) {
        this.thisDate = str;
    }

    public void setTimeZone(String str) {
        this.timeZone = str;
    }

    public void setToNoDisturb(List<String> list) {
        this.toNoDisturb = list;
    }

    public void setTransSwitchEnableFlag(int i9) {
        this.transSwitchEnableFlag = i9;
    }

    public void setUgcDefaultDistance(int i9) {
        this.ugcDefaultDistance = i9;
    }

    public void setUgcMaxDistance(int i9) {
        this.ugcMaxDistance = i9;
    }

    public void setUsdtSwitch(int i9) {
        this.usdtSwitch = i9;
    }

    public void setUserLiveBanned(int i9) {
        this.userLiveBanned = i9;
    }

    public void setUserSpeech(int i9) {
        this.userSpeech = i9;
    }

    public void setVideoBarrageSwitch(int i9) {
        this.videoBarrageSwitch = i9;
    }

    public void setVideoDiamond(int i9) {
        this.videoDiamond = i9;
    }
}
