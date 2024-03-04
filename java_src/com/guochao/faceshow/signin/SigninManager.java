package com.guochao.faceshow.signin;

import androidx.fragment.app.FragmentActivity;
import com.google.gson.Gson;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.signin.bean.SigninCache;
import com.guochao.faceshow.signin.bean.SigninResponse;
import com.guochao.faceshow.utils.GsonGetter;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020*J(\u0010,\u001a\u00020*2\u0006\u0010-\u001a\u00020.2\u0018\b\u0002\u0010/\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u000101\u0012\u0004\u0012\u00020*\u0018\u000100J\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u00020\u0004J\u000e\u00105\u001a\u00020*2\u0006\u00106\u001a\u00020$J\u0006\u00107\u001a\u00020*J\u0015\u00108\u001a\u00020*2\b\u00109\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010:J\u000e\u0010;\u001a\u00020*2\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010?\u001a\u00020*J\u000e\u0010@\u001a\u00020*2\u0006\u00106\u001a\u00020$R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005R$\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u001a8FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR$\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\n\"\u0004\b!\u0010\fR \u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006A"}, d2 = {"Lcom/guochao/faceshow/signin/SigninManager;", "", "()V", "diff", "", "Ljava/lang/Long;", "value", "", "mActivityWatchLiveSecond", "getMActivityWatchLiveSecond", "()I", "setMActivityWatchLiveSecond", "(I)V", "mLiveTimer", "Ljava/util/Timer;", "getMLiveTimer", "()Ljava/util/Timer;", "setMLiveTimer", "(Ljava/util/Timer;)V", "mLiveTimerTask", "Ljava/util/TimerTask;", "getMLiveTimerTask", "()Ljava/util/TimerTask;", "setMLiveTimerTask", "(Ljava/util/TimerTask;)V", "mSigninCache", "Lcom/guochao/faceshow/signin/bean/SigninCache;", "getMSigninCache", "()Lcom/guochao/faceshow/signin/bean/SigninCache;", "setMSigninCache", "(Lcom/guochao/faceshow/signin/bean/SigninCache;)V", "mWatchLiveSecond", "getMWatchLiveSecond", "setMWatchLiveSecond", "rechargeListeners", "", "Lcom/guochao/faceshow/signin/RechargeListener;", "getRechargeListeners", "()Ljava/util/List;", "setRechargeListeners", "(Ljava/util/List;)V", "addLiveMessageCount", "", "checkDayTask", "checkSignInTask", PushConstants.INTENT_ACTIVITY_NAME, "Landroidx/fragment/app/FragmentActivity;", "callBack", "Lkotlin/Function1;", "Lcom/guochao/faceshow/signin/bean/SigninResponse;", "getToday", "", "getTodayTime", "registerRechargeListener", "listener", "releaseWatchLiveListener", "resetActivityWatchLiveSecond", "loopNum", "(Ljava/lang/Integer;)V", "resetCount", "isLogin", "", "setServerDiffTime", "startWatchLiveListener", "unRegisterRechargeListener", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SigninManager {
    @NotNull
    public static final SigninManager INSTANCE = new SigninManager();
    @Nullable
    private static Long diff;
    private static int mActivityWatchLiveSecond;
    @Nullable
    private static Timer mLiveTimer;
    @Nullable
    private static TimerTask mLiveTimerTask;
    @Nullable
    private static SigninCache mSigninCache;
    private static int mWatchLiveSecond;
    @NotNull
    private static List<RechargeListener> rechargeListeners;

    static {
        GCApplication app = GCApplication.app();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("WatchLiveSecond");
        UserSessionViewModel.Companion companion = UserSessionViewModel.Companion;
        UserSessionModel current = companion.instance().current();
        sb2.append(current != null ? current.getUserId() : null);
        mWatchLiveSecond = SpUtils.getInt(app, sb2.toString(), 0);
        GCApplication app2 = GCApplication.app();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("ActivityWatchLiveSecond");
        UserSessionModel current2 = companion.instance().current();
        sb3.append(current2 != null ? current2.getUserId() : null);
        mActivityWatchLiveSecond = SpUtils.getInt(app2, sb3.toString(), 0);
        diff = 0L;
        rechargeListeners = new ArrayList();
    }

    private SigninManager() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void checkSignInTask$default(SigninManager signinManager, FragmentActivity fragmentActivity, Function1 function1, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            function1 = null;
        }
        signinManager.checkSignInTask(fragmentActivity, function1);
    }

    public final void addLiveMessageCount() {
        String today = getToday();
        if (getMSigninCache() == null) {
            Gson gson = GsonGetter.getGson();
            GCApplication app = GCApplication.app();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SigninCache");
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            sb2.append(current != null ? current.getUserId() : null);
            SigninCache signinCache = (SigninCache) gson.fromJson(SpUtils.getStr(app, sb2.toString(), ""), (Class<Object>) SigninCache.class);
            if (signinCache == null) {
                signinCache = new SigninCache(null, null, 0, 0, null, null, 0, 0, 255, null);
            }
            mSigninCache = signinCache;
        }
        SigninCache mSigninCache2 = getMSigninCache();
        if (mSigninCache2 != null) {
            if (!Intrinsics.areEqual(today, mSigninCache2.getDaySendMsgTime())) {
                mSigninCache2.setDaySendMsgTime(today);
                mSigninCache2.setDaySendMsgCount(1);
            } else {
                mSigninCache2.setDaySendMsgCount(mSigninCache2.getDaySendMsgCount() + 1);
            }
            mSigninCache2.setGrowSendMsgTime(today);
            mSigninCache2.setGrowSendMsgCount(mSigninCache2.getGrowSendMsgCount() + 1);
            GCApplication app2 = GCApplication.app();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("SigninCache");
            UserSessionModel current2 = UserSessionViewModel.Companion.instance().current();
            sb3.append(current2 != null ? current2.getUserId() : null);
            SpUtils.setStr(app2, sb3.toString(), GsonGetter.getGson().toJson(mSigninCache2));
        }
    }

    public final void checkDayTask() {
        String today = getToday();
        if (getMSigninCache() == null) {
            Gson gson = GsonGetter.getGson();
            GCApplication app = GCApplication.app();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SigninCache");
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            sb2.append(current != null ? current.getUserId() : null);
            SigninCache signinCache = (SigninCache) gson.fromJson(SpUtils.getStr(app, sb2.toString(), ""), (Class<Object>) SigninCache.class);
            if (signinCache == null) {
                signinCache = new SigninCache(null, null, 0, 0, null, null, 0, 0, 255, null);
            }
            mSigninCache = signinCache;
        }
        SigninCache mSigninCache2 = getMSigninCache();
        if (mSigninCache2 != null) {
            if (!Intrinsics.areEqual(today, mSigninCache2.getDaySendMsgTime())) {
                mSigninCache2.setDaySendMsgTime(today);
                mSigninCache2.setDaySendMsgCount(0);
            }
            if (!Intrinsics.areEqual(today, mSigninCache2.getDayWatchLiveTime())) {
                mSigninCache2.setDayWatchLiveTime(today);
                mSigninCache2.setDayWatchCount(0);
            }
            GCApplication app2 = GCApplication.app();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("SigninCache");
            UserSessionModel current2 = UserSessionViewModel.Companion.instance().current();
            sb3.append(current2 != null ? current2.getUserId() : null);
            SpUtils.setStr(app2, sb3.toString(), GsonGetter.getGson().toJson(mSigninCache2));
        }
    }

    public final void checkSignInTask(@NotNull FragmentActivity activity, @Nullable Function1<? super SigninResponse, Unit> function1) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), Dispatchers.getMain(), null, new SigninManager$checkSignInTask$1(activity, function1, new Ref.ObjectRef(), null), 2, null);
    }

    public final int getMActivityWatchLiveSecond() {
        return mActivityWatchLiveSecond;
    }

    @Nullable
    public final Timer getMLiveTimer() {
        return mLiveTimer;
    }

    @Nullable
    public final TimerTask getMLiveTimerTask() {
        return mLiveTimerTask;
    }

    @Nullable
    public final SigninCache getMSigninCache() {
        Gson gson = GsonGetter.getGson();
        GCApplication app = GCApplication.app();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SigninCache");
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        sb2.append(current != null ? current.getUserId() : null);
        SigninCache signinCache = (SigninCache) gson.fromJson(SpUtils.getStr(app, sb2.toString(), ""), (Class<Object>) SigninCache.class);
        return signinCache == null ? new SigninCache(null, null, 0, 0, null, null, 0, 0, 255, null) : signinCache;
    }

    public final int getMWatchLiveSecond() {
        return mWatchLiveSecond;
    }

    @NotNull
    public final List<RechargeListener> getRechargeListeners() {
        return rechargeListeners;
    }

    @NotNull
    public final String getToday() {
        try {
            Long l10 = diff;
            Date date = new Date((l10 != null ? l10.longValue() : 0L) + System.currentTimeMillis());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            String format = simpleDateFormat.format(date);
            Intrinsics.checkNotNullExpressionValue(format, "result.format(date)");
            return format;
        } catch (Exception e10) {
            e10.printStackTrace();
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            String format2 = simpleDateFormat2.format(new Date(System.currentTimeMillis()));
            Intrinsics.checkNotNullExpressionValue(format2, "result.format(Date(System.currentTimeMillis()))");
            return format2;
        }
    }

    public final long getTodayTime() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(14, 1);
        return calendar.getTimeInMillis();
    }

    public final void registerRechargeListener(@NotNull RechargeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (rechargeListeners.contains(listener)) {
            return;
        }
        rechargeListeners.add(listener);
    }

    public final void releaseWatchLiveListener() {
        Timer timer = mLiveTimer;
        if (timer != null) {
            timer.cancel();
        }
        TimerTask timerTask = mLiveTimerTask;
        if (timerTask != null) {
            timerTask.cancel();
        }
        mLiveTimer = null;
        mLiveTimerTask = null;
    }

    public final void resetActivityWatchLiveSecond(@Nullable Integer num) {
        GCApplication app = GCApplication.app();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ActivityWatchLiveDate");
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        sb2.append(current != null ? current.getUserId() : null);
        if (getTodayTime() - SpUtils.getLong(app, sb2.toString()) > (num != null ? num.intValue() : 1) * 86400000) {
            setMActivityWatchLiveSecond(0);
        }
    }

    public final void resetCount(boolean z10) {
        if (z10) {
            Gson gson = GsonGetter.getGson();
            GCApplication app = GCApplication.app();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SigninCache");
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            sb2.append(current != null ? current.getUserId() : null);
            SigninCache signinCache = (SigninCache) gson.fromJson(SpUtils.getStr(app, sb2.toString(), ""), (Class<Object>) SigninCache.class);
            if (signinCache == null) {
                signinCache = new SigninCache(null, null, 0, 0, null, null, 0, 0, 255, null);
            }
            mSigninCache = signinCache;
            return;
        }
        mSigninCache = new SigninCache(null, null, 0, 0, null, null, 0, 0, 255, null);
    }

    public final void setMActivityWatchLiveSecond(int i9) {
        if (mActivityWatchLiveSecond == 0) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(14, 1);
            GCApplication app = GCApplication.app();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ActivityWatchLiveDate");
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            sb2.append(current != null ? current.getUserId() : null);
            SpUtils.setLong(app, sb2.toString(), calendar.getTimeInMillis());
        }
        mActivityWatchLiveSecond = i9;
        GCApplication app2 = GCApplication.app();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("ActivityWatchLiveSecond");
        UserSessionModel current2 = UserSessionViewModel.Companion.instance().current();
        sb3.append(current2 != null ? current2.getUserId() : null);
        SpUtils.setInt(app2, sb3.toString(), i9);
    }

    public final void setMLiveTimer(@Nullable Timer timer) {
        mLiveTimer = timer;
    }

    public final void setMLiveTimerTask(@Nullable TimerTask timerTask) {
        mLiveTimerTask = timerTask;
    }

    public final void setMSigninCache(@Nullable SigninCache signinCache) {
        mSigninCache = signinCache;
    }

    public final void setMWatchLiveSecond(int i9) {
        mWatchLiveSecond = i9;
        GCApplication app = GCApplication.app();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("WatchLiveSecond");
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        sb2.append(current != null ? current.getUserId() : null);
        SpUtils.setInt(app, sb2.toString(), i9);
    }

    public final void setRechargeListeners(@NotNull List<RechargeListener> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        rechargeListeners = list;
    }

    public final void setServerDiffTime(long j10) {
        diff = Long.valueOf(j10);
    }

    public final void startWatchLiveListener() {
        if (mLiveTimer == null || mLiveTimerTask == null) {
            mLiveTimerTask = new TimerTask() { // from class: com.guochao.faceshow.signin.SigninManager$startWatchLiveListener$1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    SigninManager signinManager = SigninManager.INSTANCE;
                    if (signinManager.getMSigninCache() == null) {
                        Gson gson = GsonGetter.getGson();
                        GCApplication app = GCApplication.app();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SigninCache");
                        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
                        sb2.append(current != null ? current.getUserId() : null);
                        SigninCache signinCache = (SigninCache) gson.fromJson(SpUtils.getStr(app, sb2.toString(), ""), (Class<Object>) SigninCache.class);
                        if (signinCache == null) {
                            signinCache = new SigninCache(null, null, 0, 0, null, null, 0, 0, 255, null);
                        }
                        signinManager.setMSigninCache(signinCache);
                    }
                    SigninCache mSigninCache2 = signinManager.getMSigninCache();
                    if (mSigninCache2 != null) {
                        if (!Intrinsics.areEqual(signinManager.getToday(), mSigninCache2.getDayWatchLiveTime())) {
                            mSigninCache2.setDayWatchLiveTime(signinManager.getToday());
                            mSigninCache2.setDayWatchCount(60);
                        } else {
                            mSigninCache2.setDayWatchCount(mSigninCache2.getDayWatchCount() + 60);
                        }
                        mSigninCache2.setGrowWatchLiveTime(signinManager.getToday());
                        mSigninCache2.setGrowWatchCount(mSigninCache2.getGrowWatchCount() + 60);
                        GCApplication app2 = GCApplication.app();
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("SigninCache");
                        UserSessionModel current2 = UserSessionViewModel.Companion.instance().current();
                        sb3.append(current2 != null ? current2.getUserId() : null);
                        SpUtils.setStr(app2, sb3.toString(), GsonGetter.getGson().toJson(mSigninCache2));
                        signinManager.setMActivityWatchLiveSecond(signinManager.getMActivityWatchLiveSecond() + 60);
                    }
                }
            };
            Timer timer = new Timer();
            mLiveTimer = timer;
            timer.schedule(mLiveTimerTask, 60000L, 60000L);
        }
    }

    public final void unRegisterRechargeListener(@NotNull RechargeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (rechargeListeners.contains(listener)) {
            rechargeListeners.remove(listener);
        }
    }
}
