package qc;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.NativeProtocol;
import com.facebook.login.LoginConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, e> f57156b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public static final e f57157c = new e("profile");

    /* renamed from: d  reason: collision with root package name */
    public static final e f57158d = new e(NativeProtocol.AUDIENCE_FRIENDS);

    /* renamed from: e  reason: collision with root package name */
    public static final e f57159e = new e("groups");

    /* renamed from: f  reason: collision with root package name */
    public static final e f57160f = new e("message.write");

    /* renamed from: g  reason: collision with root package name */
    public static final e f57161g = new e(LoginConfiguration.OPENID);

    /* renamed from: h  reason: collision with root package name */
    public static final e f57162h = new e("email");

    /* renamed from: i  reason: collision with root package name */
    public static final e f57163i = new e("phone");

    /* renamed from: j  reason: collision with root package name */
    public static final e f57164j = new e("gender");

    /* renamed from: k  reason: collision with root package name */
    public static final e f57165k = new e("birthdate");

    /* renamed from: l  reason: collision with root package name */
    public static final e f57166l = new e(IntegrityManager.INTEGRITY_TYPE_ADDRESS);

    /* renamed from: m  reason: collision with root package name */
    public static final e f57167m = new e("real_name");

    /* renamed from: n  reason: collision with root package name */
    public static final e f57168n = new e("onetime.share");

    /* renamed from: o  reason: collision with root package name */
    public static final e f57169o = new e("openchat.term.agreement.status");

    /* renamed from: p  reason: collision with root package name */
    public static final e f57170p = new e("openchat.create.join");

    /* renamed from: q  reason: collision with root package name */
    public static final e f57171q = new e("openchat.info");

    /* renamed from: r  reason: collision with root package name */
    public static final e f57172r = new e("openchatplug.managament");

    /* renamed from: s  reason: collision with root package name */
    public static final e f57173s = new e("openchatplug.info");

    /* renamed from: t  reason: collision with root package name */
    public static final e f57174t = new e("openchatplug.profile");

    /* renamed from: u  reason: collision with root package name */
    public static final e f57175u = new e("openchatplug.send.message");

    /* renamed from: v  reason: collision with root package name */
    public static final e f57176v = new e("openchatplug.receive.message.event");
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f57177a;

    public e(@NonNull String str) {
        this.f57177a = str;
        f57156b.put(str, this);
    }

    public static List<String> a(List<e> list) {
        ArrayList arrayList = new ArrayList();
        for (e eVar : list) {
            arrayList.add(eVar.f57177a);
        }
        return arrayList;
    }

    public static List<e> b(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            e c10 = c(str);
            if (c10 != null) {
                arrayList.add(c10);
            } else {
                arrayList.add(new e(str));
            }
        }
        return arrayList;
    }

    @Nullable
    public static e c(String str) {
        return f57156b.get(str);
    }

    public static String d(@Nullable List<e> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return TextUtils.join(" ", a(list));
    }

    public static List<e> e(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return Collections.emptyList();
        }
        return b(Arrays.asList(str.split(" ")));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f57177a.equals(((e) obj).f57177a);
    }

    public int hashCode() {
        return this.f57177a.hashCode();
    }

    public String toString() {
        return "Scope{code='" + this.f57177a + "'}";
    }
}
