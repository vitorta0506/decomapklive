package com.guochao.faceshow.aaspring.utils;

import androidx.annotation.NonNull;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import java.lang.reflect.Field;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class VipUserInfoUtil {
    static final b8.g DUMMY = new UserVipData() { // from class: com.guochao.faceshow.aaspring.utils.VipUserInfoUtil.1
        @Override // com.guochao.faceshow.aaspring.beans.UserVipData, b8.g
        public String getHostCertificationUrl() {
            return null;
        }

        @Override // com.guochao.faceshow.aaspring.beans.UserVipData
        public String getVipAvatarPendentId() {
            return null;
        }

        @Override // com.guochao.faceshow.aaspring.beans.UserVipData, b8.g
        public String getVipAvatarPendentUrl() {
            return null;
        }

        @Override // com.guochao.faceshow.aaspring.beans.UserVipData
        public /* bridge */ /* synthetic */ String getVipDressChatUrl() {
            return b8.f.i(this);
        }

        @Override // com.guochao.faceshow.aaspring.beans.UserVipData, b8.g
        public int getVipLevel() {
            return 0;
        }

        @Override // com.guochao.faceshow.aaspring.beans.UserVipData, b8.g
        public boolean isVip() {
            return false;
        }
    };
    private static final HashMap<String, Field> FIELDS = new HashMap<>();

    @NonNull
    public static b8.g getVipUserInfo(@NonNull p7.h hVar) {
        Class<?> cls = hVar.getClass();
        try {
            HashMap<String, Field> hashMap = FIELDS;
            Field field = hashMap.get(cls.getName());
            if (field == null) {
                field = cls.getDeclaredField("userVipMsg");
                hashMap.put(cls.getName(), field);
                field.setAccessible(true);
            }
            Object obj = field.get(hVar);
            if (obj instanceof b8.g) {
                return (b8.g) obj;
            }
        } catch (IllegalAccessException | NoSuchFieldException e10) {
            e10.printStackTrace();
        }
        return DUMMY;
    }
}
