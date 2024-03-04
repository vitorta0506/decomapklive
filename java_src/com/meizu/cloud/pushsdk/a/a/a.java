package com.meizu.cloud.pushsdk.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.xmagic.license.LicenceCheck;
import com.tencent.xmagic.license.RSAUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f28157a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f28158b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private byte[] f28159c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f28160d;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f28161e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f28162f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f28163g;

    /* renamed from: h  reason: collision with root package name */
    private PublicKey f28164h;

    /* renamed from: i  reason: collision with root package name */
    private final SharedPreferences f28165i;

    /* renamed from: j  reason: collision with root package name */
    private final SharedPreferences f28166j;

    /* renamed from: k  reason: collision with root package name */
    private long f28167k = 0;

    private a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.x.y.1", 0);
        this.f28165i = sharedPreferences;
        this.f28166j = context.getSharedPreferences("com.x.y.2", 0);
        Integer.parseInt(sharedPreferences.getString("keyTimeout", "0"));
        sharedPreferences.getLong("createDate", 0L);
        e();
        byte[] bArr = this.f28159c;
        if (bArr != null && bArr.length != 0) {
            byte[] bArr2 = this.f28160d;
            if (bArr2 == null || bArr2.length == 0) {
                PublicKey b10 = b(context);
                this.f28164h = b10;
                if (b10 != null) {
                    h();
                    return;
                }
                return;
            }
            return;
        }
        PublicKey b11 = b(context);
        this.f28164h = b11;
        if (b11 != null) {
            f();
            return;
        }
        sharedPreferences.edit().clear().apply();
        try {
            d();
            PublicKey b12 = b(context);
            this.f28164h = b12;
            if (b12 != null) {
                f();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static a a() {
        a aVar = f28157a;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException("KeyMgr is not initialised - invoke at least once with parameterised init/get");
    }

    private String a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                try {
                    int read = inputStream.read();
                    if (read == -1) {
                        String byteArrayOutputStream2 = byteArrayOutputStream.toString();
                        try {
                            byteArrayOutputStream.close();
                            return byteArrayOutputStream2;
                        } catch (IOException unused) {
                            return byteArrayOutputStream2;
                        }
                    }
                    byteArrayOutputStream.write(read);
                } catch (IOException unused2) {
                    return null;
                }
            } catch (IOException unused3) {
                byteArrayOutputStream.close();
                return null;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused4) {
                }
                throw th2;
            }
        }
    }

    public static void a(Context context) {
        if (f28157a == null) {
            synchronized (f28158b) {
                if (f28157a == null) {
                    f28157a = new a(context);
                }
            }
        }
    }

    private PublicKey b(Context context) {
        b("load publicKey from preference");
        String string = this.f28166j.getString("publicKey", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return KeyFactory.getInstance(RSAUtils.RSA).generatePublic(new X509EncodedKeySpec(Base64.decode(string, 2)));
        } catch (NoSuchAlgorithmException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvalidKeySpecException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    private void b(String str) {
        DebugLogger.d("HttpKeyMgr", str);
    }

    private void c(String str) {
        DebugLogger.e("HttpKeyMgr", str);
    }

    private void d() throws IOException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(PushConstants.URL_DOWNLOAD_PUBLIC_KEY).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            try {
                httpURLConnection.setRequestMethod("GET");
            } catch (ProtocolException e10) {
                e10.printStackTrace();
            }
            httpURLConnection.setRequestProperty("Charset", "UTF-8");
            InputStream inputStream = null;
            try {
                int responseCode = httpURLConnection.getResponseCode();
                b("code = " + responseCode);
                inputStream = httpURLConnection.getInputStream();
                if (inputStream != null) {
                    String a10 = a(inputStream);
                    b("body = " + a10);
                    if (!TextUtils.isEmpty(a10)) {
                        try {
                            JSONObject jSONObject = new JSONObject(a10);
                            if (jSONObject.getInt("code") == 200) {
                                String string = jSONObject.getString("value");
                                SharedPreferences.Editor edit = this.f28166j.edit();
                                edit.putString("publicKey", string);
                                edit.apply();
                            }
                        } catch (Exception e11) {
                            c("downloadPublicKey message error " + e11.getMessage());
                        }
                    }
                }
            } finally {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                httpURLConnection.disconnect();
            }
        } catch (MalformedURLException unused2) {
        }
    }

    private void e() {
        b("loadKeys");
        String string = this.f28165i.getString("sKey64", "");
        b("saved sKey64: " + string);
        if (!TextUtils.isEmpty(string)) {
            this.f28163g = string.getBytes();
        }
        String string2 = this.f28165i.getString("aKey64", "");
        b("saved aKey64: " + string2);
        if (!TextUtils.isEmpty(string2)) {
            byte[] bytes = string2.getBytes();
            this.f28162f = bytes;
            this.f28160d = Base64.decode(bytes, 2);
        }
        String string3 = this.f28165i.getString("rKey64", "");
        b("saved rKey64: " + string3);
        if (TextUtils.isEmpty(string3)) {
            return;
        }
        byte[] bytes2 = string3.getBytes();
        this.f28161e = bytes2;
        this.f28159c = Base64.decode(bytes2, 2);
        b("saved rKey: " + new String(this.f28159c));
    }

    private void f() {
        g();
        h();
    }

    private void g() {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(128);
            byte[] encoded = keyGenerator.generateKey().getEncoded();
            this.f28159c = encoded;
            this.f28161e = Base64.encode(encoded, 2);
            b("***** rKey64: " + new String(this.f28161e));
            SharedPreferences.Editor edit = this.f28165i.edit();
            edit.putString("rKey64", new String(this.f28161e));
            edit.apply();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void h() {
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, this.f28164h);
            byte[] doFinal = cipher.doFinal(this.f28159c);
            this.f28160d = doFinal;
            this.f28162f = Base64.encode(doFinal, 2);
            b("***** aKey64: " + new String(this.f28162f));
            SharedPreferences.Editor edit = this.f28165i.edit();
            edit.putString("aKey64", new String(this.f28162f));
            edit.apply();
        } catch (InvalidKeyException e10) {
            e10.printStackTrace();
        } catch (NoSuchAlgorithmException e11) {
            e11.printStackTrace();
        } catch (BadPaddingException e12) {
            e12.printStackTrace();
        } catch (IllegalBlockSizeException e13) {
            e13.printStackTrace();
        } catch (NoSuchPaddingException e14) {
            e14.printStackTrace();
        }
    }

    public void a(String str) {
        this.f28163g = str.getBytes();
        SharedPreferences.Editor edit = this.f28165i.edit();
        edit.putString("sKey64", new String(this.f28163g));
        edit.apply();
    }

    public byte[] a(byte[] bArr) {
        String str;
        byte[] bArr2 = this.f28159c;
        if (bArr2 == null || bArr2.length == 0) {
            str = "rKey null!";
        } else if (bArr != null && bArr.length != 0) {
            b(">>>>>>>>>> encrypt input >>>>>>>>>>\n" + new String(Base64.encode(bArr, 2)));
            b("<<<<<<<<<< encrypt input <<<<<<<<<<");
            try {
                Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
                cipher.init(1, new SecretKeySpec(this.f28159c, "AES"), new IvParameterSpec(this.f28159c));
                byte[] doFinal = cipher.doFinal(bArr);
                b(">>>>>>>>>> encrypt output >>>>>>>>>>\n" + new String(Base64.encode(doFinal, 2)));
                b("<<<<<<<<<< encrypt output <<<<<<<<<<");
                return doFinal;
            } catch (InvalidAlgorithmParameterException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvalidKeyException e11) {
                e11.printStackTrace();
                return null;
            } catch (NoSuchAlgorithmException e12) {
                e12.printStackTrace();
                return null;
            } catch (BadPaddingException e13) {
                e13.printStackTrace();
                return null;
            } catch (IllegalBlockSizeException e14) {
                e14.printStackTrace();
                return null;
            } catch (NoSuchPaddingException e15) {
                e15.printStackTrace();
                return null;
            }
        } else {
            str = "input null!";
        }
        c(str);
        return null;
    }

    public byte[] b() {
        return this.f28162f;
    }

    public byte[] c() {
        return this.f28163g;
    }
}
