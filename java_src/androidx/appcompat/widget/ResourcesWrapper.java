package androidx.appcompat.widget;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.annotation.RequiresApi;
import androidx.appcompat.resources.Compatibility;
import androidx.core.content.res.ResourcesCompat;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ResourcesWrapper extends Resources {
    private final Resources mResources;

    public ResourcesWrapper(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.mResources = resources;
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getAnimation(int i9) throws Resources.NotFoundException {
        return this.mResources.getAnimation(i9);
    }

    @Override // android.content.res.Resources
    public boolean getBoolean(int i9) throws Resources.NotFoundException {
        return this.mResources.getBoolean(i9);
    }

    @Override // android.content.res.Resources
    public int getColor(int i9) throws Resources.NotFoundException {
        return this.mResources.getColor(i9);
    }

    @Override // android.content.res.Resources
    public ColorStateList getColorStateList(int i9) throws Resources.NotFoundException {
        return this.mResources.getColorStateList(i9);
    }

    @Override // android.content.res.Resources
    public Configuration getConfiguration() {
        return this.mResources.getConfiguration();
    }

    @Override // android.content.res.Resources
    public float getDimension(int i9) throws Resources.NotFoundException {
        return this.mResources.getDimension(i9);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelOffset(int i9) throws Resources.NotFoundException {
        return this.mResources.getDimensionPixelOffset(i9);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelSize(int i9) throws Resources.NotFoundException {
        return this.mResources.getDimensionPixelSize(i9);
    }

    @Override // android.content.res.Resources
    public DisplayMetrics getDisplayMetrics() {
        return this.mResources.getDisplayMetrics();
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i9) throws Resources.NotFoundException {
        return this.mResources.getDrawable(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable getDrawableCanonical(int i9) throws Resources.NotFoundException {
        return super.getDrawable(i9);
    }

    @Override // android.content.res.Resources
    @RequiresApi(15)
    public Drawable getDrawableForDensity(int i9, int i10) throws Resources.NotFoundException {
        return ResourcesCompat.getDrawableForDensity(this.mResources, i9, i10, null);
    }

    @Override // android.content.res.Resources
    public float getFraction(int i9, int i10, int i11) {
        return this.mResources.getFraction(i9, i10, i11);
    }

    @Override // android.content.res.Resources
    public int getIdentifier(String str, String str2, String str3) {
        return this.mResources.getIdentifier(str, str2, str3);
    }

    @Override // android.content.res.Resources
    public int[] getIntArray(int i9) throws Resources.NotFoundException {
        return this.mResources.getIntArray(i9);
    }

    @Override // android.content.res.Resources
    public int getInteger(int i9) throws Resources.NotFoundException {
        return this.mResources.getInteger(i9);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getLayout(int i9) throws Resources.NotFoundException {
        return this.mResources.getLayout(i9);
    }

    @Override // android.content.res.Resources
    public Movie getMovie(int i9) throws Resources.NotFoundException {
        return this.mResources.getMovie(i9);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i9, int i10, Object... objArr) throws Resources.NotFoundException {
        return this.mResources.getQuantityString(i9, i10, objArr);
    }

    @Override // android.content.res.Resources
    public CharSequence getQuantityText(int i9, int i10) throws Resources.NotFoundException {
        return this.mResources.getQuantityText(i9, i10);
    }

    @Override // android.content.res.Resources
    public String getResourceEntryName(int i9) throws Resources.NotFoundException {
        return this.mResources.getResourceEntryName(i9);
    }

    @Override // android.content.res.Resources
    public String getResourceName(int i9) throws Resources.NotFoundException {
        return this.mResources.getResourceName(i9);
    }

    @Override // android.content.res.Resources
    public String getResourcePackageName(int i9) throws Resources.NotFoundException {
        return this.mResources.getResourcePackageName(i9);
    }

    @Override // android.content.res.Resources
    public String getResourceTypeName(int i9) throws Resources.NotFoundException {
        return this.mResources.getResourceTypeName(i9);
    }

    @Override // android.content.res.Resources
    public String getString(int i9) throws Resources.NotFoundException {
        return this.mResources.getString(i9);
    }

    @Override // android.content.res.Resources
    public String[] getStringArray(int i9) throws Resources.NotFoundException {
        return this.mResources.getStringArray(i9);
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i9) throws Resources.NotFoundException {
        return this.mResources.getText(i9);
    }

    @Override // android.content.res.Resources
    public CharSequence[] getTextArray(int i9) throws Resources.NotFoundException {
        return this.mResources.getTextArray(i9);
    }

    @Override // android.content.res.Resources
    public void getValue(int i9, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        this.mResources.getValue(i9, typedValue, z10);
    }

    @Override // android.content.res.Resources
    @RequiresApi(15)
    public void getValueForDensity(int i9, int i10, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        Compatibility.Api15Impl.getValueForDensity(this.mResources, i9, i10, typedValue, z10);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getXml(int i9) throws Resources.NotFoundException {
        return this.mResources.getXml(i9);
    }

    @Override // android.content.res.Resources
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.mResources.obtainAttributes(attributeSet, iArr);
    }

    @Override // android.content.res.Resources
    public TypedArray obtainTypedArray(int i9) throws Resources.NotFoundException {
        return this.mResources.obtainTypedArray(i9);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i9) throws Resources.NotFoundException {
        return this.mResources.openRawResource(i9);
    }

    @Override // android.content.res.Resources
    public AssetFileDescriptor openRawResourceFd(int i9) throws Resources.NotFoundException {
        return this.mResources.openRawResourceFd(i9);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        this.mResources.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        this.mResources.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // android.content.res.Resources
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        Resources resources = this.mResources;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    @Override // android.content.res.Resources
    @RequiresApi(21)
    public Drawable getDrawable(int i9, Resources.Theme theme) throws Resources.NotFoundException {
        return ResourcesCompat.getDrawable(this.mResources, i9, theme);
    }

    @Override // android.content.res.Resources
    @RequiresApi(21)
    public Drawable getDrawableForDensity(int i9, int i10, Resources.Theme theme) {
        return ResourcesCompat.getDrawableForDensity(this.mResources, i9, i10, theme);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i9, int i10) throws Resources.NotFoundException {
        return this.mResources.getQuantityString(i9, i10);
    }

    @Override // android.content.res.Resources
    public String getString(int i9, Object... objArr) throws Resources.NotFoundException {
        return this.mResources.getString(i9, objArr);
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i9, CharSequence charSequence) {
        return this.mResources.getText(i9, charSequence);
    }

    @Override // android.content.res.Resources
    public void getValue(String str, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        this.mResources.getValue(str, typedValue, z10);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i9, TypedValue typedValue) throws Resources.NotFoundException {
        return this.mResources.openRawResource(i9, typedValue);
    }
}
