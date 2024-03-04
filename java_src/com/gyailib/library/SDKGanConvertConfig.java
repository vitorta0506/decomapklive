package com.gyailib.library;

import android.text.TextUtils;
import java.util.List;
/* loaded from: classes4.dex */
public class SDKGanConvertConfig {
    private String kernelClPath;
    private List<String> postProcessBlobNames;
    private String postProcessFunc;
    private String preProcessFunc;
    private boolean preProcessEnable = true;
    private boolean postProcessEnable = true;
    private boolean createOutTexture = true;

    public String getKernelClPath() {
        return this.kernelClPath;
    }

    public String getPostProcessBlobNames() {
        return TextUtils.join(" ", this.postProcessBlobNames);
    }

    public String getPostProcessFunc() {
        return this.postProcessFunc;
    }

    public String getPreProcessFunc() {
        return this.preProcessFunc;
    }

    public boolean isCreateOutTexture() {
        return this.createOutTexture;
    }

    public boolean isPostProcessEnable() {
        return this.postProcessEnable;
    }

    public boolean isPreProcessEnable() {
        return this.preProcessEnable;
    }

    public void setCreateOutTexture(boolean z10) {
        this.createOutTexture = z10;
    }

    public void setKernelClPath(String str) {
        this.kernelClPath = str;
    }

    public void setPostProcessBlobNames(List<String> list) {
        this.postProcessBlobNames = list;
    }

    public void setPostProcessEnable(boolean z10) {
        this.postProcessEnable = z10;
    }

    public void setPostProcessFunc(String str) {
        this.postProcessFunc = str;
    }

    public void setPreProcessEnable(boolean z10) {
        this.preProcessEnable = z10;
    }

    public void setPreProcessFunc(String str) {
        this.preProcessFunc = str;
    }
}
