package androidx.webkit.internal;

import org.chromium.support_lib_boundary.WebSettingsBoundaryInterface;
/* loaded from: classes.dex */
public class WebSettingsAdapter {
    private WebSettingsBoundaryInterface mBoundaryInterface;

    public WebSettingsAdapter(WebSettingsBoundaryInterface webSettingsBoundaryInterface) {
        this.mBoundaryInterface = webSettingsBoundaryInterface;
    }

    public int getDisabledActionModeMenuItems() {
        return this.mBoundaryInterface.getDisabledActionModeMenuItems();
    }

    public int getForceDark() {
        return this.mBoundaryInterface.getForceDark();
    }

    public int getForceDarkStrategy() {
        return this.mBoundaryInterface.getForceDarkBehavior();
    }

    public boolean getOffscreenPreRaster() {
        return this.mBoundaryInterface.getOffscreenPreRaster();
    }

    public boolean getSafeBrowsingEnabled() {
        return this.mBoundaryInterface.getSafeBrowsingEnabled();
    }

    public void setDisabledActionModeMenuItems(int i9) {
        this.mBoundaryInterface.setDisabledActionModeMenuItems(i9);
    }

    public void setForceDark(int i9) {
        this.mBoundaryInterface.setForceDark(i9);
    }

    public void setForceDarkStrategy(int i9) {
        this.mBoundaryInterface.setForceDarkBehavior(i9);
    }

    public void setOffscreenPreRaster(boolean z10) {
        this.mBoundaryInterface.setOffscreenPreRaster(z10);
    }

    public void setSafeBrowsingEnabled(boolean z10) {
        this.mBoundaryInterface.setSafeBrowsingEnabled(z10);
    }

    public void setWillSuppressErrorPage(boolean z10) {
        this.mBoundaryInterface.setWillSuppressErrorPage(z10);
    }

    public boolean willSuppressErrorPage() {
        return this.mBoundaryInterface.getWillSuppressErrorPage();
    }
}
