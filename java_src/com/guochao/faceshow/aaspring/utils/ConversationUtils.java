package com.guochao.faceshow.aaspring.utils;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.aaspring.beans.ConversationInfoDetail;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMUserFullInfo;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class ConversationUtils {
    @NonNull
    private static Map<String, String> convertMap(Map<String, byte[]> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), new String(entry.getValue()));
        }
        return hashMap;
    }

    private static void fillCustomFiled(ConversationInfoDetail conversationInfoDetail, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 49:
                if (str.equals("1")) {
                    c10 = 0;
                    break;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    c10 = 1;
                    break;
                }
                break;
            case 51:
                if (str.equals("3")) {
                    c10 = 2;
                    break;
                }
                break;
            case 52:
                if (str.equals("4")) {
                    c10 = 3;
                    break;
                }
                break;
            case 53:
                if (str.equals("5")) {
                    c10 = 4;
                    break;
                }
                break;
            case 54:
                if (str.equals(MVPActivity.FROM_BAG_BADGE)) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                conversationInfoDetail.setGender(Integer.parseInt(str2));
                return;
            case 1:
                conversationInfoDetail.setAge(Integer.parseInt(str2));
                return;
            case 2:
                if (conversationInfoDetail.getUserVipMsg() == null) {
                    conversationInfoDetail.setUserVipMsg(new UserVipData());
                }
                conversationInfoDetail.getUserVipMsg().setIsVip(Integer.parseInt(str2));
                return;
            case 3:
                if (conversationInfoDetail.getUserVipMsg() == null) {
                    conversationInfoDetail.setUserVipMsg(new UserVipData());
                }
                conversationInfoDetail.getUserVipMsg().setDressHeadType(Integer.parseInt(str2));
                return;
            case 4:
                conversationInfoDetail.setFrozen("3".equals(str2));
                return;
            case 5:
                conversationInfoDetail.mvpUrl = str2;
                return;
            default:
                return;
        }
    }

    public static ConversationInfoDetail from(V2TIMUserFullInfo v2TIMUserFullInfo, @Nullable V2TIMConversation v2TIMConversation) {
        ConversationInfoDetail conversationInfoDetail = new ConversationInfoDetail();
        String faceUrl = v2TIMUserFullInfo.getFaceUrl();
        if (TextUtils.isEmpty(faceUrl) && v2TIMConversation != null) {
            faceUrl = v2TIMConversation.getFaceUrl();
        }
        conversationInfoDetail.setAvatar(faceUrl);
        String nickName = v2TIMUserFullInfo.getNickName();
        if (TextUtils.isEmpty(nickName) && v2TIMConversation != null) {
            nickName = v2TIMConversation.getShowName();
        }
        conversationInfoDetail.setNickName(nickName);
        String userID = v2TIMUserFullInfo.getUserID();
        if (TextUtils.isEmpty(userID) && v2TIMConversation != null) {
            userID = v2TIMConversation.getUserID();
        }
        conversationInfoDetail.setUserId(userID);
        conversationInfoDetail.setGender(v2TIMUserFullInfo.getGender());
        Map<String, String> convertMap = convertMap(v2TIMUserFullInfo.getCustomInfo());
        if (convertMap.containsKey("clogo")) {
            conversationInfoDetail.setCountryFlag(convertMap.get("clogo"));
        }
        if (convertMap.containsKey("chatSet")) {
            conversationInfoDetail.setChatType("onlyFriend".equals(convertMap.get("chatSet")) ? 1 : 0);
        }
        boolean z10 = false;
        try {
            if (convertMap.containsKey("other")) {
                String str = convertMap.get("other");
                if (!TextUtils.isEmpty(str)) {
                    for (String str2 : str.split(";")) {
                        String[] split = str2.split(CertificateUtil.DELIMITER);
                        if (split.length >= 2) {
                            String str3 = "";
                            String str4 = split[0];
                            if (split.length > 2) {
                                for (int i9 = 1; i9 < split.length; i9++) {
                                    str3 = TextUtils.isEmpty(str3) ? str3 + split[i9] : str3 + CertificateUtil.DELIMITER + split[i9];
                                }
                            } else {
                                str3 = split[1];
                            }
                            fillCustomFiled(conversationInfoDetail, str4, str3);
                        }
                    }
                }
            }
            z10 = true;
        } catch (Exception unused) {
        }
        if (!z10) {
            try {
                conversationInfoDetail.setGender(Integer.parseInt(convertMap.get("gender")));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (convertMap.containsKey("headType")) {
                String str5 = convertMap.get("headType");
                if (conversationInfoDetail.getUserVipMsg() == null) {
                    conversationInfoDetail.setUserVipMsg(new UserVipData());
                }
                if (!TextUtils.isEmpty(str5)) {
                    conversationInfoDetail.getUserVipMsg().setDressHeadType(Integer.parseInt(str5));
                }
            }
            if (convertMap.containsKey("vipMsg")) {
                String str6 = convertMap.get("vipMsg");
                if (conversationInfoDetail.getUserVipMsg() == null) {
                    conversationInfoDetail.setUserVipMsg(new UserVipData());
                }
                try {
                    conversationInfoDetail.getUserVipMsg().setIsVip(Integer.parseInt(str6));
                } catch (Exception unused2) {
                }
            }
            if (convertMap.containsKey("age")) {
                try {
                    conversationInfoDetail.setAge(Integer.parseInt(convertMap.get("age")));
                } catch (Exception unused3) {
                }
            }
        }
        if (convertMap.containsKey("leavel")) {
            try {
                conversationInfoDetail.setLevel(Integer.parseInt(convertMap.get("leavel")));
            } catch (Exception unused4) {
            }
        }
        if (convertMap.containsKey("headF")) {
            String str7 = convertMap.get("headF");
            if (conversationInfoDetail.getUserVipMsg() == null) {
                conversationInfoDetail.setUserVipMsg(new UserVipData());
            }
            conversationInfoDetail.getUserVipMsg().setDressHead(str7);
        }
        if (convertMap.containsKey("vAddr")) {
            String str8 = convertMap.get("vAddr");
            if (conversationInfoDetail.getUserVipMsg() == null) {
                conversationInfoDetail.setUserVipMsg(new UserVipData());
            }
            conversationInfoDetail.getUserVipMsg().setHostCertificationUrl(str8);
        }
        if (v2TIMUserFullInfo.getLevel() != 0) {
            conversationInfoDetail.setLevel(v2TIMUserFullInfo.getLevel());
        }
        return conversationInfoDetail;
    }

    public static ConversationInfoDetail from(p7.h hVar) {
        ConversationInfoDetail conversationInfoDetail = new ConversationInfoDetail();
        conversationInfoDetail.setAvatar(hVar.getAvatarUrl());
        conversationInfoDetail.setCountryFlag(hVar.getCountryFlag());
        conversationInfoDetail.setNickName(hVar.getUserName());
        conversationInfoDetail.setUserId(hVar.getCurrentUserId());
        conversationInfoDetail.setAge(hVar.getAge());
        conversationInfoDetail.setLevel(hVar.getLevel());
        b8.g vipInfo = hVar.getVipInfo();
        if (vipInfo instanceof UserVipData) {
            conversationInfoDetail.setUserVipMsg((UserVipData) vipInfo);
        }
        conversationInfoDetail.setGender(hVar.getGender());
        return conversationInfoDetail;
    }

    public static ConversationInfoDetail from(V2TIMUserFullInfo v2TIMUserFullInfo) {
        return from(v2TIMUserFullInfo, null);
    }

    public static ConversationInfoDetail from(IM_User iM_User) {
        ConversationInfoDetail conversationInfoDetail = new ConversationInfoDetail();
        conversationInfoDetail.setAvatar(iM_User.getImg());
        conversationInfoDetail.setCountryFlag(iM_User.getCountryLogo());
        conversationInfoDetail.setGender(iM_User.getSex());
        conversationInfoDetail.setNickName(iM_User.getNick_name());
        conversationInfoDetail.setUserId(iM_User.getUser_id());
        conversationInfoDetail.setAge(iM_User.getAge());
        return conversationInfoDetail;
    }
}
