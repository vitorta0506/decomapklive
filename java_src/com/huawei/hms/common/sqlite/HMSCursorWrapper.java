package com.huawei.hms.common.sqlite;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.CursorWrapper;
/* loaded from: classes4.dex */
public class HMSCursorWrapper extends CursorWrapper implements CrossProcessCursor {
    private AbstractWindowedCursor mCursor;

    public HMSCursorWrapper(Cursor cursor) {
        super(cursor);
        if (cursor != null) {
            if (cursor instanceof CursorWrapper) {
                Cursor wrappedCursor = ((CursorWrapper) cursor).getWrappedCursor();
                if (wrappedCursor != null) {
                    if (wrappedCursor instanceof AbstractWindowedCursor) {
                        this.mCursor = (AbstractWindowedCursor) wrappedCursor;
                        return;
                    }
                    throw new IllegalArgumentException("getWrappedCursor:" + wrappedCursor + " is not a subclass for CursorWrapper");
                }
                throw new IllegalArgumentException("getWrappedCursor cannot be null");
            }
            throw new IllegalArgumentException("cursor:" + cursor + " is not a subclass for CursorWrapper");
        }
        throw new IllegalArgumentException("cursor cannot be null");
    }

    @Override // android.database.CrossProcessCursor
    public void fillWindow(int i9, CursorWindow cursorWindow) {
        this.mCursor.fillWindow(i9, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    public CursorWindow getWindow() {
        return this.mCursor.getWindow();
    }

    @Override // android.database.CursorWrapper
    public Cursor getWrappedCursor() {
        return this.mCursor;
    }

    @Override // android.database.CrossProcessCursor
    public boolean onMove(int i9, int i10) {
        return this.mCursor.onMove(i9, i10);
    }

    public void setWindow(CursorWindow cursorWindow) {
        this.mCursor.setWindow(cursorWindow);
    }
}