package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.appsflyer.AFLogger;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class AFa1lSDK {
    final AFb1dSDK valueOf;

    public AFa1lSDK() {
    }

    public AFa1lSDK(AFb1dSDK aFb1dSDK) {
        this.valueOf = aFb1dSDK;
    }

    private static Object AFInAppEventParameterName(Object obj) {
        if (obj == null) {
            return JSONObject.NULL;
        }
        if ((obj instanceof JSONArray) || (obj instanceof JSONObject) || obj.equals(JSONObject.NULL)) {
            return obj;
        }
        try {
            if (obj instanceof Collection) {
                JSONArray jSONArray = new JSONArray();
                for (Object obj2 : (Collection) obj) {
                    jSONArray.put(AFInAppEventParameterName(obj2));
                }
                return jSONArray;
            } else if (obj.getClass().isArray()) {
                int length = Array.getLength(obj);
                JSONArray jSONArray2 = new JSONArray();
                for (int i9 = 0; i9 < length; i9++) {
                    jSONArray2.put(AFInAppEventParameterName(Array.get(obj, i9)));
                }
                return jSONArray2;
            } else if (obj instanceof Map) {
                return AFInAppEventType((Map) obj);
            } else {
                return ((obj instanceof Boolean) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof String)) ? obj : obj.toString();
            }
        } catch (Exception unused) {
            return JSONObject.NULL;
        }
    }

    public static JSONObject AFInAppEventType(Map<String, ?> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), AFInAppEventParameterName(entry.getValue()));
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    private static List<Object> AFKeystoreWrapper(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            Object obj = jSONArray.get(i9);
            if (obj instanceof JSONArray) {
                obj = AFKeystoreWrapper((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = AFInAppEventParameterName((JSONObject) obj);
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    @Nullable
    private static AFa1fSDK values(File file) {
        FileReader fileReader;
        FileReader fileReader2 = null;
        try {
            fileReader = new FileReader(file);
            try {
                char[] cArr = new char[(int) file.length()];
                fileReader.read(cArr);
                AFa1fSDK aFa1fSDK = new AFa1fSDK(cArr);
                aFa1fSDK.valueOf = file.getName();
                try {
                    fileReader.close();
                } catch (IOException e10) {
                    AFLogger.afErrorLog(e10);
                }
                return aFa1fSDK;
            } catch (Exception unused) {
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e11) {
                        AFLogger.afErrorLog(e11);
                    }
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                fileReader2 = fileReader;
                if (fileReader2 != null) {
                    try {
                        fileReader2.close();
                    } catch (IOException e12) {
                        AFLogger.afErrorLog(e12);
                    }
                }
                throw th;
            }
        } catch (Exception unused2) {
            fileReader = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @NonNull
    @WorkerThread
    public final List<AFa1fSDK> valueOf() {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(this.valueOf.values.getFilesDir(), "AFRequestCache");
            if (!file.exists()) {
                file.mkdir();
            }
            listFiles = file.listFiles();
        } catch (Exception e10) {
            AFLogger.afErrorLog("CACHE: Could not get cached requests", e10);
        }
        if (listFiles == null) {
            return arrayList;
        }
        for (File file2 : listFiles) {
            StringBuilder sb2 = new StringBuilder("CACHE: Found cached request");
            sb2.append(file2.getName());
            AFLogger.afInfoLog(sb2.toString());
            arrayList.add(values(file2));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AFd1iSDK AFKeystoreWrapper(Context context) {
        if (context instanceof Activity) {
            return AFd1iSDK.activity;
        }
        if (context instanceof Application) {
            return AFd1iSDK.application;
        }
        return AFd1iSDK.other;
    }

    @WorkerThread
    public final boolean valueOf(String str) {
        File file = new File(new File(this.valueOf.values.getFilesDir(), "AFRequestCache"), str);
        StringBuilder sb2 = new StringBuilder("CACHE: Deleting ");
        sb2.append(str);
        sb2.append(" from cache");
        AFLogger.afInfoLog(sb2.toString());
        if (file.exists()) {
            try {
                return file.delete();
            } catch (Exception e10) {
                StringBuilder sb3 = new StringBuilder("CACHE: Could not delete ");
                sb3.append(str);
                sb3.append(" from cache");
                AFLogger.afErrorLog(sb3.toString(), e10);
                return false;
            }
        }
        return true;
    }

    public static Map<String, Object> AFInAppEventParameterName(@NonNull JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONArray) {
                obj = AFKeystoreWrapper((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = AFInAppEventParameterName((JSONObject) obj);
            }
            hashMap.put(next, obj);
        }
        return hashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.Nullable
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String AFInAppEventParameterName(com.appsflyer.internal.AFa1fSDK r7) {
        /*
            r6 = this;
            java.lang.String r0 = "AFRequestCache"
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            com.appsflyer.internal.AFb1dSDK r3 = r6.valueOf     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            android.content.Context r3 = r3.values     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.io.File r3 = r3.getFilesDir()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            boolean r3 = r2.exists()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            if (r3 != 0) goto L1a
            r2.mkdir()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            return r1
        L1a:
            java.io.File[] r2 = r2.listFiles()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            if (r2 == 0) goto L2b
            int r2 = r2.length     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            r3 = 40
            if (r2 <= r3) goto L2b
            java.lang.String r7 = "CACHE: reached cache limit, not caching request"
            com.appsflyer.AFLogger.afInfoLog(r7)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            return r1
        L2b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.lang.String r3 = "CACHE: caching request with URL: "
            r2.<init>(r3)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.lang.String r3 = r7.AFKeystoreWrapper     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            r2.append(r3)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            com.appsflyer.AFLogger.afInfoLog(r2)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.lang.String r2 = java.lang.Long.toString(r2)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            com.appsflyer.internal.AFb1dSDK r5 = r6.valueOf     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            android.content.Context r5 = r5.values     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.io.File r5 = r5.getFilesDir()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            r4.<init>(r5, r0)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            r3.<init>(r4, r2)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            r3.createNewFile()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.io.OutputStreamWriter r0 = new java.io.OutputStreamWriter     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.lang.String r3 = r3.getPath()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            r5 = 1
            r4.<init>(r3, r5)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            r0.<init>(r4)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            java.lang.String r3 = "version="
            r0.write(r3)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            java.lang.String r3 = r7.AFInAppEventParameterName     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            r0.write(r3)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            r3 = 10
            r0.write(r3)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            java.lang.String r4 = "url="
            r0.write(r4)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            java.lang.String r4 = r7.AFKeystoreWrapper     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            r0.write(r4)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            r0.write(r3)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            java.lang.String r4 = "data="
            r0.write(r4)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            byte[] r4 = r7.AFInAppEventParameterName()     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            r5 = 2
            java.lang.String r4 = android.util.Base64.encodeToString(r4, r5)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            r0.write(r4)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            r0.write(r3)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            com.appsflyer.internal.AFc1lSDK r7 = r7.values     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            if (r7 == 0) goto Lae
            java.lang.String r4 = "type="
            r0.write(r4)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            java.lang.String r7 = r7.name()     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            r0.write(r7)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            r0.write(r3)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
        Lae:
            r0.flush()     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            java.lang.String r7 = "CACHE: done, cacheKey: "
            java.lang.String r3 = java.lang.String.valueOf(r2)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            java.lang.String r7 = r7.concat(r3)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            com.appsflyer.AFLogger.afInfoLog(r7)     // Catch: java.lang.Exception -> Lc7 java.lang.Throwable -> Ldd
            r0.close()     // Catch: java.io.IOException -> Lc2
            goto Lc6
        Lc2:
            r7 = move-exception
            com.appsflyer.AFLogger.afErrorLog(r7)
        Lc6:
            return r2
        Lc7:
            r7 = move-exception
            goto Lcd
        Lc9:
            r7 = move-exception
            goto Ldf
        Lcb:
            r7 = move-exception
            r0 = r1
        Lcd:
            java.lang.String r2 = "CACHE: Could not cache request"
            com.appsflyer.AFLogger.afErrorLog(r2, r7)     // Catch: java.lang.Throwable -> Ldd
            if (r0 == 0) goto Ldc
            r0.close()     // Catch: java.io.IOException -> Ld8
            goto Ldc
        Ld8:
            r7 = move-exception
            com.appsflyer.AFLogger.afErrorLog(r7)
        Ldc:
            return r1
        Ldd:
            r7 = move-exception
            r1 = r0
        Ldf:
            if (r1 == 0) goto Le9
            r1.close()     // Catch: java.io.IOException -> Le5
            goto Le9
        Le5:
            r0 = move-exception
            com.appsflyer.AFLogger.afErrorLog(r0)
        Le9:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1lSDK.AFInAppEventParameterName(com.appsflyer.internal.AFa1fSDK):java.lang.String");
    }
}
