package com.google.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.w;
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f15796a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f15797b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f15798c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f15799d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f15800e = Descriptors.FileDescriptor.s(new String[]{"\n\u001agoogle/type/datetime.proto\u0012\u000bgoogle.type\u001a\u001egoogle/protobuf/duration.proto\"à\u0001\n\bDateTime\u0012\f\n\u0004year\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005month\u0018\u0002 \u0001(\u0005\u0012\u000b\n\u0003day\u0018\u0003 \u0001(\u0005\u0012\r\n\u0005hours\u0018\u0004 \u0001(\u0005\u0012\u000f\n\u0007minutes\u0018\u0005 \u0001(\u0005\u0012\u000f\n\u0007seconds\u0018\u0006 \u0001(\u0005\u0012\r\n\u0005nanos\u0018\u0007 \u0001(\u0005\u0012/\n\nutc_offset\u0018\b \u0001(\u000b2\u0019.google.protobuf.DurationH\u0000\u0012*\n\ttime_zone\u0018\t \u0001(\u000b2\u0015.google.type.TimeZoneH\u0000B\r\n\u000btime_offset\"'\n\bTimeZone\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007version\u0018\u0002 \u0001(\tBi\n\u000fcom.google.typeB\rDateTimeProtoP\u0001Z<google.golang.org/genproto/googleapis/type/datetime;datetimeø\u0001\u0001¢\u0002\u0003GTPb\u0006proto3"}, new Descriptors.FileDescriptor[]{w.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f15796a = bVar;
        f15797b = new GeneratedMessageV3.e(bVar, new String[]{"Year", "Month", "Day", "Hours", "Minutes", "Seconds", "Nanos", "UtcOffset", "TimeZone", "TimeOffset"});
        Descriptors.b bVar2 = a().m().get(1);
        f15798c = bVar2;
        f15799d = new GeneratedMessageV3.e(bVar2, new String[]{"Id", "Version"});
        w.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f15800e;
    }
}
