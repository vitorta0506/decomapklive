package com.tencent.ugc.videoprocessor.watermark;

import android.text.TextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.q;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPaster;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class AnimatedPasterFilterChain extends PasterBase {
    private static final String TAG = "AnimatedPasterFilterChain";
    private List<TXVideoEditConstants.TXAnimatedPaster> mAnimatedPasterList;
    private CopyOnWriteArrayList<AnimatedPaster> mNormalizedList = new CopyOnWriteArrayList<>();

    private TXVideoEditConstants.TXAnimatedPaster construct(TXVideoEditConstants.TXAnimatedPaster tXAnimatedPaster, TXVideoEditConstants.TXRect tXRect) {
        TXVideoEditConstants.TXAnimatedPaster tXAnimatedPaster2 = new TXVideoEditConstants.TXAnimatedPaster();
        tXAnimatedPaster2.frame = tXRect;
        tXAnimatedPaster2.animatedPasterPathFolder = tXAnimatedPaster.animatedPasterPathFolder;
        tXAnimatedPaster2.startTime = tXAnimatedPaster.startTime;
        tXAnimatedPaster2.endTime = tXAnimatedPaster.endTime;
        tXAnimatedPaster2.rotation = tXAnimatedPaster.rotation;
        return tXAnimatedPaster2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
        if (r6 == null) goto L14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String parseJsonFromFile(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = ""
            r1 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r6.<init>(r3)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
        L12:
            java.lang.String r1 = r6.readLine()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            if (r1 == 0) goto L28
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            r2.<init>()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            r2.append(r0)     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            r2.append(r1)     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            java.lang.String r0 = r2.toString()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
            goto L12
        L28:
            r6.close()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L42
        L2b:
            r6.close()     // Catch: java.io.IOException -> L41
            goto L41
        L2f:
            r1 = move-exception
            goto L37
        L31:
            r0 = move-exception
            goto L44
        L33:
            r6 = move-exception
            r4 = r1
            r1 = r6
            r6 = r4
        L37:
            java.lang.String r2 = "AnimatedPasterFilterChain"
            java.lang.String r3 = "read file failed."
            com.tencent.liteav.base.util.LiteavLog.e(r2, r3, r1)     // Catch: java.lang.Throwable -> L42
            if (r6 == 0) goto L41
            goto L2b
        L41:
            return r0
        L42:
            r0 = move-exception
            r1 = r6
        L44:
            if (r1 == 0) goto L49
            r1.close()     // Catch: java.io.IOException -> L49
        L49:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.ugc.videoprocessor.watermark.AnimatedPasterFilterChain.parseJsonFromFile(java.lang.String):java.lang.String");
    }

    private AnimatedPasterJsonConfig parsePaster(String str) {
        String parseJsonFromFile = parseJsonFromFile(str + AnimatedPasterJsonConfig.FILE_NAME);
        if (TextUtils.isEmpty(parseJsonFromFile)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(parseJsonFromFile);
            AnimatedPasterJsonConfig animatedPasterJsonConfig = new AnimatedPasterJsonConfig();
            try {
                animatedPasterJsonConfig.mName = jSONObject.getString("name");
                animatedPasterJsonConfig.mCount = jSONObject.getInt(AnimatedPasterJsonConfig.CONFIG_COUNT);
                animatedPasterJsonConfig.mPeriod = jSONObject.getInt("period");
                animatedPasterJsonConfig.mWidth = jSONObject.getInt("width");
                animatedPasterJsonConfig.mHeight = jSONObject.getInt("height");
                animatedPasterJsonConfig.mKeyframe = jSONObject.getInt(AnimatedPasterJsonConfig.CONFIG_KEYFRAME);
                JSONArray jSONArray = jSONObject.getJSONArray(AnimatedPasterJsonConfig.CONFIG_KEYFRAME_ARRAY);
                for (int i9 = 0; i9 < animatedPasterJsonConfig.mCount; i9++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i9);
                    AnimatedPasterJsonConfig.PasterPicture pasterPicture = new AnimatedPasterJsonConfig.PasterPicture();
                    pasterPicture.mPictureName = jSONObject2.getString("picture");
                    animatedPasterJsonConfig.mFrameArray.add(pasterPicture);
                }
            } catch (JSONException e10) {
                LiteavLog.e(TAG, "failed to get value from json.", e10);
            }
            return animatedPasterJsonConfig;
        } catch (JSONException e11) {
            LiteavLog.e(TAG, "parse invalid json string", e11);
            return null;
        }
    }

    @Override // com.tencent.ugc.videoprocessor.watermark.PasterBase
    public void clear() {
        super.clear();
        this.mNormalizedList.clear();
        List<TXVideoEditConstants.TXAnimatedPaster> list = this.mAnimatedPasterList;
        if (list != null) {
            list.clear();
        }
        this.mAnimatedPasterList = null;
    }

    public List<AnimatedPaster> getAnimatedPasterList() {
        return this.mNormalizedList;
    }

    @Override // com.tencent.ugc.videoprocessor.watermark.PasterBase
    public void normalized(int i9, int i10, int i11) {
        int i12;
        Iterator<TXVideoEditConstants.TXAnimatedPaster> it;
        AnimatedPasterJsonConfig animatedPasterJsonConfig;
        int i13;
        int i14;
        List<TXVideoEditConstants.TXAnimatedPaster> list = this.mAnimatedPasterList;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<TXVideoEditConstants.TXAnimatedPaster> it2 = this.mAnimatedPasterList.iterator();
        while (it2.hasNext()) {
            TXVideoEditConstants.TXAnimatedPaster next = it2.next();
            if (next != null) {
                TXVideoEditConstants.TXAnimatedPaster construct = construct(next, calculateRect(i9, i10, i11, next.frame));
                AnimatedPasterJsonConfig parsePaster = parsePaster(construct.animatedPasterPathFolder);
                if (parsePaster != null && (i12 = parsePaster.mCount) > 0) {
                    long j10 = construct.startTime;
                    long j11 = construct.endTime - j10;
                    int i15 = parsePaster.mPeriod;
                    int i16 = i15 / i12;
                    int i17 = (int) (j11 / i15);
                    if (j11 % i15 > 0) {
                        i17++;
                    }
                    int i18 = 0;
                    while (i18 < i17) {
                        int i19 = 0;
                        while (true) {
                            if (i19 >= parsePaster.mCount) {
                                it = it2;
                                animatedPasterJsonConfig = parsePaster;
                                i13 = i18;
                                i14 = i17;
                                break;
                            }
                            i13 = i18;
                            long j12 = i16 + j10;
                            i14 = i17;
                            if (j12 > construct.endTime) {
                                it = it2;
                                animatedPasterJsonConfig = parsePaster;
                                break;
                            }
                            AnimatedPaster animatedPaster = new AnimatedPaster();
                            Iterator<TXVideoEditConstants.TXAnimatedPaster> it3 = it2;
                            animatedPaster.mPasterPath = construct.animatedPasterPathFolder + parsePaster.mFrameArray.get(i19).mPictureName + FileUtils.PIC_POSTFIX_PNG;
                            animatedPaster.mFrame = construct.frame;
                            animatedPaster.mStartTime = j10;
                            animatedPaster.mEndTime = j12;
                            animatedPaster.mRotation = construct.rotation;
                            this.mNormalizedList.add(animatedPaster);
                            j10 = animatedPaster.mEndTime;
                            i19++;
                            i18 = i13;
                            i17 = i14;
                            it2 = it3;
                            parsePaster = parsePaster;
                        }
                        i18 = i13 + 1;
                        i17 = i14;
                        it2 = it;
                        parsePaster = animatedPasterJsonConfig;
                    }
                }
            }
        }
    }

    public void setAnimatedPasterList(List<TXVideoEditConstants.TXAnimatedPaster> list, q qVar) {
        this.mRenderSize = qVar;
        this.mAnimatedPasterList = list;
        this.mNormalizedList.clear();
    }
}
