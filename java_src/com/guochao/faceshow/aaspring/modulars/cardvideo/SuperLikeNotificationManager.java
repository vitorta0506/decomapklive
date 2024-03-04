package com.guochao.faceshow.aaspring.modulars.cardvideo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Foreground;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class SuperLikeNotificationManager implements Foreground.OnForegroundStateChangedListener {

    /* renamed from: c  reason: collision with root package name */
    private static SuperLikeNotificationManager f16643c;

    /* renamed from: a  reason: collision with root package name */
    private boolean f16644a = false;

    /* renamed from: b  reason: collision with root package name */
    private List<SuperLikeInfo> f16645b = new ArrayList();

    /* loaded from: classes3.dex */
    public static class SuperLikeBroadCasterReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
        }
    }

    /* loaded from: classes3.dex */
    public static class SuperLikeInfo implements Parcelable {
        public static final Parcelable.Creator<SuperLikeInfo> CREATOR = new a();
        public String account;
        public String img;
        public String likeWord;
        public String superLike;
        public String svip;
        public String type_id;
        public String userId;
        public String userNick;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<SuperLikeInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SuperLikeInfo createFromParcel(Parcel parcel) {
                return new SuperLikeInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SuperLikeInfo[] newArray(int i9) {
                return new SuperLikeInfo[i9];
            }
        }

        public SuperLikeInfo() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.account);
            parcel.writeString(this.img);
            parcel.writeString(this.likeWord);
            parcel.writeString(this.superLike);
            parcel.writeString(this.svip);
            parcel.writeString(this.type_id);
            parcel.writeString(this.userId);
            parcel.writeString(this.userNick);
        }

        public SuperLikeInfo(Parcel parcel) {
            this.account = parcel.readString();
            this.img = parcel.readString();
            this.likeWord = parcel.readString();
            this.superLike = parcel.readString();
            this.svip = parcel.readString();
            this.type_id = parcel.readString();
            this.userId = parcel.readString();
            this.userNick = parcel.readString();
        }
    }

    private SuperLikeNotificationManager() {
    }

    public static SuperLikeNotificationManager b() {
        SuperLikeNotificationManager superLikeNotificationManager;
        synchronized (SuperLikeNotificationManager.class) {
            if (f16643c == null) {
                f16643c = new SuperLikeNotificationManager();
            }
            superLikeNotificationManager = f16643c;
        }
        return superLikeNotificationManager;
    }

    private String c(String str, Map<String, Object> map) {
        Object obj = map.get(str);
        return obj == null ? "" : String.valueOf(obj);
    }

    public SuperLikeInfo a(Map<String, Object> map) {
        SuperLikeInfo superLikeInfo = new SuperLikeInfo();
        superLikeInfo.account = c("account", map);
        superLikeInfo.userId = c(Contants.USER_ID, map);
        superLikeInfo.img = c("img", map);
        superLikeInfo.type_id = c("type_id", map);
        superLikeInfo.svip = c("svip", map);
        superLikeInfo.superLike = c("superLike", map);
        superLikeInfo.likeWord = c("likeWord", map);
        superLikeInfo.userNick = c("userNick", map);
        return superLikeInfo;
    }

    public void d(Context context, Map<String, Object> map) {
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterBackground() {
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterForeground() {
    }
}
