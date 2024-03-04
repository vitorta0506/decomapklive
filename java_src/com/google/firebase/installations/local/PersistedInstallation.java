package com.google.firebase.installations.local;

import androidx.annotation.NonNull;
import com.google.firebase.d;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class PersistedInstallation {

    /* renamed from: a  reason: collision with root package name */
    private File f13915a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final d f13916b;

    /* loaded from: classes2.dex */
    public enum RegistrationStatus {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public PersistedInstallation(@NonNull d dVar) {
        this.f13916b = dVar;
    }

    private File a() {
        if (this.f13915a == null) {
            synchronized (this) {
                if (this.f13915a == null) {
                    File filesDir = this.f13916b.k().getFilesDir();
                    this.f13915a = new File(filesDir, "PersistedInstallation." + this.f13916b.p() + ".json");
                }
            }
        }
        return this.f13915a;
    }

    private JSONObject c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(a());
            while (true) {
                int read = fileInputStream.read(bArr, 0, 16384);
                if (read < 0) {
                    JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                    fileInputStream.close();
                    return jSONObject;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException | JSONException unused) {
            return new JSONObject();
        }
    }

    @NonNull
    public b b(@NonNull b bVar) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", bVar.d());
            jSONObject.put("Status", bVar.g().ordinal());
            jSONObject.put("AuthToken", bVar.b());
            jSONObject.put("RefreshToken", bVar.f());
            jSONObject.put("TokenCreationEpochInSecs", bVar.h());
            jSONObject.put("ExpiresInSecs", bVar.c());
            jSONObject.put("FisError", bVar.e());
            createTempFile = File.createTempFile("PersistedInstallation", "tmp", this.f13916b.k().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException unused) {
        }
        if (createTempFile.renameTo(a())) {
            return bVar;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }

    @NonNull
    public b d() {
        JSONObject c10 = c();
        String optString = c10.optString("Fid", null);
        int optInt = c10.optInt("Status", RegistrationStatus.ATTEMPT_MIGRATION.ordinal());
        String optString2 = c10.optString("AuthToken", null);
        String optString3 = c10.optString("RefreshToken", null);
        long optLong = c10.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = c10.optLong("ExpiresInSecs", 0L);
        return b.a().d(optString).g(RegistrationStatus.values()[optInt]).b(optString2).f(optString3).h(optLong).c(optLong2).e(c10.optString("FisError", null)).a();
    }
}
