package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class b1 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f10944a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f10945b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f10946c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f10947d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f10948e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f10949f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f10950g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f10951h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f10952i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f10953j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f10954k = Descriptors.FileDescriptor.s(new String[]{"\n\u0016google/api/quota.proto\u0012\ngoogle.api\"]\n\u0005Quota\u0012&\n\u0006limits\u0018\u0003 \u0003(\u000b2\u0016.google.api.QuotaLimit\u0012,\n\fmetric_rules\u0018\u0004 \u0003(\u000b2\u0016.google.api.MetricRule\"\u0091\u0001\n\nMetricRule\u0012\u0010\n\bselector\u0018\u0001 \u0001(\t\u0012=\n\fmetric_costs\u0018\u0002 \u0003(\u000b2'.google.api.MetricRule.MetricCostsEntry\u001a2\n\u0010MetricCostsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0003:\u00028\u0001\"\u0095\u0002\n\nQuotaLimit\u0012\f\n\u0004name\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\u0012\u0015\n\rdefault_limit\u0018\u0003 \u0001(\u0003\u0012\u0011\n\tmax_limit\u0018\u0004 \u0001(\u0003\u0012\u0011\n\tfree_tier\u0018\u0007 \u0001(\u0003\u0012\u0010\n\bduration\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006metric\u0018\b \u0001(\t\u0012\f\n\u0004unit\u0018\t \u0001(\t\u00122\n\u0006values\u0018\n \u0003(\u000b2\".google.api.QuotaLimit.ValuesEntry\u0012\u0014\n\fdisplay_name\u0018\f \u0001(\t\u001a-\n\u000bValuesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0003:\u00028\u0001Bl\n\u000ecom.google.apiB\nQuotaProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f10944a = bVar;
        f10945b = new GeneratedMessageV3.e(bVar, new String[]{"Limits", "MetricRules"});
        Descriptors.b bVar2 = a().m().get(1);
        f10946c = bVar2;
        f10947d = new GeneratedMessageV3.e(bVar2, new String[]{"Selector", "MetricCosts"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f10948e = bVar3;
        f10949f = new GeneratedMessageV3.e(bVar3, new String[]{"Key", "Value"});
        Descriptors.b bVar4 = a().m().get(2);
        f10950g = bVar4;
        f10951h = new GeneratedMessageV3.e(bVar4, new String[]{"Name", "Description", "DefaultLimit", "MaxLimit", "FreeTier", "Duration", "Metric", "Unit", "Values", "DisplayName"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f10952i = bVar5;
        f10953j = new GeneratedMessageV3.e(bVar5, new String[]{"Key", "Value"});
    }

    public static Descriptors.FileDescriptor a() {
        return f10954k;
    }
}
