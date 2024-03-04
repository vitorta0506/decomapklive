package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class EntityIdentifier extends Component {

    /* renamed from: id  reason: collision with root package name */
    private int f56438id;
    private String name;

    public EntityIdentifier() {
        this.f56438id = 0;
        this.name = "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof EntityIdentifier) {
            EntityIdentifier entityIdentifier = (EntityIdentifier) componentBase;
            this.f56438id = entityIdentifier.f56438id;
            this.name = entityIdentifier.name;
        }
        super.doUpdate(componentBase);
    }

    public int getId() {
        return this.f56438id;
    }

    public String getName() {
        return this.name;
    }

    public void setId(int i9) {
        this.f56438id = i9;
        reportPropertyChange("id", Integer.valueOf(i9));
    }

    public void setName(String str) {
        this.name = str;
        reportPropertyChange("name", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "EntityIdentifier";
    }

    public EntityIdentifier(String str, int i9) {
        this.name = str;
        this.f56438id = i9;
    }
}
