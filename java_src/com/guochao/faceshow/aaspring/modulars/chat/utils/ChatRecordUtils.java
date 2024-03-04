package com.guochao.faceshow.aaspring.modulars.chat.utils;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.webkit.internal.AssetHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMMessageListGetOption;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import io.reactivex.k;
import java.io.BufferedOutputStream;
import java.lang.ref.WeakReference;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
import vh.o;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0007J2\u0010\u0003\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000fH\u0002J.\u0010\u0010\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0006\u0010\n\u001a\u00020\tH\u0002J$\u0010\u0012\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\tJ\u0016\u0010\u0014\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;", "", "()V", "loadMsg", "", PushConstants.INTENT_ACTIVITY_NAME, "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", Contants.USER_ID, "", "userName", "msgList", "Ljava/util/ArrayList;", "Lcom/tencent/imsdk/v2/V2TIMMessage;", "callBack", "Lcom/tencent/imsdk/v2/V2TIMValueCallback;", "parseMsg", "v2TIMMessageList", "saveMsgRecord", "record", "saveMsgRecordQ", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatRecordUtils {
    @NotNull
    public static final ChatRecordUtils INSTANCE = new ChatRecordUtils();

    private ChatRecordUtils() {
    }

    @JvmStatic
    public static final void loadMsg(@NotNull final WeakReference<Activity> activity, @NotNull String userId, @NotNull final String userName) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(userName, "userName");
        INSTANCE.loadMsg(userId, new ArrayList<>(), new V2TIMValueCallback<ArrayList<V2TIMMessage>>() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.ChatRecordUtils$loadMsg$1
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, @Nullable String str) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(@Nullable ArrayList<V2TIMMessage> arrayList) {
                ChatRecordUtils.INSTANCE.parseMsg(activity, arrayList, userName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void parseMsg(WeakReference<Activity> weakReference, ArrayList<V2TIMMessage> arrayList, String str) {
        if (arrayList != null && arrayList.isEmpty()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(GCApplication.app().getString(R.string.chat_record_text, new Object[]{GCApplication.app().getString(R.string.FaceCast_APP_Name), str}) + '\n');
        sb2.append(GCApplication.app().getString(R.string.chat_record_saved_time) + ": " + new SimpleDateFormat("yyyy-MM-dd a h:mm:ss", Locale.getDefault()).format(new Date(System.currentTimeMillis())) + '\n');
        Object obj = null;
        if (arrayList != null) {
            Iterator<V2TIMMessage> it = arrayList.iterator();
            while (it.hasNext()) {
                V2TIMMessage next = it.next();
                String summary = com.guochao.faceshow.aaspring.modulars.chat.models.b.k(next).getSummary(GCApplication.app());
                if (!TextUtils.isEmpty(summary)) {
                    String format = new SimpleDateFormat("yyyy-MM-dd  EE", Locale.getDefault()).format(new Date(next.getTimestamp() * 1000));
                    if (!format.equals(obj)) {
                        sb2.append(format);
                        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                        obj = format;
                    }
                    sb2.append(new SimpleDateFormat("HH:mm  ", Locale.getDefault()).format(new Date(next.getTimestamp() * 1000)));
                    sb2.append(b8.e.g().getUserId().equals(next.getSender()) ? b8.e.g().getUserName() : str);
                    sb2.append("  ");
                    sb2.append(summary);
                    sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "content.toString()");
            saveMsgRecordQ(str, sb3);
            return;
        }
        String sb4 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb4, "content.toString()");
        saveMsgRecord(weakReference, str, sb4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: saveMsgRecordQ$lambda-4  reason: not valid java name */
    public static final Uri m355saveMsgRecordQ$lambda4(String userName, String record, String it) {
        List<String> split$default;
        boolean contains$default;
        Intrinsics.checkNotNullParameter(userName, "$userName");
        Intrinsics.checkNotNullParameter(record, "$record");
        Intrinsics.checkNotNullParameter(it, "it");
        Uri contentUri = MediaStore.Files.getContentUri("external");
        Intrinsics.checkNotNullExpressionValue(contentUri, "getContentUri(\"external\")");
        ContentValues contentValues = new ContentValues();
        contentValues.put("relative_path", Environment.DIRECTORY_DOWNLOADS + IOUtils.DIR_SEPARATOR_UNIX + BaseApplication.getInstance().getString(R.string.FaceCast_APP_Name) + "/im_files");
        String str = '[' + BaseApplication.getInstance().getString(R.string.FaceCast_APP_Name) + "]  " + BaseApplication.getInstance().getString(R.string.chat_record_title, new Object[]{userName});
        contentValues.put("_display_name", str + ".txt");
        contentValues.put("title", str);
        ContentResolver contentResolver = BaseApplication.getInstance().getContentResolver();
        String str2 = Environment.DIRECTORY_DOWNLOADS + IOUtils.DIR_SEPARATOR_UNIX + BaseApplication.getInstance().getString(R.string.FaceCast_APP_Name) + "/im_files/" + str + ".txt";
        Cursor query = contentResolver.query(contentUri, new String[]{"_id", "_data"}, null, null, null);
        if (query != null && query.moveToFirst()) {
            while (true) {
                int i9 = query.getInt(query.getColumnIndex("_id"));
                String string = query.getString(query.getColumnIndexOrThrow("_data"));
                if (string != null) {
                    contains$default = StringsKt__StringsKt.contains$default((CharSequence) string, (CharSequence) str2, false, 2, (Object) null);
                    if (contains$default) {
                        contentResolver.delete(Uri.withAppendedPath(contentUri, String.valueOf(i9)), null, null);
                        break;
                    }
                }
                if (!query.moveToNext()) {
                    break;
                }
            }
            query.close();
        }
        Uri insert = contentResolver.insert(contentUri, contentValues);
        if (insert != null) {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(contentResolver.openOutputStream(insert));
            try {
                split$default = StringsKt__StringsKt.split$default((CharSequence) record, new String[]{IOUtils.LINE_SEPARATOR_UNIX}, false, 0, 6, (Object) null);
                for (String str3 : split$default) {
                    Charset charset = Charsets.UTF_8;
                    byte[] bytes = str3.getBytes(charset);
                    Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                    bufferedOutputStream.write(bytes);
                    byte[] bytes2 = IOUtils.LINE_SEPARATOR_UNIX.getBytes(charset);
                    Intrinsics.checkNotNullExpressionValue(bytes2, "this as java.lang.String).getBytes(charset)");
                    bufferedOutputStream.write(bytes2);
                }
                bufferedOutputStream.close();
            } finally {
                try {
                    bufferedOutputStream.close();
                } catch (Exception unused) {
                }
            }
        }
        return insert;
    }

    public final void saveMsgRecord(@NotNull WeakReference<Activity> activity, @NotNull String userName, @NotNull String record) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(userName, "userName");
        Intrinsics.checkNotNullParameter(record, "record");
        Activity activity2 = activity.get();
        if (activity2 == null || activity2.isFinishing() || activity2.isDestroyed()) {
            return;
        }
        new com.tbruyelle.rxpermissions2.a((FragmentActivity) activity2).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new ChatRecordUtils$saveMsgRecord$1$1(userName, record));
    }

    public final void saveMsgRecordQ(@NotNull final String userName, @NotNull final String record) {
        Intrinsics.checkNotNullParameter(userName, "userName");
        Intrinsics.checkNotNullParameter(record, "record");
        k.just(userName).map(new o() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.a
            @Override // vh.o
            public final Object apply(Object obj) {
                Uri m355saveMsgRecordQ$lambda4;
                m355saveMsgRecordQ$lambda4 = ChatRecordUtils.m355saveMsgRecordQ$lambda4(userName, record, (String) obj);
                return m355saveMsgRecordQ$lambda4;
            }
        }).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new SimpleObserver<Uri>() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.ChatRecordUtils$saveMsgRecordQ$2
            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onNext(@NotNull Uri path) {
                Intrinsics.checkNotNullParameter(path, "path");
                super.onNext((ChatRecordUtils$saveMsgRecordQ$2) path);
                Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                intent.setFlags(268435459);
                intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
                if (Build.VERSION.SDK_INT >= 24) {
                    intent.putExtra("android.intent.extra.STREAM", path);
                    intent.addFlags(1);
                } else {
                    intent.putExtra("android.intent.extra.STREAM", path);
                }
                String string = BaseApplication.getInstance().getString(R.string.chat_record_text, new Object[]{BaseApplication.getInstance().getString(R.string.FaceCast_APP_Name), userName});
                Intrinsics.checkNotNullExpressionValue(string, "getInstance().getString(…Cast_APP_Name), userName)");
                intent.putExtra("android.intent.extra.TEXT", string);
                Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
                if (currTopActivity != null) {
                    currTopActivity.startActivity(intent);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void loadMsg(final String str, final ArrayList<V2TIMMessage> arrayList, final V2TIMValueCallback<ArrayList<V2TIMMessage>> v2TIMValueCallback) {
        V2TIMMessageListGetOption v2TIMMessageListGetOption = new V2TIMMessageListGetOption();
        v2TIMMessageListGetOption.setGetType(3);
        v2TIMMessageListGetOption.setUserID(str);
        v2TIMMessageListGetOption.setCount(15);
        if (!arrayList.isEmpty()) {
            v2TIMMessageListGetOption.setLastMsg(arrayList.get(arrayList.size() - 1));
        }
        V2TIMManager.getMessageManager().getHistoryMessageList(v2TIMMessageListGetOption, new V2TIMValueCallback<List<? extends V2TIMMessage>>() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.ChatRecordUtils$loadMsg$2
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, @Nullable String str2) {
                v2TIMValueCallback.onSuccess(arrayList);
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(@Nullable List<? extends V2TIMMessage> list) {
                if (list != null && !list.isEmpty()) {
                    arrayList.addAll(list);
                    ChatRecordUtils.INSTANCE.loadMsg(str, arrayList, v2TIMValueCallback);
                    return;
                }
                onError(-1, "");
            }
        });
    }
}
