package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class FilterGroup extends Component {

    /* renamed from: id  reason: collision with root package name */
    private int f56439id;
    private String name;

    public FilterGroup() {
        this.f56439id = 0;
        this.name = "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof FilterGroup) {
            FilterGroup filterGroup = (FilterGroup) componentBase;
            this.f56439id = filterGroup.f56439id;
            this.name = filterGroup.name;
        }
        super.doUpdate(componentBase);
    }

    public int getId() {
        return this.f56439id;
    }

    public String getName() {
        return this.name;
    }

    public void setId(int i9) {
        this.f56439id = i9;
        reportPropertyChange("id", Integer.valueOf(i9));
    }

    public void setName(String str) {
        this.name = str;
        reportPropertyChange("name", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "FilterGroup";
    }

    public FilterGroup(String str, int i9) {
        this.name = str;
        this.f56439id = i9;
    }
}
