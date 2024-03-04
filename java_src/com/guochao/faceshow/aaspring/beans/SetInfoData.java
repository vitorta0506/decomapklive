package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SetInfoData {
    public String animal;
    private String birthday;
    private int birthdayUpdate;
    private String career;
    private String company;
    public String constellation;
    private String emotions;
    private String hobby;
    private String img;
    private List<UserPageBaseData.CoverData> imgHomePageList;
    private String industry;
    private String languages;
    private String makeFriends;
    private String nickName;
    private String nowAddress;
    private int sex;
    private int sexUpdate;
    private String signature;
    private String stature;
    private int userId;
    private String weight;

    public String getAnimal() {
        return this.animal;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public int getBirthdayUpdate() {
        return this.birthdayUpdate;
    }

    public String getCareer() {
        return this.career;
    }

    public String getCompany() {
        return this.company;
    }

    public String getConstellation() {
        return this.constellation;
    }

    public String getEmotions() {
        return this.emotions;
    }

    public String getHobby() {
        return this.hobby;
    }

    public String getImg() {
        return this.img;
    }

    public List<UserPageBaseData.CoverData> getImgHomePageList() {
        if (this.imgHomePageList == null) {
            this.imgHomePageList = new ArrayList();
        }
        return this.imgHomePageList;
    }

    public String getIndustry() {
        return this.industry;
    }

    public String getLanguages() {
        return this.languages;
    }

    public String getMakeFriends() {
        return this.makeFriends;
    }

    public String getNickName() {
        return this.nickName;
    }

    public String getNowAddress() {
        return this.nowAddress;
    }

    public int getSex() {
        return this.sex;
    }

    public int getSexUpdate() {
        return this.sexUpdate;
    }

    public String getSignature() {
        if (TextUtils.isEmpty(this.signature)) {
            return BaseApplication.getInstance().getString(R.string.user_info_default_signature);
        }
        return this.signature;
    }

    public String getStature() {
        return this.stature;
    }

    public int getUserId() {
        return this.userId;
    }

    public String getWeight() {
        return this.weight;
    }

    public void setAnimal(String str) {
        this.animal = str;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public void setBirthdayUpdate(int i9) {
        this.birthdayUpdate = i9;
    }

    public void setCareer(String str) {
        this.career = str;
    }

    public void setCompany(String str) {
        this.company = str;
    }

    public void setConstellation(String str) {
        this.constellation = str;
    }

    public void setEmotions(String str) {
        this.emotions = str;
    }

    public void setHobby(String str) {
        this.hobby = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setImgHomePageList(List<UserPageBaseData.CoverData> list) {
        this.imgHomePageList = list;
    }

    public void setIndustry(String str) {
        this.industry = str;
    }

    public void setLanguages(String str) {
        this.languages = str;
    }

    public void setMakeFriends(String str) {
        this.makeFriends = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setNowAddress(String str) {
        this.nowAddress = str;
    }

    public void setSex(int i9) {
        this.sex = i9;
    }

    public void setSexUpdate(int i9) {
        this.sexUpdate = i9;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public void setStature(String str) {
        this.stature = str;
    }

    public void setUserId(int i9) {
        this.userId = i9;
    }

    public void setWeight(String str) {
        this.weight = str;
    }
}
