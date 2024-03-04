package io.grpc.xds.shaded.com.google.api.expr.v1alpha1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.v2;
import com.google.protobuf.w;
import com.guochao.faceshow.aaspring.utils.Constants;
/* loaded from: classes5.dex */
public final class f {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    private static Descriptors.FileDescriptor C = Descriptors.FileDescriptor.s(new String[]{"\n%google/api/expr/v1alpha1/syntax.proto\u0012\u0018google.api.expr.v1alpha1\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"u\n\nParsedExpr\u0012,\n\u0004expr\u0018\u0002 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u00129\n\u000bsource_info\u0018\u0003 \u0001(\u000b2$.google.api.expr.v1alpha1.SourceInfo\"Å\n\n\u0004Expr\u0012\n\n\u0002id\u0018\u0002 \u0001(\u0003\u00128\n\nconst_expr\u0018\u0003 \u0001(\u000b2\".google.api.expr.v1alpha1.ConstantH\u0000\u0012:\n\nident_expr\u0018\u0004 \u0001(\u000b2$.google.api.expr.v1alpha1.Expr.IdentH\u0000\u0012<\n\u000bselect_expr\u0018\u0005 \u0001(\u000b2%.google.api.expr.v1alpha1.Expr.SelectH\u0000\u00128\n\tcall_expr\u0018\u0006 \u0001(\u000b2#.google.api.expr.v1alpha1.Expr.CallH\u0000\u0012>\n\tlist_expr\u0018\u0007 \u0001(\u000b2).google.api.expr.v1alpha1.Expr.CreateListH\u0000\u0012B\n\u000bstruct_expr\u0018\b \u0001(\u000b2+.google.api.expr.v1alpha1.Expr.CreateStructH\u0000\u0012J\n\u0012comprehension_expr\u0018\t \u0001(\u000b2,.google.api.expr.v1alpha1.Expr.ComprehensionH\u0000\u001a\u0015\n\u0005Ident\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u001a[\n\u0006Select\u0012/\n\u0007operand\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u0012\r\n\u0005field\u0018\u0002 \u0001(\t\u0012\u0011\n\ttest_only\u0018\u0003 \u0001(\b\u001av\n\u0004Call\u0012.\n\u0006target\u0018\u0001 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u0012\u0010\n\bfunction\u0018\u0002 \u0001(\t\u0012,\n\u0004args\u0018\u0003 \u0003(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u001a>\n\nCreateList\u00120\n\belements\u0018\u0001 \u0003(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u001a\u0081\u0002\n\fCreateStruct\u0012\u0014\n\fmessage_name\u0018\u0001 \u0001(\t\u0012B\n\u0007entries\u0018\u0002 \u0003(\u000b21.google.api.expr.v1alpha1.Expr.CreateStruct.Entry\u001a\u0096\u0001\n\u0005Entry\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0003\u0012\u0013\n\tfield_key\u0018\u0002 \u0001(\tH\u0000\u00121\n\u0007map_key\u0018\u0003 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.ExprH\u0000\u0012-\n\u0005value\u0018\u0004 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.ExprB\n\n\bkey_kind\u001aµ\u0002\n\rComprehension\u0012\u0010\n\biter_var\u0018\u0001 \u0001(\t\u00122\n\niter_range\u0018\u0002 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u0012\u0010\n\baccu_var\u0018\u0003 \u0001(\t\u00121\n\taccu_init\u0018\u0004 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u00126\n\u000eloop_condition\u0018\u0005 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u00121\n\tloop_step\u0018\u0006 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\u0012.\n\u0006result\u0018\u0007 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.ExprB\u000b\n\texpr_kind\"Í\u0002\n\bConstant\u00120\n\nnull_value\u0018\u0001 \u0001(\u000e2\u001a.google.protobuf.NullValueH\u0000\u0012\u0014\n\nbool_value\u0018\u0002 \u0001(\bH\u0000\u0012\u0015\n\u000bint64_value\u0018\u0003 \u0001(\u0003H\u0000\u0012\u0016\n\fuint64_value\u0018\u0004 \u0001(\u0004H\u0000\u0012\u0016\n\fdouble_value\u0018\u0005 \u0001(\u0001H\u0000\u0012\u0016\n\fstring_value\u0018\u0006 \u0001(\tH\u0000\u0012\u0015\n\u000bbytes_value\u0018\u0007 \u0001(\fH\u0000\u00127\n\u000eduration_value\u0018\b \u0001(\u000b2\u0019.google.protobuf.DurationB\u0002\u0018\u0001H\u0000\u00129\n\u000ftimestamp_value\u0018\t \u0001(\u000b2\u001a.google.protobuf.TimestampB\u0002\u0018\u0001H\u0000B\u000f\n\rconstant_kind\"ä\u0002\n\nSourceInfo\u0012\u0016\n\u000esyntax_version\u0018\u0001 \u0001(\t\u0012\u0010\n\blocation\u0018\u0002 \u0001(\t\u0012\u0014\n\fline_offsets\u0018\u0003 \u0003(\u0005\u0012F\n\tpositions\u0018\u0004 \u0003(\u000b23.google.api.expr.v1alpha1.SourceInfo.PositionsEntry\u0012I\n\u000bmacro_calls\u0018\u0005 \u0003(\u000b24.google.api.expr.v1alpha1.SourceInfo.MacroCallsEntry\u001a0\n\u000ePositionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0003\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0005:\u00028\u0001\u001aQ\n\u000fMacroCallsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0003\u0012-\n\u0005value\u0018\u0002 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr:\u00028\u0001\"P\n\u000eSourcePosition\u0012\u0010\n\blocation\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\u0005\u0012\f\n\u0004line\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006column\u0018\u0004 \u0001(\u0005Bn\n\u001ccom.google.api.expr.v1alpha1B\u000bSyntaxProtoP\u0001Z<google.golang.org/genproto/googleapis/api/expr/v1alpha1;exprø\u0001\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{w.a(), v2.a(), a3.a()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45715a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45716b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f45717c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f45718d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f45719e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f45720f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f45721g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f45722h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f45723i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f45724j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f45725k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f45726l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f45727m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f45728n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f45729o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f45730p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f45731q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f45732r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f45733s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f45734t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f45735u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f45736v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f45737w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f45738x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f45739y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f45740z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f45715a = bVar;
        f45716b = new GeneratedMessageV3.e(bVar, new String[]{"Expr", "SourceInfo"});
        Descriptors.b bVar2 = a().m().get(1);
        f45717c = bVar2;
        f45718d = new GeneratedMessageV3.e(bVar2, new String[]{"Id", "ConstExpr", "IdentExpr", "SelectExpr", "CallExpr", "ListExpr", "StructExpr", "ComprehensionExpr", "ExprKind"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f45719e = bVar3;
        f45720f = new GeneratedMessageV3.e(bVar3, new String[]{"Name"});
        Descriptors.b bVar4 = bVar2.o().get(1);
        f45721g = bVar4;
        f45722h = new GeneratedMessageV3.e(bVar4, new String[]{"Operand", "Field", "TestOnly"});
        Descriptors.b bVar5 = bVar2.o().get(2);
        f45723i = bVar5;
        f45724j = new GeneratedMessageV3.e(bVar5, new String[]{"Target", "Function", "Args"});
        Descriptors.b bVar6 = bVar2.o().get(3);
        f45725k = bVar6;
        f45726l = new GeneratedMessageV3.e(bVar6, new String[]{"Elements"});
        Descriptors.b bVar7 = bVar2.o().get(4);
        f45727m = bVar7;
        f45728n = new GeneratedMessageV3.e(bVar7, new String[]{"MessageName", "Entries"});
        Descriptors.b bVar8 = bVar7.o().get(0);
        f45729o = bVar8;
        f45730p = new GeneratedMessageV3.e(bVar8, new String[]{"Id", "FieldKey", "MapKey", "Value", "KeyKind"});
        Descriptors.b bVar9 = bVar2.o().get(5);
        f45731q = bVar9;
        f45732r = new GeneratedMessageV3.e(bVar9, new String[]{"IterVar", "IterRange", "AccuVar", "AccuInit", "LoopCondition", "LoopStep", "Result"});
        Descriptors.b bVar10 = a().m().get(2);
        f45733s = bVar10;
        f45734t = new GeneratedMessageV3.e(bVar10, new String[]{"NullValue", "BoolValue", "Int64Value", "Uint64Value", "DoubleValue", "StringValue", "BytesValue", "DurationValue", "TimestampValue", "ConstantKind"});
        Descriptors.b bVar11 = a().m().get(3);
        f45735u = bVar11;
        f45736v = new GeneratedMessageV3.e(bVar11, new String[]{"SyntaxVersion", "Location", "LineOffsets", "Positions", "MacroCalls"});
        Descriptors.b bVar12 = bVar11.o().get(0);
        f45737w = bVar12;
        f45738x = new GeneratedMessageV3.e(bVar12, new String[]{"Key", "Value"});
        Descriptors.b bVar13 = bVar11.o().get(1);
        f45739y = bVar13;
        f45740z = new GeneratedMessageV3.e(bVar13, new String[]{"Key", "Value"});
        Descriptors.b bVar14 = a().m().get(4);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Location", "Offset", Constants.ThirdPartyLogin.PLATFORM_LINE, "Column"});
        w.a();
        v2.a();
        a3.a();
    }

    public static Descriptors.FileDescriptor a() {
        return C;
    }
}
