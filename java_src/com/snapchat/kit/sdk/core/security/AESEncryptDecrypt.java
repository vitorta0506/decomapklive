package com.snapchat.kit.sdk.core.security;

import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.JsonParseException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
/* loaded from: classes4.dex */
public class AESEncryptDecrypt implements EncryptDecryptAlgorithm {
    private static final String TAG = "AESEncryptDecrypt";
    private static final int TAG_LENGTH = 128;
    private static final String TRANSFORM = "AES/GCM/NoPadding";
    private final Gson mGson;
    private final SecretKey mSecretKey;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class EncryptedData {
        String mData;
        String mIv;

        EncryptedData(String str, String str2) {
            this.mIv = str;
            this.mData = str2;
        }
    }

    public AESEncryptDecrypt(SecretKey secretKey, Gson gson) {
        this.mSecretKey = secretKey;
        this.mGson = gson;
    }

    private String decryptInternal(@NonNull EncryptedData encryptedData) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException, IllegalArgumentException {
        byte[] decode = Base64.decode(encryptedData.mIv, 0);
        byte[] decode2 = Base64.decode(encryptedData.mData, 0);
        Cipher cipher = Cipher.getInstance(TRANSFORM);
        cipher.init(2, this.mSecretKey, new GCMParameterSpec(128, decode));
        return new String(cipher.doFinal(decode2));
    }

    private EncryptedData encryptInternal(@NonNull String str) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
        Cipher cipher = Cipher.getInstance(TRANSFORM);
        cipher.init(1, this.mSecretKey);
        return new EncryptedData(Base64.encodeToString(cipher.getIV(), 0), Base64.encodeToString(cipher.doFinal(str.getBytes()), 0));
    }

    @Override // com.snapchat.kit.sdk.core.security.EncryptDecryptAlgorithm
    public String decrypt(@Nullable String str) {
        EncryptedData encryptedData;
        try {
            encryptedData = (EncryptedData) this.mGson.fromJson(str, (Class<Object>) EncryptedData.class);
        } catch (JsonParseException unused) {
            encryptedData = null;
        }
        if (encryptedData != null && encryptedData.mData != null && encryptedData.mIv != null) {
            try {
                return decryptInternal(encryptedData);
            } catch (InvalidAlgorithmParameterException | InvalidKeyException | InvalidParameterException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException unused2) {
            }
        }
        return null;
    }

    @Override // com.snapchat.kit.sdk.core.security.EncryptDecryptAlgorithm
    public String encrypt(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            return this.mGson.toJson(encryptInternal(str));
        } catch (JsonParseException | InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException unused) {
            return null;
        }
    }
}
