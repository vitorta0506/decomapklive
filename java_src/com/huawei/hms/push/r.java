package com.huawei.hms.push;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.huawei.hms.support.log.HMSLog;
import java.lang.reflect.Field;
/* loaded from: classes4.dex */
public class r {
    public static int a(Context context, String str, String str2) {
        try {
            int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
            if (identifier == 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(context.getPackageName());
                sb2.append(".R$");
                sb2.append(str);
                Field field = Class.forName(sb2.toString()).getField(str2);
                identifier = Integer.parseInt(field.get(field.getName()).toString());
                if (identifier == 0) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Error-resourceType=");
                    sb3.append(str);
                    sb3.append("--resourceName=");
                    sb3.append(str2);
                    sb3.append("--resourceId =");
                    sb3.append(identifier);
                    HMSLog.i("ResourceLoader", sb3.toString());
                }
            }
            return identifier;
        } catch (ClassNotFoundException e10) {
            HMSLog.e("ResourceLoader", "!!!! ResourceLoader: ClassNotFoundException-resourceType=" + str + "--resourceName=" + str2, e10);
            return 0;
        } catch (IllegalAccessException e11) {
            HMSLog.e("ResourceLoader", "!!!! ResourceLoader: IllegalAccessException-resourceType=" + str + "--resourceName=" + str2, e11);
            return 0;
        } catch (NoSuchFieldException e12) {
            HMSLog.e("ResourceLoader", "!!!! ResourceLoader: NoSuchFieldException-resourceType=" + str + "--resourceName=" + str2, e12);
            return 0;
        } catch (NumberFormatException e13) {
            HMSLog.e("ResourceLoader", "!!!! ResourceLoader: NumberFormatException-resourceType=" + str + "--resourceName=" + str2, e13);
            return 0;
        } catch (IllegalArgumentException e14) {
            HMSLog.e("ResourceLoader", "!!!! ResourceLoader: IllegalArgumentException-resourceType=" + str + "--resourceName=" + str2, e14);
            return 0;
        }
    }

    public static int a(Context context, String str) {
        Bundle bundle;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                return 0;
            }
            return bundle.getInt(str);
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.w("ResourceLoader", "load meta data resource failed.");
            return 0;
        }
    }
}
