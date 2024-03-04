package com.linecorp.linesdk;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Objects;
/* loaded from: classes4.dex */
public class LineApiError implements Parcelable {
    public static final Parcelable.Creator<LineApiError> CREATOR = new a();
    public static final LineApiError DEFAULT = new LineApiError(-1, "", ErrorCode.NOT_DEFINED);
    private static final int DEFAULT_HTTP_RESPONSE_CODE = -1;
    private final ErrorCode errorCode;
    private final int httpResponseCode;
    @Nullable
    private final String message;

    /* loaded from: classes4.dex */
    public enum ErrorCode {
        LOGIN_ACTIVITY_NOT_FOUND,
        HTTP_RESPONSE_PARSE_ERROR,
        NOT_DEFINED
    }

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<LineApiError> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineApiError createFromParcel(Parcel parcel) {
            return new LineApiError(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineApiError[] newArray(int i9) {
            return new LineApiError[i9];
        }
    }

    public LineApiError(@Nullable Exception exc) {
        this(-1, d(exc), ErrorCode.NOT_DEFINED);
    }

    public static LineApiError a(int i9, @Nullable String str) {
        return new LineApiError(i9, str, ErrorCode.NOT_DEFINED);
    }

    @Nullable
    private static String d(@Nullable Exception exc) {
        if (exc == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public int b() {
        return this.httpResponseCode;
    }

    @Nullable
    public String c() {
        return this.message;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LineApiError) {
            LineApiError lineApiError = (LineApiError) obj;
            return b() == lineApiError.b() && Objects.equals(c(), lineApiError.c()) && this.errorCode == lineApiError.errorCode;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(b()), c(), this.errorCode);
    }

    public String toString() {
        return "LineApiError{httpResponseCode=" + this.httpResponseCode + ", message='" + this.message + "', errorCode='" + this.errorCode + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.httpResponseCode);
        parcel.writeString(this.message);
        ErrorCode errorCode = this.errorCode;
        parcel.writeInt(errorCode == null ? -1 : errorCode.ordinal());
    }

    public LineApiError(@Nullable String str) {
        this(-1, str, ErrorCode.NOT_DEFINED);
    }

    public LineApiError(@Nullable Exception exc, ErrorCode errorCode) {
        this(-1, d(exc), errorCode);
    }

    public LineApiError(int i9, @Nullable String str, ErrorCode errorCode) {
        this.httpResponseCode = i9;
        this.message = str;
        this.errorCode = errorCode;
    }

    protected LineApiError(Parcel parcel) {
        this.httpResponseCode = parcel.readInt();
        this.message = parcel.readString();
        int readInt = parcel.readInt();
        this.errorCode = readInt == -1 ? null : ErrorCode.values()[readInt];
    }
}
