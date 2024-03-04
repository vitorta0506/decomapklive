package cn.jiguang.at;

import cn.jiguang.as.d;
import cn.jiguang.f.i;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes.dex */
public class a {
    private static void a(int i9, String str, File file, File file2) {
        FileOutputStream fileOutputStream;
        Cipher cipher;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            d.c("CryptoUtils", "doCrypto cipherMode is " + i9 + ", key is " + str + ", inputFile is " + file.getAbsolutePath() + ", outputFile is " + file2.getAbsolutePath());
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), "AES");
            cipher = Cipher.getInstance("AES");
            cipher.init(i9, secretKeySpec);
            fileInputStream = new FileInputStream(file);
        } catch (IOException e10) {
            e = e10;
            fileOutputStream = null;
            try {
                d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
                i.a((Closeable) fileInputStream2);
                i.a(fileOutputStream);
            } catch (Throwable th2) {
                th = th2;
                i.a((Closeable) fileInputStream2);
                i.a(fileOutputStream);
                throw th;
            }
        } catch (InvalidKeyException e11) {
            e = e11;
            fileOutputStream = null;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (NoSuchAlgorithmException e12) {
            e = e12;
            fileOutputStream = null;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (BadPaddingException e13) {
            e = e13;
            fileOutputStream = null;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (IllegalBlockSizeException e14) {
            e = e14;
            fileOutputStream = null;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (NoSuchPaddingException e15) {
            e = e15;
            fileOutputStream = null;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
        try {
            byte[] bArr = new byte[(int) file.length()];
            fileInputStream.read(bArr);
            byte[] doFinal = cipher.doFinal(bArr);
            fileOutputStream = new FileOutputStream(file2);
            try {
                fileOutputStream.write(doFinal);
                fileOutputStream.flush();
                i.a((Closeable) fileInputStream);
            } catch (IOException e16) {
                e = e16;
                fileInputStream2 = fileInputStream;
                d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
                i.a((Closeable) fileInputStream2);
                i.a(fileOutputStream);
            } catch (InvalidKeyException e17) {
                e = e17;
                fileInputStream2 = fileInputStream;
                d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
                i.a((Closeable) fileInputStream2);
                i.a(fileOutputStream);
            } catch (NoSuchAlgorithmException e18) {
                e = e18;
                fileInputStream2 = fileInputStream;
                d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
                i.a((Closeable) fileInputStream2);
                i.a(fileOutputStream);
            } catch (BadPaddingException e19) {
                e = e19;
                fileInputStream2 = fileInputStream;
                d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
                i.a((Closeable) fileInputStream2);
                i.a(fileOutputStream);
            } catch (IllegalBlockSizeException e20) {
                e = e20;
                fileInputStream2 = fileInputStream;
                d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
                i.a((Closeable) fileInputStream2);
                i.a(fileOutputStream);
            } catch (NoSuchPaddingException e21) {
                e = e21;
                fileInputStream2 = fileInputStream;
                d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
                i.a((Closeable) fileInputStream2);
                i.a(fileOutputStream);
            } catch (Throwable th4) {
                th = th4;
                fileInputStream2 = fileInputStream;
                i.a((Closeable) fileInputStream2);
                i.a(fileOutputStream);
                throw th;
            }
        } catch (IOException e22) {
            e = e22;
            fileOutputStream = null;
            fileInputStream2 = fileInputStream;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (InvalidKeyException e23) {
            e = e23;
            fileOutputStream = null;
            fileInputStream2 = fileInputStream;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (NoSuchAlgorithmException e24) {
            e = e24;
            fileOutputStream = null;
            fileInputStream2 = fileInputStream;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (BadPaddingException e25) {
            e = e25;
            fileOutputStream = null;
            fileInputStream2 = fileInputStream;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (IllegalBlockSizeException e26) {
            e = e26;
            fileOutputStream = null;
            fileInputStream2 = fileInputStream;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (NoSuchPaddingException e27) {
            e = e27;
            fileOutputStream = null;
            fileInputStream2 = fileInputStream;
            d.g("CryptoUtils", "Error encrypting/decrypting file, error message is " + e.getMessage());
            i.a((Closeable) fileInputStream2);
            i.a(fileOutputStream);
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
        }
        i.a(fileOutputStream);
    }

    public static void a(String str, File file, File file2) {
        a(1, str, file, file2);
    }
}
