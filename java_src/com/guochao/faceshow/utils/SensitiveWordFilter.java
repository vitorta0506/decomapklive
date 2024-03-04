package com.guochao.faceshow.utils;

import android.text.TextUtils;
import androidx.collection.ArraySet;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import io.reactivex.k;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Set;
import vh.o;
/* loaded from: classes4.dex */
public class SensitiveWordFilter {
    private static final String TAG = "SensitiveWordFilter";
    private static SensitiveWordFilter sensitiveWordFilter;
    private Set<String> mStrings = new ArraySet();

    private SensitiveWordFilter() {
    }

    public static SensitiveWordFilter getInstance() {
        if (sensitiveWordFilter == null) {
            synchronized (SensitiveWordFilter.class) {
                if (sensitiveWordFilter == null) {
                    sensitiveWordFilter = new SensitiveWordFilter();
                }
            }
        }
        return sensitiveWordFilter;
    }

    private void initData() {
        k.just(1).map(new o<Integer, Integer>() { // from class: com.guochao.faceshow.utils.SensitiveWordFilter.1
            @Override // vh.o
            public Integer apply(Integer num) throws Exception {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    InputStreamReader inputStreamReader = new InputStreamReader(BaseApplication.getInstance().getResources().getAssets().open("keywords.txt"));
                    BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            } else if (!TextUtils.isEmpty(readLine)) {
                                SensitiveWordFilter.this.mStrings.add(readLine.toLowerCase());
                            }
                        } catch (Throwable th2) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                    bufferedReader.close();
                    inputStreamReader.close();
                } catch (Exception e10) {
                    LogUtils.e(SensitiveWordFilter.TAG, "error when read keywords ", e10);
                }
                LogUtils.i(SensitiveWordFilter.TAG, "加载关键词: " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
                return 1;
            }
        }).subscribeOn(di.a.b()).subscribe();
    }

    public String checkKeyword(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            String lowerCase = str.toLowerCase();
            for (String str2 : this.mStrings) {
                if (lowerCase.contains(str2.toLowerCase())) {
                    ToastUtils.debug("检查到敏感词：" + str2);
                    return str2;
                }
            }
            return null;
        } finally {
            LogUtils.i(TAG, "检测关键词: " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
        }
    }

    public boolean hasKeyword(String str) {
        return !TextUtils.isEmpty(checkKeyword(str));
    }

    public void updateWords(List<String> list) {
        if (list != null) {
            this.mStrings.addAll(list);
        }
    }
}
