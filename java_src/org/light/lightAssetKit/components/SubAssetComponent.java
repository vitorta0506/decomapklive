package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.SubAssetApplyType;
/* loaded from: classes7.dex */
public class SubAssetComponent extends Component {
    private boolean cacheRenderResult;
    private ArrayList<Integer> indexes;
    private boolean isUsingPropertiesSize;
    private boolean renderAfterTransform;
    private SubAssetApplyType subAssetApplyType;

    public SubAssetComponent() {
        this.indexes = new ArrayList<>();
        this.subAssetApplyType = SubAssetApplyType.All;
        this.renderAfterTransform = false;
        this.isUsingPropertiesSize = false;
        this.cacheRenderResult = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof SubAssetComponent) {
            SubAssetComponent subAssetComponent = (SubAssetComponent) componentBase;
            this.indexes = subAssetComponent.indexes;
            this.subAssetApplyType = subAssetComponent.subAssetApplyType;
            this.renderAfterTransform = subAssetComponent.renderAfterTransform;
            this.isUsingPropertiesSize = subAssetComponent.isUsingPropertiesSize;
            this.cacheRenderResult = subAssetComponent.cacheRenderResult;
        }
        super.doUpdate(componentBase);
    }

    public boolean getCacheRenderResult() {
        return this.cacheRenderResult;
    }

    public ArrayList<Integer> getIndexes() {
        return this.indexes;
    }

    public boolean getIsUsingPropertiesSize() {
        return this.isUsingPropertiesSize;
    }

    public boolean getRenderAfterTransform() {
        return this.renderAfterTransform;
    }

    public SubAssetApplyType getSubAssetApplyType() {
        return this.subAssetApplyType;
    }

    public void setCacheRenderResult(boolean z10) {
        this.cacheRenderResult = z10;
        reportPropertyChange("cacheRenderResult", Boolean.valueOf(z10));
    }

    public void setIndexes(ArrayList<Integer> arrayList) {
        this.indexes = arrayList;
        reportPropertyChange("indexes", arrayList);
    }

    public void setIsUsingPropertiesSize(boolean z10) {
        this.isUsingPropertiesSize = z10;
        reportPropertyChange("isUsingPropertiesSize", Boolean.valueOf(z10));
    }

    public void setRenderAfterTransform(boolean z10) {
        this.renderAfterTransform = z10;
        reportPropertyChange("renderAfterTransform", Boolean.valueOf(z10));
    }

    public void setSubAssetApplyType(SubAssetApplyType subAssetApplyType) {
        this.subAssetApplyType = subAssetApplyType;
        reportPropertyChange("subAssetApplyType", subAssetApplyType);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "SubAssetComponent";
    }

    public SubAssetComponent(ArrayList<Integer> arrayList, SubAssetApplyType subAssetApplyType) {
        this.indexes = new ArrayList<>();
        SubAssetApplyType subAssetApplyType2 = SubAssetApplyType.All;
        this.renderAfterTransform = false;
        this.isUsingPropertiesSize = false;
        this.cacheRenderResult = false;
        this.indexes = arrayList;
        this.subAssetApplyType = subAssetApplyType;
    }
}
