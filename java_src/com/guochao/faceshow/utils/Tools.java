package com.guochao.faceshow.utils;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.google.gson.Gson;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ShortVideoViewModel;
import com.guochao.faceshow.aaspring.utils.DateFormatProvider;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.views.e;
import java.io.File;
import java.util.Date;
import java.util.regex.Pattern;
import org.greenrobot.eventbus.EventBus;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class Tools {
    private static Gson mGson;

    public static void addBlackList(final Activity activity, final String str) {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(activity, new e.a() { // from class: com.guochao.faceshow.utils.Tools.1
            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    Tools.addBlackName(activity, str);
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* bridge */ /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar2) {
                com.guochao.faceshow.views.d.a(this, eVar2);
            }
        });
        eVar.f(activity.getResources().getString(R.string.la_black_friend));
        eVar.k(activity.getResources().getString(R.string.f16064ok));
        eVar.i(activity.getResources().getString(R.string.str_no));
        eVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addBlackName(final Activity activity, String str) {
        new PostRequest().O(activity).Q(Contants.BLACL_LIST_ADD).D("From_Account", SpUtils.getStr(activity, Contants.USER_ID)).D("To_Account", str).M(new com.guochao.faceshow.aaspring.base.http.callback.c<String>() { // from class: com.guochao.faceshow.utils.Tools.2
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str2, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                Activity activity2 = activity;
                ToastUtils.showToast(activity2, activity2.getResources().getString(R.string.profile_black_succ));
                EventBus.getDefault().post(LOCAL_EVENT_MSG.BLACK_NAME_ADD_OTHER);
            }
        });
    }

    public static Bitmap captureScreen(Window window) {
        if (window == null) {
            return null;
        }
        View decorView = window.getDecorView();
        decorView.setDrawingCacheEnabled(true);
        decorView.buildDrawingCache();
        Bitmap drawingCache = decorView.getDrawingCache();
        if (drawingCache == null) {
            return null;
        }
        drawingCache.setHasAlpha(false);
        drawingCache.prepareToDraw();
        return drawingCache;
    }

    public static String dateToString(Date date, String str) {
        return DateFormatProvider.getAppLanguageFormatter(str).format(date);
    }

    public static void deleteDirWihtFile(File file) {
        File[] listFiles;
        File[] listFiles2;
        if (file == null || !file.exists() || !file.isDirectory() || (listFiles = file.listFiles()) == null) {
            return;
        }
        if (listFiles.length > 0 && (listFiles2 = file.listFiles()) != null) {
            for (File file2 : listFiles2) {
                if (file2 != null) {
                    if (file2.isFile()) {
                        file2.delete();
                    } else if (file2.isDirectory()) {
                        deleteDirWihtFile(file2);
                    }
                }
            }
        }
        file.delete();
    }

    protected static Gson getGson() {
        if (mGson == null) {
            mGson = new Gson();
        }
        return mGson;
    }

    public static Boolean isNumber(String str) {
        return Boolean.valueOf(str.matches("^[0-9]{6,18}$"));
    }

    public static boolean isPasword(String str) {
        return Pattern.compile("^[a-zA-Z0-9]{6,18}$").matcher(str).find();
    }

    public static void playLog(Activity activity, String str, String str2) {
        ((ShortVideoViewModel) new ViewModelProvider((ViewModelStoreOwner) activity).get(ShortVideoViewModel.class)).log(SpUtils.getStr(activity, Contants.USER_ID), str, str2);
    }

    public static String replace(String str) {
        return str != null ? Pattern.compile(IOUtils.LINE_SEPARATOR_UNIX).matcher(str).replaceAll(" ") : "";
    }

    public static String timeString(String str, Context context) {
        if (context == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (TextUtils.isEmpty(str)) {
            str = "" + (System.currentTimeMillis() - 60000);
        }
        long longValue = Long.valueOf(str).longValue();
        long j10 = currentTimeMillis - longValue;
        long j11 = (((j10 / 60) / 1000) / 60) / 24;
        Date date = new Date(longValue);
        if (j11 > 30) {
            long j12 = j11 / 30;
            if (j12 >= 6) {
                return dateToString(date, "MM/dd/yyyy");
            }
            if (j12 == 1) {
                return j12 + " " + context.getString(R.string.time_month_ago);
            }
            return j12 + " " + context.getString(R.string.time_months_ago);
        }
        int i9 = (j11 > 1L ? 1 : (j11 == 1L ? 0 : -1));
        if (i9 > 0) {
            return j11 + " " + context.getString(R.string.time_days_ago);
        } else if (i9 == 0) {
            return j11 + " " + context.getString(R.string.time_day_ago);
        } else {
            long j13 = ((j10 / 1000) / 60) / 60;
            int i10 = (j13 > 1L ? 1 : (j13 == 1L ? 0 : -1));
            if (i10 > 0) {
                return j13 + " " + context.getString(R.string.time_huors_ago);
            } else if (i10 == 0) {
                return j13 + " " + context.getString(R.string.time_huor_ago);
            } else {
                int i11 = (((int) j10) / 1000) / 60;
                if (i11 < 2) {
                    i11 = 1;
                }
                if (i11 == 1) {
                    return context.getString(R.string.message_time);
                }
                return i11 + " " + context.getString(R.string.time_minutes_ago);
            }
        }
    }
}
