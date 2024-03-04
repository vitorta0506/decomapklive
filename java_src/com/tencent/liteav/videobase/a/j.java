package com.tencent.liteav.videobase.a;

import android.opengl.GLES20;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4.dex */
public abstract class j extends b {
    public static final String SECOND_INPUT_SAMPLE2D_NAME = "inputImageTexture2";
    public static final String THIRD_INPUT_SAMPLE2D_NAME = "inputImageTexture3";
    private final Map<String, Integer> mInputUniforms;
    private final Map<String, Integer> mTexturesOnNextDraw;

    public j(String str, String str2) {
        super(str, str2);
        this.mTexturesOnNextDraw = new HashMap();
        this.mInputUniforms = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.liteav.videobase.a.b
    public void afterDrawArrays() {
        super.afterDrawArrays();
        int baseInputTextureUnit = getBaseInputTextureUnit();
        Iterator<Map.Entry<String, Integer>> it = this.mTexturesOnNextDraw.entrySet().iterator();
        while (it.hasNext()) {
            it.next();
            GLES20.glActiveTexture(baseInputTextureUnit);
            OpenGlUtils.bindTexture(getTarget(), 0);
            baseInputTextureUnit++;
        }
        this.mTexturesOnNextDraw.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.liteav.videobase.a.b
    public void beforeDrawArrays(int i9) {
        super.beforeDrawArrays(i9);
        int baseInputTextureUnit = getBaseInputTextureUnit();
        for (Map.Entry<String, Integer> entry : this.mTexturesOnNextDraw.entrySet()) {
            Integer num = this.mInputUniforms.get(entry.getKey());
            if (num == null) {
                num = Integer.valueOf(GLES20.glGetUniformLocation(getProgramId(), entry.getKey()));
                this.mInputUniforms.put(entry.getKey(), num);
            }
            GLES20.glActiveTexture(baseInputTextureUnit);
            OpenGlUtils.bindTexture(getTarget(), entry.getValue().intValue());
            GLES20.glUniform1i(num.intValue(), baseInputTextureUnit - 33984);
            baseInputTextureUnit++;
        }
    }

    protected int getBaseInputTextureUnit() {
        return 33985;
    }

    public void setInputTexture(String str, int i9) {
        this.mTexturesOnNextDraw.put(str, Integer.valueOf(i9));
    }
}
