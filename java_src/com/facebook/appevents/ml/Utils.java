package com.facebook.appevents.ml;

import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u001e\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\u0006H\u0007J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/facebook/appevents/ml/Utils;", "", "()V", "DIR_NAME", "", "getMlDir", "Ljava/io/File;", "normalizeString", "str", "parseModelWeights", "", "Lcom/facebook/appevents/ml/MTensor;", ShareInternalUtility.STAGING_PARAM, "vectorize", "", "texts", "maxLen", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class Utils {
    @NotNull
    private static final String DIR_NAME = "facebook_ml/";
    @NotNull
    public static final Utils INSTANCE = new Utils();

    private Utils() {
    }

    @JvmStatic
    @Nullable
    public static final File getMlDir() {
        if (CrashShieldHandler.isObjectCrashing(Utils.class)) {
            return null;
        }
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            File file = new File(FacebookSdk.getApplicationContext().getFilesDir(), DIR_NAME);
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    return null;
                }
            }
            return file;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Utils.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Map<String, MTensor> parseModelWeights(@NotNull File file) {
        Map<String, MTensor> map;
        Map<String, MTensor> map2 = null;
        if (CrashShieldHandler.isObjectCrashing(Utils.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(file, "file");
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                int available = fileInputStream.available();
                DataInputStream dataInputStream = new DataInputStream(fileInputStream);
                byte[] bArr = new byte[available];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                if (available < 4) {
                    return null;
                }
                int i9 = 0;
                ByteBuffer wrap = ByteBuffer.wrap(bArr, 0, 4);
                wrap.order(ByteOrder.LITTLE_ENDIAN);
                int i10 = wrap.getInt();
                int i11 = i10 + 4;
                if (available < i11) {
                    return null;
                }
                JSONObject jSONObject = new JSONObject(new String(bArr, 4, i10, Charsets.UTF_8));
                JSONArray names = jSONObject.names();
                int length = names.length();
                String[] strArr = new String[length];
                int i12 = length - 1;
                if (i12 >= 0) {
                    int i13 = 0;
                    while (true) {
                        int i14 = i13 + 1;
                        strArr[i13] = names.getString(i13);
                        if (i14 > i12) {
                            break;
                        }
                        i13 = i14;
                    }
                }
                ArraysKt___ArraysJvmKt.sort((Object[]) strArr);
                HashMap hashMap = new HashMap();
                int i15 = 0;
                while (i15 < length) {
                    String str = strArr[i15];
                    i15++;
                    if (str != null) {
                        JSONArray jSONArray = jSONObject.getJSONArray(str);
                        int length2 = jSONArray.length();
                        int[] iArr = new int[length2];
                        int i16 = length2 - 1;
                        int i17 = 1;
                        if (i16 >= 0) {
                            while (true) {
                                int i18 = i9 + 1;
                                try {
                                    iArr[i9] = jSONArray.getInt(i9);
                                    i17 *= iArr[i9];
                                    if (i18 > i16) {
                                        break;
                                    }
                                    i9 = i18;
                                } catch (Exception unused) {
                                    return null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    map = null;
                                    CrashShieldHandler.handleThrowable(th, Utils.class);
                                    return map;
                                }
                            }
                        }
                        int i19 = i17 * 4;
                        int i20 = i11 + i19;
                        if (i20 > available) {
                            return null;
                        }
                        ByteBuffer wrap2 = ByteBuffer.wrap(bArr, i11, i19);
                        wrap2.order(ByteOrder.LITTLE_ENDIAN);
                        MTensor mTensor = new MTensor(iArr);
                        wrap2.asFloatBuffer().get(mTensor.getData(), 0, i17);
                        hashMap.put(str, mTensor);
                        i11 = i20;
                        map2 = null;
                        i9 = 0;
                    }
                }
                return hashMap;
            } catch (Exception unused2) {
                return map2;
            }
        } catch (Throwable th3) {
            th = th3;
            map = map2;
        }
    }

    @NotNull
    public final String normalizeString(@NotNull String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(str, "str");
            int length = str.length() - 1;
            int i9 = 0;
            boolean z10 = false;
            while (i9 <= length) {
                boolean z11 = Intrinsics.compare((int) str.charAt(!z10 ? i9 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i9++;
                } else {
                    z10 = true;
                }
            }
            Object[] array = new Regex("\\s+").split(str.subSequence(i9, length + 1).toString(), 0).toArray(new String[0]);
            if (array != null) {
                String join = TextUtils.join(" ", (String[]) array);
                Intrinsics.checkNotNullExpressionValue(join, "join(\" \", strArray)");
                return join;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @NotNull
    public final int[] vectorize(@NotNull String texts, int i9) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(texts, "texts");
            int[] iArr = new int[i9];
            String normalizeString = normalizeString(texts);
            Charset forName = Charset.forName("UTF-8");
            Intrinsics.checkNotNullExpressionValue(forName, "forName(\"UTF-8\")");
            if (normalizeString != null) {
                byte[] bytes = normalizeString.getBytes(forName);
                Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                if (i9 > 0) {
                    int i10 = 0;
                    while (true) {
                        int i11 = i10 + 1;
                        if (i10 < bytes.length) {
                            iArr[i10] = bytes[i10] & UByte.MAX_VALUE;
                        } else {
                            iArr[i10] = 0;
                        }
                        if (i11 >= i9) {
                            break;
                        }
                        i10 = i11;
                    }
                }
                return iArr;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }
}
