package io.grpc.xds.shaded.com.google.api.expr.v1alpha1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.v2;
import com.google.protobuf.z;
/* loaded from: classes5.dex */
public final class c {
    private static Descriptors.FileDescriptor A = Descriptors.FileDescriptor.s(new String[]{"\n&google/api/expr/v1alpha1/checked.proto\u0012\u0018google.api.expr.v1alpha1\u001a%google/api/expr/v1alpha1/syntax.proto\u001a\u001bgoogle/protobuf/empty.proto\u001a\u001cgoogle/protobuf/struct.proto\"¶\u0003\n\u000bCheckedExpr\u0012N\n\rreference_map\u0018\u0002 \u0003(\u000b27.google.api.expr.v1alpha1.CheckedExpr.ReferenceMapEntry\u0012D\n\btype_map\u0018\u0003 \u0003(\u000b22.google.api.expr.v1alpha1.CheckedExpr.TypeMapEntry\u00129\n\u000bsource_info\u0018\u0005 \u0001(\u000b2$.google.api.expr.v1alpha1.SourceInfo\u0012,\n\u0004expr\u0018\u0004 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u001aX\n\u0011ReferenceMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0003\u00122\n\u0005value\u0018\u0002 \u0001(\u000b2#.google.api.expr.v1alpha1.Reference:\u00028\u0001\u001aN\n\fTypeMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0003\u0012-\n\u0005value\u0018\u0002 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type:\u00028\u0001\"\u0082\n\n\u0004Type\u0012%\n\u0003dyn\u0018\u0001 \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012*\n\u0004null\u0018\u0002 \u0001(\u000e2\u001a.google.protobuf.NullValueH\u0000\u0012A\n\tprimitive\u0018\u0003 \u0001(\u000e2,.google.api.expr.v1alpha1.Type.PrimitiveTypeH\u0000\u0012?\n\u0007wrapper\u0018\u0004 \u0001(\u000e2,.google.api.expr.v1alpha1.Type.PrimitiveTypeH\u0000\u0012B\n\nwell_known\u0018\u0005 \u0001(\u000e2,.google.api.expr.v1alpha1.Type.WellKnownTypeH\u0000\u0012<\n\tlist_type\u0018\u0006 \u0001(\u000b2'.google.api.expr.v1alpha1.Type.ListTypeH\u0000\u0012:\n\bmap_type\u0018\u0007 \u0001(\u000b2&.google.api.expr.v1alpha1.Type.MapTypeH\u0000\u0012?\n\bfunction\u0018\b \u0001(\u000b2+.google.api.expr.v1alpha1.Type.FunctionTypeH\u0000\u0012\u0016\n\fmessage_type\u0018\t \u0001(\tH\u0000\u0012\u0014\n\ntype_param\u0018\n \u0001(\tH\u0000\u0012.\n\u0004type\u0018\u000b \u0001(\u000b2\u001e.google.api.expr.v1alpha1.TypeH\u0000\u0012'\n\u0005error\u0018\f \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012D\n\rabstract_type\u0018\u000e \u0001(\u000b2+.google.api.expr.v1alpha1.Type.AbstractTypeH\u0000\u001a=\n\bListType\u00121\n\telem_type\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u001ao\n\u0007MapType\u00120\n\bkey_type\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u00122\n\nvalue_type\u0018\u0002 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u001av\n\fFunctionType\u00123\n\u000bresult_type\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u00121\n\targ_types\u0018\u0002 \u0003(\u000b2\u001e.google.api.expr.v1alpha1.Type\u001aU\n\fAbstractType\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00127\n\u000fparameter_types\u0018\u0002 \u0003(\u000b2\u001e.google.api.expr.v1alpha1.Type\"s\n\rPrimitiveType\u0012\u001e\n\u001aPRIMITIVE_TYPE_UNSPECIFIED\u0010\u0000\u0012\b\n\u0004BOOL\u0010\u0001\u0012\t\n\u0005INT64\u0010\u0002\u0012\n\n\u0006UINT64\u0010\u0003\u0012\n\n\u0006DOUBLE\u0010\u0004\u0012\n\n\u0006STRING\u0010\u0005\u0012\t\n\u0005BYTES\u0010\u0006\"V\n\rWellKnownType\u0012\u001f\n\u001bWELL_KNOWN_TYPE_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003ANY\u0010\u0001\u0012\r\n\tTIMESTAMP\u0010\u0002\u0012\f\n\bDURATION\u0010\u0003B\u000b\n\ttype_kind\"¹\u0004\n\u0004Decl\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00129\n\u0005ident\u0018\u0002 \u0001(\u000b2(.google.api.expr.v1alpha1.Decl.IdentDeclH\u0000\u0012?\n\bfunction\u0018\u0003 \u0001(\u000b2+.google.api.expr.v1alpha1.Decl.FunctionDeclH\u0000\u001ay\n\tIdentDecl\u0012,\n\u0004type\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u00121\n\u0005value\u0018\u0002 \u0001(\u000b2\".google.api.expr.v1alpha1.Constant\u0012\u000b\n\u0003doc\u0018\u0003 \u0001(\t\u001a\u009e\u0002\n\fFunctionDecl\u0012G\n\toverloads\u0018\u0001 \u0003(\u000b24.google.api.expr.v1alpha1.Decl.FunctionDecl.Overload\u001aÄ\u0001\n\bOverload\u0012\u0013\n\u000boverload_id\u0018\u0001 \u0001(\t\u0012.\n\u0006params\u0018\u0002 \u0003(\u000b2\u001e.google.api.expr.v1alpha1.Type\u0012\u0013\n\u000btype_params\u0018\u0003 \u0003(\t\u00123\n\u000bresult_type\u0018\u0004 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Type\u0012\u001c\n\u0014is_instance_function\u0018\u0005 \u0001(\b\u0012\u000b\n\u0003doc\u0018\u0006 \u0001(\tB\u000b\n\tdecl_kind\"a\n\tReference\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000boverload_id\u0018\u0003 \u0003(\t\u00121\n\u0005value\u0018\u0004 \u0001(\u000b2\".google.api.expr.v1alpha1.ConstantBl\n\u001ccom.google.api.expr.v1alpha1B\tDeclProtoP\u0001Z<google.golang.org/genproto/googleapis/api/expr/v1alpha1;exprø\u0001\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{f.a(), z.a(), v2.a()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45689a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45690b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f45691c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f45692d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f45693e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f45694f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f45695g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f45696h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f45697i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f45698j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f45699k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f45700l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f45701m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f45702n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f45703o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f45704p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f45705q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f45706r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f45707s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f45708t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f45709u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f45710v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f45711w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f45712x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f45713y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f45714z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f45689a = bVar;
        f45690b = new GeneratedMessageV3.e(bVar, new String[]{"ReferenceMap", "TypeMap", "SourceInfo", "Expr"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f45691c = bVar2;
        f45692d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Value"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f45693e = bVar3;
        f45694f = new GeneratedMessageV3.e(bVar3, new String[]{"Key", "Value"});
        Descriptors.b bVar4 = a().m().get(1);
        f45695g = bVar4;
        f45696h = new GeneratedMessageV3.e(bVar4, new String[]{"Dyn", "Null", "Primitive", "Wrapper", "WellKnown", "ListType", "MapType", "Function", "MessageType", "TypeParam", "Type", "Error", "AbstractType", "TypeKind"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f45697i = bVar5;
        f45698j = new GeneratedMessageV3.e(bVar5, new String[]{"ElemType"});
        Descriptors.b bVar6 = bVar4.o().get(1);
        f45699k = bVar6;
        f45700l = new GeneratedMessageV3.e(bVar6, new String[]{"KeyType", "ValueType"});
        Descriptors.b bVar7 = bVar4.o().get(2);
        f45701m = bVar7;
        f45702n = new GeneratedMessageV3.e(bVar7, new String[]{"ResultType", "ArgTypes"});
        Descriptors.b bVar8 = bVar4.o().get(3);
        f45703o = bVar8;
        f45704p = new GeneratedMessageV3.e(bVar8, new String[]{"Name", "ParameterTypes"});
        Descriptors.b bVar9 = a().m().get(2);
        f45705q = bVar9;
        f45706r = new GeneratedMessageV3.e(bVar9, new String[]{"Name", "Ident", "Function", "DeclKind"});
        Descriptors.b bVar10 = bVar9.o().get(0);
        f45707s = bVar10;
        f45708t = new GeneratedMessageV3.e(bVar10, new String[]{"Type", "Value", "Doc"});
        Descriptors.b bVar11 = bVar9.o().get(1);
        f45709u = bVar11;
        f45710v = new GeneratedMessageV3.e(bVar11, new String[]{"Overloads"});
        Descriptors.b bVar12 = bVar11.o().get(0);
        f45711w = bVar12;
        f45712x = new GeneratedMessageV3.e(bVar12, new String[]{"OverloadId", "Params", "TypeParams", "ResultType", "IsInstanceFunction", "Doc"});
        Descriptors.b bVar13 = a().m().get(3);
        f45713y = bVar13;
        f45714z = new GeneratedMessageV3.e(bVar13, new String[]{"Name", "OverloadId", "Value"});
        f.a();
        z.a();
        v2.a();
    }

    public static Descriptors.FileDescriptor a() {
        return A;
    }
}
