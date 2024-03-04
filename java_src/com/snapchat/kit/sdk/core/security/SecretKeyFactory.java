package com.snapchat.kit.sdk.core.security;

import android.content.SharedPreferences;
import android.security.keystore.KeyGenParameterSpec;
import androidx.annotation.Nullable;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableEntryException;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes4.dex */
public class SecretKeyFactory {
    private static final String ALGORITHM = "AES";
    private static final String ALIAS = "SnapConnectSDK.AES";
    private static final int KEY_LENGTH = 256;
    private static final int KEY_LENGTH_IN_BYTES = 32;
    private static final String SECRET_KEY_KEY = "encoded_secret";
    private static final String TAG = "SecretKeyFactory";

    private SecretKeyFactory() {
    }

    @Nullable
    private static SecretKey decodeSecret(String str, int i9, EncryptDecryptAlgorithm encryptDecryptAlgorithm) {
        String decrypt = encryptDecryptAlgorithm.decrypt(str);
        if (decrypt == null) {
            return null;
        }
        return new SecretKeySpec(decrypt.getBytes(), decrypt.length() - i9, i9, ALGORITHM);
    }

    @Nullable
    private static String encodeSecret(SecretKey secretKey, EncryptDecryptAlgorithm encryptDecryptAlgorithm) {
        return encryptDecryptAlgorithm.encrypt(new String(secretKey.getEncoded()));
    }

    private static SecretKey generate() throws NoSuchAlgorithmException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance(ALGORITHM);
        keyGenerator.init(256);
        return keyGenerator.generateKey();
    }

    public static SecretGenerationResult getFromKeyStore(KeyStore keyStore) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        try {
            if (keyStore.containsAlias(ALIAS)) {
                return new SecretGenerationResult(((KeyStore.SecretKeyEntry) keyStore.getEntry(ALIAS, null)).getSecretKey(), false);
            }
        } catch (KeyStoreException | UnrecoverableEntryException unused) {
        }
        KeyGenerator keyGenerator = KeyGenerator.getInstance(ALGORITHM, keyStore.getType());
        keyGenerator.init(new KeyGenParameterSpec.Builder(ALIAS, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256).build());
        return new SecretGenerationResult(keyGenerator.generateKey(), true);
    }

    public static SecretGenerationResult getFromSharedPreferences(SharedPreferences sharedPreferences, EncryptDecryptAlgorithm encryptDecryptAlgorithm, boolean z10) throws NoSuchAlgorithmException {
        boolean z11;
        String string;
        SecretKey secretKey = null;
        if (!z10 && (string = sharedPreferences.getString(SECRET_KEY_KEY, null)) != null) {
            secretKey = decodeSecret(string, 32, encryptDecryptAlgorithm);
        }
        if (secretKey == null) {
            z11 = true;
            secretKey = generate();
            sharedPreferences.edit().putString(SECRET_KEY_KEY, encodeSecret(secretKey, encryptDecryptAlgorithm)).apply();
        } else {
            z11 = false;
        }
        return new SecretGenerationResult(secretKey, z11);
    }
}
