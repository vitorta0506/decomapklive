package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.annotation.WorkerThread;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class s3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f9831a;

    /* renamed from: b  reason: collision with root package name */
    private final Bundle f9832b;

    /* renamed from: c  reason: collision with root package name */
    private Bundle f9833c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ x3 f9834d;

    public s3(x3 x3Var, String str, Bundle bundle) {
        this.f9834d = x3Var;
        com.google.android.gms.common.internal.p.f("default_event_parameters");
        this.f9831a = "default_event_parameters";
        this.f9832b = new Bundle();
    }

    @WorkerThread
    public final Bundle a() {
        char c10;
        if (this.f9833c == null) {
            String string = this.f9834d.o().getString(this.f9831a, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i9);
                            String string2 = jSONObject.getString("n");
                            String string3 = jSONObject.getString("t");
                            int hashCode = string3.hashCode();
                            if (hashCode == 100) {
                                if (string3.equals("d")) {
                                    c10 = 1;
                                }
                                c10 = 65535;
                            } else if (hashCode != 108) {
                                if (hashCode == 115 && string3.equals(NotifyType.SOUND)) {
                                    c10 = 0;
                                }
                                c10 = 65535;
                            } else {
                                if (string3.equals(NotifyType.LIGHTS)) {
                                    c10 = 2;
                                }
                                c10 = 65535;
                            }
                            if (c10 == 0) {
                                bundle.putString(string2, jSONObject.getString(NotifyType.VIBRATE));
                            } else if (c10 == 1) {
                                bundle.putDouble(string2, Double.parseDouble(jSONObject.getString(NotifyType.VIBRATE)));
                            } else if (c10 != 2) {
                                this.f9834d.f9432a.b().r().b("Unrecognized persisted bundle type. Type", string3);
                            } else {
                                bundle.putLong(string2, Long.parseLong(jSONObject.getString(NotifyType.VIBRATE)));
                            }
                        } catch (NumberFormatException | JSONException unused) {
                            this.f9834d.f9432a.b().r().a("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.f9833c = bundle;
                } catch (JSONException unused2) {
                    this.f9834d.f9432a.b().r().a("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.f9833c == null) {
                this.f9833c = this.f9832b;
            }
        }
        return this.f9833c;
    }

    @WorkerThread
    public final void b(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        SharedPreferences.Editor edit = this.f9834d.o().edit();
        if (bundle.size() == 0) {
            edit.remove(this.f9831a);
        } else {
            String str = this.f9831a;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        jSONObject.put(NotifyType.VIBRATE, obj.toString());
                        if (obj instanceof String) {
                            jSONObject.put("t", NotifyType.SOUND);
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", NotifyType.LIGHTS);
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            this.f9834d.f9432a.b().r().b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException e10) {
                        this.f9834d.f9432a.b().r().b("Cannot serialize bundle value to SharedPreferences", e10);
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f9833c = bundle;
    }
}
