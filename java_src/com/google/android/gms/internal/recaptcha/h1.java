package com.google.android.gms.internal.recaptcha;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.Build;
import android.provider.Settings;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class h1 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8721a = e1.a(5);

    public static final zzpy a(zzvj zzvjVar, Context context, z0 z0Var) throws a1, d1 {
        long j10;
        zzvj zzvjVar2 = zzvj.MOBILE_SIGNALS_UNKNOWN;
        switch (zzvjVar.ordinal()) {
            case 1:
                Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                if (registerReceiver != null) {
                    int intExtra = (registerReceiver.getIntExtra("level", -1) * 100) / registerReceiver.getIntExtra("scale", -1);
                    z0Var.b(intExtra);
                    return f1.a(intExtra);
                }
                throw new d1(1);
            case 2:
                AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                if (audioManager != null) {
                    return f1.a((audioManager.getStreamVolume(3) * 100) / audioManager.getStreamMaxVolume(3));
                }
                throw new d1(2);
            case 3:
                ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
                if (activityManager != null) {
                    ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                    activityManager.getMemoryInfo(memoryInfo);
                    int i9 = (int) ((memoryInfo.availMem * 100) / memoryInfo.totalMem);
                    z0Var.d(i9);
                    return f1.a(i9);
                }
                throw new d1(3);
            case 4:
                g4.b a10 = g4.c.a(context);
                String packageName = context.getPackageName();
                if (a10 != null) {
                    try {
                        PackageInfo e10 = a10.e(packageName, 0);
                        if (Build.VERSION.SDK_INT >= 28) {
                            j10 = e10.getLongVersionCode();
                        } else {
                            j10 = e10.versionCode;
                        }
                        ByteBuffer order = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
                        order.putLong(j10).rewind();
                        return zzpy.zzm(order);
                    } catch (PackageManager.NameNotFoundException e11) {
                        j.a(f8721a, e11);
                        throw new d1(4);
                    }
                }
                throw new d1(4);
            case 5:
                g4.b a11 = g4.c.a(context);
                String packageName2 = context.getPackageName();
                if (a11 != null) {
                    try {
                        PackageInfo e12 = a11.e(packageName2, 4096);
                        v8 v8Var = new v8();
                        ByteBuffer order2 = ByteBuffer.allocate(e12.requestedPermissions.length * 3).order(ByteOrder.LITTLE_ENDIAN);
                        for (String str : e12.requestedPermissions) {
                            byte[] copyOf = Arrays.copyOf(z9.a().b(str, Charset.forName("UTF-8")).e(), 3);
                            order2.put(copyOf);
                            v8Var.d(f1.b(copyOf));
                        }
                        z0Var.c(v8Var.e());
                        order2.rewind();
                        return zzpy.zzm(order2);
                    } catch (PackageManager.NameNotFoundException e13) {
                        j.a(f8721a, e13);
                        throw new d1(5);
                    }
                }
                throw new d1(5);
            case 6:
                return f1.a(b(context.getContentResolver()));
            case 7:
                if (context instanceof Activity) {
                    String name = ((Activity) context).getClass().getName();
                    z0Var.a(name);
                    return zzpy.zzp(name);
                }
                throw new d1(7);
            default:
                throw new a1(zzvjVar.zza());
        }
    }

    private static int b(ContentResolver contentResolver) throws d1 {
        try {
            return Settings.System.getInt(contentResolver, "screen_brightness");
        } catch (Settings.SettingNotFoundException e10) {
            j.a(f8721a, e10);
            throw new d1(6);
        }
    }
}
