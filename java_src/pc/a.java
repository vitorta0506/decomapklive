package pc;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.linecorp.android.security.encryption.EncryptionException;
import com.tencent.xmagic.license.LicenceCheck;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
@WorkerThread
/* loaded from: classes4.dex */
public class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Object f56782a = new Object();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f56783b;

    /* renamed from: c  reason: collision with root package name */
    private final int f56784c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f56785d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final SecureRandom f56786e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final SecretKeyFactory f56787f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final Cipher f56788g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final Mac f56789h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private C0615a f56790i;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pc.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0615a {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final SecretKey f56791a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final SecretKey f56792b;

        C0615a(@NonNull SecretKey secretKey, @NonNull SecretKey secretKey2) {
            this.f56791a = secretKey;
            this.f56792b = secretKey2;
        }
    }

    public a(@NonNull String str, int i9, boolean z10) {
        this.f56783b = str;
        this.f56784c = i9;
        this.f56785d = z10;
        try {
            this.f56786e = new SecureRandom();
            this.f56787f = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
            this.f56788g = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
            this.f56789h = Mac.getInstance("HmacSHA256");
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    private String c(@NonNull Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        String str = this.f56785d ? Build.SERIAL : "";
        return Build.MODEL + Build.MANUFACTURER + str + string + context.getPackageName();
    }

    @NonNull
    private byte[] d(@NonNull Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(this.f56783b, 0);
        String string = sharedPreferences.getString("salt", null);
        if (!TextUtils.isEmpty(string)) {
            return Base64.decode(string, 0);
        }
        byte[] bArr = new byte[16];
        this.f56786e.nextBytes(bArr);
        sharedPreferences.edit().putString("salt", Base64.encodeToString(bArr, 0)).apply();
        return bArr;
    }

    @NonNull
    private C0615a e(@NonNull Context context) {
        String c10 = c(context);
        try {
            byte[] encoded = this.f56787f.generateSecret(new PBEKeySpec(c10.toCharArray(), d(context), this.f56784c, 512)).getEncoded();
            return new C0615a(new SecretKeySpec(Arrays.copyOfRange(encoded, 0, 32), "AES"), new SecretKeySpec(Arrays.copyOfRange(encoded, 32, encoded.length), "HmacSHA256"));
        } catch (InvalidKeySpecException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public String a(@NonNull Context context, @NonNull String str) {
        String str2;
        synchronized (this.f56782a) {
            f(context);
            try {
                byte[] decode = Base64.decode(str, 0);
                byte[] copyOfRange = Arrays.copyOfRange(decode, decode.length - 32, decode.length);
                this.f56789h.init(this.f56790i.f56792b);
                this.f56789h.update(decode, 0, decode.length - 32);
                if (MessageDigest.isEqual(this.f56789h.doFinal(), copyOfRange)) {
                    this.f56788g.init(2, this.f56790i.f56791a, new IvParameterSpec(decode, 0, 16));
                    str2 = new String(this.f56788g.doFinal(decode, 16, (decode.length - 16) - 32), "UTF-8");
                } else {
                    throw new EncryptionException("Cipher text has been tampered with.");
                }
            } catch (UnsupportedEncodingException e10) {
                e = e10;
                throw new RuntimeException(e);
            } catch (InvalidAlgorithmParameterException e11) {
                e = e11;
                throw new RuntimeException(e);
            } catch (InvalidKeyException e12) {
                e = e12;
                throw new RuntimeException(e);
            } catch (BadPaddingException e13) {
                throw new EncryptionException(e13);
            } catch (IllegalBlockSizeException e14) {
                e = e14;
                throw new RuntimeException(e);
            }
        }
        return str2;
    }

    @NonNull
    public String b(@NonNull Context context, @NonNull String str) {
        String encodeToString;
        synchronized (this.f56782a) {
            f(context);
            try {
                int blockSize = this.f56788g.getBlockSize();
                byte[] bArr = new byte[blockSize];
                this.f56786e.nextBytes(bArr);
                this.f56788g.init(1, this.f56790i.f56791a, new IvParameterSpec(bArr));
                byte[] doFinal = this.f56788g.doFinal(str.getBytes("UTF-8"));
                byte[] bArr2 = new byte[doFinal.length + blockSize + 32];
                System.arraycopy(bArr, 0, bArr2, 0, blockSize);
                int i9 = blockSize + 0;
                System.arraycopy(doFinal, 0, bArr2, i9, doFinal.length);
                this.f56789h.init(this.f56790i.f56792b);
                this.f56789h.update(bArr2, 0, blockSize + doFinal.length);
                byte[] doFinal2 = this.f56789h.doFinal();
                System.arraycopy(doFinal2, 0, bArr2, i9 + doFinal.length, doFinal2.length);
                encodeToString = Base64.encodeToString(bArr2, 0);
            } catch (UnsupportedEncodingException e10) {
                e = e10;
                throw new RuntimeException(e);
            } catch (InvalidAlgorithmParameterException e11) {
                e = e11;
                throw new RuntimeException(e);
            } catch (InvalidKeyException e12) {
                e = e12;
                throw new RuntimeException(e);
            } catch (BadPaddingException e13) {
                throw new EncryptionException(e13);
            } catch (IllegalBlockSizeException e14) {
                e = e14;
                throw new RuntimeException(e);
            }
        }
        return encodeToString;
    }

    public void f(@NonNull Context context) {
        synchronized (this.f56782a) {
            if (this.f56790i == null) {
                this.f56790i = e(context);
            }
        }
    }
}
