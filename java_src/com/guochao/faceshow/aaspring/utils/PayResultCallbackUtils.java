package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class PayResultCallbackUtils {
    private static PayResultCallbackUtils instance;
    private static final ArrayList<PayResultCallback> resultList = new ArrayList<>();
    private Context mContext;

    private PayResultCallbackUtils(Context context) {
        this.mContext = context;
    }

    public static synchronized PayResultCallbackUtils getInstance(Context context) {
        PayResultCallbackUtils payResultCallbackUtils;
        synchronized (PayResultCallbackUtils.class) {
            if (instance == null) {
                instance = new PayResultCallbackUtils(context);
            }
            payResultCallbackUtils = instance;
        }
        return payResultCallbackUtils;
    }

    public void addCancel() {
        Iterator<PayResultCallback> it = resultList.iterator();
        while (it.hasNext()) {
            it.next().onPayCancel();
        }
    }

    public void addError() {
        Iterator<PayResultCallback> it = resultList.iterator();
        while (it.hasNext()) {
            it.next().onPayFaile();
        }
    }

    public void addListener(PayResultCallback payResultCallback) {
        ArrayList<PayResultCallback> arrayList = resultList;
        if (arrayList.contains(payResultCallback)) {
            return;
        }
        arrayList.add(payResultCallback);
    }

    public void addSuccess() {
        Iterator<PayResultCallback> it = resultList.iterator();
        while (it.hasNext()) {
            it.next().onPaySuccessful();
        }
    }

    public void removeListener(PayResultCallback payResultCallback) {
        ArrayList<PayResultCallback> arrayList = resultList;
        if (arrayList.contains(payResultCallback)) {
            arrayList.remove(payResultCallback);
        }
    }
}
