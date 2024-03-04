package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class ExternalRender extends Component {
    private String data;
    private boolean is_external_render_input_flip;
    private boolean is_external_render_output_flip;
    private String key;

    public ExternalRender() {
        this.key = "";
        this.data = "";
        this.is_external_render_input_flip = false;
        this.is_external_render_output_flip = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof ExternalRender) {
            ExternalRender externalRender = (ExternalRender) componentBase;
            this.key = externalRender.key;
            this.data = externalRender.data;
            this.is_external_render_input_flip = externalRender.is_external_render_input_flip;
            this.is_external_render_output_flip = externalRender.is_external_render_output_flip;
        }
        super.doUpdate(componentBase);
    }

    public String getData() {
        return this.data;
    }

    public boolean getIs_external_render_input_flip() {
        return this.is_external_render_input_flip;
    }

    public boolean getIs_external_render_output_flip() {
        return this.is_external_render_output_flip;
    }

    public String getKey() {
        return this.key;
    }

    public void setData(String str) {
        this.data = str;
        reportPropertyChange("data", str);
    }

    public void setIs_external_render_input_flip(boolean z10) {
        this.is_external_render_input_flip = z10;
        reportPropertyChange("is_external_render_input_flip", Boolean.valueOf(z10));
    }

    public void setIs_external_render_output_flip(boolean z10) {
        this.is_external_render_output_flip = z10;
        reportPropertyChange("is_external_render_output_flip", Boolean.valueOf(z10));
    }

    public void setKey(String str) {
        this.key = str;
        reportPropertyChange("key", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "ExternalRender";
    }

    public ExternalRender(String str, String str2, boolean z10, boolean z11) {
        this.key = str;
        this.data = str2;
        this.is_external_render_input_flip = z10;
        this.is_external_render_output_flip = z11;
    }
}
