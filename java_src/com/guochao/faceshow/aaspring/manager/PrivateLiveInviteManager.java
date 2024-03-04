package com.guochao.faceshow.aaspring.manager;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PrivateLiveInviteManager {

    /* renamed from: c  reason: collision with root package name */
    private static PrivateLiveInviteManager f16441c;

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f16442a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f16443b;

    /* loaded from: classes3.dex */
    public interface a {
        void d0();

        void q1();
    }

    private PrivateLiveInviteManager() {
    }

    private void a() {
        for (a aVar : this.f16442a) {
            if (this.f16443b) {
                aVar.q1();
            } else {
                aVar.d0();
            }
        }
    }

    public static PrivateLiveInviteManager c() {
        if (f16441c == null) {
            synchronized (PrivateLiveInviteManager.class) {
                if (f16441c == null) {
                    f16441c = new PrivateLiveInviteManager();
                }
            }
        }
        return f16441c;
    }

    private String d(String str, String str2, JSONObject jSONObject) {
        return TextUtils.isEmpty(jSONObject.optString(str)) ? jSONObject.optString(str2) : jSONObject.optString(str);
    }

    public InviteInfo b(JSONObject jSONObject) {
        InviteInfo inviteInfo = new InviteInfo();
        inviteInfo.liveId = d("liveId", "live_id", jSONObject);
        inviteInfo.userId = d(Contants.USER_ID, AccessToken.USER_ID_KEY, jSONObject);
        inviteInfo.nickName = d("nickName", "nick_name", jSONObject);
        inviteInfo.typeId = d("type", "type_id", jSONObject);
        inviteInfo.liveImg = d("liveImg", "live_img", jSONObject);
        inviteInfo.userImg = d("userImg", "user_img", jSONObject);
        inviteInfo.startTime = d("liveStartTime", "start_time", jSONObject);
        inviteInfo.liveType = d("liveType", EventTrackingUtils.LIVE_TYPE, jSONObject);
        inviteInfo.groupId = d("groupId", "group_id", jSONObject);
        return inviteInfo;
    }

    public void e(boolean z10) {
        this.f16443b = z10;
        a();
    }

    public void registerOnInviteStatusListener(a aVar) {
        this.f16442a.add(aVar);
    }

    public void unregisterOnInviteStatusListener(a aVar) {
        this.f16442a.remove(aVar);
    }

    /* loaded from: classes3.dex */
    public static class InviteInfo implements Parcelable {
        public static final Parcelable.Creator<InviteInfo> CREATOR = new a();
        public int from;
        public String groupId;
        public String liveId;
        public String liveImg;
        public String liveType;
        public String nickName;
        public String privateType;
        public String startTime;
        public String typeId;
        public String userId;
        public String userImg;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<InviteInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public InviteInfo createFromParcel(Parcel parcel) {
                return new InviteInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public InviteInfo[] newArray(int i9) {
                return new InviteInfo[i9];
            }
        }

        public InviteInfo() {
            this.privateType = "2";
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.liveId);
            parcel.writeString(this.userId);
            parcel.writeString(this.typeId);
            parcel.writeString(this.liveImg);
            parcel.writeString(this.userImg);
            parcel.writeString(this.liveType);
            parcel.writeString(this.privateType);
            parcel.writeString(this.startTime);
            parcel.writeString(this.nickName);
            parcel.writeString(this.groupId);
            parcel.writeInt(this.from);
        }

        protected InviteInfo(Parcel parcel) {
            this.privateType = "2";
            this.liveId = parcel.readString();
            this.userId = parcel.readString();
            this.typeId = parcel.readString();
            this.liveImg = parcel.readString();
            this.userImg = parcel.readString();
            this.liveType = parcel.readString();
            this.privateType = parcel.readString();
            this.startTime = parcel.readString();
            this.nickName = parcel.readString();
            this.groupId = parcel.readString();
            this.from = parcel.readInt();
        }
    }
}
