package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CountryBean;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.manager.user.UserModelUtils;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog;
import com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaCacheManager;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.push.CustomPushReceiver;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.TXIMUtils;
/* loaded from: classes3.dex */
public class e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements vh.o<Integer, Integer> {
        a() {
        }

        @Override // vh.o
        /* renamed from: a */
        public Integer apply(Integer num) throws Exception {
            return 1;
        }
    }

    public static void a(Context context) {
        if (!TextUtils.isEmpty(SpUtils.getStr(context, Contants.USER_ID))) {
            ThirdPushHelper.setThirdPushToken("0", null, true);
        }
        SpUtils.setStr(BaseApplication.getInstance(), Contants.USER_VIP_INFO, "");
        SpUtils.setStr(BaseApplication.getInstance(), Contants.USER_MVP_INFO, "");
        SpUtils.setStr(BaseApplication.getInstance(), Contants.USER_ID, "");
        SpUtils.setStr(BaseApplication.getInstance(), Contants.TencentSignature, "");
        SpUtils.setStr(BaseApplication.getInstance(), Contants.USER_TOKEN, "");
        SpUtils.setBool(BaseApplication.getInstance(), Contants.IS_LOGIN, false);
        SpUtils.setStr(BaseApplication.getInstance(), "channel", "");
        SpUtils.setInt(context, Contants.LAST_PAGE, 0);
        SpUtils.setInt(context, Contants.LAST_PAGE_HOME, 0);
        ba.a.r().y();
        com.guochao.faceshow.aaspring.manager.i.u().f16494d = false;
        PushUtils.removeAliasRunnable();
        BaseFaceCastRequest.f16244w = "";
        BaseFaceCastRequest.f16245x = "";
        if (SpUtils.getBool(BaseApplication.getInstance(), "KEY_LICENCE_DIALOG_HAS_SHOWED") || !BaseConfig.isChinese()) {
            TXIMUtils.logoutTIM();
            io.reactivex.k.just(1).map(new a()).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new SimpleObserver());
            CustomPushReceiver.a();
        }
        com.guochao.faceshow.aaspring.manager.a.g().e();
        BaseApplication.getInstance().normalLogined = false;
        SigninManager.INSTANCE.resetCount(false);
    }

    public static UserBean b(Context context) {
        UserBean userBean = new UserBean();
        userBean.token = SpUtils.getStr(context, Contants.USER_TOKEN);
        userBean.userId = SpUtils.getStr(context, Contants.USER_ID, userBean.userId);
        userBean.levelId = SpUtils.getInt(context, Contants.USER_levelId, userBean.levelId);
        userBean.mobile = SpUtils.getStr(context, "phone", userBean.mobile);
        userBean.pwd = SpUtils.getStr(context, Contants.USER_PWD, userBean.pwd);
        userBean.statues = SpUtils.getInt(context, Contants.USER_statues, userBean.statues);
        userBean.balance = SpUtils.getFloat(context, Contants.USER_balance, userBean.balance).floatValue();
        userBean.nickName = SpUtils.getStr(context, Contants.USER_NICKNAME, userBean.nickName);
        userBean.sex = SpUtils.getInt(context, Contants.USER_SEX, userBean.sex);
        userBean.img = SpUtils.getStr(context, Contants.USER_HEADIMG, userBean.img);
        userBean.email = SpUtils.getStr(context, "email", userBean.email);
        userBean.intro = SpUtils.getStr(context, Contants.USER_intro, userBean.intro);
        userBean.signature = SpUtils.getStr(context, "signature", userBean.signature);
        userBean.setBirthdayStr(SpUtils.getStr(context, "user_birthday", userBean.getBirthdayStr()));
        userBean.job = SpUtils.getStr(context, Contants.JOB, userBean.job);
        userBean.stature = SpUtils.getStr(context, "height", userBean.stature);
        userBean.weight = SpUtils.getStr(context, Contants.Weight, userBean.weight);
        userBean.hobbys = SpUtils.getStr(context, Contants.Hobby, userBean.hobbys);
        userBean.tencentSignature = SpUtils.getStr(context, Contants.TencentSignature, userBean.tencentSignature);
        userBean.payPassword = SpUtils.getStr(context, Contants.payPassword, userBean.payPassword);
        UserBean.UserSet userSet = new UserBean.UserSet();
        userBean.userSet = userSet;
        userSet.distance = Integer.parseInt(SpUtils.getStr(context, Contants.DISTANCE, String.valueOf(userSet.distance)));
        UserBean.UserSet userSet2 = userBean.userSet;
        userSet2.closeDistance = Integer.parseInt(SpUtils.getStr(context, Contants.CLOSEDISTANCE, String.valueOf(userSet2.closeDistance)));
        UserBean.UserSet userSet3 = userBean.userSet;
        userSet3.friends = Integer.parseInt(SpUtils.getStr(context, Contants.FRIENDS, String.valueOf(userSet3.friends)));
        UserBean.UserSet userSet4 = userBean.userSet;
        userSet4.nearby = Integer.parseInt(SpUtils.getStr(context, Contants.NEARBY, String.valueOf(userSet4.nearby)));
        UserBean.UserInfoDetail userInfoDetail = new UserBean.UserInfoDetail();
        userBean.userInfoDetail = userInfoDetail;
        userInfoDetail.diamond = SpUtils.getInt(context, Contants.DIAMOND);
        userBean.userInfoDetail.tokenNum = SpUtils.getInt(context, Contants.GAME_COIN);
        userBean.userInfoDetail.regType = SpUtils.getInt(context, Contants.REG_TYPE);
        p9.a.g().C(userBean.userInfoDetail.diamond, false);
        p9.a.g().e().setTokenNum(userBean.userInfoDetail.tokenNum);
        userBean.country = SpUtils.getStr(context, Contants.CURRENT_COUNTRY_CODING, userBean.country);
        userBean.countryFlag = SpUtils.getStr(context, Contants.CURRENT_COUNTRY_FLAG, userBean.countryFlag);
        userBean.setUpdateCopywriting(SpUtils.getStr(context, Contants.CURRENT_UPDATE_COPYWRITING, userBean.getUpdateCopywriting()));
        userBean.setIsUpdate(SpUtils.getInt(context, Contants.USER_ISUPDATE, userBean.getIsUpdate()));
        userBean.setVideoBarrageSwitch(SpUtils.getInt(context, Contants.USER_VIDEO_DANMU));
        userBean.setAppointState(SpUtils.getInt(context, Contants.USER_APPOINT_STATE));
        userBean.setChannel(SpUtils.getStr(context, "channel"));
        userBean.setRecharged(SpUtils.getInt(context, Contants.RECHARGED, 0));
        return userBean;
    }

    public static UserBean c(Context context) {
        UserBean userBean = new UserBean();
        userBean.token = SpUtils.getStr(context, Contants.USER_TOKEN);
        userBean.userId = SpUtils.getStr(context, Contants.USER_ID);
        userBean.levelId = SpUtils.getInt(context, Contants.USER_levelId);
        userBean.mobile = SpUtils.getStr(context, "phone");
        userBean.pwd = SpUtils.getStr(context, Contants.USER_PWD);
        userBean.statues = SpUtils.getInt(context, Contants.USER_statues);
        userBean.balance = SpUtils.getFloat(context, Contants.USER_balance).floatValue();
        userBean.nickName = SpUtils.getStr(context, Contants.USER_NICKNAME);
        userBean.sex = SpUtils.getInt(context, Contants.USER_SEX);
        userBean.img = SpUtils.getStr(context, Contants.USER_HEADIMG);
        userBean.email = SpUtils.getStr(context, "email");
        userBean.intro = SpUtils.getStr(context, Contants.USER_intro);
        userBean.signature = SpUtils.getStr(context, "signature");
        userBean.setBirthdayStr(SpUtils.getStr(context, "user_birthday"));
        userBean.job = SpUtils.getStr(context, Contants.JOB);
        userBean.stature = SpUtils.getStr(context, "height");
        userBean.weight = SpUtils.getStr(context, Contants.Weight);
        userBean.hobbys = SpUtils.getStr(context, Contants.Hobby);
        userBean.tencentSignature = SpUtils.getStr(context, Contants.TencentSignature);
        userBean.payPassword = SpUtils.getStr(context, Contants.payPassword);
        userBean.userSet = new UserBean.UserSet();
        userBean.avatar = SpUtils.getStr(context, Contants.USER_AVATAR);
        userBean.setUserAge(SpUtils.getInt(context, Contants.USER_AGE));
        userBean.setAppointState(SpUtils.getInt(context, Contants.USER_APPOINT_STATE));
        userBean.setRiskLevel(SpUtils.getInt(context, Contants.USER_RISK_LEVEL));
        userBean.setChannel(SpUtils.getStr(context, "channel"));
        userBean.setRecharged(SpUtils.getInt(context, Contants.RECHARGED, 0));
        try {
            userBean.userSet.distance = Integer.parseInt(SpUtils.getStr(context, Contants.DISTANCE, "0"));
        } catch (Exception unused) {
        }
        try {
            userBean.userSet.closeDistance = Integer.parseInt(SpUtils.getStr(context, Contants.CLOSEDISTANCE, "0"));
        } catch (Exception unused2) {
        }
        try {
            userBean.userSet.friends = Integer.parseInt(SpUtils.getStr(context, Contants.FRIENDS, "0"));
        } catch (Exception unused3) {
        }
        try {
            userBean.userSet.nearby = Integer.parseInt(SpUtils.getStr(context, Contants.NEARBY, "0"));
        } catch (Exception unused4) {
        }
        if (userBean.userInfoDetail == null) {
            userBean.userInfoDetail = new UserBean.UserInfoDetail();
        }
        userBean.userInfoDetail.diamond = SpUtils.getInt(context, Contants.DIAMOND);
        userBean.userInfoDetail.tokenNum = SpUtils.getInt(context, Contants.GAME_COIN);
        userBean.userInfoDetail.regType = SpUtils.getInt(context, Contants.REG_TYPE);
        p9.a.g().C(userBean.userInfoDetail.diamond, false);
        p9.a.g().e().setTokenNum(userBean.userInfoDetail.tokenNum);
        String str = SpUtils.getStr(context, Contants.CURRENT_COUNTRY);
        if (!TextUtils.isEmpty(str)) {
            CountryBean countryBean = (CountryBean) GsonGetter.getGson().fromJson(str, (Class<Object>) CountryBean.class);
            userBean.country = countryBean.getCname();
            userBean.countryFlag = TextUtils.isEmpty(countryBean.getLogo()) ? "" : countryBean.getLogo();
            userBean.countryId = countryBean.getCountry_id();
        }
        String str2 = SpUtils.getStr(context, Contants.USER_VIP_INFO);
        if (!TextUtils.isEmpty(str2)) {
            userBean.setUserVipMsg((UserVipData) GsonGetter.getGson().fromJson(str2, (Class<Object>) UserVipData.class));
        }
        String str3 = SpUtils.getStr(context, Contants.USER_MVP_INFO);
        if (!TextUtils.isEmpty(str3)) {
            userBean.setUserMvpInfo((UserBean.UserMvpInfo) GsonGetter.getGson().fromJson(str3, (Class<Object>) UserBean.UserMvpInfo.class));
        }
        UserSessionViewModel.instance().updateUserSession(UserModelUtils.INSTANCE.convert(userBean));
        return userBean;
    }

    public static void d(Context context, g7.a<UserBean> aVar) {
        j e10;
        if (aVar.a() == 40003) {
            ToastUtils.showToast(context, context.getString(R.string.device_is_more));
        }
        if (aVar.a() == 40007 && (e10 = j.e()) != null && e10.m() != null) {
            if (e10.m().getType() == 2) {
                ToastUtils.showToast(context, (int) R.string.Error_in_mailbox_or_password);
            } else {
                ToastUtils.showToast(context, (int) R.string.Error_in_cell_phone_number_or_password);
            }
        }
        if (aVar.a() == 40010) {
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.network_busy);
        }
    }

    public static void e(Context context, FaceCastBaseResponse<UserBean> faceCastBaseResponse) {
        f(context, faceCastBaseResponse.getResult());
    }

    public static void f(Context context, UserBean userBean) {
        LogUtils.i("FaceCast:LoginHelperhandleSuccess263", userBean.getToken());
        b8.e.g().d(userBean, true, true, true);
        Intent intent = new Intent(context, MainActivity.class);
        intent.putExtra("with_token", true);
        MemoryCache.getInstance().put(userBean);
        intent.addFlags(268468224);
        context.startActivity(intent);
        if (context instanceof Activity) {
            ((Activity) context).overridePendingTransition(R.anim.do_nothing, R.anim.down_out);
        }
        LiveAreaCacheManager.getInstance().refreshLiveAreaHistory();
        SigninManager.INSTANCE.resetCount(true);
    }

    public static boolean g(BaseActivity baseActivity, UserBean userBean, int i9, LoginCancelAccountDialog.b bVar) {
        if (i9 == 0 || i9 == 4) {
            return false;
        }
        LoginCancelAccountDialog.U1(baseActivity.getSupportFragmentManager(), userBean).setOnConfirmListener(bVar);
        return true;
    }

    public static void h(Context context, UserBean userBean, String str, boolean z10) {
        SpUtils.setBool(context, Contants.IS_LOGIN, true);
        LogUtils.e("FaceCast:LoginHelpertoken", str);
        SpUtils.setStr(context, Contants.USER_TOKEN, str);
        if (z10) {
            PushUtils.setJPushAlias(userBean.getUserId());
        }
        SpUtils.setStr(context, Contants.USER_ID, userBean.userId);
        BaseFaceCastRequest.f16244w = userBean.userId;
        BaseFaceCastRequest.f16245x = userBean.token;
        SpUtils.setInt(context, Contants.USER_AGE, userBean.getUserAge());
        SpUtils.setInt(context, Contants.USER_levelId, userBean.levelId);
        SpUtils.setStr(context, "phone", userBean.mobile);
        SpUtils.setStr(context, Contants.USER_PWD, userBean.pwd);
        SpUtils.setInt(context, Contants.USER_statues, userBean.statues);
        SpUtils.setFloat(context, Contants.USER_balance, Float.valueOf(userBean.balance));
        SpUtils.setStr(context, Contants.USER_NICKNAME, userBean.nickName);
        SpUtils.setInt(context, Contants.USER_SEX, userBean.sex);
        SpUtils.setStr(context, Contants.USER_HEADIMG, userBean.img);
        SpUtils.setStr(context, "email", userBean.email);
        SpUtils.setStr(context, Contants.USER_intro, userBean.intro);
        SpUtils.setStr(context, "signature", TextUtils.isEmpty(userBean.signature) ? BaseApplication.getInstance().getString(R.string.user_info_default_signature) : userBean.signature);
        SpUtils.setStr(context, "user_birthday", userBean.getBirthdayStr());
        SpUtils.setStr(context, Contants.JOB, userBean.job);
        SpUtils.setStr(context, "height", userBean.stature);
        SpUtils.setStr(context, Contants.Weight, userBean.weight);
        SpUtils.setStr(context, Contants.Hobby, userBean.hobbys);
        SpUtils.setStr(context, Contants.TencentSignature, userBean.tencentSignature);
        SpUtils.setStr(context, Contants.payPassword, userBean.payPassword);
        SpUtils.setInt(context, Contants.RECHARGED, userBean.getRecharged());
        UserBean.UserSet userSet = userBean.userSet;
        if (userSet != null) {
            SpUtils.setStr(context, Contants.DISTANCE, String.valueOf(userSet.distance));
            SpUtils.setStr(context, Contants.CLOSEDISTANCE, String.valueOf(userBean.userSet.closeDistance));
            SpUtils.setStr(context, Contants.FRIENDS, String.valueOf(userBean.userSet.friends));
            SpUtils.setStr(context, Contants.NEARBY, String.valueOf(userBean.userSet.nearby));
        }
        if (userBean.userInfoDetail != null) {
            SpUtils.setInt(BaseApplication.getInstance(), Contants.DIAMOND, userBean.userInfoDetail.diamond);
            SpUtils.setInt(BaseApplication.getInstance(), Contants.GAME_COIN, userBean.userInfoDetail.tokenNum);
            SpUtils.setInt(BaseApplication.getInstance(), Contants.REG_TYPE, userBean.userInfoDetail.regType);
            p9.a.g().B(userBean.userInfoDetail.diamond);
            p9.a.g().e().setTokenNum(userBean.userInfoDetail.tokenNum);
        }
        if (userBean.getUserVipMsg() != null && userBean.getUserVipMsg().getIsVip() != 0) {
            SpUtils.setStr(context, Contants.USER_VIP_INFO, GsonGetter.getGson().toJson(userBean.getVipInfo()));
        }
        if (userBean.getUserMvpInfo() != null) {
            SpUtils.setStr(context, Contants.USER_MVP_INFO, GsonGetter.getGson().toJson(userBean.getUserMvpInfo()));
        }
        SpUtils.setStr(context, Contants.CURRENT_COUNTRY, GsonGetter.getGson().toJson(new CountryBean(userBean.country, "", userBean.countryId)));
        SpUtils.setStr(context, Contants.CURRENT_COUNTRY_CODING, userBean.country);
        SpUtils.setStr(context, Contants.CURRENT_COUNTRY_FLAG, userBean.countryFlag);
        SpUtils.setStr(context, Contants.CURRENT_UPDATE_COPYWRITING, userBean.getUpdateCopywriting());
        SpUtils.setInt(context, Contants.USER_ISUPDATE, userBean.getIsUpdate());
        SpUtils.setInt(context, Contants.USER_VIDEO_DANMU, userBean.getVideoBarrageSwitch());
        SpUtils.setStr(context, Contants.USER_AVATAR, userBean.avatar);
        SpUtils.setInt(context, Contants.USER_APPOINT_STATE, userBean.getAppointState());
        SpUtils.setInt(context, Contants.USER_RISK_LEVEL, userBean.getRiskLevel());
        SpUtils.setStr(context, "channel", userBean.getChannel());
    }
}
