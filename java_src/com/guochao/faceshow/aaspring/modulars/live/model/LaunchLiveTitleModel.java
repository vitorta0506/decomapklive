package com.guochao.faceshow.aaspring.modulars.live.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b8.e;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveCoverData;
import com.guochao.faceshow.aaspring.beans.PersonsTitleBean;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import g7.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes3.dex */
public class LaunchLiveTitleModel {
    private boolean isLoaded;
    private boolean isPersonsLoaded;
    private boolean isReleased;
    private String normalTitle;
    private String personsTitle;
    private List<String> personsTitles = new ArrayList();
    private String picUrl;
    private int privateOnlineNum;

    /* loaded from: classes3.dex */
    public interface OnResultListener {
        void onResult(LaunchLiveTitleModel launchLiveTitleModel);
    }

    public LaunchLiveTitleModel() {
        this.privateOnlineNum = 100;
        BaseApplication baseApplication = BaseApplication.getInstance();
        this.picUrl = SpUtils.getStr(baseApplication, "live_cover" + e.g().getUserId());
        BaseApplication baseApplication2 = BaseApplication.getInstance();
        this.normalTitle = SpUtils.getStr(baseApplication2, "live_text" + e.g().getUserId());
        BaseApplication baseApplication3 = BaseApplication.getInstance();
        this.personsTitle = SpUtils.getStr(baseApplication3, "live_text_persons" + e.g().getUserId());
        BaseApplication baseApplication4 = BaseApplication.getInstance();
        this.privateOnlineNum = SpUtils.getInt(baseApplication4, "privateOnlineNum" + e.g().getUserId(), 100);
    }

    public void getNetPersonsTitles(final OnResultListener onResultListener) {
        if (this.isReleased) {
            return;
        }
        new PostRequest("tokens/live/newLive/getLiveCover").I(3).K(true).x().I(3).M(new c<List<PersonsTitleBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.LaunchLiveTitleModel.1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull a<List<PersonsTitleBean>> aVar) {
                LogUtils.i("LiveRoom", "PERSONS_LIVE_TITLES = " + aVar.a());
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<PersonsTitleBean> list, @NonNull FaceCastBaseResponse<List<PersonsTitleBean>> faceCastBaseResponse) {
                if (LaunchLiveTitleModel.this.isReleased) {
                    return;
                }
                LaunchLiveTitleModel.this.isPersonsLoaded = true;
                if (list != null) {
                    for (PersonsTitleBean personsTitleBean : list) {
                        LaunchLiveTitleModel.this.personsTitles.add(personsTitleBean.getMorePeopleInfoName());
                    }
                    if (TextUtils.isEmpty(LaunchLiveTitleModel.this.personsTitle) && !LaunchLiveTitleModel.this.personsTitles.isEmpty()) {
                        LaunchLiveTitleModel launchLiveTitleModel = LaunchLiveTitleModel.this;
                        launchLiveTitleModel.personsTitle = (String) launchLiveTitleModel.personsTitles.get(new Random().nextInt(LaunchLiveTitleModel.this.personsTitles.size()));
                    }
                    OnResultListener onResultListener2 = onResultListener;
                    if (onResultListener2 != null) {
                        onResultListener2.onResult(LaunchLiveTitleModel.this);
                    }
                }
            }
        });
    }

    public void getNetTitleAndCover(final OnResultListener onResultListener) {
        if (this.isReleased) {
            return;
        }
        new PostRequest("tokens/live/newLive/getLiveCoverAndName").I(3).K(true).x().I(3).M(new c<LiveCoverData>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.LaunchLiveTitleModel.2
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull a<LiveCoverData> aVar) {
                if (LaunchLiveTitleModel.this.isReleased) {
                    return;
                }
                LogUtils.i("LiveRoom", "SELECT_MY_LIVE = " + aVar.a());
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable LiveCoverData liveCoverData, @NonNull FaceCastBaseResponse<LiveCoverData> faceCastBaseResponse) {
                if (LaunchLiveTitleModel.this.isReleased) {
                    return;
                }
                LaunchLiveTitleModel.this.isLoaded = true;
                if (liveCoverData != null) {
                    LaunchLiveTitleModel.this.privateOnlineNum = liveCoverData.getPrivateOnlineNum();
                    LaunchLiveTitleModel.this.normalTitle = liveCoverData.getInfoName();
                    if (liveCoverData.getMorePeopleInfoName() != null && !TextUtils.isEmpty(liveCoverData.getMorePeopleInfoName())) {
                        LaunchLiveTitleModel.this.personsTitle = liveCoverData.getMorePeopleInfoName();
                    }
                    if (!TextUtils.isEmpty(liveCoverData.getLiveImg())) {
                        LaunchLiveTitleModel.this.picUrl = liveCoverData.getLiveImg();
                    }
                }
                LaunchLiveTitleModel.this.saveModelData();
                OnResultListener onResultListener2 = onResultListener;
                if (onResultListener2 != null) {
                    onResultListener2.onResult(LaunchLiveTitleModel.this);
                }
            }
        });
    }

    public String getNormalTitle() {
        return this.normalTitle;
    }

    public String getPersonsTitle() {
        return this.personsTitle;
    }

    public List<String> getPersonsTitles() {
        return this.personsTitles;
    }

    public String getPicUrl() {
        return this.picUrl;
    }

    public int getPrivateOnlineNum() {
        return this.privateOnlineNum;
    }

    public boolean isLoaded() {
        return this.isLoaded;
    }

    public boolean isPersonsLoaded() {
        return this.isPersonsLoaded;
    }

    public void release() {
        this.isReleased = true;
    }

    public void saveModelData() {
        SpUtils.setStr(BaseApplication.getInstance(), "live_cover" + e.g().getUserId(), this.picUrl);
        BaseApplication baseApplication = BaseApplication.getInstance();
        String str = "live_text" + e.g().getUserId();
        String str2 = this.normalTitle;
        SpUtils.setStr(baseApplication, str, str2 == null ? "" : str2.trim());
        BaseApplication baseApplication2 = BaseApplication.getInstance();
        String str3 = "live_text_persons" + e.g().getUserId();
        String str4 = this.personsTitle;
        SpUtils.setStr(baseApplication2, str3, str4 != null ? str4.trim() : "");
        SpUtils.setInt(BaseApplication.getInstance(), "privateOnlineNum" + e.g().getUserId(), this.privateOnlineNum);
    }

    public void setLoaded(boolean z10) {
        this.isLoaded = z10;
    }

    public void setNormalTitle(String str) {
        this.normalTitle = str;
    }

    public void setOnResultListener(boolean z10, OnResultListener onResultListener) {
        if (this.isLoaded) {
            onResultListener.onResult(this);
        } else {
            getNetTitleAndCover(onResultListener);
        }
    }

    public void setPersonsTitle(String str) {
        this.personsTitle = str;
    }

    public void setPicUrl(String str) {
        this.picUrl = str;
    }

    public void setPrivateOnlineNum(int i9) {
        this.privateOnlineNum = i9;
    }
}
