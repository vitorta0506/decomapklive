package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public abstract class ResourceCursorAdapter extends CursorAdapter {
    private int mDropDownLayout;
    private LayoutInflater mInflater;
    private int mLayout;

    @Deprecated
    public ResourceCursorAdapter(Context context, int i9, Cursor cursor) {
        super(context, cursor);
        this.mDropDownLayout = i9;
        this.mLayout = i9;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.mInflater.inflate(this.mDropDownLayout, viewGroup, false);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.mInflater.inflate(this.mLayout, viewGroup, false);
    }

    public void setDropDownViewResource(int i9) {
        this.mDropDownLayout = i9;
    }

    public void setViewResource(int i9) {
        this.mLayout = i9;
    }

    @Deprecated
    public ResourceCursorAdapter(Context context, int i9, Cursor cursor, boolean z10) {
        super(context, cursor, z10);
        this.mDropDownLayout = i9;
        this.mLayout = i9;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public ResourceCursorAdapter(Context context, int i9, Cursor cursor, int i10) {
        super(context, cursor, i10);
        this.mDropDownLayout = i9;
        this.mLayout = i9;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
