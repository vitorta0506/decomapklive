package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.bean.CountryCacheData;
import com.guochao.faceshow.bean.CountryData;
import java.util.List;
/* loaded from: classes3.dex */
public class CountryUtils {

    /* loaded from: classes3.dex */
    public interface CountryCallBack {
        void onResponse(@Nullable List<CountryData> list);
    }

    /* loaded from: classes3.dex */
    public interface NationalFlagAndCodeCallBack {
        void onResponse(@Nullable CountryData countryData);
    }

    public static void getCountryData(Context context, final CountryCallBack countryCallBack) {
        if (CountryCacheData.countryDataList.size() > 0) {
            countryCallBack.onResponse(CountryCacheData.countryDataList);
        }
        new PostRequest("api/countrynamemultilingual/list").O(context).M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<CountryData>>() { // from class: com.guochao.faceshow.aaspring.utils.CountryUtils.1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<List<CountryData>> aVar) {
                if (CountryCallBack.this == null || CountryCacheData.countryDataList.size() != 0) {
                    return;
                }
                CountryCallBack.this.onResponse(null);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<CountryData> list, @NonNull FaceCastBaseResponse<List<CountryData>> faceCastBaseResponse) {
                if (CountryCacheData.countryDataList.size() == 0) {
                    CountryCallBack.this.onResponse(list);
                }
                if (list != null) {
                    CountryCacheData.countryDataList.clear();
                    CountryCacheData.countryDataList.addAll(list);
                }
            }
        });
    }

    public static void getNationalFlagAndCode(Context context, final NationalFlagAndCodeCallBack nationalFlagAndCodeCallBack) {
        new PostRequest("api/Country/getCountryMsg").O(context).M(new com.guochao.faceshow.aaspring.base.http.callback.c<CountryData>() { // from class: com.guochao.faceshow.aaspring.utils.CountryUtils.2
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<CountryData> aVar) {
                NationalFlagAndCodeCallBack nationalFlagAndCodeCallBack2 = NationalFlagAndCodeCallBack.this;
                if (nationalFlagAndCodeCallBack2 != null) {
                    nationalFlagAndCodeCallBack2.onResponse(null);
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable CountryData countryData, @NonNull FaceCastBaseResponse<CountryData> faceCastBaseResponse) {
                NationalFlagAndCodeCallBack nationalFlagAndCodeCallBack2 = NationalFlagAndCodeCallBack.this;
                if (nationalFlagAndCodeCallBack2 != null) {
                    nationalFlagAndCodeCallBack2.onResponse(countryData);
                }
            }
        });
    }
}
