package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import android.text.TextUtils;
import com.guochao.faceshow.R;
import com.tencent.imsdk.v2.V2TIMImageElem;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.io.File;
import java.util.Map;
/* loaded from: classes3.dex */
public class ImageMessage extends MediaMessage {
    private static final String TAG = "ImageMessage";
    public boolean mOriginalDownloadSuccess;
    public boolean mThumbnailDownloadSuccess;

    public ImageMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
        this.mThumbnailDownloadSuccess = false;
        this.mOriginalDownloadSuccess = false;
    }

    private File getFile(int i9) {
        String str;
        V2TIMImageElem.V2TIMImage tIMImage;
        V2TIMImageElem imageElem = getImageElem();
        if (imageElem == null) {
            return null;
        }
        if (imageElem.getImageList() != null && !imageElem.getImageList().isEmpty()) {
            int type = getImageElem().getImageList().get(0).getType();
            if (type == 2) {
                str = ".gif";
            } else if (type == 3) {
                str = ".png";
            } else if (type != 4) {
                str = ".jpg";
            } else {
                str = ".bmp";
            }
            String str2 = i9 != 1 ? i9 != 2 ? "original" : "large" : "thumb";
            if (getTIMImage(i9) != null) {
                str = tIMImage.getUUID() + str;
            }
            return new File(getBaseDir("image", str2), str);
        }
        return new File(imageElem.getPath());
    }

    private V2TIMImageElem.V2TIMImage getTIMImage(int i9) {
        V2TIMImageElem imageElem = getImageElem();
        if (imageElem == null || imageElem.getImageList() == null) {
            return null;
        }
        for (int i10 = 0; i10 < imageElem.getImageList().size(); i10++) {
            if (imageElem.getImageList().get(i10).getType() == i9) {
                return imageElem.getImageList().get(i10);
            }
        }
        return null;
    }

    public V2TIMImageElem.V2TIMImage getBigPhotoImage() {
        return getTIMImage(2);
    }

    public V2TIMImageElem.V2TIMImage getImage() {
        return getImageElem().getImageList().get(0);
    }

    public V2TIMImageElem getImageElem() {
        return this.message.getImageElem();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? 3 : 4;
    }

    public File getOriginalFile() {
        return getFile(0);
    }

    public V2TIMImageElem.V2TIMImage getOrignalImage() {
        return getTIMImage(0);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        String revokeSummary = getRevokeSummary();
        if (revokeSummary != null) {
            return revokeSummary;
        }
        if (TextUtils.isEmpty(getTransformedOtherLanguage())) {
            return context.getString(R.string.summary_image);
        }
        String str = getTransformedOtherLanguage() + "_image";
        Map<String, String> map = a.MESSAGE_TIPS_MULTI_LANGUAGE;
        if (map.containsKey(str)) {
            String str2 = map.get(str);
            if (!TextUtils.isEmpty(str2)) {
                return str2;
            }
        }
        return context.getString(R.string.summary_image);
    }

    public File getThumbnailFile() {
        return getFile(1);
    }

    public File getThumbnailFileTemp() {
        return new File(getFile(1).getAbsolutePath() + "_temp");
    }

    public V2TIMImageElem.V2TIMImage getThumbnailImage() {
        return getTIMImage(1);
    }

    public String getUrl(int i9) {
        V2TIMImageElem.V2TIMImage tIMImage = getTIMImage(i9);
        return tIMImage == null ? "" : tIMImage.getUrl();
    }

    public ImageMessage(String str, boolean z10) {
        super(V2TIMManager.getMessageManager().createImageMessage(str));
        this.mThumbnailDownloadSuccess = false;
        this.mOriginalDownloadSuccess = false;
    }
}
