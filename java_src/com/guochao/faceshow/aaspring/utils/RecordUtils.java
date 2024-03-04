package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.NewRecordBeans;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.mine.model.TransactionType;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class RecordUtils {
    public static final int TYPE_22007 = 22007;
    public static final int TYPE_22008 = 22008;
    public static final int TYPE_22009 = 22009;
    public static final int TYPE_22010 = 22010;
    public static final int TYPE_22011 = 22011;
    public static final int TYPE_23011 = 23011;

    private static String getGameNameDetail(Context context, int i9) {
        switch (i9) {
            case 6007001:
            case 6007003:
                return context.getString(R.string.mini_game_join_rock);
            case 6007002:
            case 6007004:
                return context.getString(R.string.mini_game_join_rock_reward);
            default:
                switch (i9) {
                    case 6008001:
                    case 6008003:
                        return context.getString(R.string.mini_game_join_dion);
                    case 6008002:
                    case 6008004:
                        return context.getString(R.string.mini_game_join_dion_reward);
                    default:
                        return "";
                }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getItemResource(android.content.Context r1, int r2, int r3) {
        /*
            r1 = 2131231116(0x7f08018c, float:1.8078304E38)
            r0 = 2131231122(0x7f080192, float:1.8078316E38)
            switch(r2) {
                case 1: goto L83;
                case 2: goto L7f;
                case 3: goto L76;
                case 4: goto L72;
                case 5: goto L6e;
                case 6: goto L6a;
                case 7: goto L66;
                case 8: goto L62;
                case 9: goto L5e;
                case 10: goto L5a;
                case 11: goto L56;
                case 12: goto L52;
                case 13: goto L4e;
                case 14: goto L3d;
                case 15: goto L86;
                case 16: goto L39;
                case 17: goto L35;
                case 18: goto L23;
                case 19: goto L1e;
                case 20: goto L86;
                case 21: goto L3d;
                case 22: goto L76;
                case 23: goto L6e;
                default: goto L9;
            }
        L9:
            switch(r2) {
                case 6001: goto L6a;
                case 6002: goto L6a;
                case 6003: goto L6a;
                case 6004: goto L6a;
                case 6005: goto L6a;
                case 6006: goto L6a;
                case 6007: goto L6a;
                case 6008: goto L6a;
                default: goto Lc;
            }
        Lc:
            r1 = 24001(0x5dc1, float:3.3633E-41)
            if (r3 < r1) goto L19
            r1 = 24012(0x5dcc, float:3.3648E-41)
            if (r3 > r1) goto L19
            r1 = 2131231130(0x7f08019a, float:1.8078332E38)
            goto L86
        L19:
            r1 = 2131231126(0x7f080196, float:1.8078324E38)
            goto L86
        L1e:
            r1 = 2131231125(0x7f080195, float:1.8078322E38)
            goto L86
        L23:
            r1 = 18003(0x4653, float:2.5228E-41)
            if (r3 == r1) goto L31
            r1 = 18005(0x4655, float:2.523E-41)
            if (r3 != r1) goto L2c
            goto L31
        L2c:
            r1 = 2131231129(0x7f080199, float:1.807833E38)
            goto L86
        L31:
            r1 = 2131231114(0x7f08018a, float:1.80783E38)
            goto L86
        L35:
            r1 = 2131231135(0x7f08019f, float:1.8078342E38)
            goto L86
        L39:
            r1 = 2131231121(0x7f080191, float:1.8078314E38)
            goto L86
        L3d:
            r1 = 14007(0x36b7, float:1.9628E-41)
            if (r3 == r1) goto L4a
            r1 = 14008(0x36b8, float:1.963E-41)
            if (r3 != r1) goto L46
            goto L4a
        L46:
            r1 = 2131231119(0x7f08018f, float:1.807831E38)
            goto L86
        L4a:
            r1 = 2131690113(0x7f0f0281, float:1.900926E38)
            goto L86
        L4e:
            r1 = 2131231124(0x7f080194, float:1.807832E38)
            goto L86
        L52:
            r1 = 2131231115(0x7f08018b, float:1.8078302E38)
            goto L86
        L56:
            r1 = 2131231113(0x7f080189, float:1.8078298E38)
            goto L86
        L5a:
            r1 = 2131231112(0x7f080188, float:1.8078296E38)
            goto L86
        L5e:
            r1 = 2131231117(0x7f08018d, float:1.8078306E38)
            goto L86
        L62:
            r1 = 2131231120(0x7f080190, float:1.8078312E38)
            goto L86
        L66:
            r1 = 2131231132(0x7f08019c, float:1.8078336E38)
            goto L86
        L6a:
            r1 = 2131231118(0x7f08018e, float:1.8078308E38)
            goto L86
        L6e:
            r1 = 2131231122(0x7f080192, float:1.8078316E38)
            goto L86
        L72:
            r1 = 2131231127(0x7f080197, float:1.8078326E38)
            goto L86
        L76:
            r1 = 22011(0x55fb, float:3.0844E-41)
            if (r3 != r1) goto L7b
            goto L6e
        L7b:
            r1 = 2131231123(0x7f080193, float:1.8078318E38)
            goto L86
        L7f:
            r1 = 2131231131(0x7f08019b, float:1.8078334E38)
            goto L86
        L83:
            r1 = 2131231128(0x7f080198, float:1.8078328E38)
        L86:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.utils.RecordUtils.getItemResource(android.content.Context, int, int):int");
    }

    private static String getLuckyGiftReward(Context context, NewRecordBeans.NewRecordBean newRecordBean) {
        int dealType = newRecordBean.getDealType();
        if (dealType != 23011) {
            switch (dealType) {
                case TYPE_22007 /* 22007 */:
                case TYPE_22008 /* 22008 */:
                case TYPE_22009 /* 22009 */:
                case TYPE_22010 /* 22010 */:
                case TYPE_22011 /* 22011 */:
                    break;
                default:
                    return "";
            }
        }
        return context.getString(R.string.lucky_gift_diamonds_from_lucky_gift);
    }

    /* JADX WARN: Removed duplicated region for block: B:207:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x05d9  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x05de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.SpannableStringBuilder getRecordInfo(android.content.Context r12, com.guochao.faceshow.aaspring.beans.NewRecordBeans.NewRecordBean r13) {
        /*
            Method dump skipped, instructions count: 1606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.utils.RecordUtils.getRecordInfo(android.content.Context, com.guochao.faceshow.aaspring.beans.NewRecordBeans$NewRecordBean):android.text.SpannableStringBuilder");
    }

    public static List<TransactionType> getRecordTypeList(Activity activity, int i9) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TransactionType(-1, activity.getString(R.string.transaction_type_all_month)));
        if (i9 == 0) {
            arrayList.add(new TransactionType(1, activity.getString(R.string.charge)));
            arrayList.add(new TransactionType(3, activity.getString(R.string.transaction_type_live)));
            arrayList.add(new TransactionType(5, activity.getString(R.string.mai)));
            arrayList.add(new TransactionType(6, activity.getString(R.string.game)));
            arrayList.add(new TransactionType(7, activity.getString(R.string.luxiang)));
            arrayList.add(new TransactionType(8, "IM"));
            arrayList.add(new TransactionType(9, activity.getString(R.string.trtc_call_meeting)));
            arrayList.add(new TransactionType(10, activity.getString(R.string.one2one)));
            arrayList.add(new TransactionType(11, activity.getString(R.string.record_advertising)));
            arrayList.add(new TransactionType(12, activity.getString(R.string.record_treasure_chest)));
            arrayList.add(new TransactionType(13, activity.getString(R.string.f_dress_up_market)));
            arrayList.add(new TransactionType(14, activity.getString(R.string.system_presented)));
            TransactionType transactionType = new TransactionType(15, activity.getString(R.string.f_to_diamond));
            transactionType.setChildId(15002);
            arrayList.add(transactionType);
            TransactionType transactionType2 = new TransactionType(15, activity.getString(R.string.change_gamecoin_shuijing));
            transactionType2.setChildId(15004);
            arrayList.add(transactionType2);
            arrayList.add(new TransactionType(16, activity.getString(R.string.invite_friend)));
            arrayList.add(new TransactionType(22, activity.getString(R.string.lucky_gift_record_title)));
            arrayList.add(new TransactionType(23, activity.getString(R.string.voice_room_room)));
            arrayList.add(new TransactionType(0, activity.getString(R.string.muser_center_report_tenth)));
            arrayList.add(new TransactionType(24, activity.getString(R.string.signin_user_center)));
        } else if (i9 == 1) {
            arrayList.add(new TransactionType(3, activity.getString(R.string.transaction_type_live)));
            arrayList.add(new TransactionType(5, activity.getString(R.string.mai)));
            arrayList.add(new TransactionType(7, activity.getString(R.string.luxiang)));
            arrayList.add(new TransactionType(8, "IM"));
            arrayList.add(new TransactionType(9, activity.getString(R.string.trtc_call_meeting)));
            arrayList.add(new TransactionType(10, activity.getString(R.string.one2one)));
            arrayList.add(new TransactionType(-2, activity.getString(R.string.official_gifts)));
            arrayList.add(new TransactionType(15, activity.getString(R.string.f_exchange)));
            arrayList.add(new TransactionType(23, activity.getString(R.string.voice_room_room)));
            arrayList.add(new TransactionType(0, activity.getString(R.string.muser_center_report_tenth)));
            arrayList.add(new TransactionType(24, activity.getString(R.string.signin_user_center)));
        } else {
            arrayList.add(new TransactionType(6, activity.getString(R.string.game)));
            TransactionType transactionType3 = new TransactionType(15, activity.getString(R.string.trading_change_by_diamond));
            transactionType3.setChildId(15005);
            arrayList.add(transactionType3);
            arrayList.add(new TransactionType(3, activity.getString(R.string.trading_send_gift)));
            arrayList.add(new TransactionType(23, activity.getString(R.string.voice_room_room)));
            arrayList.add(new TransactionType(0, activity.getString(R.string.muser_center_report_tenth)));
            arrayList.add(new TransactionType(24, activity.getString(R.string.signin_user_center)));
        }
        return arrayList;
    }

    private static SpannableStringBuilder giveGift(Context context, NewRecordBeans.NewRecordBean newRecordBean) {
        String format;
        if (newRecordBean.getNumbers() > 1) {
            String string = context.getString(R.string.record_new_send_to_num);
            format = String.format(string, "@" + newRecordBean.getRecUserName(), newRecordBean.getGiftName(), x.f19108w + newRecordBean.getNumbers());
        } else {
            String string2 = context.getString(R.string.record_new_send_to);
            format = String.format(string2, "@" + newRecordBean.getRecUserName(), newRecordBean.getGiftName());
        }
        int indexOf = format.indexOf("@" + newRecordBean.getRecUserName());
        int i9 = indexOf >= 0 ? indexOf : 0;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#6365FF")), i9, ("@" + newRecordBean.getRecUserName()).length() + i9, 34);
        return spannableStringBuilder;
    }

    private static boolean isReceiveGift(int i9) {
        return i9 == 3009 || i9 == 5009 || i9 == 23001 || i9 == 23003 || i9 == 23005 || i9 == 23007 || i9 == 23009 || i9 == 3005 || i9 == 3007 || i9 == 5008 || i9 == 5005;
    }

    private static boolean isSendGift(int i9) {
        return i9 == 3010 || i9 == 5010 || i9 == 23002 || i9 == 23010 || i9 == 23004 || i9 == 23006 || i9 == 23008 || i9 == 3006 || i9 == 3008 || i9 == 5006 || i9 == 5007;
    }

    private static SpannableStringBuilder receiveGift(Context context, NewRecordBeans.NewRecordBean newRecordBean) {
        String string;
        String format;
        if (newRecordBean.getNumbers() > 1) {
            string = context.getString(R.string.record_received_to) + x.f19108w + newRecordBean.getNumbers();
        } else {
            string = context.getString(R.string.record_received_to);
        }
        if (TextUtils.isEmpty(newRecordBean.getGiftName())) {
            format = String.format(string, newRecordBean.getRecUserName());
        } else {
            format = String.format(string, newRecordBean.getRecUserName() + newRecordBean.getGiftName());
        }
        int indexOf = format.indexOf("@" + newRecordBean.getRecUserName());
        int i9 = indexOf >= 0 ? indexOf : 0;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#6365FF")), i9, ("@" + newRecordBean.getRecUserName()).length() + i9, 34);
        return spannableStringBuilder;
    }

    public static boolean showOrderNo(NewRecordBeans.NewRecordBean newRecordBean) {
        return (newRecordBean.getParentType() == 1 || newRecordBean.getParentType() == 18) && !TextUtils.isEmpty(newRecordBean.getRemark()) && newRecordBean.getRemark().startsWith("GPA");
    }

    public static boolean showTopUpRefund(NewRecordBeans.NewRecordBean newRecordBean) {
        return newRecordBean.getParentType() == 1 && !TextUtils.isEmpty(newRecordBean.getMessage());
    }
}
