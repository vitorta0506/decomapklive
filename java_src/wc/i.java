package wc;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.guochao.faceshow.utils.Contants;
import com.linecorp.linesdk.LineFriendProfile;
import com.linecorp.linesdk.LineGroup;
import com.linecorp.linesdk.LineProfile;
import com.linecorp.linesdk.SendMessageResponse;
import com.linecorp.linesdk.openchat.MembershipStatus;
import com.linecorp.linesdk.openchat.OpenChatParameters;
import com.linecorp.linesdk.openchat.OpenChatRoomInfo;
import com.linecorp.linesdk.openchat.OpenChatRoomJoinType;
import com.linecorp.linesdk.openchat.OpenChatRoomStatus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class i {

    /* renamed from: c  reason: collision with root package name */
    private static final xc.c<LineProfile> f59454c = new l();

    /* renamed from: d  reason: collision with root package name */
    private static final xc.c<qc.d> f59455d = new d();

    /* renamed from: e  reason: collision with root package name */
    private static final xc.c<qc.a> f59456e = new c();

    /* renamed from: f  reason: collision with root package name */
    private static final xc.c<qc.b> f59457f = new e();

    /* renamed from: g  reason: collision with root package name */
    private static final xc.c<List<SendMessageResponse>> f59458g = new g();

    /* renamed from: h  reason: collision with root package name */
    private static final xc.c<Boolean> f59459h = new h();

    /* renamed from: i  reason: collision with root package name */
    private static final xc.c<OpenChatRoomInfo> f59460i = new C0682i();

    /* renamed from: j  reason: collision with root package name */
    private static final xc.c<OpenChatRoomStatus> f59461j = new k();

    /* renamed from: k  reason: collision with root package name */
    private static final xc.c<MembershipStatus> f59462k = new f();

    /* renamed from: l  reason: collision with root package name */
    private static final xc.c<OpenChatRoomJoinType> f59463l = new j();
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Uri f59464a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final xc.a f59465b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes4.dex */
    public static class b extends wc.d<LineFriendProfile> {
        /* JADX INFO: Access modifiers changed from: private */
        public static LineFriendProfile d(@NonNull JSONObject jSONObject) throws JSONException {
            LineProfile e10 = l.e(jSONObject);
            return new LineFriendProfile(e10.getUserId(), e10.a(), e10.b(), e10.c(), jSONObject.optString("displayNameOverridden", null));
        }
    }

    @VisibleForTesting
    /* loaded from: classes4.dex */
    static class c extends wc.d<qc.a> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public qc.a b(@NonNull JSONObject jSONObject) throws JSONException {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray(NativeProtocol.AUDIENCE_FRIENDS);
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                arrayList.add(b.d(jSONArray.getJSONObject(i9)));
            }
            return new qc.a(arrayList, jSONObject.optString("pageToken", null));
        }
    }

    @VisibleForTesting
    /* loaded from: classes4.dex */
    static class d extends wc.d<qc.d> {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public qc.d b(@NonNull JSONObject jSONObject) throws JSONException {
            return new qc.d(jSONObject.getBoolean("friendFlag"));
        }
    }

    @VisibleForTesting
    /* loaded from: classes4.dex */
    static class e extends wc.d<qc.b> {
        e() {
        }

        @NonNull
        private static LineGroup d(@NonNull JSONObject jSONObject) throws JSONException {
            String optString = jSONObject.optString("pictureUrl", null);
            return new LineGroup(jSONObject.getString("groupId"), jSONObject.getString("groupName"), optString != null ? Uri.parse(optString) : null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public qc.b b(@NonNull JSONObject jSONObject) throws JSONException {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("groups");
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                arrayList.add(d(jSONArray.getJSONObject(i9)));
            }
            return new qc.b(arrayList, jSONObject.optString("pageToken", null));
        }
    }

    @VisibleForTesting
    /* loaded from: classes4.dex */
    private static class f extends wc.d<MembershipStatus> {
        private f() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public MembershipStatus b(@NonNull JSONObject jSONObject) throws JSONException {
            return MembershipStatus.valueOf(jSONObject.getString(ServerProtocol.DIALOG_PARAM_STATE).toUpperCase());
        }
    }

    @VisibleForTesting
    /* loaded from: classes4.dex */
    static class g extends wc.d<List<SendMessageResponse>> {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public List<SendMessageResponse> b(@NonNull JSONObject jSONObject) throws JSONException {
            ArrayList arrayList = new ArrayList();
            if (jSONObject.has("results")) {
                JSONArray jSONArray = jSONObject.getJSONArray("results");
                for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                    arrayList.add(SendMessageResponse.a(jSONArray.getJSONObject(i9)));
                }
            }
            return arrayList;
        }
    }

    @VisibleForTesting
    /* loaded from: classes4.dex */
    private static class h extends wc.d<Boolean> {
        private h() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public Boolean b(@NonNull JSONObject jSONObject) throws JSONException {
            return Boolean.valueOf(jSONObject.getBoolean("agreed"));
        }
    }

    @VisibleForTesting
    /* renamed from: wc.i$i  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0682i extends wc.d<OpenChatRoomInfo> {
        private C0682i() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public OpenChatRoomInfo b(@NonNull JSONObject jSONObject) throws JSONException {
            return new OpenChatRoomInfo(jSONObject.getString("openchatId"), jSONObject.getString("url"));
        }
    }

    @VisibleForTesting
    /* loaded from: classes4.dex */
    private static class j extends wc.d<OpenChatRoomJoinType> {
        private j() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public OpenChatRoomJoinType b(@NonNull JSONObject jSONObject) throws JSONException {
            return OpenChatRoomJoinType.valueOf(jSONObject.getString("type").toUpperCase());
        }
    }

    @VisibleForTesting
    /* loaded from: classes4.dex */
    private static class k extends wc.d<OpenChatRoomStatus> {
        private k() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public OpenChatRoomStatus b(@NonNull JSONObject jSONObject) throws JSONException {
            return OpenChatRoomStatus.valueOf(jSONObject.getString("status").toUpperCase());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes4.dex */
    public static class l extends wc.d<LineProfile> {
        l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static LineProfile e(@NonNull JSONObject jSONObject) throws JSONException {
            String optString = jSONObject.optString("pictureUrl", null);
            return new LineProfile(jSONObject.getString(Contants.USER_ID), jSONObject.getString("displayName"), optString == null ? null : Uri.parse(optString), jSONObject.optString("statusMessage", null));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: d */
        public LineProfile b(@NonNull JSONObject jSONObject) throws JSONException {
            return e(jSONObject);
        }
    }

    public i(Context context, @NonNull Uri uri) {
        this(uri, new xc.a(context, "5.7.0"));
    }

    @NonNull
    private static Map<String, String> a(@NonNull vc.d dVar) {
        return yc.f.d("Authorization", "Bearer " + dVar.a());
    }

    @NonNull
    public qc.c<OpenChatRoomInfo> b(@NonNull vc.d dVar, @NonNull OpenChatParameters openChatParameters) {
        return this.f59465b.l(yc.f.e(this.f59464a, "openchat/v1", "openchats"), a(dVar), openChatParameters.toJsonString(), f59460i);
    }

    @NonNull
    public qc.c<Boolean> c(@NonNull vc.d dVar) {
        return this.f59465b.b(yc.f.e(this.f59464a, "openchat/v1", "terms/agreement"), a(dVar), Collections.emptyMap(), f59459h);
    }

    @NonNull
    public qc.c<LineProfile> d(@NonNull vc.d dVar) {
        return this.f59465b.b(yc.f.e(this.f59464a, "v2", "profile"), a(dVar), Collections.emptyMap(), f59454c);
    }

    @VisibleForTesting
    i(@NonNull Uri uri, @NonNull xc.a aVar) {
        this.f59464a = uri;
        this.f59465b = aVar;
    }
}
