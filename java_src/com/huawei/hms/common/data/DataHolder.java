package com.huawei.hms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.common.internal.safeparcel.AbstractSafeParcelable;
import com.huawei.hms.common.internal.safeparcel.SafeParcelWriter;
import com.huawei.hms.common.sqlite.HMSCursorWrapper;
import com.huawei.hms.support.log.HMSLog;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    private static final String TAG = "DataHolder";
    public static final String TYPE_BOOLEAN = "type_boolean";
    public static final String TYPE_BYTE_ARRAY = "type_byte_array";
    public static final String TYPE_DOUBLE = "type_double";
    public static final String TYPE_FLOAT = "type_float";
    public static final String TYPE_INT = "type_int";
    public static final String TYPE_LONG = "type_long";
    public static final String TYPE_STRING = "type_string";
    private String[] columns;
    private Bundle columnsBundle;
    private CursorWindow[] cursorWindows;
    private int dataCount;
    private boolean isInstance;
    private boolean mClosed;
    private Bundle metadata;
    private int[] perCursorCounts;
    private int statusCode;
    private int version;
    public static final Parcelable.Creator<DataHolder> CREATOR = new DataHolderCreator();
    private static final Builder BUILDER = new DataHolderBuilderCreator(new String[0], null);

    /* loaded from: classes4.dex */
    public static class Builder {
        private String[] builderColumns;
        private final ArrayList<HashMap<String, Object>> dataCollectionList;
        private final String type;
        private final HashMap<Object, Integer> typeAndDataCollectionCountMapping;

        public DataHolder build(int i9) {
            return new DataHolder(this, i9, (Bundle) null);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.huawei.hms.common.data.DataHolder.Builder setDataForContentValuesHashMap(java.util.HashMap<java.lang.String, java.lang.Object> r5) {
            /*
                r4 = this;
                java.lang.String r0 = "contentValuesHashMap cannot be null"
                com.huawei.hms.common.internal.Preconditions.checkNotNull(r5, r0)
                java.lang.String r0 = r4.type
                r1 = 0
                if (r0 == 0) goto L31
                java.lang.Object r0 = r5.get(r0)
                if (r0 == 0) goto L31
                java.util.HashMap<java.lang.Object, java.lang.Integer> r2 = r4.typeAndDataCollectionCountMapping
                java.lang.Object r2 = r2.get(r0)
                java.lang.Integer r2 = (java.lang.Integer) r2
                if (r2 == 0) goto L22
                int r1 = r2.intValue()
                r0 = 1
                r0 = r1
                r1 = 1
                goto L32
            L22:
                java.util.HashMap<java.lang.Object, java.lang.Integer> r2 = r4.typeAndDataCollectionCountMapping
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r3 = r4.dataCollectionList
                int r3 = r3.size()
                java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
                r2.put(r0, r3)
            L31:
                r0 = 0
            L32:
                if (r1 == 0) goto L3f
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r1 = r4.dataCollectionList
                r1.remove(r0)
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r1 = r4.dataCollectionList
                r1.add(r0, r5)
                goto L44
            L3f:
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r4.dataCollectionList
                r0.add(r5)
            L44:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.common.data.DataHolder.Builder.setDataForContentValuesHashMap(java.util.HashMap):com.huawei.hms.common.data.DataHolder$Builder");
        }

        public Builder withRow(ContentValues contentValues) {
            Preconditions.checkNotNull(contentValues, "contentValues cannot be null");
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return setDataForContentValuesHashMap(hashMap);
        }

        private Builder(String[] strArr, String str) {
            Preconditions.checkNotNull(strArr, "builderColumnsP cannot be null");
            this.builderColumns = strArr;
            this.dataCollectionList = new ArrayList<>();
            this.type = str;
            this.typeAndDataCollectionCountMapping = new HashMap<>();
        }

        public DataHolder build(int i9, Bundle bundle) {
            return new DataHolder(this, i9, bundle, -1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder(String[] strArr, String str, DataHolderBuilderCreator dataHolderBuilderCreator) {
            this(strArr, null);
        }
    }

    /* loaded from: classes4.dex */
    public static class DataHolderException extends RuntimeException {
        public DataHolderException(String str) {
            super(str);
        }
    }

    public static Builder builder(String[] strArr) {
        return new Builder(strArr, (String) null);
    }

    private void checkAvailable(String str, int i9) {
        String str2;
        Bundle bundle = this.columnsBundle;
        if (bundle != null && bundle.containsKey(str)) {
            if (isClosed()) {
                str2 = "buffer has been closed";
            } else if (i9 < 0 || i9 >= this.dataCount) {
                str2 = "row is out of index:" + i9;
            } else {
                str2 = "";
            }
        } else {
            str2 = "cannot find column: " + str;
        }
        Preconditions.checkArgument(str2.isEmpty(), str2);
    }

    public static DataHolder empty(int i9) {
        return new DataHolder(BUILDER, i9, (Bundle) null);
    }

    private static CursorWindow[] getCursorWindows(HMSCursorWrapper hMSCursorWrapper) {
        int i9;
        ArrayList arrayList = new ArrayList();
        try {
            int count = hMSCursorWrapper.getCount();
            CursorWindow window = hMSCursorWrapper.getWindow();
            if (window == null || window.getStartPosition() != 0) {
                i9 = 0;
            } else {
                window.acquireReference();
                hMSCursorWrapper.setWindow(null);
                arrayList.add(window);
                i9 = window.getNumRows();
            }
            arrayList.addAll(iterCursorWrapper(hMSCursorWrapper, i9, count));
            return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
        } catch (Throwable th2) {
            try {
                HMSLog.e(TAG, "fail to getCursorWindows: " + th2.getMessage());
                return new CursorWindow[0];
            } finally {
                hMSCursorWrapper.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b0, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<android.database.CursorWindow> iterCursorWindow(com.huawei.hms.common.data.DataHolder.Builder r10, int r11, java.util.List r12) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            android.database.CursorWindow r1 = new android.database.CursorWindow
            r2 = 0
            r1.<init>(r2)
            java.lang.String[] r3 = com.huawei.hms.common.data.DataHolder.Builder.access$200(r10)
            int r3 = r3.length
            r1.setNumColumns(r3)
            r0.add(r1)
            r3 = 0
            r4 = 0
        L18:
            if (r4 >= r11) goto Lb0
            boolean r5 = r1.allocRow()     // Catch: java.lang.RuntimeException -> L9a
            java.lang.String r6 = "DataHolder"
            if (r5 != 0) goto L46
            java.lang.String r1 = "Failed to allocate a row"
            com.huawei.hms.support.log.HMSLog.d(r6, r1)     // Catch: java.lang.RuntimeException -> L9a
            android.database.CursorWindow r1 = new android.database.CursorWindow     // Catch: java.lang.RuntimeException -> L9a
            r1.<init>(r2)     // Catch: java.lang.RuntimeException -> L9a
            r1.setStartPosition(r4)     // Catch: java.lang.RuntimeException -> L9a
            java.lang.String[] r5 = com.huawei.hms.common.data.DataHolder.Builder.access$200(r10)     // Catch: java.lang.RuntimeException -> L9a
            int r5 = r5.length     // Catch: java.lang.RuntimeException -> L9a
            r1.setNumColumns(r5)     // Catch: java.lang.RuntimeException -> L9a
            boolean r5 = r1.allocRow()     // Catch: java.lang.RuntimeException -> L9a
            if (r5 != 0) goto L43
            java.lang.String r10 = "Failed to retry to allocate a row"
            com.huawei.hms.support.log.HMSLog.e(r6, r10)     // Catch: java.lang.RuntimeException -> L9a
            return r0
        L43:
            r0.add(r1)     // Catch: java.lang.RuntimeException -> L9a
        L46:
            java.lang.Object r5 = r12.get(r4)     // Catch: java.lang.RuntimeException -> L9a
            java.util.HashMap r5 = (java.util.HashMap) r5     // Catch: java.lang.RuntimeException -> L9a
            r7 = 1
            r8 = 0
        L4e:
            java.lang.String[] r9 = com.huawei.hms.common.data.DataHolder.Builder.access$200(r10)     // Catch: java.lang.RuntimeException -> L9a
            int r9 = r9.length     // Catch: java.lang.RuntimeException -> L9a
            if (r8 >= r9) goto L69
            java.lang.String[] r7 = com.huawei.hms.common.data.DataHolder.Builder.access$200(r10)     // Catch: java.lang.RuntimeException -> L9a
            r7 = r7[r8]     // Catch: java.lang.RuntimeException -> L9a
            java.lang.Object r7 = r5.get(r7)     // Catch: java.lang.RuntimeException -> L9a
            boolean r7 = putValue(r1, r7, r4, r8)     // Catch: java.lang.RuntimeException -> L9a
            if (r7 != 0) goto L66
            goto L69
        L66:
            int r8 = r8 + 1
            goto L4e
        L69:
            if (r7 != 0) goto L96
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.RuntimeException -> L9a
            r11.<init>()     // Catch: java.lang.RuntimeException -> L9a
            java.lang.String r12 = "fail to put data for row "
            r11.append(r12)     // Catch: java.lang.RuntimeException -> L9a
            r11.append(r4)     // Catch: java.lang.RuntimeException -> L9a
            java.lang.String r11 = r11.toString()     // Catch: java.lang.RuntimeException -> L9a
            com.huawei.hms.support.log.HMSLog.d(r6, r11)     // Catch: java.lang.RuntimeException -> L9a
            r1.freeLastRow()     // Catch: java.lang.RuntimeException -> L9a
            android.database.CursorWindow r11 = new android.database.CursorWindow     // Catch: java.lang.RuntimeException -> L9a
            r11.<init>(r2)     // Catch: java.lang.RuntimeException -> L9a
            r11.setStartPosition(r4)     // Catch: java.lang.RuntimeException -> L9a
            java.lang.String[] r10 = com.huawei.hms.common.data.DataHolder.Builder.access$200(r10)     // Catch: java.lang.RuntimeException -> L9a
            int r10 = r10.length     // Catch: java.lang.RuntimeException -> L9a
            r11.setNumColumns(r10)     // Catch: java.lang.RuntimeException -> L9a
            r0.add(r11)     // Catch: java.lang.RuntimeException -> L9a
            goto Lb0
        L96:
            int r4 = r4 + 1
            goto L18
        L9a:
            r10 = move-exception
            java.util.Iterator r11 = r0.iterator()
        L9f:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto Laf
            java.lang.Object r12 = r11.next()
            android.database.CursorWindow r12 = (android.database.CursorWindow) r12
            r12.close()
            goto L9f
        Laf:
            throw r10
        Lb0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.common.data.DataHolder.iterCursorWindow(com.huawei.hms.common.data.DataHolder$Builder, int, java.util.List):java.util.ArrayList");
    }

    private static ArrayList<CursorWindow> iterCursorWrapper(HMSCursorWrapper hMSCursorWrapper, int i9, int i10) {
        ArrayList<CursorWindow> arrayList = new ArrayList<>();
        while (i9 < i10 && hMSCursorWrapper.moveToPosition(i9)) {
            CursorWindow window = hMSCursorWrapper.getWindow();
            if (window == null) {
                window = new CursorWindow((String) null);
                window.setStartPosition(i9);
                hMSCursorWrapper.fillWindow(i9, window);
            } else {
                window.acquireReference();
                hMSCursorWrapper.setWindow(null);
            }
            if (window.getNumRows() == 0) {
                break;
            }
            arrayList.add(window);
            i9 = window.getNumRows() + window.getStartPosition();
        }
        return arrayList;
    }

    private static boolean putValue(CursorWindow cursorWindow, Object obj, int i9, int i10) throws IllegalArgumentException {
        if (obj == null) {
            return cursorWindow.putNull(i9, i10);
        }
        if (obj instanceof Boolean) {
            return cursorWindow.putLong(((Boolean) obj).booleanValue() ? 1L : 0L, i9, i10);
        } else if (obj instanceof Integer) {
            return cursorWindow.putLong(((Integer) obj).intValue(), i9, i10);
        } else {
            if (obj instanceof Long) {
                return cursorWindow.putLong(((Long) obj).longValue(), i9, i10);
            }
            if (obj instanceof Float) {
                return cursorWindow.putDouble(((Float) obj).floatValue(), i9, i10);
            }
            if (obj instanceof Double) {
                return cursorWindow.putDouble(((Double) obj).doubleValue(), i9, i10);
            }
            if (obj instanceof String) {
                return cursorWindow.putString((String) obj, i9, i10);
            }
            if (obj instanceof byte[]) {
                return cursorWindow.putBlob((byte[]) obj, i9, i10);
            }
            throw new IllegalArgumentException("unsupported type for column: " + obj);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        if (!this.mClosed) {
            for (CursorWindow cursorWindow : this.cursorWindows) {
                cursorWindow.close();
            }
            this.mClosed = true;
        }
    }

    public final void collectColumsAndCount() {
        this.columnsBundle = new Bundle();
        int i9 = 0;
        int i10 = 0;
        while (true) {
            String[] strArr = this.columns;
            if (i10 >= strArr.length) {
                break;
            }
            this.columnsBundle.putInt(strArr[i10], i10);
            i10++;
        }
        this.perCursorCounts = new int[this.cursorWindows.length];
        int i11 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.cursorWindows;
            if (i9 < cursorWindowArr.length) {
                this.perCursorCounts[i9] = i11;
                i11 = cursorWindowArr[i9].getStartPosition() + this.cursorWindows[i9].getNumRows();
                i9++;
            } else {
                this.dataCount = i11;
                return;
            }
        }
    }

    public final void copyToBuffer(String str, int i9, int i10, CharArrayBuffer charArrayBuffer) {
        checkAvailable(str, i9);
        this.cursorWindows[i10].copyStringToBuffer(i9, this.columnsBundle.getInt(str), charArrayBuffer);
    }

    protected final void finalize() throws Throwable {
        if (this.isInstance && this.cursorWindows.length > 0 && !isClosed()) {
            close();
        }
        super.finalize();
    }

    public final int getCount() {
        return this.dataCount;
    }

    public final Bundle getMetadata() {
        return this.metadata;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final Object getValue(String str, int i9, int i10, String str2) {
        str2.hashCode();
        char c10 = 65535;
        switch (str2.hashCode()) {
            case -1092271849:
                if (str2.equals(TYPE_FLOAT)) {
                    c10 = 0;
                    break;
                }
                break;
            case -870070237:
                if (str2.equals(TYPE_BOOLEAN)) {
                    c10 = 1;
                    break;
                }
                break;
            case -675993238:
                if (str2.equals(TYPE_INT)) {
                    c10 = 2;
                    break;
                }
                break;
            case 445002870:
                if (str2.equals(TYPE_DOUBLE)) {
                    c10 = 3;
                    break;
                }
                break;
            case 519136353:
                if (str2.equals(TYPE_LONG)) {
                    c10 = 4;
                    break;
                }
                break;
            case 878975158:
                if (str2.equals(TYPE_STRING)) {
                    c10 = 5;
                    break;
                }
                break;
            case 1300508295:
                if (str2.equals(TYPE_BYTE_ARRAY)) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                checkAvailable(str, i9);
                return Float.valueOf(this.cursorWindows[i10].getFloat(i9, this.columnsBundle.getInt(str)));
            case 1:
                checkAvailable(str, i9);
                return Boolean.valueOf(this.cursorWindows[i10].getLong(i9, this.columnsBundle.getInt(str)) == 1);
            case 2:
                checkAvailable(str, i9);
                return Integer.valueOf(this.cursorWindows[i10].getInt(i9, this.columnsBundle.getInt(str)));
            case 3:
                checkAvailable(str, i9);
                return Double.valueOf(this.cursorWindows[i10].getDouble(i9, this.columnsBundle.getInt(str)));
            case 4:
                checkAvailable(str, i9);
                return Long.valueOf(this.cursorWindows[i10].getLong(i9, this.columnsBundle.getInt(str)));
            case 5:
                checkAvailable(str, i9);
                return this.cursorWindows[i10].getString(i9, this.columnsBundle.getInt(str));
            case 6:
                checkAvailable(str, i9);
                return this.cursorWindows[i10].getBlob(i9, this.columnsBundle.getInt(str));
            default:
                return null;
        }
    }

    public final int getWindowIndex(int i9) {
        int[] iArr;
        int i10 = 0;
        Preconditions.checkArgument(i9 >= 0 || i9 < this.dataCount, "rowIndex is out of index:" + i9);
        while (true) {
            iArr = this.perCursorCounts;
            if (i10 >= iArr.length) {
                break;
            } else if (i9 < iArr[i10]) {
                i10--;
                break;
            } else {
                i10++;
            }
        }
        return i10 == iArr.length ? i10 - 1 : i10;
    }

    public final boolean hasColumn(String str) {
        return this.columnsBundle.containsKey(str);
    }

    public final boolean hasNull(String str, int i9, int i10) {
        checkAvailable(str, i9);
        return this.cursorWindows[i10].getType(i9, this.columnsBundle.getInt(str)) == 0;
    }

    public final synchronized boolean isClosed() {
        return this.mClosed;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringArray(parcel, 1, this.columns, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.cursorWindows, i9, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.version);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        if ((i9 & 1) != 0) {
            close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataHolder(int i9, String[] strArr, CursorWindow[] cursorWindowArr, int i10, Bundle bundle) {
        this.mClosed = false;
        this.isInstance = true;
        this.version = i9;
        this.columns = strArr;
        this.cursorWindows = cursorWindowArr;
        this.statusCode = i10;
        this.metadata = bundle;
        collectColumsAndCount();
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i9, Bundle bundle) {
        Preconditions.checkNotNull(strArr, "columnsP cannot be null");
        Preconditions.checkNotNull(cursorWindowArr, "cursorWindowP cannot be null");
        this.mClosed = false;
        this.isInstance = true;
        this.version = 1;
        this.columns = strArr;
        this.cursorWindows = cursorWindowArr;
        this.statusCode = i9;
        this.metadata = bundle;
        collectColumsAndCount();
    }

    private static CursorWindow[] getCursorWindows(Builder builder, int i9) {
        if (builder.builderColumns.length == 0) {
            return new CursorWindow[0];
        }
        if (i9 < 0 || i9 >= builder.dataCollectionList.size()) {
            i9 = builder.dataCollectionList.size();
        }
        ArrayList<CursorWindow> iterCursorWindow = iterCursorWindow(builder, i9, builder.dataCollectionList.subList(0, i9));
        return (CursorWindow[]) iterCursorWindow.toArray(new CursorWindow[iterCursorWindow.size()]);
    }

    private DataHolder(HMSCursorWrapper hMSCursorWrapper, int i9, Bundle bundle) {
        this(hMSCursorWrapper.getColumnNames(), getCursorWindows(hMSCursorWrapper), i9, bundle);
    }

    public DataHolder(Cursor cursor, int i9, Bundle bundle) {
        this(new HMSCursorWrapper(cursor), i9, bundle);
    }

    private DataHolder(Builder builder, int i9, Bundle bundle) {
        this(builder.builderColumns, getCursorWindows(builder, -1), i9, (Bundle) null);
    }

    private DataHolder(Builder builder, int i9, Bundle bundle, int i10) {
        this(builder.builderColumns, getCursorWindows(builder, -1), i9, bundle);
    }
}
