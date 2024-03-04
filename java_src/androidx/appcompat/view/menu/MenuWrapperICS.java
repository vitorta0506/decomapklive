package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.RestrictTo;
import androidx.core.internal.view.SupportMenu;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuWrapperICS extends BaseMenuWrapper implements Menu {
    private final SupportMenu mWrappedObject;

    public MenuWrapperICS(Context context, SupportMenu supportMenu) {
        super(context);
        if (supportMenu != null) {
            this.mWrappedObject = supportMenu;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return getMenuItemWrapper(this.mWrappedObject.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i9, int i10, int i11, ComponentName componentName, Intent[] intentArr, Intent intent, int i12, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.mWrappedObject.addIntentOptions(i9, i10, i11, componentName, intentArr, intent, i12, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i13 = 0; i13 < length; i13++) {
                menuItemArr[i13] = getMenuItemWrapper(menuItemArr2[i13]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        internalClear();
        this.mWrappedObject.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.mWrappedObject.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i9) {
        return getMenuItemWrapper(this.mWrappedObject.findItem(i9));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i9) {
        return getMenuItemWrapper(this.mWrappedObject.getItem(i9));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.mWrappedObject.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i9, KeyEvent keyEvent) {
        return this.mWrappedObject.isShortcutKey(i9, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i9, int i10) {
        return this.mWrappedObject.performIdentifierAction(i9, i10);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i9, KeyEvent keyEvent, int i10) {
        return this.mWrappedObject.performShortcut(i9, keyEvent, i10);
    }

    @Override // android.view.Menu
    public void removeGroup(int i9) {
        internalRemoveGroup(i9);
        this.mWrappedObject.removeGroup(i9);
    }

    @Override // android.view.Menu
    public void removeItem(int i9) {
        internalRemoveItem(i9);
        this.mWrappedObject.removeItem(i9);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i9, boolean z10, boolean z11) {
        this.mWrappedObject.setGroupCheckable(i9, z10, z11);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i9, boolean z10) {
        this.mWrappedObject.setGroupEnabled(i9, z10);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i9, boolean z10) {
        this.mWrappedObject.setGroupVisible(i9, z10);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z10) {
        this.mWrappedObject.setQwertyMode(z10);
    }

    @Override // android.view.Menu
    public int size() {
        return this.mWrappedObject.size();
    }

    @Override // android.view.Menu
    public MenuItem add(int i9) {
        return getMenuItemWrapper(this.mWrappedObject.add(i9));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i9) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(i9));
    }

    @Override // android.view.Menu
    public MenuItem add(int i9, int i10, int i11, CharSequence charSequence) {
        return getMenuItemWrapper(this.mWrappedObject.add(i9, i10, i11, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i9, int i10, int i11, CharSequence charSequence) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(i9, i10, i11, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(int i9, int i10, int i11, int i12) {
        return getMenuItemWrapper(this.mWrappedObject.add(i9, i10, i11, i12));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i9, int i10, int i11, int i12) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(i9, i10, i11, i12));
    }
}
