package org.light.lightAssetKit.components;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Text extends Component {
    private String text = "";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Text) {
            this.text = ((Text) componentBase).text;
        }
        super.doUpdate(componentBase);
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
        reportPropertyChange(ViewHierarchyConstants.TEXT_KEY, str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Text";
    }
}
