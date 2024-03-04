package cn.jiguang.api;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface JAction {
    long dispatchMessage(Context context, long j10, int i9, Object obj, ByteBuffer byteBuffer);

    void dispatchTimeOutMessage(Context context, long j10, long j11, int i9);

    IBinder getBinderByType(String str);

    String getSdkVersion();

    void handleMessage(Context context, long j10, Object obj);

    boolean isSupportedCMD(int i9);

    void onActionRun(Context context, long j10, Bundle bundle, Object obj);

    void onEvent(Context context, long j10, int i9);
}
